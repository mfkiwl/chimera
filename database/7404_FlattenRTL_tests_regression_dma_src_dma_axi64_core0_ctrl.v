// This program was cloned from: https://github.com/HKUSTGZ-MICS-LYU/FlattenRTL
// License: MIT License

/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Author: Eyal Hochberg                                      ////
////          eyal@provartec.com                                 ////
////                                                             ////
////  Downloaded from: http://www.opencores.org                  ////
/////////////////////////////////////////////////////////////////////
////                                                             ////
//// Copyright (C) 2010 Provartec LTD                            ////
//// www.provartec.com                                           ////
//// info@provartec.com                                          ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
//// This source file is free software; you can redistribute it  ////
//// and/or modify it under the terms of the GNU Lesser General  ////
//// Public License as published by the Free Software Foundation.////
////                                                             ////
//// This source is distributed in the hope that it will be      ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied  ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR     ////
//// PURPOSE.  See the GNU Lesser General Public License for more////
//// details. http://www.gnu.org/licenses/lgpl.html              ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
//---------------------------------------------------------
//-- File generated by RobustVerilog parser
//-- Version: 1.0
//-- Invoked Fri Mar 25 23:36:54 2011
//--
//-- Source file: dma_core_ctrl.v
//---------------------------------------------------------



module dma_axi64_core0_ctrl(clk,reset,ch_go,cmd_full,cmd_pending,joint_req,ch_num,ch_num_resp,go_next_line,periph_clr_valid,periph_clr,periph_clr_last,periph_delay,clr_stall,tokens,ch_ready,ch_last,burst_start,finish,busy,hold);


   input                    clk;
   input             reset;

   input             ch_go;

   input             cmd_full;
   input             cmd_pending;
   input             joint_req;
      
   input [2:0]             ch_num;
   input [2:0]             ch_num_resp;   
   input             go_next_line;
   input             periph_clr_valid;
   input             periph_clr;
   input             periph_clr_last;
   input [3-1:0]  periph_delay;

   input             clr_stall;
   input [6-1:0]  tokens;
   
   input             ch_ready;
   input             ch_last;
   output             burst_start;
   output             finish;             
   output             busy;
   input             hold;
   

   reg                 burst_start;
   reg                 finish;
   wire             tokens_remain;
   reg                 tokens_remain_reg;
   reg [6-1:0]    tokens_counter;
   wire             stall;
   reg                 joint_ctrl_reg;
   wire             joint_ctrl;
   
   reg [3-1:0]    delay_counter;
   
   wire             periph_clr_ch;
   wire             periph_clr_last_ch;   
   wire             go_next_line_d;
   
  
   
   reg [2:0]             ps;
   reg [2:0]             ns;


   
   parameter                IDLE        = 3'd0;
   parameter             CMD         = 3'd1;
   parameter             WAIT_CLR    = 3'd2;
   parameter             WAIT_DELAY  = 3'd3;
   parameter             STALL       = 3'd4;
   

   assign             busy = ps != IDLE;

   assign             periph_clr_ch      = periph_clr_valid & periph_clr & (ch_num == ch_num_resp);
   assign             periph_clr_last_ch = periph_clr_valid & periph_clr_last & (ch_num == ch_num_resp);

   assign             go_next_line_d = 1'b0;


   always @(posedge clk or posedge reset)
     if (reset)
       joint_ctrl_reg <= #1 1'b0;
     else if (finish)
       joint_ctrl_reg <= #1 1'b0;
     else if (ch_go)
       joint_ctrl_reg <= #1 joint_req;

   assign             joint_ctrl = joint_ctrl_reg;
   
   
   
   assign             tokens_remain = (|tokens_counter) | ch_last;
   
   always @(posedge clk or posedge reset)
     if (reset)
       tokens_counter <= #1 {6{1'b0}};
     else if (ch_go)
       tokens_counter <= #1 tokens;
     else if (burst_start & (|tokens_counter))
       tokens_counter <= #1 tokens_counter - 1'b1;
   
   always @(posedge clk or posedge reset)
     if (reset)
       delay_counter <= #1 {3{1'b0}};
     else if (periph_clr_ch)
       delay_counter <= #1 periph_delay;
     else if (|delay_counter)
       delay_counter <= #1 delay_counter - 1'b1;

   
   assign             stall  = cmd_pending | cmd_full | go_next_line_d;
  
   
   always @(/*AUTOSENSE*/ch_go or ch_last or ch_ready or clr_stall
        or delay_counter or go_next_line_d or hold or joint_ctrl
        or joint_req or periph_clr_ch or periph_clr_last_ch
        or periph_clr_valid or periph_delay or ps or stall
        or tokens_remain)
     begin
    ns          = IDLE;
    burst_start = 1'b0;
    finish  = 1'b0;
    
    case (ps)
      IDLE :
        begin
           if (ch_go)
         begin
            if (!ch_ready)
              begin
             ns = IDLE;
             finish = 1'b1;
              end
            else if (stall)
              ns = STALL;
            else
              ns = CMD;
         end
           else
         ns = IDLE;
        end
      
      CMD :
        begin
           if (joint_req ^ joint_ctrl) //change in joint_req
         begin
            ns = IDLE;
            finish = 1'b1;
         end
           else if ((clr_stall | hold) & tokens_remain)
         ns = CMD;
           else if (ch_ready & tokens_remain)
         begin
                    if (stall)
                      ns = STALL;
                    else
                      begin
                         burst_start = 1'b1;
                         ns = WAIT_CLR;
                      end  
         end
           else if (ch_last & (~ch_ready))
         ns = CMD;
           else
         begin
            ns = IDLE;
            finish = 1'b1;
         end
        end 
      
      WAIT_CLR :
        begin
           if ((|periph_delay) & periph_clr_valid) //don't wait for clr if not valid (block clr)
         begin
            if (periph_clr_last_ch) //release if load cmd
              begin
             ns = IDLE;
             finish = 1'b1;
              end
            else if (periph_clr_ch)
              ns = WAIT_DELAY;
            else
              ns = WAIT_CLR;
         end
           //memory - allow command depth
           else if (!tokens_remain)
         begin
            ns = IDLE;
            finish = 1'b1;
         end
           else
         ns = WAIT_DELAY;
        end
      
      WAIT_DELAY :
        begin
           if (go_next_line_d) //delay in case of cmd split (cross page)
         ns = WAIT_DELAY;
           else if (delay_counter == 'd0)
         ns = STALL;
           else
         ns = WAIT_DELAY;
        end

      STALL :
        begin
           if (ch_ready & tokens_remain)
         begin
            if (stall)
              ns = STALL;
            else
              ns = CMD;
         end
           else if (ch_last & (~ch_ready))
         ns = CMD;
           else
         begin
            ns = IDLE;
            finish = 1'b1;
         end 
        end

      default :
        begin
           ns = IDLE;
        end
      
    endcase
     end
   
   always @(posedge clk or posedge reset)
     if (reset)
       ps <= #1 IDLE;
     else
       ps <= #1 ns;
   

endmodule






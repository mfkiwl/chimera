// This program was cloned from: https://github.com/Kenji-Ishimaru/polyphony
// License: MIT License

//=======================================================================
// Project Polyphony
//
// File:
//   fm_raw_fifo.v
//
// Abstract:
//   AXI FIFO module
//
//  Created:
//    8 October 2013
//
// Copyright (c) 2013  Kenji Ishimaru, All rights reserved.
//
//======================================================================
//
// Copyright (c) 2020, Kenji Ishimaru
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
//  -Redistributions of source code must retain the above copyright notice,
//   this list of conditions and the following disclaimer.
//  -Redistributions in binary form must reproduce the above copyright notice,
//   this list of conditions and the following disclaimer in the documentation
//   and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
// CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
// OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
// WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
// OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
// EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

module fm_raw_fifo (
  clk_core,
  rst_x,
  i_check_address,
  o_hit,
  i_wstrobe,
  i_dt,
  o_full,
  i_renable,
  o_dt,
  o_empty,
  o_dnum
);

// set default parameters
parameter WIDTH = 32;
parameter RANGEE = 4;
localparam DEPTH = 1 << RANGEE;
////////////////////////////
// I/O definition
////////////////////////////
input         clk_core;            // system clock
input         rst_x;          // system reset
input  [WIDTH-1:0] i_check_address;
output        o_hit;
input         i_wstrobe;      // write strobe
input  [WIDTH-1:0] i_dt;      // write data
output        o_full;         // write data full
input         i_renable;      // read enable
output [WIDTH-1:0] o_dt;      // read data
output        o_empty;        // read data empty
output [RANGEE:0] o_dnum;      // written data number

/////////////////////////
//  Register definition
/////////////////////////
reg [RANGEE-1:0] rs_write_counter;
reg [RANGEE-1:0] rs_read_counter;
// data registers
reg [WIDTH-1:0] rs_data_buffer[0:DEPTH-1];
reg [DEPTH-1:0] rs_valid;
/////////////////////////
//  wire definition
/////////////////////////
wire             o_full;
wire             o_empty;
wire [WIDTH-1:0] o_dt;
wire [1:0]       w_status;
wire             w_we;
wire             w_re;
// address compare
wire [DEPTH-1:0] w_hit;
/////////////////////////
//  assign statement
/////////////////////////
assign o_full  = (&rs_valid);
assign o_empty = ~(|rs_valid);
assign o_dt = rs_data_buffer[rs_read_counter];
assign o_dnum = 'd0;
assign w_we = !o_full & i_wstrobe;
assign w_re = i_renable & !o_empty;
assign w_status = {w_re,w_we};
assign o_hit = |w_hit;
////////////////////////
// always statement
///////////////////////
  genvar i;
  generate for (i=0;i<DEPTH;i=i+1) begin : gen_loop
    assign w_hit[i] = rs_valid[i] ? (i_check_address == rs_data_buffer[i]) : 1'b0;
  end
  endgenerate
   
  // write side
  always @(posedge clk_core or negedge rst_x) begin
    if (~rst_x) begin
      rs_write_counter <= 'd0;
    end else begin
      if (w_we) begin
        rs_write_counter <= rs_write_counter + 1'b1;
      end
    end
  end

  always @(posedge clk_core) begin
    if (w_we) begin
      rs_data_buffer[rs_write_counter] <= i_dt;
    end
  end

  // read side
  always @(posedge clk_core or negedge rst_x) begin
    if (~rst_x) begin
      rs_read_counter <= 'd0;
    end else begin
      if (w_re) begin
        rs_read_counter <= rs_read_counter + 1'b1;
      end
    end
  end
  // data valid
  always @(posedge clk_core or negedge rst_x) begin
    if (~rst_x) begin
      rs_valid <= {DEPTH{1'b0}};
    end else begin
      case (w_status)
        2'b01: rs_valid[rs_write_counter] <= 1'b1; // write
        2'b10: rs_valid[rs_read_counter]  <= 1'b0; // read
        2'b11: begin
          rs_valid[rs_write_counter] <= 1'b1; // write
          rs_valid[rs_read_counter]  <= 1'b0; // read
        end
        default:  rs_valid <= rs_valid;      // nothing to do 
      endcase
    end
  end

endmodule



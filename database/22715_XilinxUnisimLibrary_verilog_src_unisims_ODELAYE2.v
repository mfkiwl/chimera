// This program was cloned from: https://github.com/Xilinx/XilinxUnisimLibrary
// License: Apache License 2.0

///////////////////////////////////////////////////////////////////////////////
//    Copyright (c) 1995/2004 Xilinx, Inc.
// 
//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at
// 
//        http://www.apache.org/licenses/LICENSE-2.0
// 
//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 12.0
//  \   \         Description : Xilinx Functional and Timing Simulation Library Component
//  /   /                  Onput Fixed or Variable Delay Element.
// /___/   /\     Filename : ODELAYE2.v
// \   \  /  \    Timestamp : Mon Sep 21 08:48:13 PDT 2009
//  \___\/\___\
//
// Revision:
//    09/21/09 - Initial version.
//    12/13/11 - Added `celldefine and `endcelldefine (CR 524859).
//    10/22/14 - Added #1 to $finish (CR 808642).
// End Revision

`timescale  1 ps / 1 ps

`celldefine

module ODELAYE2 (CNTVALUEOUT, DATAOUT, C, CE, CINVCTRL, CLKIN, CNTVALUEIN, INC, LD, LDPIPEEN, ODATAIN, REGRST);

    parameter CINVCTRL_SEL = "FALSE";
    parameter DELAY_SRC = "ODATAIN";
    parameter HIGH_PERFORMANCE_MODE    = "FALSE";
    parameter [0:0] IS_C_INVERTED = 1'b0;
    parameter [0:0] IS_ODATAIN_INVERTED = 1'b0;
    parameter ODELAY_TYPE  = "FIXED";
    parameter integer ODELAY_VALUE = 0;
    parameter PIPE_SEL = "FALSE";
    parameter real REFCLK_FREQUENCY = 200.0;
    parameter SIGNAL_PATTERN    = "DATA";

`ifdef XIL_TIMING
    parameter LOC = "UNPLACED";
    parameter integer SIM_DELAY_D = 0;
    localparam DELAY_D = (ODELAY_TYPE == "VARIABLE") ? SIM_DELAY_D : 0;
`endif // ifdef XIL_TIMING

`ifndef XIL_TIMING
    integer DELAY_D=0;
`endif // ifndef XIL_TIMING

    output [4:0] CNTVALUEOUT;
    output DATAOUT;

    input C;
    input CE;
    input CINVCTRL;
    input CLKIN;
    input [4:0] CNTVALUEIN;
    input INC;
    input LD;
    input LDPIPEEN;
    input ODATAIN;
    input REGRST;


    tri0  GSR = glbl.GSR;
    real  CALC_TAPDELAY ; 
    real  INIT_DELAY;

//------------------- constants ------------------------------------

    localparam MAX_DELAY_COUNT = 31; 
    localparam MIN_DELAY_COUNT = 0; 

    localparam MAX_REFCLK_FREQUENCYL = 210.0;
    localparam MIN_REFCLK_FREQUENCYL = 190.0;

    localparam MAX_REFCLK_FREQUENCYH = 410.0;
    localparam MIN_REFCLK_FREQUENCYH = 290.0;


//------------------- variable declaration -------------------------

    integer odelay_count;
    integer CNTVALUEIN_INTEGER;
    reg [4:0] cntvalueout_pre;

    reg notifier;

    reg data_mux = 0;
    reg tap_out   = 0;
    reg DATAOUT_reg   = 0;

    wire delay_chain_0,  delay_chain_1,  delay_chain_2,  delay_chain_3,
         delay_chain_4,  delay_chain_5,  delay_chain_6,  delay_chain_7,
         delay_chain_8,  delay_chain_9,  delay_chain_10, delay_chain_11,
         delay_chain_12, delay_chain_13, delay_chain_14, delay_chain_15,
         delay_chain_16, delay_chain_17, delay_chain_18, delay_chain_19,
         delay_chain_20, delay_chain_21, delay_chain_22, delay_chain_23,
         delay_chain_24, delay_chain_25, delay_chain_26, delay_chain_27,
         delay_chain_28, delay_chain_29, delay_chain_30, delay_chain_31;

    reg  c_in;
    wire c_in_pre,delay_C;
    wire ce_in,delay_CE;
    wire cinvctrl_in,delay_CINVCTRL;
    wire clkin_in,delay_CLKIN;
    wire [4:0] cntvaluein_in,delay_CNTVALUEIN;
    wire odatain_in,delay_ODATAIN;
    wire gsr_in;
    wire inc_in,delay_INC;
    wire ld_in,delay_LD;
    wire ldpipeen_in,delay_LDPIPEEN;
    wire regrst_in,delay_REGRST;

   reg [4:0] qcntvalueout_reg = 5'b0;
   reg [4:0] qcntvalueout_mux = 5'b0;


//----------------------------------------------------------------------
//-------------------------------  Output ------------------------------
//----------------------------------------------------------------------
// CR 587496
//    assign #INIT_DELAY DATAOUT = tap_out;
    always @(tap_out)
       DATAOUT_reg <= #INIT_DELAY tap_out;

    assign DATAOUT = DATAOUT_reg;
    assign CNTVALUEOUT = cntvalueout_pre;

`ifndef XIL_TIMING
//----------------------------------------------------------------------
//-------------------------------  Input -------------------------------
//----------------------------------------------------------------------
    assign delay_C =  C;
    assign delay_CE = CE;
    assign delay_CNTVALUEIN = CNTVALUEIN;
    assign delay_INC = INC;
    assign delay_LD = LD;
    assign delay_LDPIPEEN = LDPIPEEN;
    assign delay_REGRST = REGRST;
`endif // ifndef XIL_TIMING
    assign delay_CINVCTRL = CINVCTRL;
    assign delay_CLKIN = CLKIN;
    assign delay_ODATAIN = ODATAIN;
    assign gsr_in = GSR;
    
   assign c_in_pre = IS_C_INVERTED ^ delay_C;
    assign ce_in = delay_CE;
    assign cntvaluein_in = delay_CNTVALUEIN;
    assign inc_in = delay_INC;
    assign ld_in = delay_LD;
    assign ldpipeen_in = delay_LDPIPEEN;
    assign regrst_in = delay_REGRST;
   assign cinvctrl_in = delay_CINVCTRL;
    assign clkin_in = delay_CLKIN;
    assign odatain_in = IS_ODATAIN_INVERTED ^ delay_ODATAIN;



//*** GLOBAL hidden GSR pin
    always @(gsr_in) begin
	if (gsr_in == 1'b1) begin
//   For simprims, the fixed Delay values are taken from the sdf.
       //     if (ODELAY_TYPE == "FIXED")
       //         assign odelay_count = 0;
       //     else
       //         assign odelay_count = ODELAY_VALUE;
               case (ODELAY_TYPE)
                        "VAR_LOAD", "VAR_LOAD_PIPE": assign odelay_count = 0;
                        "FIXED", "VARIABLE" : assign odelay_count = ODELAY_VALUE;
                endcase
        end
	else if (gsr_in == 1'b0) begin
	    deassign odelay_count;
	end
    end


//------------------------------------------------------------
//---------------------   Initialization  --------------------
//------------------------------------------------------------

    initial begin

        //-------- CINVCTRL_SEL check

        case (CINVCTRL_SEL)
            "TRUE", "FALSE" : ;
            default : begin
               $display("Attribute Syntax Error : The attribute CINVCTRL_SEL on ODELAYE2 instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.",  CINVCTRL_SEL);
               #1 $finish;
            end
        endcase

        //-------- DELAY_SRC check

        if (DELAY_SRC != "ODATAIN" && DELAY_SRC != "CLKIN") begin
            $display("Attribute Syntax Error : The attribute DELAY_SRC on ODELAYE2 instance %m is set to %s.  Legal values for this attribute are ODATAIN or CLKIN", DELAY_SRC);
            #1 $finish;
        end



        //-------- HIGH_PERFORMANCE_MODE check

        case (HIGH_PERFORMANCE_MODE)
            "TRUE", "FALSE" : ;
            default : begin
               $display("Attribute Syntax Error : The attribute HIGH_PERFORMANCE_MODE on ODELAYE2 instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.",  HIGH_PERFORMANCE_MODE);
               #1 $finish;
            end
        endcase


        //-------- ODELAY_TYPE check

        if (ODELAY_TYPE != "FIXED" && ODELAY_TYPE != "VARIABLE" && ODELAY_TYPE != "VAR_LOAD" && ODELAY_TYPE != "VAR_LOAD_PIPE") begin

            $display("Attribute Syntax Error : The attribute ODELAY_TYPE on ODELAYE2 instance %m is set to %s.  Legal values for this attribute are FIXED, VARIABLE, VAR_LOAD or VAR_LOAD_PIPE", ODELAY_TYPE);
            #1 $finish;

        end


        //-------- ODELAY_VALUE check

        if (ODELAY_VALUE < MIN_DELAY_COUNT || ODELAY_VALUE > MAX_DELAY_COUNT) begin
            $display("Attribute Syntax Error : The attribute ODELAY_VALUE on ODELAYE2 instance %m is set to %d.  Legal values for this attribute are 0, 1, 2, 3, .... or 31", ODELAY_VALUE);
            #1 $finish;

        end

        //-------- PIPE_SEL check

        case (PIPE_SEL)
            "TRUE", "FALSE" : ;
            default : begin
               $display("Attribute Syntax Error : The attribute PIPE_SEL on ODELAYE2 instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.",  PIPE_SEL);
               #1 $finish;
            end
        endcase



        //-------- REFCLK_FREQUENCY check

        //if (REFCLK_FREQUENCY < MIN_REFCLK_FREQUENCYL || REFCLK_FREQUENCY > MAX_REFCLK_FREQUENCYH) begin
	if ((REFCLK_FREQUENCY >= 190.0 && REFCLK_FREQUENCY <= 210.0) || 
	    (REFCLK_FREQUENCY >= 290.0 && REFCLK_FREQUENCY <= 310.0) || 
	    (REFCLK_FREQUENCY >=390.0 && REFCLK_FREQUENCY <= 410.0)) 
	      /*    */;
	else begin
            $display("Attribute Syntax Error : The attribute REFCLK_FREQUENCY on ODELAYE2 instance %m is set to %f.  Legal values for this attribute are either between 190.0 and 210.0, or between 290.0 and 310.0 or between 390.0 and 410.0", REFCLK_FREQUENCY);
            #1 $finish;
        end


        //-------- SIGNAL_PATTERN check

        case (SIGNAL_PATTERN)
            "CLOCK", "DATA" : ;
            default : begin
               $display("Attribute Syntax Error : The attribute SIGNAL_PATTERN on ODELAYE2 instance %m is set to %s.  Legal values for this attribute are DATA or CLOCK.",  SIGNAL_PATTERN);
               #1 $finish;
            end
        endcase

        //-------- CALC_TAPDELAY check

        INIT_DELAY = 600;

    end // initial begin

    // CALC_TAPDELAY value
    initial begin
        if ((REFCLK_FREQUENCY <= 410.0) && (REFCLK_FREQUENCY >= 390.0))
                begin
                        CALC_TAPDELAY = 39;
                end
        else if ((REFCLK_FREQUENCY <= 310.0) && (REFCLK_FREQUENCY >= 290.0))
                begin
                        CALC_TAPDELAY = 52;
                end
	else
                begin
                        CALC_TAPDELAY = 78;
                end
    end

//----------------------------------------------------------------------
//------------------------ Dynamic clock inversion ---------------------
//----------------------------------------------------------------------

//    always @(c_in_pre or cinvctrl_in) begin
//        case (CINVCTRL_SEL)
//                "TRUE" : c_in = (cinvctrl_in ? ~c_in_pre : c_in_pre);
//                "FALSE" : c_in = c_in_pre;
//        endcase
//    end

   generate
      case (CINVCTRL_SEL)
         "TRUE"  : always @(c_in_pre or cinvctrl_in) c_in = (cinvctrl_in ? ~c_in_pre : c_in_pre);
         "FALSE" : always @(c_in_pre) c_in = c_in_pre;
      endcase
   endgenerate
//----------------------------------------------------------------------
//------------------------      CNTVALUEOUT        ---------------------
//----------------------------------------------------------------------
    always @(odelay_count) begin
//  Fixed CNTVALUEOUT for when in FIXED mode because of simprim. 
       if(ODELAY_TYPE != "FIXED")
           assign cntvalueout_pre = odelay_count;
       else
           assign cntvalueout_pre = ODELAY_VALUE;
    end

//----------------------------------------------------------------------
//--------------------------  CNTVALUEIN LOAD --------------------------
//----------------------------------------------------------------------
    always @(posedge c_in) begin
       if (regrst_in == 1'b1) 
              qcntvalueout_reg = 5'b0;
       else if (regrst_in == 1'b0 && ldpipeen_in == 1'b1) begin
              qcntvalueout_reg =  CNTVALUEIN_INTEGER;
       end 
    end  // always @(posedge c_in)

   generate
      case (PIPE_SEL)
         "TRUE"  : always @(qcntvalueout_reg) qcntvalueout_mux   <= qcntvalueout_reg;
         "FALSE" : always @(CNTVALUEIN_INTEGER) qcntvalueout_mux   <= CNTVALUEIN_INTEGER;
      endcase
   endgenerate

//----------------------------------------------------------------------
//--------------------------  ODELAY_COUNT  ----------------------------
//----------------------------------------------------------------------
    always @(posedge c_in) begin

        if (ODELAY_TYPE == "VARIABLE" | ODELAY_TYPE == "VAR_LOAD" | ODELAY_TYPE == "VAR_LOAD_PIPE") begin
            if (ld_in == 1'b1) begin
                case (ODELAY_TYPE)
                        "VARIABLE" : odelay_count = ODELAY_VALUE;
                        "VAR_LOAD", "VAR_LOAD_PIPE" : odelay_count = qcntvalueout_mux;
                endcase
            end
            else if (ld_in == 1'b0 && ce_in == 1'b1) begin
                if (inc_in == 1'b1) begin
                    case (ODELAY_TYPE)
                        "VARIABLE", "VAR_LOAD", "VAR_LOAD_PIPE" : begin
                                        if (odelay_count < MAX_DELAY_COUNT)
                                        odelay_count = odelay_count + 1;
                                        else if (odelay_count == MAX_DELAY_COUNT)
                                        odelay_count = MIN_DELAY_COUNT;
                                     end
                    endcase
                end
                else if (inc_in == 1'b0) begin
                    case (ODELAY_TYPE)
                        "VARIABLE", "VAR_LOAD", "VAR_LOAD_PIPE" : begin
                                        if (odelay_count >  MIN_DELAY_COUNT)
                                        odelay_count = odelay_count - 1;
                                        else if (odelay_count == MIN_DELAY_COUNT)
                                        odelay_count = MAX_DELAY_COUNT;
                                     end
                    endcase
                end
            end
        end //
    end // always @ (posedge c_in)
  
    always @(cntvaluein_in or gsr_in) begin
                case (cntvaluein_in)
                        5'b00000 : assign CNTVALUEIN_INTEGER = 0;
                        5'b00001 : assign CNTVALUEIN_INTEGER = 1;
                        5'b00010 : assign CNTVALUEIN_INTEGER = 2;
                        5'b00011 : assign CNTVALUEIN_INTEGER = 3;
                        5'b00100 : assign CNTVALUEIN_INTEGER = 4;
                        5'b00101 : assign CNTVALUEIN_INTEGER = 5;
                        5'b00110 : assign CNTVALUEIN_INTEGER = 6;
                        5'b00111 : assign CNTVALUEIN_INTEGER = 7;
                        5'b01000 : assign CNTVALUEIN_INTEGER = 8;
                        5'b01001 : assign CNTVALUEIN_INTEGER = 9;
                        5'b01010 : assign CNTVALUEIN_INTEGER = 10;
                        5'b01011 : assign CNTVALUEIN_INTEGER = 11;
                        5'b01100 : assign CNTVALUEIN_INTEGER = 12;
                        5'b01101 : assign CNTVALUEIN_INTEGER = 13;
                        5'b01110 : assign CNTVALUEIN_INTEGER = 14;
                        5'b01111 : assign CNTVALUEIN_INTEGER = 15;
                        5'b10000 : assign CNTVALUEIN_INTEGER = 16;
                        5'b10001 : assign CNTVALUEIN_INTEGER = 17;
                        5'b10010 : assign CNTVALUEIN_INTEGER = 18;
                        5'b10011 : assign CNTVALUEIN_INTEGER = 19;
                        5'b10100 : assign CNTVALUEIN_INTEGER = 20;
                        5'b10101 : assign CNTVALUEIN_INTEGER = 21;
                        5'b10110 : assign CNTVALUEIN_INTEGER = 22;
                        5'b10111 : assign CNTVALUEIN_INTEGER = 23;
                        5'b11000 : assign CNTVALUEIN_INTEGER = 24;
                        5'b11001 : assign CNTVALUEIN_INTEGER = 25;
                        5'b11010 : assign CNTVALUEIN_INTEGER = 26;
                        5'b11011 : assign CNTVALUEIN_INTEGER = 27;
                        5'b11100 : assign CNTVALUEIN_INTEGER = 28;
                        5'b11101 : assign CNTVALUEIN_INTEGER = 29;
                        5'b11110 : assign CNTVALUEIN_INTEGER = 30;
                        5'b11111 : assign CNTVALUEIN_INTEGER = 31;
                endcase
    end

 
//*********************************************************
//*** SELECT IDATA signal
//*********************************************************

    always @(clkin_in or odatain_in) begin

        case (DELAY_SRC)

            "ODATAIN" : begin
                         data_mux <= odatain_in;
                        end
            "CLKIN"   : begin
                         data_mux <= clkin_in;
                       end
            default : begin
                          $display("Attribute Syntax Error : The attribute DELAY_SRC on ODELAYE2 instance %m is set to %s.  Legal values for this attribute are CLKIN or ODATAIN", DELAY_SRC);
                          $finish;
                      end

        endcase // case(DELAY_SRC)

    end // always @(datain_in or idatain_in)

//*********************************************************
//*** DELAY IDATA signal
//*********************************************************
    assign #(DELAY_D)     delay_chain_0  = data_mux;
    assign #CALC_TAPDELAY delay_chain_1  = delay_chain_0;
    assign #CALC_TAPDELAY delay_chain_2  = delay_chain_1;
    assign #CALC_TAPDELAY delay_chain_3  = delay_chain_2;
    assign #CALC_TAPDELAY delay_chain_4  = delay_chain_3;
    assign #CALC_TAPDELAY delay_chain_5  = delay_chain_4;
    assign #CALC_TAPDELAY delay_chain_6  = delay_chain_5;
    assign #CALC_TAPDELAY delay_chain_7  = delay_chain_6;
    assign #CALC_TAPDELAY delay_chain_8  = delay_chain_7;
    assign #CALC_TAPDELAY delay_chain_9  = delay_chain_8;
    assign #CALC_TAPDELAY delay_chain_10 = delay_chain_9;
    assign #CALC_TAPDELAY delay_chain_11 = delay_chain_10;
    assign #CALC_TAPDELAY delay_chain_12 = delay_chain_11;
    assign #CALC_TAPDELAY delay_chain_13 = delay_chain_12;
    assign #CALC_TAPDELAY delay_chain_14 = delay_chain_13;
    assign #CALC_TAPDELAY delay_chain_15 = delay_chain_14;
    assign #CALC_TAPDELAY delay_chain_16 = delay_chain_15;
    assign #CALC_TAPDELAY delay_chain_17 = delay_chain_16;
    assign #CALC_TAPDELAY delay_chain_18 = delay_chain_17;
    assign #CALC_TAPDELAY delay_chain_19 = delay_chain_18;
    assign #CALC_TAPDELAY delay_chain_20 = delay_chain_19;
    assign #CALC_TAPDELAY delay_chain_21 = delay_chain_20;
    assign #CALC_TAPDELAY delay_chain_22 = delay_chain_21;
    assign #CALC_TAPDELAY delay_chain_23 = delay_chain_22;
    assign #CALC_TAPDELAY delay_chain_24 = delay_chain_23;
    assign #CALC_TAPDELAY delay_chain_25 = delay_chain_24;
    assign #CALC_TAPDELAY delay_chain_26 = delay_chain_25;
    assign #CALC_TAPDELAY delay_chain_27 = delay_chain_26;
    assign #CALC_TAPDELAY delay_chain_28 = delay_chain_27;
    assign #CALC_TAPDELAY delay_chain_29 = delay_chain_28;
    assign #CALC_TAPDELAY delay_chain_30 = delay_chain_29;
    assign #CALC_TAPDELAY delay_chain_31 = delay_chain_30;

//*********************************************************
//*** assign delay
//*********************************************************
    always @(odelay_count) begin
        case (odelay_count)
            0:  assign tap_out = delay_chain_0;
            1:  assign tap_out = delay_chain_1;
            2:  assign tap_out = delay_chain_2;
            3:  assign tap_out = delay_chain_3;
            4:  assign tap_out = delay_chain_4;
            5:  assign tap_out = delay_chain_5;
            6:  assign tap_out = delay_chain_6;
            7:  assign tap_out = delay_chain_7;
            8:  assign tap_out = delay_chain_8;
            9:  assign tap_out = delay_chain_9;
            10: assign tap_out = delay_chain_10;
            11: assign tap_out = delay_chain_11;
            12: assign tap_out = delay_chain_12;
            13: assign tap_out = delay_chain_13;
            14: assign tap_out = delay_chain_14;
            15: assign tap_out = delay_chain_15;
            16: assign tap_out = delay_chain_16;
            17: assign tap_out = delay_chain_17;
            18: assign tap_out = delay_chain_18;
            19: assign tap_out = delay_chain_19;
            20: assign tap_out = delay_chain_20;
            21: assign tap_out = delay_chain_21;
            22: assign tap_out = delay_chain_22;
            23: assign tap_out = delay_chain_23;
            24: assign tap_out = delay_chain_24;
            25: assign tap_out = delay_chain_25;
            26: assign tap_out = delay_chain_26;
            27: assign tap_out = delay_chain_27;
            28: assign tap_out = delay_chain_28;
            29: assign tap_out = delay_chain_29;
            30: assign tap_out = delay_chain_30;
            31: assign tap_out = delay_chain_31;
            default:
                assign tap_out = delay_chain_0;
        endcase
    end // always @ (odelay_count)

`ifdef XIL_TIMING
   wire c_en_n;
   wire c_en_p;
   assign c_en_n = IS_C_INVERTED;
   assign c_en_p = ~IS_C_INVERTED;

   wire c_d_en;
   wire o_d_en;

   assign c_d_en = (odelay_count == 0) && (DELAY_SRC == "CLKIN");
   assign o_d_en = (odelay_count == 0) && (DELAY_SRC == "ODATAIN");

//*** Timing Checks Start here

    always @(notifier) begin
        tap_out <= 1'bx;
    end
`endif // ifdef XIL_TIMING

`ifdef XIL_TIMING
    specify

        ( C *> CNTVALUEOUT) = (0:0:0, 0:0:0);
        ( C => DATAOUT) = (0:0:0, 0:0:0);
        ( CINVCTRL *> CNTVALUEOUT) = (0:0:0, 0:0:0);
        ( CINVCTRL => DATAOUT) = (0:0:0, 0:0:0);
        if (c_d_en) ( CLKIN   => DATAOUT) = (0:0:0, 0:0:0);
        if (o_d_en) ( ODATAIN => DATAOUT) = (0:0:0, 0:0:0);

        $period (negedge C, 0:0:0, notifier);
        $period (posedge C, 0:0:0, notifier);

        $setuphold (posedge C, posedge CE,  0:0:0, 0:0:0, notifier, c_en_p, c_en_p, delay_C, delay_CE);
        $setuphold (posedge C, negedge CE,  0:0:0, 0:0:0, notifier, c_en_p, c_en_p, delay_C, delay_CE);
        $setuphold (posedge C, posedge INC, 0:0:0, 0:0:0, notifier, c_en_p, c_en_p, delay_C, delay_INC);
        $setuphold (posedge C, negedge INC, 0:0:0, 0:0:0, notifier, c_en_p, c_en_p, delay_C, delay_INC);
        $setuphold (posedge C, posedge LD, 0:0:0, 0:0:0, notifier, c_en_p, c_en_p, delay_C, delay_LD);
        $setuphold (posedge C, negedge LD, 0:0:0, 0:0:0, notifier, c_en_p, c_en_p, delay_C, delay_LD);
        $setuphold (posedge C, posedge CNTVALUEIN, 0:0:0, 0:0:0, notifier, c_en_p, c_en_p, delay_C, delay_CNTVALUEIN);
        $setuphold (posedge C, negedge CNTVALUEIN, 0:0:0, 0:0:0, notifier, c_en_p, c_en_p, delay_C, delay_CNTVALUEIN);
        $setuphold (posedge C, posedge LDPIPEEN, 0:0:0, 0:0:0, notifier, c_en_p, c_en_p, delay_C, delay_LDPIPEEN);
        $setuphold (posedge C, negedge LDPIPEEN, 0:0:0, 0:0:0, notifier, c_en_p, c_en_p, delay_C, delay_LDPIPEEN);
        $setuphold (posedge C, posedge REGRST, 0:0:0, 0:0:0, notifier, c_en_p, c_en_p, delay_C, delay_REGRST);
        $setuphold (posedge C, negedge REGRST, 0:0:0, 0:0:0, notifier, c_en_p, c_en_p, delay_C, delay_REGRST);

        $setuphold (negedge C, posedge CE,  0:0:0, 0:0:0, notifier, c_en_n, c_en_n, delay_C, delay_CE);
        $setuphold (negedge C, negedge CE,  0:0:0, 0:0:0, notifier, c_en_n, c_en_n, delay_C, delay_CE);
        $setuphold (negedge C, posedge INC, 0:0:0, 0:0:0, notifier, c_en_n, c_en_n, delay_C, delay_INC);
        $setuphold (negedge C, negedge INC, 0:0:0, 0:0:0, notifier, c_en_n, c_en_n, delay_C, delay_INC);
        $setuphold (negedge C, posedge LD, 0:0:0, 0:0:0, notifier, c_en_n, c_en_n, delay_C, delay_LD);
        $setuphold (negedge C, negedge LD, 0:0:0, 0:0:0, notifier, c_en_n, c_en_n, delay_C, delay_LD);
        $setuphold (negedge C, posedge CNTVALUEIN, 0:0:0, 0:0:0, notifier, c_en_n, c_en_n, delay_C, delay_CNTVALUEIN);
        $setuphold (negedge C, negedge CNTVALUEIN, 0:0:0, 0:0:0, notifier, c_en_n, c_en_n, delay_C, delay_CNTVALUEIN);
        $setuphold (negedge C, posedge LDPIPEEN, 0:0:0, 0:0:0, notifier, c_en_n, c_en_n, delay_C, delay_LDPIPEEN);
        $setuphold (negedge C, negedge LDPIPEEN, 0:0:0, 0:0:0, notifier, c_en_n, c_en_n, delay_C, delay_LDPIPEEN);
        $setuphold (negedge C, posedge REGRST, 0:0:0, 0:0:0, notifier, c_en_n, c_en_n, delay_C, delay_REGRST);
        $setuphold (negedge C, negedge REGRST, 0:0:0, 0:0:0, notifier, c_en_n, c_en_n, delay_C, delay_REGRST);


        specparam PATHPULSE$ = 0;

    endspecify
`endif // ifdef XIL_TIMING

endmodule // ODELAYE2

`endcelldefine

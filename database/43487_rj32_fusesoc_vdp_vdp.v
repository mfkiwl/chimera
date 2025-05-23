// This program was cloned from: https://github.com/rj45/rj32
// License: MIT License

/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module DIG_Register_BUS #(
    parameter Bits = 1
)
(
    input C,
    input en,
    input [(Bits - 1):0]D,
    output [(Bits - 1):0]Q
);

    reg [(Bits - 1):0] state = 'h0;

    assign Q = state;

    always @ (posedge C) begin
        if (en)
            state <= D;
   end
endmodule

module CompUnsigned #(
    parameter Bits = 1
)
(
    input [(Bits -1):0] a,
    input [(Bits -1):0] b,
    output \> ,
    output \= ,
    output \<
);
    assign \> = a > b;
    assign \= = a == b;
    assign \< = a < b;
endmodule


module equals_gen0 (
  input [11:0] A,
  input [11:0] B,
  output Q
);
  // =
  CompUnsigned #(
    .Bits(12)
  )
  CompUnsigned_i0 (
    .a( A ),
    .b( B ),
    .\= ( Q )
  );
endmodule
module DIG_Add
#(
    parameter Bits = 1
)
(
    input [(Bits-1):0] a,
    input [(Bits-1):0] b,
    input c_i,
    output [(Bits - 1):0] s,
    output c_o
);
   wire [Bits:0] temp;

   assign temp = a + b + c_i;
   assign s = temp [(Bits-1):0];
   assign c_o = temp[Bits];
endmodule



module plusone_gen0 (
  input [11:0] A,
  output [11:0] Y
);
  // +1
  DIG_Add #(
    .Bits(12)
  )
  DIG_Add_i0 (
    .a( A ),
    .b( 12'b0 ),
    .c_i( 1'b1 ),
    .s( Y )
  );
endmodule

module Mux_2x1_NBits #(
    parameter Bits = 2
)
(
    input [0:0] sel,
    input [(Bits - 1):0] in_0,
    input [(Bits - 1):0] in_1,
    output reg [(Bits - 1):0] out
);
    always @ (*) begin
        case (sel)
            1'h0: out = in_0;
            1'h1: out = in_1;
            default:
                out = 'h0;
        endcase
    end
endmodule


module maxcounter_gen0 (
  input en,
  input C,
  input [11:0] max,
  input rst,
  output [11:0] Q,
  output ovf
);
  wire [11:0] s0;
  wire [11:0] Q_temp;
  wire [11:0] s1;
  wire s2;
  wire ovf_temp;
  DIG_Register_BUS #(
    .Bits(12)
  )
  DIG_Register_BUS_i0 (
    .D( s0 ),
    .C( C ),
    .en( en ),
    .Q( Q_temp )
  );
  equals_gen0 equals_gen0_i1 (
    .A( Q_temp ),
    .B( max ),
    .Q( ovf_temp )
  );
  assign s2 = (ovf_temp | rst);
  plusone_gen0 plusone_gen0_i2 (
    .A( Q_temp ),
    .Y( s1 )
  );
  Mux_2x1_NBits #(
    .Bits(12)
  )
  Mux_2x1_NBits_i3 (
    .sel( s2 ),
    .in_0( s1 ),
    .in_1( 12'b0 ),
    .out( s0 )
  );
  assign Q = Q_temp;
  assign ovf = ovf_temp;
endmodule

module scanxy (
  input C,
  input rst,
  input en,
  input [11:0] h_total,
  input [11:0] v_total,
  output [11:0] x,
  output [11:0] y,
  output line,
  output frame
);
  wire s0;
  wire line_temp;
  wire s1;
  // X
  maxcounter_gen0 maxcounter_gen0_i0 (
    .en( en ),
    .C( C ),
    .max( h_total ),
    .rst( rst ),
    .Q( x ),
    .ovf( s0 )
  );
  assign line_temp = (s0 & en);
  // Y
  maxcounter_gen0 maxcounter_gen0_i1 (
    .en( line_temp ),
    .C( C ),
    .max( v_total ),
    .rst( rst ),
    .Q( y ),
    .ovf( s1 )
  );
  assign frame = (line_temp & s1);
  assign line = line_temp;
endmodule

module equals_gen1 (
  input [11:0] A,
  input [11:0] B,
  output Q
);
  // =
  CompUnsigned #(
    .Bits(12)
  )
  CompUnsigned_i0 (
    .a( A ),
    .b( B ),
    .\= ( Q )
  );
endmodule

module sync (
  input en,
  input [11:0] v,
  input [11:0] fp,
  input [11:0] sync,
  input [11:0] bp,
  output blank_bgn,
  output sync_bgn,
  output sync_end
);
  wire s0;
  wire s1;
  wire s2;
  equals_gen1 equals_gen1_i0 (
    .A( v ),
    .B( fp ),
    .Q( s0 )
  );
  equals_gen1 equals_gen1_i1 (
    .A( v ),
    .B( sync ),
    .Q( s1 )
  );
  equals_gen1 equals_gen1_i2 (
    .A( v ),
    .B( bp ),
    .Q( s2 )
  );
  assign blank_bgn = (en & s0);
  assign sync_bgn = (en & s1);
  assign sync_end = (en & s2);
endmodule
module DIG_D_FF_1bit
#(
    parameter Default = 0
)
(
   input D,
   input C,
   output Q,
   output \~Q
);
    reg state;

    assign Q = state;
    assign \~Q = ~state;

    always @ (posedge C) begin
        state <= D;
    end

    initial begin
        state = Default;
    end
endmodule


module rsff (
  input S,
  input C,
  input R,
  output Q,
  output \~Q 
);
  wire Q_temp;
  wire s0;
  assign s0 = ((Q_temp | S) & ~ R);
  DIG_D_FF_1bit #(
    .Default(0)
  )
  DIG_D_FF_1bit_i0 (
    .D( s0 ),
    .C( C ),
    .Q( Q_temp ),
    .\~Q ( \~Q  )
  );
  assign Q = Q_temp;
endmodule

module Mux_2x1
(
    input [0:0] sel,
    input in_0,
    input in_1,
    output reg out
);
    always @ (*) begin
        case (sel)
            1'h0: out = in_0;
            1'h1: out = in_1;
            default:
                out = 'h0;
        endcase
    end
endmodule


module syncstate (
  input blank_end,
  input blank_bgn,
  input sync_bgn,
  input sync_end,
  input neg,
  input clk,
  input rst,
  output blank,
  output sync
);
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  assign s0 = (blank_end | rst);
  assign s1 = (sync_end | rst);
  rsff rsff_i0 (
    .S( blank_bgn ),
    .C( clk ),
    .R( s0 ),
    .Q( blank )
  );
  rsff rsff_i1 (
    .S( sync_bgn ),
    .C( clk ),
    .R( s1 ),
    .Q( s2 ),
    .\~Q ( s3 )
  );
  Mux_2x1 Mux_2x1_i2 (
    .sel( neg ),
    .in_0( s2 ),
    .in_1( s3 ),
    .out( sync )
  );
endmodule

module vgasync (
  input [11:0] x_i,
  input [11:0] y_i,
  input line_i,
  input frame_i,
  input [11:0] h_fp,
  input [11:0] h_sync,
  input [11:0] h_bp,
  input h_neg,
  input [11:0] v_fp,
  input [11:0] v_sync,
  input [11:0] v_bp,
  input v_neg,
  input clk,
  input rst,
  output [11:0] x_o,
  output [11:0] y_o,
  output line_o,
  output frame_o,
  output hsync,
  output vsync,
  output en_disp
);
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  wire s4;
  wire s5;
  wire s6;
  wire s7;
  // H
  sync sync_i0 (
    .en( 1'b1 ),
    .v( x_i ),
    .fp( h_fp ),
    .sync( h_sync ),
    .bp( h_bp ),
    .blank_bgn( s2 ),
    .sync_bgn( s3 ),
    .sync_end( s4 )
  );
  // V
  sync sync_i1 (
    .en( line_i ),
    .v( y_i ),
    .fp( v_fp ),
    .sync( v_sync ),
    .bp( v_bp ),
    .blank_bgn( s5 ),
    .sync_bgn( s6 ),
    .sync_end( s7 )
  );
  // H
  syncstate syncstate_i2 (
    .blank_end( line_i ),
    .blank_bgn( s2 ),
    .sync_bgn( s3 ),
    .sync_end( s4 ),
    .neg( h_neg ),
    .clk( clk ),
    .rst( rst ),
    .blank( s0 ),
    .sync( hsync )
  );
  // V
  syncstate syncstate_i3 (
    .blank_end( frame_i ),
    .blank_bgn( s5 ),
    .sync_bgn( s6 ),
    .sync_end( s7 ),
    .neg( v_neg ),
    .clk( clk ),
    .rst( rst ),
    .blank( s1 ),
    .sync( vsync )
  );
  assign en_disp = ~ (s0 | s1);
  assign x_o = x_i;
  assign y_o = y_i;
  assign line_o = line_i;
  assign frame_o = frame_i;
endmodule

module DemuxBus2 #(
    parameter Bits = 2
)
(
    output [(Bits-1):0] out_0,
    output [(Bits-1):0] out_1,
    output [(Bits-1):0] out_2,
    output [(Bits-1):0] out_3,
    input [1:0] sel,
    input [(Bits-1):0] in
);
    assign out_0 = (sel == 2'h0)? in : 'd0;
    assign out_1 = (sel == 2'h1)? in : 'd0;
    assign out_2 = (sel == 2'h2)? in : 'd0;
    assign out_3 = (sel == 2'h3)? in : 'd0;
endmodule


module engine (
  input [11:0] x_i,
  input [11:0] y_i,
  input line,
  input frame,
  input hsync_i,
  input vsync_i,
  input en_disp_i,
  input clk,
  input rst,
  output [11:0] x_o,
  output [11:0] y_o,
  output [7:0] r,
  output [7:0] g,
  output [7:0] b,
  output hsync_o,
  output vsync_o,
  output en_disp_o
);
  wire [7:0] s0;
  wire [1:0] s1;
  wire [7:0] s2;
  wire [7:0] s3;
  wire [7:0] s4;
  wire [7:0] s5;
  wire [7:0] s6;
  wire [7:0] s7;
  wire [7:0] s8;
  assign s0 = x_i[8:1];
  assign s1 = y_i[7:6];
  DemuxBus2 #(
    .Bits(8)
  )
  DemuxBus2_i0 (
    .sel( s1 ),
    .in( s0 ),
    .out_0( s2 ),
    .out_1( s3 ),
    .out_2( s4 ),
    .out_3( s5 )
  );
  assign s6 = (s2 | s5);
  assign s7 = (s3 | s5);
  assign s8 = (s4 | s5);
  Mux_2x1_NBits #(
    .Bits(8)
  )
  Mux_2x1_NBits_i1 (
    .sel( en_disp_i ),
    .in_0( 8'b0 ),
    .in_1( s6 ),
    .out( r )
  );
  Mux_2x1_NBits #(
    .Bits(8)
  )
  Mux_2x1_NBits_i2 (
    .sel( en_disp_i ),
    .in_0( 8'b0 ),
    .in_1( s7 ),
    .out( g )
  );
  Mux_2x1_NBits #(
    .Bits(8)
  )
  Mux_2x1_NBits_i3 (
    .sel( en_disp_i ),
    .in_0( 8'b0 ),
    .in_1( s8 ),
    .out( b )
  );
  assign x_o = x_i;
  assign y_o = y_i;
  assign hsync_o = hsync_i;
  assign vsync_o = vsync_i;
  assign en_disp_o = en_disp_i;
endmodule

module vdp (
  input clk,
  input rst,
  input [11:0] h_fp,
  input [11:0] h_sync,
  input [11:0] h_bp,
  input [11:0] h_total,
  input h_neg,
  input [11:0] v_fp,
  input [11:0] v_sync,
  input [11:0] v_bp,
  input [11:0] v_total,
  input v_neg,
  output [7:0] r,
  output [7:0] g,
  output [7:0] b,
  output hsync,
  output vsync,
  output en_disp,
  output [11:0] x,
  output [11:0] y
);
  wire [11:0] s0;
  wire [11:0] s1;
  wire s2;
  wire s3;
  wire [11:0] s4;
  wire [11:0] s5;
  wire s6;
  wire s7;
  wire s8;
  wire s9;
  wire s10;
  scanxy scanxy_i0 (
    .C( clk ),
    .rst( rst ),
    .en( 1'b1 ),
    .h_total( h_total ),
    .v_total( v_total ),
    .x( s0 ),
    .y( s1 ),
    .line( s2 ),
    .frame( s3 )
  );
  vgasync vgasync_i1 (
    .x_i( s0 ),
    .y_i( s1 ),
    .line_i( s2 ),
    .frame_i( s3 ),
    .h_fp( h_fp ),
    .h_sync( h_sync ),
    .h_bp( h_bp ),
    .h_neg( h_neg ),
    .v_fp( v_fp ),
    .v_sync( v_sync ),
    .v_bp( v_bp ),
    .v_neg( v_neg ),
    .clk( clk ),
    .rst( rst ),
    .x_o( s4 ),
    .y_o( s5 ),
    .line_o( s6 ),
    .frame_o( s7 ),
    .hsync( s8 ),
    .vsync( s9 ),
    .en_disp( s10 )
  );
  engine engine_i2 (
    .x_i( s4 ),
    .y_i( s5 ),
    .line( s6 ),
    .frame( s7 ),
    .hsync_i( s8 ),
    .vsync_i( s9 ),
    .en_disp_i( s10 ),
    .clk( clk ),
    .rst( rst ),
    .x_o( x ),
    .y_o( y ),
    .r( r ),
    .g( g ),
    .b( b ),
    .hsync_o( hsync ),
    .vsync_o( vsync ),
    .en_disp_o( en_disp )
  );
endmodule

// This program was cloned from: https://github.com/lnis-uofu/SOFA
// License: MIT License

//
//
//
//
//
//
module sb_2__1__mux_tree_tapbuf_size2_mem ( prog_clk , ccff_head , ccff_tail , 
    mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;

wire copt_net_103 ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( copt_net_103 ) ) ;
sky130_fd_sc_hd__buf_6 FTB_33__32 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1276 ( .A ( copt_net_103 ) , 
    .X ( copt_net_102 ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1277 ( .A ( copt_net_105 ) , 
    .X ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1278 ( .A ( copt_net_107 ) , 
    .X ( copt_net_104 ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1279 ( .A ( copt_net_104 ) , 
    .X ( copt_net_105 ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1280 ( .A ( copt_net_108 ) , 
    .X ( copt_net_106 ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1281 ( .A ( copt_net_106 ) , 
    .X ( copt_net_107 ) ) ;
sky130_fd_sc_hd__buf_1 copt_h_inst_1282 ( .A ( copt_net_102 ) , 
    .X ( copt_net_108 ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size2_mem_4 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_32__31 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size2_mem_3 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_31__30 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size2_mem_2 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_30__29 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size2_mem_1 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_29__28 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size2_mem_0 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_28__27 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__const1 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size2 ( in , sram , sram_inv , out , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;

sb_2__1__const1 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( p0 ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__buf_6 BUFT_RR_97 ( .A ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .X ( out[0] ) ) ;
endmodule


module sb_2__1__const1_31 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size2_4 ( in , sram , sram_inv , out , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;

sb_2__1__const1_31 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( p0 ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__buf_6 BUFT_RR_96 ( .A ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .X ( out[0] ) ) ;
endmodule


module sb_2__1__const1_30 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size2_3 ( in , sram , sram_inv , out , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;

sb_2__1__const1_30 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( p0 ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_94 ( .A ( BUF_net_95 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_95 ( .A ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .Y ( BUF_net_95 ) ) ;
endmodule


module sb_2__1__const1_29 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size2_2 ( in , sram , sram_inv , out , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;

sb_2__1__const1_29 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( p0 ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_92 ( .A ( BUF_net_93 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_93 ( .A ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .Y ( BUF_net_93 ) ) ;
endmodule


module sb_2__1__const1_28 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size2_1 ( in , sram , sram_inv , out , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;

sb_2__1__const1_28 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( p0 ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_90 ( .A ( BUF_net_91 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_91 ( .A ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .Y ( BUF_net_91 ) ) ;
endmodule


module sb_2__1__const1_27 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size2_0 ( in , sram , sram_inv , out , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;

sb_2__1__const1_27 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( p0 ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_88 ( .A ( BUF_net_89 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_89 ( .A ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .Y ( BUF_net_89 ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size3_mem ( prog_clk , ccff_head , ccff_tail , 
    mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_27__26 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size3_mem_3 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_26__25 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size3_mem_2 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_25__24 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size3_mem_1 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_24__23 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size3_mem_0 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_23__22 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__const1_26 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size3 ( in , sram , sram_inv , out , p0 ) ;
input  [0:2] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;

sb_2__1__const1_26 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( p0 ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_86 ( .A ( BUF_net_87 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_87 ( .A ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , 
    .Y ( BUF_net_87 ) ) ;
endmodule


module sb_2__1__const1_25 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size3_3 ( in , sram , sram_inv , out , p0 ) ;
input  [0:2] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;

sb_2__1__const1_25 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( p0 ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_84 ( .A ( BUF_net_85 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_85 ( .A ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , 
    .Y ( BUF_net_85 ) ) ;
endmodule


module sb_2__1__const1_24 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size3_2 ( in , sram , sram_inv , out , p0 ) ;
input  [0:2] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;

sb_2__1__const1_24 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( p0 ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__buf_6 BUFT_RR_83 ( .A ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , 
    .X ( out[0] ) ) ;
endmodule


module sb_2__1__const1_23 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size3_1 ( in , sram , sram_inv , out , p0 ) ;
input  [0:2] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;

sb_2__1__const1_23 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( p0 ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_81 ( .A ( BUF_net_82 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_82 ( .A ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , 
    .Y ( BUF_net_82 ) ) ;
endmodule


module sb_2__1__const1_22 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size3_0 ( in , sram , sram_inv , out , p0 ) ;
input  [0:2] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;

sb_2__1__const1_22 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .X ( out[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( p0 ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size4_mem ( prog_clk , ccff_head , ccff_tail , 
    mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_22__21 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size4_mem_2 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_21__20 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size4_mem_1 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_20__19 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size4_mem_0 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_19__18 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__const1_21 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size4 ( in , sram , sram_inv , out , p0 ) ;
input  [0:3] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;

sb_2__1__const1_21 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , .X ( out[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( in[2] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( p0 ) , .A1 ( in[3] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
endmodule


module sb_2__1__const1_20 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size4_2 ( in , sram , sram_inv , out , p0 ) ;
input  [0:3] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;

sb_2__1__const1_20 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( in[2] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( p0 ) , .A1 ( in[3] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_79 ( .A ( BUF_net_80 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_80 ( .A ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .Y ( BUF_net_80 ) ) ;
endmodule


module sb_2__1__const1_19 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size4_1 ( in , sram , sram_inv , out , p0 ) ;
input  [0:3] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;

sb_2__1__const1_19 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( in[2] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( p0 ) , .A1 ( in[3] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_77 ( .A ( BUF_net_78 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_78 ( .A ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .Y ( BUF_net_78 ) ) ;
endmodule


module sb_2__1__const1_18 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size4_0 ( in , sram , sram_inv , out , p0 ) ;
input  [0:3] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;

sb_2__1__const1_18 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( in[2] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( p0 ) , .A1 ( in[3] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__buf_6 BUFT_RR_76 ( .A ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .X ( out[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size9_mem ( prog_clk , ccff_head , ccff_tail , 
    mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[3] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_18__17 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__const1_17 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size9 ( in , sram , sram_inv , out , p0 ) ;
input  [0:8] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_7_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_8_X ;

sb_2__1__const1_17 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_2_ ( .A0 ( in[7] ) , .A1 ( in[6] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_3_ ( .A0 ( p0 ) , .A1 ( in[8] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_7_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l4_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_7_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , .S ( sram[3] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_8_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_74 ( .A ( BUF_net_75 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_75 ( .A ( sky130_fd_sc_hd__mux2_1_8_X[0] ) , 
    .Y ( BUF_net_75 ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size6_mem ( prog_clk , ccff_head , ccff_tail , 
    mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_17__16 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size6_mem_1 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_16__15 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size6_mem_0 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_15__14 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__const1_16 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size6 ( in , sram , sram_inv , out , p0 ) ;
input  [0:5] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;

sb_2__1__const1_16 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , .X ( out[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( p0 ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
endmodule


module sb_2__1__const1_15 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size6_1 ( in , sram , sram_inv , out , p0 ) ;
input  [0:5] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;

sb_2__1__const1_15 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , .X ( out[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( p0 ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
endmodule


module sb_2__1__const1_14 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size6_0 ( in , sram , sram_inv , out , p0 ) ;
input  [0:5] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;

sb_2__1__const1_14 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , .X ( out[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( p0 ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_mem ( prog_clk , ccff_head , ccff_tail , 
    mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_14__13 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_mem_5 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_13__12 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_mem_4 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_12__11 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_mem_3 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_11__10 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_mem_2 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_10__9 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_mem_1 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_9__8 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_mem_0 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:2] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_8__7 ( .A ( mem_out[2] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__const1_13 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7 ( in , sram , sram_inv , out , p0 ) ;
input  [0:6] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;

sb_2__1__const1_13 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_3_ ( .A0 ( p0 ) , .A1 ( in[6] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_72 ( .A ( BUF_net_73 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_73 ( .A ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , 
    .Y ( BUF_net_73 ) ) ;
endmodule


module sb_2__1__const1_12 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_5 ( in , sram , sram_inv , out , p0 ) ;
input  [0:6] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;

sb_2__1__const1_12 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_3_ ( .A0 ( p0 ) , .A1 ( in[6] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__buf_6 BUFT_RR_71 ( .A ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , 
    .X ( out[0] ) ) ;
endmodule


module sb_2__1__const1_11 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_4 ( in , sram , sram_inv , out , p0 ) ;
input  [0:6] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;

sb_2__1__const1_11 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_3_ ( .A0 ( p0 ) , .A1 ( in[6] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_69 ( .A ( BUF_net_70 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_70 ( .A ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , 
    .Y ( BUF_net_70 ) ) ;
endmodule


module sb_2__1__const1_10 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_3 ( in , sram , sram_inv , out , p0 ) ;
input  [0:6] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;

sb_2__1__const1_10 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_3_ ( .A0 ( p0 ) , .A1 ( in[6] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__buf_6 BUFT_RR_68 ( .A ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , 
    .X ( out[0] ) ) ;
endmodule


module sb_2__1__const1_9 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_2 ( in , sram , sram_inv , out , p0 ) ;
input  [0:6] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;

sb_2__1__const1_9 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_3_ ( .A0 ( p0 ) , .A1 ( in[6] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_66 ( .A ( BUF_net_67 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_67 ( .A ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , 
    .Y ( BUF_net_67 ) ) ;
endmodule


module sb_2__1__const1_8 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_1 ( in , sram , sram_inv , out , p0 ) ;
input  [0:6] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;

sb_2__1__const1_8 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_3_ ( .A0 ( p0 ) , .A1 ( in[6] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_64 ( .A ( BUF_net_65 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_65 ( .A ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , 
    .Y ( BUF_net_65 ) ) ;
endmodule


module sb_2__1__const1_7 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size7_0 ( in , sram , sram_inv , out , p0 ) ;
input  [0:6] in ;
input  [0:2] sram ;
input  [0:2] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;

sb_2__1__const1_7 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , .X ( out[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_3_ ( .A0 ( p0 ) , .A1 ( in[6] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size14_mem ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[3] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_7__6 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size14_mem_0 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[3] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_6__5 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__const1_6 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size14 ( in , sram , sram_inv , out , p0 ) ;
input  [0:13] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_10_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_11_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_12_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_13_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_7_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_8_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_9_X ;

sb_2__1__const1_6 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( sky130_fd_sc_hd__mux2_1_13_X[0] ) , .X ( out[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_3_ ( .A0 ( in[7] ) , .A1 ( in[6] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_4_ ( .A0 ( in[9] ) , .A1 ( in[8] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_5_ ( .A0 ( in[11] ) , .A1 ( in[10] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_6_ ( .A0 ( in[13] ) , .A1 ( in[12] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_7_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_8_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_2_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_9_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_3_ ( .A0 ( p0 ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_10_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_8_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_7_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_11_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_10_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_9_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_12_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l4_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_12_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_11_X[0] ) , .S ( sram[3] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_13_X[0] ) ) ;
endmodule


module sb_2__1__const1_5 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size14_0 ( in , sram , sram_inv , out , p0 ) ;
input  [0:13] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_10_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_11_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_12_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_13_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_7_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_8_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_9_X ;

sb_2__1__const1_5 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_3_ ( .A0 ( in[7] ) , .A1 ( in[6] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_4_ ( .A0 ( in[9] ) , .A1 ( in[8] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_5_ ( .A0 ( in[11] ) , .A1 ( in[10] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_6_ ( .A0 ( in[13] ) , .A1 ( in[12] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_7_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_8_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_2_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_9_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_3_ ( .A0 ( p0 ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_10_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_8_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_7_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_11_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_10_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_9_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_12_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l4_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_12_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_11_X[0] ) , .S ( sram[3] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_13_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_62 ( .A ( BUF_net_63 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_63 ( .A ( sky130_fd_sc_hd__mux2_1_13_X[0] ) , 
    .Y ( BUF_net_63 ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size8_mem ( prog_clk , ccff_head , ccff_tail , 
    mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[3] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_5__4 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size8_mem_1 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[3] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_4__3 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size8_mem_0 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[3] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_3__2 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__const1_4 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size8 ( in , sram , sram_inv , out , p0 ) ;
input  [0:7] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_7_X ;

sb_2__1__const1_4 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( in[2] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( in[4] ) , .A1 ( in[3] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_2_ ( .A0 ( in[6] ) , .A1 ( in[5] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_3_ ( .A0 ( p0 ) , .A1 ( in[7] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l4_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , .S ( sram[3] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_7_X[0] ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_60 ( .A ( BUF_net_61 ) , .Y ( out[0] ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_61 ( .A ( sky130_fd_sc_hd__mux2_1_7_X[0] ) , 
    .Y ( BUF_net_61 ) ) ;
endmodule


module sb_2__1__const1_3 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size8_1 ( in , sram , sram_inv , out , p0 ) ;
input  [0:7] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_7_X ;

sb_2__1__const1_3 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( sky130_fd_sc_hd__mux2_1_7_X[0] ) , .X ( out[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( in[2] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( in[4] ) , .A1 ( in[3] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_2_ ( .A0 ( in[6] ) , .A1 ( in[5] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_3_ ( .A0 ( p0 ) , .A1 ( in[7] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l4_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , .S ( sram[3] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_7_X[0] ) ) ;
endmodule


module sb_2__1__const1_2 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size8_0 ( in , sram , sram_inv , out , p0 ) ;
input  [0:7] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_7_X ;

sb_2__1__const1_2 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( sky130_fd_sc_hd__mux2_1_7_X[0] ) , .X ( out[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( .A0 ( in[2] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( in[4] ) , .A1 ( in[3] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_2_ ( .A0 ( in[6] ) , .A1 ( in[5] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_3_ ( .A0 ( p0 ) , .A1 ( in[7] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l4_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , .S ( sram[3] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_7_X[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size10_mem ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[3] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_2__1 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__mux_tree_tapbuf_size10_mem_0 ( prog_clk , ccff_head , 
    ccff_tail , mem_out ) ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;

sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[0] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[1] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[2] ) ) ;
sky130_fd_sc_hd__dfxtp_1 sky130_fd_sc_hd__dfxtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .Q ( mem_out[3] ) ) ;
sky130_fd_sc_hd__buf_1 FTB_1__0 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) ) ;
endmodule


module sb_2__1__const1_1 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size10 ( in , sram , sram_inv , out , p0 ) ;
input  [0:9] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_7_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_8_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_9_X ;

sb_2__1__const1_1 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( sky130_fd_sc_hd__mux2_1_9_X[0] ) , .X ( out[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( in[6] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_2_ ( .A0 ( in[8] ) , .A1 ( in[7] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_3_ ( .A0 ( p0 ) , .A1 ( in[9] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_7_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_8_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l4_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_8_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_7_X[0] ) , .S ( sram[3] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_9_X[0] ) ) ;
endmodule


module sb_2__1__const1_0 ( const1 ) ;
output [0:0] const1 ;

wire [0:0] const1_0 ;

assign const1_0[0] = 1'b1 ;
endmodule


module sb_2__1__mux_tree_tapbuf_size10_0 ( in , sram , sram_inv , out , p0 ) ;
input  [0:9] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  p0 ;

wire [0:0] sky130_fd_sc_hd__mux2_1_0_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_1_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_2_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_3_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_4_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_5_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_6_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_7_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_8_X ;
wire [0:0] sky130_fd_sc_hd__mux2_1_9_X ;

sb_2__1__const1_0 const1_0_ (
    .const1 ( { SYNOPSYS_UNCONNECTED_1 } ) ) ;
sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( sky130_fd_sc_hd__mux2_1_9_X[0] ) , .X ( out[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_0_ ( .A0 ( in[1] ) , .A1 ( in[0] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_0_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_1_ ( .A0 ( in[3] ) , .A1 ( in[2] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_1_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l1_in_2_ ( .A0 ( in[5] ) , .A1 ( in[4] ) , 
    .S ( sram[0] ) , .X ( sky130_fd_sc_hd__mux2_1_2_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_1_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_0_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_3_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_1_ ( .A0 ( in[6] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_2_X[0] ) , .S ( sram[1] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_4_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_2_ ( .A0 ( in[8] ) , .A1 ( in[7] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_5_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l2_in_3_ ( .A0 ( p0 ) , .A1 ( in[9] ) , 
    .S ( sram[1] ) , .X ( sky130_fd_sc_hd__mux2_1_6_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_4_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_3_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_7_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l3_in_1_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_6_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_5_X[0] ) , .S ( sram[2] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_8_X[0] ) ) ;
sky130_fd_sc_hd__mux2_1 mux_l4_in_0_ ( 
    .A0 ( sky130_fd_sc_hd__mux2_1_8_X[0] ) , 
    .A1 ( sky130_fd_sc_hd__mux2_1_7_X[0] ) , .S ( sram[3] ) , 
    .X ( sky130_fd_sc_hd__mux2_1_9_X[0] ) ) ;
endmodule


module sb_2__1_ ( chany_top_in , top_left_grid_pin_42_ , 
    top_left_grid_pin_43_ , top_left_grid_pin_44_ , top_left_grid_pin_45_ , 
    top_left_grid_pin_46_ , top_left_grid_pin_47_ , top_left_grid_pin_48_ , 
    top_left_grid_pin_49_ , top_right_grid_pin_1_ , chany_bottom_in , 
    bottom_right_grid_pin_1_ , bottom_left_grid_pin_42_ , 
    bottom_left_grid_pin_43_ , bottom_left_grid_pin_44_ , 
    bottom_left_grid_pin_45_ , bottom_left_grid_pin_46_ , 
    bottom_left_grid_pin_47_ , bottom_left_grid_pin_48_ , 
    bottom_left_grid_pin_49_ , chanx_left_in , left_bottom_grid_pin_34_ , 
    left_bottom_grid_pin_35_ , left_bottom_grid_pin_36_ , 
    left_bottom_grid_pin_37_ , left_bottom_grid_pin_38_ , 
    left_bottom_grid_pin_39_ , left_bottom_grid_pin_40_ , 
    left_bottom_grid_pin_41_ , ccff_head , chany_top_out , chany_bottom_out , 
    chanx_left_out , ccff_tail , prog_clk_0_N_in ) ;
input  [0:19] chany_top_in ;
input  [0:0] top_left_grid_pin_42_ ;
input  [0:0] top_left_grid_pin_43_ ;
input  [0:0] top_left_grid_pin_44_ ;
input  [0:0] top_left_grid_pin_45_ ;
input  [0:0] top_left_grid_pin_46_ ;
input  [0:0] top_left_grid_pin_47_ ;
input  [0:0] top_left_grid_pin_48_ ;
input  [0:0] top_left_grid_pin_49_ ;
input  [0:0] top_right_grid_pin_1_ ;
input  [0:19] chany_bottom_in ;
input  [0:0] bottom_right_grid_pin_1_ ;
input  [0:0] bottom_left_grid_pin_42_ ;
input  [0:0] bottom_left_grid_pin_43_ ;
input  [0:0] bottom_left_grid_pin_44_ ;
input  [0:0] bottom_left_grid_pin_45_ ;
input  [0:0] bottom_left_grid_pin_46_ ;
input  [0:0] bottom_left_grid_pin_47_ ;
input  [0:0] bottom_left_grid_pin_48_ ;
input  [0:0] bottom_left_grid_pin_49_ ;
input  [0:19] chanx_left_in ;
input  [0:0] left_bottom_grid_pin_34_ ;
input  [0:0] left_bottom_grid_pin_35_ ;
input  [0:0] left_bottom_grid_pin_36_ ;
input  [0:0] left_bottom_grid_pin_37_ ;
input  [0:0] left_bottom_grid_pin_38_ ;
input  [0:0] left_bottom_grid_pin_39_ ;
input  [0:0] left_bottom_grid_pin_40_ ;
input  [0:0] left_bottom_grid_pin_41_ ;
input  [0:0] ccff_head ;
output [0:19] chany_top_out ;
output [0:19] chany_bottom_out ;
output [0:19] chanx_left_out ;
output [0:0] ccff_tail ;
input  prog_clk_0_N_in ;

wire [0:0] prog_clk ;
wire prog_clk_0 ;
wire [0:3] mux_tree_tapbuf_size10_0_sram ;
wire [0:3] mux_tree_tapbuf_size10_1_sram ;
wire [0:0] mux_tree_tapbuf_size10_mem_0_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size10_mem_1_ccff_tail ;
wire [0:3] mux_tree_tapbuf_size14_0_sram ;
wire [0:3] mux_tree_tapbuf_size14_1_sram ;
wire [0:0] mux_tree_tapbuf_size14_mem_0_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size14_mem_1_ccff_tail ;
wire [0:1] mux_tree_tapbuf_size2_0_sram ;
wire [0:1] mux_tree_tapbuf_size2_1_sram ;
wire [0:1] mux_tree_tapbuf_size2_2_sram ;
wire [0:1] mux_tree_tapbuf_size2_3_sram ;
wire [0:1] mux_tree_tapbuf_size2_4_sram ;
wire [0:1] mux_tree_tapbuf_size2_5_sram ;
wire [0:0] mux_tree_tapbuf_size2_mem_0_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size2_mem_1_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size2_mem_2_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size2_mem_3_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size2_mem_4_ccff_tail ;
wire [0:1] mux_tree_tapbuf_size3_0_sram ;
wire [0:1] mux_tree_tapbuf_size3_1_sram ;
wire [0:1] mux_tree_tapbuf_size3_2_sram ;
wire [0:1] mux_tree_tapbuf_size3_3_sram ;
wire [0:1] mux_tree_tapbuf_size3_4_sram ;
wire [0:0] mux_tree_tapbuf_size3_mem_0_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size3_mem_1_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size3_mem_2_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size3_mem_3_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size3_mem_4_ccff_tail ;
wire [0:2] mux_tree_tapbuf_size4_0_sram ;
wire [0:2] mux_tree_tapbuf_size4_1_sram ;
wire [0:2] mux_tree_tapbuf_size4_2_sram ;
wire [0:2] mux_tree_tapbuf_size4_3_sram ;
wire [0:0] mux_tree_tapbuf_size4_mem_0_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size4_mem_1_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size4_mem_2_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size4_mem_3_ccff_tail ;
wire [0:2] mux_tree_tapbuf_size6_0_sram ;
wire [0:2] mux_tree_tapbuf_size6_1_sram ;
wire [0:2] mux_tree_tapbuf_size6_2_sram ;
wire [0:0] mux_tree_tapbuf_size6_mem_0_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size6_mem_1_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size6_mem_2_ccff_tail ;
wire [0:2] mux_tree_tapbuf_size7_0_sram ;
wire [0:2] mux_tree_tapbuf_size7_1_sram ;
wire [0:2] mux_tree_tapbuf_size7_2_sram ;
wire [0:2] mux_tree_tapbuf_size7_3_sram ;
wire [0:2] mux_tree_tapbuf_size7_4_sram ;
wire [0:2] mux_tree_tapbuf_size7_5_sram ;
wire [0:2] mux_tree_tapbuf_size7_6_sram ;
wire [0:0] mux_tree_tapbuf_size7_mem_0_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size7_mem_1_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size7_mem_2_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size7_mem_3_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size7_mem_4_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size7_mem_5_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size7_mem_6_ccff_tail ;
wire [0:3] mux_tree_tapbuf_size8_0_sram ;
wire [0:3] mux_tree_tapbuf_size8_1_sram ;
wire [0:3] mux_tree_tapbuf_size8_2_sram ;
wire [0:0] mux_tree_tapbuf_size8_mem_0_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size8_mem_1_ccff_tail ;
wire [0:0] mux_tree_tapbuf_size8_mem_2_ccff_tail ;
wire [0:3] mux_tree_tapbuf_size9_0_sram ;
wire [0:0] mux_tree_tapbuf_size9_mem_0_ccff_tail ;

assign prog_clk_0 = prog_clk[0] ;

sb_2__1__mux_tree_tapbuf_size10_0 mux_top_track_0 (
    .in ( { top_left_grid_pin_42_[0] , top_left_grid_pin_44_[0] , 
        top_left_grid_pin_46_[0] , top_left_grid_pin_48_[0] , 
        top_right_grid_pin_1_[0] , chany_top_out[3] , chany_top_out[13] , 
        chanx_left_in[0] , chanx_left_in[7] , chanx_left_in[14] } ) ,
    .sram ( mux_tree_tapbuf_size10_0_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_1 , SYNOPSYS_UNCONNECTED_2 , 
        SYNOPSYS_UNCONNECTED_3 , SYNOPSYS_UNCONNECTED_4 } ) ,
    .out ( chany_top_out[0] ) , .p0 ( optlc_net_100 ) ) ;
sb_2__1__mux_tree_tapbuf_size10 mux_bottom_track_1 (
    .in ( { chany_bottom_out[3] , chany_bottom_out[13] , 
        bottom_right_grid_pin_1_[0] , bottom_left_grid_pin_43_[0] , 
        bottom_left_grid_pin_45_[0] , bottom_left_grid_pin_47_[0] , 
        bottom_left_grid_pin_49_[0] , chanx_left_in[1] , chanx_left_in[8] , 
        chanx_left_in[15] } ) ,
    .sram ( mux_tree_tapbuf_size10_1_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_5 , SYNOPSYS_UNCONNECTED_6 , 
        SYNOPSYS_UNCONNECTED_7 , SYNOPSYS_UNCONNECTED_8 } ) ,
    .out ( chany_bottom_out[0] ) , .p0 ( optlc_net_101 ) ) ;
sb_2__1__mux_tree_tapbuf_size10_mem_0 mem_top_track_0 ( 
    .prog_clk ( prog_clk ) , .ccff_head ( ccff_head ) , 
    .ccff_tail ( mux_tree_tapbuf_size10_mem_0_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size10_0_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size10_mem mem_bottom_track_1 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size6_mem_0_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size10_mem_1_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size10_1_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size8_0 mux_top_track_2 (
    .in ( { top_left_grid_pin_43_[0] , top_left_grid_pin_45_[0] , 
        top_left_grid_pin_47_[0] , top_left_grid_pin_49_[0] , 
        chany_top_out[5] , chany_top_out[14] , chanx_left_in[6] , 
        chanx_left_in[13] } ) ,
    .sram ( mux_tree_tapbuf_size8_0_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_9 , SYNOPSYS_UNCONNECTED_10 , 
        SYNOPSYS_UNCONNECTED_11 , SYNOPSYS_UNCONNECTED_12 } ) ,
    .out ( chany_top_out[1] ) , .p0 ( optlc_net_100 ) ) ;
sb_2__1__mux_tree_tapbuf_size8_1 mux_top_track_8 (
    .in ( { top_left_grid_pin_42_[0] , top_left_grid_pin_46_[0] , 
        top_right_grid_pin_1_[0] , chany_top_out[7] , chany_top_out[17] , 
        chanx_left_in[4] , chanx_left_in[11] , chanx_left_in[18] } ) ,
    .sram ( mux_tree_tapbuf_size8_1_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_13 , SYNOPSYS_UNCONNECTED_14 , 
        SYNOPSYS_UNCONNECTED_15 , SYNOPSYS_UNCONNECTED_16 } ) ,
    .out ( chany_top_out[4] ) , .p0 ( optlc_net_101 ) ) ;
sb_2__1__mux_tree_tapbuf_size8 mux_bottom_track_9 (
    .in ( { chany_bottom_out[7] , chany_bottom_out[17] , 
        bottom_right_grid_pin_1_[0] , bottom_left_grid_pin_45_[0] , 
        bottom_left_grid_pin_49_[0] , chanx_left_in[4] , chanx_left_in[11] , 
        chanx_left_in[18] } ) ,
    .sram ( mux_tree_tapbuf_size8_2_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_17 , SYNOPSYS_UNCONNECTED_18 , 
        SYNOPSYS_UNCONNECTED_19 , SYNOPSYS_UNCONNECTED_20 } ) ,
    .out ( chany_bottom_out[4] ) , .p0 ( optlc_net_98 ) ) ;
sb_2__1__mux_tree_tapbuf_size8_mem_0 mem_top_track_2 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size10_mem_0_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size8_mem_0_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size8_0_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size8_mem_1 mem_top_track_8 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size14_mem_0_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size8_mem_1_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size8_1_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size8_mem mem_bottom_track_9 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size14_mem_1_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size8_mem_2_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size8_2_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size14_0 mux_top_track_4 (
    .in ( { top_left_grid_pin_42_[0] , top_left_grid_pin_43_[0] , 
        top_left_grid_pin_44_[0] , top_left_grid_pin_45_[0] , 
        top_left_grid_pin_46_[0] , top_left_grid_pin_47_[0] , 
        top_left_grid_pin_48_[0] , top_left_grid_pin_49_[0] , 
        top_right_grid_pin_1_[0] , chany_top_out[6] , chany_top_out[15] , 
        chanx_left_in[5] , chanx_left_in[12] , chanx_left_in[19] } ) ,
    .sram ( mux_tree_tapbuf_size14_0_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_21 , SYNOPSYS_UNCONNECTED_22 , 
        SYNOPSYS_UNCONNECTED_23 , SYNOPSYS_UNCONNECTED_24 } ) ,
    .out ( chany_top_out[2] ) , .p0 ( optlc_net_101 ) ) ;
sb_2__1__mux_tree_tapbuf_size14 mux_bottom_track_5 (
    .in ( { chany_bottom_out[6] , chany_bottom_out[15] , 
        bottom_right_grid_pin_1_[0] , bottom_left_grid_pin_42_[0] , 
        bottom_left_grid_pin_43_[0] , bottom_left_grid_pin_44_[0] , 
        bottom_left_grid_pin_45_[0] , bottom_left_grid_pin_46_[0] , 
        bottom_left_grid_pin_47_[0] , bottom_left_grid_pin_48_[0] , 
        bottom_left_grid_pin_49_[0] , chanx_left_in[3] , chanx_left_in[10] , 
        chanx_left_in[17] } ) ,
    .sram ( mux_tree_tapbuf_size14_1_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_25 , SYNOPSYS_UNCONNECTED_26 , 
        SYNOPSYS_UNCONNECTED_27 , SYNOPSYS_UNCONNECTED_28 } ) ,
    .out ( chany_bottom_out[2] ) , .p0 ( optlc_net_98 ) ) ;
sb_2__1__mux_tree_tapbuf_size14_mem_0 mem_top_track_4 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size8_mem_0_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size14_mem_0_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size14_0_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size14_mem mem_bottom_track_5 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size9_mem_0_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size14_mem_1_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size14_1_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size7_0 mux_top_track_16 (
    .in ( { top_left_grid_pin_43_[0] , top_left_grid_pin_47_[0] , 
        chany_top_out[9] , chany_top_out[18] , chanx_left_in[3] , 
        chanx_left_in[10] , chanx_left_in[17] } ) ,
    .sram ( mux_tree_tapbuf_size7_0_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_29 , SYNOPSYS_UNCONNECTED_30 , 
        SYNOPSYS_UNCONNECTED_31 } ) ,
    .out ( chany_top_out[8] ) , .p0 ( optlc_net_101 ) ) ;
sb_2__1__mux_tree_tapbuf_size7_1 mux_top_track_24 (
    .in ( { top_left_grid_pin_44_[0] , top_left_grid_pin_48_[0] , 
        chany_top_out[10] , chany_top_out[19] , chanx_left_in[2] , 
        chanx_left_in[9] , chanx_left_in[16] } ) ,
    .sram ( mux_tree_tapbuf_size7_1_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_32 , SYNOPSYS_UNCONNECTED_33 , 
        SYNOPSYS_UNCONNECTED_34 } ) ,
    .out ( chany_top_out[12] ) , .p0 ( optlc_net_101 ) ) ;
sb_2__1__mux_tree_tapbuf_size7_2 mux_bottom_track_17 (
    .in ( { chany_bottom_out[9] , chany_bottom_out[18] , 
        bottom_left_grid_pin_42_[0] , bottom_left_grid_pin_46_[0] , 
        chanx_left_in[5] , chanx_left_in[12] , chanx_left_in[19] } ) ,
    .sram ( mux_tree_tapbuf_size7_2_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_35 , SYNOPSYS_UNCONNECTED_36 , 
        SYNOPSYS_UNCONNECTED_37 } ) ,
    .out ( chany_bottom_out[8] ) , .p0 ( optlc_net_101 ) ) ;
sb_2__1__mux_tree_tapbuf_size7_3 mux_left_track_1 (
    .in ( { chany_top_in[0] , chany_bottom_out[3] , chany_top_out[3] , 
        left_bottom_grid_pin_34_[0] , left_bottom_grid_pin_36_[0] , 
        left_bottom_grid_pin_38_[0] , left_bottom_grid_pin_40_[0] } ) ,
    .sram ( mux_tree_tapbuf_size7_3_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_38 , SYNOPSYS_UNCONNECTED_39 , 
        SYNOPSYS_UNCONNECTED_40 } ) ,
    .out ( chanx_left_out[0] ) , .p0 ( optlc_net_99 ) ) ;
sb_2__1__mux_tree_tapbuf_size7_4 mux_left_track_3 (
    .in ( { chany_bottom_out[5] , chany_bottom_in[0] , chany_top_out[5] , 
        chanx_left_out[13] , left_bottom_grid_pin_37_[0] , 
        left_bottom_grid_pin_39_[0] , left_bottom_grid_pin_41_[0] } ) ,
    .sram ( mux_tree_tapbuf_size7_4_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_41 , SYNOPSYS_UNCONNECTED_42 , 
        SYNOPSYS_UNCONNECTED_43 } ) ,
    .out ( chanx_left_out[1] ) , .p0 ( optlc_net_99 ) ) ;
sb_2__1__mux_tree_tapbuf_size7_5 mux_left_track_5 (
    .in ( { chany_bottom_out[6] , chany_bottom_in[1] , chany_top_out[6] , 
        left_bottom_grid_pin_34_[0] , left_bottom_grid_pin_36_[0] , 
        left_bottom_grid_pin_38_[0] , left_bottom_grid_pin_40_[0] } ) ,
    .sram ( mux_tree_tapbuf_size7_5_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_44 , SYNOPSYS_UNCONNECTED_45 , 
        SYNOPSYS_UNCONNECTED_46 } ) ,
    .out ( chanx_left_out[2] ) , .p0 ( optlc_net_99 ) ) ;
sb_2__1__mux_tree_tapbuf_size7 mux_left_track_7 (
    .in ( { chany_bottom_out[7] , chany_bottom_in[3] , chany_top_out[7] , 
        chanx_left_out[13] , left_bottom_grid_pin_37_[0] , 
        left_bottom_grid_pin_39_[0] , left_bottom_grid_pin_41_[0] } ) ,
    .sram ( mux_tree_tapbuf_size7_6_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_47 , SYNOPSYS_UNCONNECTED_48 , 
        SYNOPSYS_UNCONNECTED_49 } ) ,
    .out ( chanx_left_out[3] ) , .p0 ( optlc_net_98 ) ) ;
sb_2__1__mux_tree_tapbuf_size7_mem_0 mem_top_track_16 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size8_mem_1_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size7_mem_0_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size7_0_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size7_mem_1 mem_top_track_24 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size7_mem_0_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size7_mem_1_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size7_1_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size7_mem_2 mem_bottom_track_17 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size8_mem_2_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size7_mem_2_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size7_2_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size7_mem_3 mem_left_track_1 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size6_mem_2_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size7_mem_3_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size7_3_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size7_mem_4 mem_left_track_3 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size7_mem_3_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size7_mem_4_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size7_4_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size7_mem_5 mem_left_track_5 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size7_mem_4_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size7_mem_5_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size7_5_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size7_mem mem_left_track_7 ( .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size7_mem_5_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size7_mem_6_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size7_6_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size6_0 mux_top_track_32 (
    .in ( { top_left_grid_pin_45_[0] , top_left_grid_pin_49_[0] , 
        chany_top_out[11] , chanx_left_in[1] , chanx_left_in[8] , 
        chanx_left_in[15] } ) ,
    .sram ( mux_tree_tapbuf_size6_0_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_50 , SYNOPSYS_UNCONNECTED_51 , 
        SYNOPSYS_UNCONNECTED_52 } ) ,
    .out ( chany_top_out[16] ) , .p0 ( optlc_net_101 ) ) ;
sb_2__1__mux_tree_tapbuf_size6_1 mux_bottom_track_25 (
    .in ( { chany_bottom_out[10] , chany_bottom_out[19] , 
        bottom_left_grid_pin_43_[0] , bottom_left_grid_pin_47_[0] , 
        chanx_left_in[6] , chanx_left_in[13] } ) ,
    .sram ( mux_tree_tapbuf_size6_1_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_53 , SYNOPSYS_UNCONNECTED_54 , 
        SYNOPSYS_UNCONNECTED_55 } ) ,
    .out ( chany_bottom_out[12] ) , .p0 ( optlc_net_98 ) ) ;
sb_2__1__mux_tree_tapbuf_size6 mux_bottom_track_33 (
    .in ( { chany_bottom_out[11] , bottom_left_grid_pin_44_[0] , 
        bottom_left_grid_pin_48_[0] , chanx_left_in[0] , chanx_left_in[7] , 
        chanx_left_in[14] } ) ,
    .sram ( mux_tree_tapbuf_size6_2_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_56 , SYNOPSYS_UNCONNECTED_57 , 
        SYNOPSYS_UNCONNECTED_58 } ) ,
    .out ( chany_bottom_out[16] ) , .p0 ( optlc_net_100 ) ) ;
sb_2__1__mux_tree_tapbuf_size6_mem_0 mem_top_track_32 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size7_mem_1_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size6_mem_0_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size6_0_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size6_mem_1 mem_bottom_track_25 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size7_mem_2_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size6_mem_1_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size6_1_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size6_mem mem_bottom_track_33 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size6_mem_1_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size6_mem_2_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size6_2_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size9 mux_bottom_track_3 (
    .in ( { chany_bottom_out[5] , chany_bottom_out[14] , 
        bottom_left_grid_pin_42_[0] , bottom_left_grid_pin_44_[0] , 
        bottom_left_grid_pin_46_[0] , bottom_left_grid_pin_48_[0] , 
        chanx_left_in[2] , chanx_left_in[9] , chanx_left_in[16] } ) ,
    .sram ( mux_tree_tapbuf_size9_0_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_59 , SYNOPSYS_UNCONNECTED_60 , 
        SYNOPSYS_UNCONNECTED_61 , SYNOPSYS_UNCONNECTED_62 } ) ,
    .out ( chany_bottom_out[1] ) , .p0 ( optlc_net_101 ) ) ;
sb_2__1__mux_tree_tapbuf_size9_mem mem_bottom_track_3 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size10_mem_1_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size9_mem_0_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size9_0_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size4_0 mux_left_track_9 (
    .in ( { chany_bottom_out[9] , chany_bottom_in[7] , chany_top_out[9] , 
        left_bottom_grid_pin_34_[0] } ) ,
    .sram ( mux_tree_tapbuf_size4_0_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_63 , SYNOPSYS_UNCONNECTED_64 , 
        SYNOPSYS_UNCONNECTED_65 } ) ,
    .out ( chanx_left_out[4] ) , .p0 ( optlc_net_98 ) ) ;
sb_2__1__mux_tree_tapbuf_size4_1 mux_left_track_11 (
    .in ( { chany_bottom_out[10] , chany_top_out[10] , chany_bottom_in[11] , 
        chanx_left_out[13] } ) ,
    .sram ( mux_tree_tapbuf_size4_1_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_66 , SYNOPSYS_UNCONNECTED_67 , 
        SYNOPSYS_UNCONNECTED_68 } ) ,
    .out ( chanx_left_out[5] ) , .p0 ( optlc_net_98 ) ) ;
sb_2__1__mux_tree_tapbuf_size4_2 mux_left_track_13 (
    .in ( { chany_bottom_out[11] , chany_top_out[11] , chany_bottom_in[15] , 
        left_bottom_grid_pin_36_[0] } ) ,
    .sram ( mux_tree_tapbuf_size4_2_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_69 , SYNOPSYS_UNCONNECTED_70 , 
        SYNOPSYS_UNCONNECTED_71 } ) ,
    .out ( chanx_left_out[6] ) , .p0 ( optlc_net_99 ) ) ;
sb_2__1__mux_tree_tapbuf_size4 mux_left_track_15 (
    .in ( { chany_bottom_out[13] , chany_top_out[13] , chany_bottom_in[19] , 
        left_bottom_grid_pin_37_[0] } ) ,
    .sram ( mux_tree_tapbuf_size4_3_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_72 , SYNOPSYS_UNCONNECTED_73 , 
        SYNOPSYS_UNCONNECTED_74 } ) ,
    .out ( chanx_left_out[7] ) , .p0 ( optlc_net_99 ) ) ;
sb_2__1__mux_tree_tapbuf_size4_mem_0 mem_left_track_9 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size7_mem_6_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size4_mem_0_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size4_0_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size4_mem_1 mem_left_track_11 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size4_mem_0_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size4_mem_1_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size4_1_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size4_mem_2 mem_left_track_13 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size4_mem_1_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size4_mem_2_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size4_2_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size4_mem mem_left_track_15 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size4_mem_2_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size4_mem_3_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size4_3_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size3_0 mux_left_track_17 (
    .in ( { chany_bottom_out[14] , chany_top_out[14] , 
        left_bottom_grid_pin_38_[0] } ) ,
    .sram ( mux_tree_tapbuf_size3_0_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_75 , SYNOPSYS_UNCONNECTED_76 } ) ,
    .out ( chanx_left_out[8] ) , .p0 ( optlc_net_99 ) ) ;
sb_2__1__mux_tree_tapbuf_size3_1 mux_left_track_19 (
    .in ( { chany_bottom_out[15] , chany_top_out[15] , 
        left_bottom_grid_pin_39_[0] } ) ,
    .sram ( mux_tree_tapbuf_size3_1_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_77 , SYNOPSYS_UNCONNECTED_78 } ) ,
    .out ( chanx_left_out[9] ) , .p0 ( optlc_net_100 ) ) ;
sb_2__1__mux_tree_tapbuf_size3_2 mux_left_track_21 (
    .in ( { chany_bottom_out[17] , chany_top_out[17] , 
        left_bottom_grid_pin_40_[0] } ) ,
    .sram ( mux_tree_tapbuf_size3_2_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_79 , SYNOPSYS_UNCONNECTED_80 } ) ,
    .out ( chanx_left_out[10] ) , .p0 ( optlc_net_100 ) ) ;
sb_2__1__mux_tree_tapbuf_size3_3 mux_left_track_23 (
    .in ( { chany_bottom_out[18] , chany_top_out[18] , 
        left_bottom_grid_pin_41_[0] } ) ,
    .sram ( mux_tree_tapbuf_size3_3_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_81 , SYNOPSYS_UNCONNECTED_82 } ) ,
    .out ( chanx_left_out[11] ) , .p0 ( optlc_net_99 ) ) ;
sb_2__1__mux_tree_tapbuf_size3 mux_left_track_25 (
    .in ( { chany_bottom_out[19] , chany_top_out[19] , 
        left_bottom_grid_pin_34_[0] } ) ,
    .sram ( mux_tree_tapbuf_size3_4_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_83 , SYNOPSYS_UNCONNECTED_84 } ) ,
    .out ( chanx_left_out[12] ) , .p0 ( optlc_net_99 ) ) ;
sb_2__1__mux_tree_tapbuf_size3_mem_0 mem_left_track_17 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size4_mem_3_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size3_mem_0_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size3_0_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size3_mem_1 mem_left_track_19 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size3_mem_0_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size3_mem_1_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size3_1_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size3_mem_2 mem_left_track_21 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size3_mem_1_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size3_mem_2_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size3_2_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size3_mem_3 mem_left_track_23 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size3_mem_2_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size3_mem_3_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size3_3_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size3_mem mem_left_track_25 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size3_mem_3_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size3_mem_4_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size3_4_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size2_0 mux_left_track_29 (
    .in ( { chany_top_in[19] , left_bottom_grid_pin_36_[0] } ) ,
    .sram ( mux_tree_tapbuf_size2_0_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_85 , SYNOPSYS_UNCONNECTED_86 } ) ,
    .out ( chanx_left_out[14] ) , .p0 ( optlc_net_100 ) ) ;
sb_2__1__mux_tree_tapbuf_size2_1 mux_left_track_31 (
    .in ( { chany_top_in[15] , left_bottom_grid_pin_37_[0] } ) ,
    .sram ( mux_tree_tapbuf_size2_1_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_87 , SYNOPSYS_UNCONNECTED_88 } ) ,
    .out ( chanx_left_out[15] ) , .p0 ( optlc_net_100 ) ) ;
sb_2__1__mux_tree_tapbuf_size2_2 mux_left_track_33 (
    .in ( { chany_top_in[11] , left_bottom_grid_pin_38_[0] } ) ,
    .sram ( mux_tree_tapbuf_size2_2_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_89 , SYNOPSYS_UNCONNECTED_90 } ) ,
    .out ( chanx_left_out[16] ) , .p0 ( optlc_net_100 ) ) ;
sb_2__1__mux_tree_tapbuf_size2_3 mux_left_track_35 (
    .in ( { chany_top_in[7] , left_bottom_grid_pin_39_[0] } ) ,
    .sram ( mux_tree_tapbuf_size2_3_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_91 , SYNOPSYS_UNCONNECTED_92 } ) ,
    .out ( chanx_left_out[17] ) , .p0 ( optlc_net_100 ) ) ;
sb_2__1__mux_tree_tapbuf_size2_4 mux_left_track_37 (
    .in ( { chany_top_in[3] , left_bottom_grid_pin_40_[0] } ) ,
    .sram ( mux_tree_tapbuf_size2_4_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_93 , SYNOPSYS_UNCONNECTED_94 } ) ,
    .out ( chanx_left_out[18] ) , .p0 ( optlc_net_100 ) ) ;
sb_2__1__mux_tree_tapbuf_size2 mux_left_track_39 (
    .in ( { chany_top_in[1] , left_bottom_grid_pin_41_[0] } ) ,
    .sram ( mux_tree_tapbuf_size2_5_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_95 , SYNOPSYS_UNCONNECTED_96 } ) ,
    .out ( chanx_left_out[19] ) , .p0 ( optlc_net_98 ) ) ;
sb_2__1__mux_tree_tapbuf_size2_mem_0 mem_left_track_29 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size3_mem_4_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size2_mem_0_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size2_0_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size2_mem_1 mem_left_track_31 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size2_mem_0_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size2_mem_1_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size2_1_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size2_mem_2 mem_left_track_33 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size2_mem_1_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size2_mem_2_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size2_2_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size2_mem_3 mem_left_track_35 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size2_mem_2_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size2_mem_3_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size2_3_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size2_mem_4 mem_left_track_37 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size2_mem_3_ccff_tail ) , 
    .ccff_tail ( mux_tree_tapbuf_size2_mem_4_ccff_tail ) , 
    .mem_out ( mux_tree_tapbuf_size2_4_sram ) ) ;
sb_2__1__mux_tree_tapbuf_size2_mem mem_left_track_39 ( 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_tree_tapbuf_size2_mem_4_ccff_tail ) , 
    .ccff_tail ( ccff_tail ) , .mem_out ( mux_tree_tapbuf_size2_5_sram ) ) ;
sky130_fd_sc_hd__buf_16 prog_clk_0_FTB00 ( .A ( prog_clk_0_N_in ) , 
    .X ( prog_clk[0] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_34__33 ( .A ( chany_top_in[2] ) , 
    .X ( chany_bottom_out[3] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_35__34 ( .A ( chany_top_in[4] ) , 
    .X ( chany_bottom_out[5] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_36__35 ( .A ( chany_top_in[5] ) , 
    .X ( chany_bottom_out[6] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_37__36 ( .A ( chany_top_in[6] ) , 
    .X ( chany_bottom_out[7] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_38__37 ( .A ( chany_top_in[8] ) , 
    .X ( chany_bottom_out[9] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_39__38 ( .A ( chany_top_in[9] ) , 
    .X ( chany_bottom_out[10] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_40__39 ( .A ( chany_top_in[10] ) , 
    .X ( chany_bottom_out[11] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_41__40 ( .A ( chany_top_in[12] ) , 
    .X ( chany_bottom_out[13] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_42__41 ( .A ( chany_top_in[13] ) , 
    .X ( chany_bottom_out[14] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_43__42 ( .A ( chany_top_in[14] ) , 
    .X ( chany_bottom_out[15] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_44__43 ( .A ( chany_top_in[16] ) , 
    .X ( chany_bottom_out[17] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_45__44 ( .A ( chany_top_in[17] ) , 
    .X ( chany_bottom_out[18] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_46__45 ( .A ( chany_top_in[18] ) , 
    .X ( chany_bottom_out[19] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_47__46 ( .A ( chany_bottom_in[2] ) , 
    .X ( chany_top_out[3] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_48__47 ( .A ( chany_bottom_in[4] ) , 
    .X ( chany_top_out[5] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_49__48 ( .A ( chany_bottom_in[5] ) , 
    .X ( chany_top_out[6] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_50__49 ( .A ( chany_bottom_in[6] ) , 
    .X ( chany_top_out[7] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_51__50 ( .A ( chany_bottom_in[8] ) , 
    .X ( chany_top_out[9] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_52__51 ( .A ( chany_bottom_in[9] ) , 
    .X ( chany_top_out[10] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_53__52 ( .A ( chany_bottom_in[10] ) , 
    .X ( chany_top_out[11] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_54__53 ( .A ( chany_bottom_in[12] ) , 
    .X ( chany_top_out[13] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_55__54 ( .A ( chany_bottom_in[13] ) , 
    .X ( chany_top_out[14] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_56__55 ( .A ( chany_bottom_in[14] ) , 
    .X ( chany_top_out[15] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_57__56 ( .A ( chany_bottom_in[16] ) , 
    .X ( chany_top_out[17] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_58__57 ( .A ( chany_bottom_in[17] ) , 
    .X ( chany_top_out[18] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_59__58 ( .A ( chany_bottom_in[18] ) , 
    .X ( chany_top_out[19] ) ) ;
sky130_fd_sc_hd__buf_8 FTB_60__59 ( .A ( left_bottom_grid_pin_35_[0] ) , 
    .X ( chanx_left_out[13] ) ) ;
sky130_fd_sc_hd__conb_1 optlc_100 ( .LO ( SYNOPSYS_UNCONNECTED_97 ) , 
    .HI ( optlc_net_98 ) ) ;
sky130_fd_sc_hd__conb_1 optlc_102 ( .LO ( SYNOPSYS_UNCONNECTED_98 ) , 
    .HI ( optlc_net_99 ) ) ;
sky130_fd_sc_hd__conb_1 optlc_104 ( .LO ( SYNOPSYS_UNCONNECTED_99 ) , 
    .HI ( optlc_net_100 ) ) ;
sky130_fd_sc_hd__conb_1 optlc_106 ( .LO ( SYNOPSYS_UNCONNECTED_100 ) , 
    .HI ( optlc_net_101 ) ) ;
endmodule



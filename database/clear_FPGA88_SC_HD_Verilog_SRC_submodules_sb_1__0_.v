// This program was cloned from: https://github.com/efabless/clear
// License: Apache License 2.0

//Generated from netlist by SpyDrNet
//netlist name: FPGA88_SOFA_A
module sb_1__0_
(
    `ifdef USE_POWER_PINS
    VPWR,
    VGND, 
    `endif
    ccff_head,
    chanx_left_in,
    chanx_right_in,
    chany_top_in,
    left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_,
    left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_,
    left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_,
    left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_,
    prog_clk,
    prog_reset,
    right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_,
    right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_,
    right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_,
    right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_,
    top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_,
    top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_,
    top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_,
    top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_,
    top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_,
    top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_,
    top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_,
    top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_,
    ccff_tail,
    chanx_left_out,
    chanx_right_out,
    chany_top_out
);
    `ifdef USE_POWER_PINS
    input VPWR;
    input VGND;
    `endif
    input ccff_head;
    input [0:29]chanx_left_in;
    input [0:29]chanx_right_in;
    input [0:29]chany_top_in;
    input left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_;
    input left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_;
    input left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_;
    input left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_;
    input prog_clk;
    input prog_reset;
    input right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_;
    input right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_;
    input right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_;
    input right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_;
    input top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_;
    input top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_;
    input top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_;
    input top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_;
    input top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_;
    input top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_;
    input top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_;
    input top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_;
    output ccff_tail;
    output [0:29]chanx_left_out;
    output [0:29]chanx_right_out;
    output [0:29]chany_top_out;

    wire ccff_head;
    wire ccff_tail;
    wire [0:29]chanx_left_in;
    wire [0:29]chanx_left_out;
    wire [0:29]chanx_right_in;
    wire [0:29]chanx_right_out;
    wire [0:29]chany_top_in;
    wire [0:29]chany_top_out;
    wire left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_;
    wire left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_;
    wire left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_;
    wire left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_;
    wire [0:2]mux_left_track_11_undriven_sram_inv;
    wire [0:2]mux_left_track_13_undriven_sram_inv;
    wire [0:2]mux_left_track_1_undriven_sram_inv;
    wire [0:2]mux_left_track_21_undriven_sram_inv;
    wire [0:2]mux_left_track_29_undriven_sram_inv;
    wire [0:2]mux_left_track_37_undriven_sram_inv;
    wire [0:2]mux_left_track_3_undriven_sram_inv;
    wire [0:2]mux_left_track_45_undriven_sram_inv;
    wire [0:2]mux_left_track_53_undriven_sram_inv;
    wire [0:2]mux_left_track_5_undriven_sram_inv;
    wire [0:2]mux_left_track_7_undriven_sram_inv;
    wire [0:2]mux_right_track_0_undriven_sram_inv;
    wire [0:2]mux_right_track_10_undriven_sram_inv;
    wire [0:2]mux_right_track_12_undriven_sram_inv;
    wire [0:2]mux_right_track_20_undriven_sram_inv;
    wire [0:2]mux_right_track_28_undriven_sram_inv;
    wire [0:2]mux_right_track_2_undriven_sram_inv;
    wire [0:2]mux_right_track_36_undriven_sram_inv;
    wire [0:1]mux_right_track_44_undriven_sram_inv;
    wire [0:2]mux_right_track_4_undriven_sram_inv;
    wire [0:1]mux_right_track_52_undriven_sram_inv;
    wire [0:2]mux_right_track_6_undriven_sram_inv;
    wire [0:2]mux_top_track_0_undriven_sram_inv;
    wire [0:2]mux_top_track_10_undriven_sram_inv;
    wire [0:2]mux_top_track_12_undriven_sram_inv;
    wire [0:2]mux_top_track_14_undriven_sram_inv;
    wire [0:2]mux_top_track_16_undriven_sram_inv;
    wire [0:2]mux_top_track_18_undriven_sram_inv;
    wire [0:1]mux_top_track_20_undriven_sram_inv;
    wire [0:1]mux_top_track_22_undriven_sram_inv;
    wire [0:1]mux_top_track_24_undriven_sram_inv;
    wire [0:1]mux_top_track_26_undriven_sram_inv;
    wire [0:1]mux_top_track_28_undriven_sram_inv;
    wire [0:2]mux_top_track_2_undriven_sram_inv;
    wire [0:1]mux_top_track_30_undriven_sram_inv;
    wire [0:1]mux_top_track_32_undriven_sram_inv;
    wire [0:1]mux_top_track_34_undriven_sram_inv;
    wire [0:1]mux_top_track_36_undriven_sram_inv;
    wire [0:1]mux_top_track_40_undriven_sram_inv;
    wire [0:1]mux_top_track_42_undriven_sram_inv;
    wire [0:1]mux_top_track_44_undriven_sram_inv;
    wire [0:1]mux_top_track_46_undriven_sram_inv;
    wire [0:1]mux_top_track_48_undriven_sram_inv;
    wire [0:2]mux_top_track_4_undriven_sram_inv;
    wire [0:1]mux_top_track_50_undriven_sram_inv;
    wire [0:1]mux_top_track_58_undriven_sram_inv;
    wire [0:2]mux_top_track_6_undriven_sram_inv;
    wire [0:2]mux_top_track_8_undriven_sram_inv;
    wire [0:1]mux_tree_tapbuf_size2_0_sram;
    wire [0:1]mux_tree_tapbuf_size2_10_sram;
    wire [0:1]mux_tree_tapbuf_size2_1_sram;
    wire [0:1]mux_tree_tapbuf_size2_2_sram;
    wire [0:1]mux_tree_tapbuf_size2_3_sram;
    wire [0:1]mux_tree_tapbuf_size2_4_sram;
    wire [0:1]mux_tree_tapbuf_size2_5_sram;
    wire [0:1]mux_tree_tapbuf_size2_6_sram;
    wire [0:1]mux_tree_tapbuf_size2_7_sram;
    wire [0:1]mux_tree_tapbuf_size2_8_sram;
    wire [0:1]mux_tree_tapbuf_size2_9_sram;
    wire mux_tree_tapbuf_size2_mem_0_ccff_tail;
    wire mux_tree_tapbuf_size2_mem_10_ccff_tail;
    wire mux_tree_tapbuf_size2_mem_1_ccff_tail;
    wire mux_tree_tapbuf_size2_mem_2_ccff_tail;
    wire mux_tree_tapbuf_size2_mem_3_ccff_tail;
    wire mux_tree_tapbuf_size2_mem_4_ccff_tail;
    wire mux_tree_tapbuf_size2_mem_5_ccff_tail;
    wire mux_tree_tapbuf_size2_mem_6_ccff_tail;
    wire mux_tree_tapbuf_size2_mem_7_ccff_tail;
    wire mux_tree_tapbuf_size2_mem_8_ccff_tail;
    wire mux_tree_tapbuf_size2_mem_9_ccff_tail;
    wire [0:1]mux_tree_tapbuf_size3_0_sram;
    wire [0:1]mux_tree_tapbuf_size3_1_sram;
    wire [0:1]mux_tree_tapbuf_size3_2_sram;
    wire [0:1]mux_tree_tapbuf_size3_3_sram;
    wire [0:1]mux_tree_tapbuf_size3_4_sram;
    wire [0:1]mux_tree_tapbuf_size3_5_sram;
    wire [0:1]mux_tree_tapbuf_size3_6_sram;
    wire mux_tree_tapbuf_size3_mem_0_ccff_tail;
    wire mux_tree_tapbuf_size3_mem_1_ccff_tail;
    wire mux_tree_tapbuf_size3_mem_2_ccff_tail;
    wire mux_tree_tapbuf_size3_mem_3_ccff_tail;
    wire mux_tree_tapbuf_size3_mem_4_ccff_tail;
    wire mux_tree_tapbuf_size3_mem_5_ccff_tail;
    wire mux_tree_tapbuf_size3_mem_6_ccff_tail;
    wire [0:2]mux_tree_tapbuf_size4_0_sram;
    wire [0:2]mux_tree_tapbuf_size4_1_sram;
    wire [0:2]mux_tree_tapbuf_size4_2_sram;
    wire [0:2]mux_tree_tapbuf_size4_3_sram;
    wire [0:2]mux_tree_tapbuf_size4_4_sram;
    wire [0:2]mux_tree_tapbuf_size4_5_sram;
    wire mux_tree_tapbuf_size4_mem_0_ccff_tail;
    wire mux_tree_tapbuf_size4_mem_1_ccff_tail;
    wire mux_tree_tapbuf_size4_mem_2_ccff_tail;
    wire mux_tree_tapbuf_size4_mem_3_ccff_tail;
    wire mux_tree_tapbuf_size4_mem_4_ccff_tail;
    wire [0:2]mux_tree_tapbuf_size5_0_sram;
    wire [0:2]mux_tree_tapbuf_size5_1_sram;
    wire [0:2]mux_tree_tapbuf_size5_2_sram;
    wire [0:2]mux_tree_tapbuf_size5_3_sram;
    wire [0:2]mux_tree_tapbuf_size5_4_sram;
    wire [0:2]mux_tree_tapbuf_size5_5_sram;
    wire mux_tree_tapbuf_size5_mem_0_ccff_tail;
    wire mux_tree_tapbuf_size5_mem_1_ccff_tail;
    wire mux_tree_tapbuf_size5_mem_2_ccff_tail;
    wire mux_tree_tapbuf_size5_mem_3_ccff_tail;
    wire mux_tree_tapbuf_size5_mem_4_ccff_tail;
    wire mux_tree_tapbuf_size5_mem_5_ccff_tail;
    wire [0:2]mux_tree_tapbuf_size6_0_sram;
    wire [0:2]mux_tree_tapbuf_size6_10_sram;
    wire [0:2]mux_tree_tapbuf_size6_11_sram;
    wire [0:2]mux_tree_tapbuf_size6_12_sram;
    wire [0:2]mux_tree_tapbuf_size6_1_sram;
    wire [0:2]mux_tree_tapbuf_size6_2_sram;
    wire [0:2]mux_tree_tapbuf_size6_3_sram;
    wire [0:2]mux_tree_tapbuf_size6_4_sram;
    wire [0:2]mux_tree_tapbuf_size6_5_sram;
    wire [0:2]mux_tree_tapbuf_size6_6_sram;
    wire [0:2]mux_tree_tapbuf_size6_7_sram;
    wire [0:2]mux_tree_tapbuf_size6_8_sram;
    wire [0:2]mux_tree_tapbuf_size6_9_sram;
    wire mux_tree_tapbuf_size6_mem_0_ccff_tail;
    wire mux_tree_tapbuf_size6_mem_10_ccff_tail;
    wire mux_tree_tapbuf_size6_mem_11_ccff_tail;
    wire mux_tree_tapbuf_size6_mem_12_ccff_tail;
    wire mux_tree_tapbuf_size6_mem_1_ccff_tail;
    wire mux_tree_tapbuf_size6_mem_2_ccff_tail;
    wire mux_tree_tapbuf_size6_mem_3_ccff_tail;
    wire mux_tree_tapbuf_size6_mem_4_ccff_tail;
    wire mux_tree_tapbuf_size6_mem_5_ccff_tail;
    wire mux_tree_tapbuf_size6_mem_6_ccff_tail;
    wire mux_tree_tapbuf_size6_mem_7_ccff_tail;
    wire mux_tree_tapbuf_size6_mem_8_ccff_tail;
    wire mux_tree_tapbuf_size6_mem_9_ccff_tail;
    wire [0:2]mux_tree_tapbuf_size7_0_sram;
    wire [0:2]mux_tree_tapbuf_size7_1_sram;
    wire [0:2]mux_tree_tapbuf_size7_2_sram;
    wire [0:2]mux_tree_tapbuf_size7_3_sram;
    wire [0:2]mux_tree_tapbuf_size7_4_sram;
    wire mux_tree_tapbuf_size7_mem_0_ccff_tail;
    wire mux_tree_tapbuf_size7_mem_1_ccff_tail;
    wire mux_tree_tapbuf_size7_mem_2_ccff_tail;
    wire mux_tree_tapbuf_size7_mem_3_ccff_tail;
    wire mux_tree_tapbuf_size7_mem_4_ccff_tail;
    wire prog_clk;
    wire prog_reset;
    wire right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_;
    wire right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_;
    wire right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_;
    wire right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_;
    wire top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_;
    wire top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_;
    wire top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_;
    wire top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_;
    wire top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_;
    wire top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_;
    wire top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_;
    wire top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_;

assign chany_top_out[19] = top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_;
assign chanx_left_out[4] = chanx_right_in[3];
assign chanx_left_out[17] = chanx_right_in[16];
assign chanx_left_out[19] = chanx_right_in[18];
assign chanx_left_out[20] = chanx_right_in[19];
assign chanx_left_out[21] = chanx_right_in[20];
assign chanx_left_out[23] = chanx_right_in[22];
assign chanx_left_out[24] = chanx_right_in[23];
assign chanx_left_out[25] = chanx_right_in[24];
assign chanx_left_out[27] = chanx_right_in[26];
assign chanx_left_out[28] = chanx_right_in[27];
assign chanx_left_out[29] = chanx_right_in[28];
assign chanx_left_out[7] = chanx_right_in[6];
assign chany_top_out[28] = chanx_left_in[2];
assign chanx_right_out[4] = chanx_left_in[3];
assign chany_top_out[27] = chanx_left_in[4];
assign chany_top_out[26] = chanx_left_in[5];
assign chanx_right_out[7] = chanx_left_in[6];
assign chanx_right_out[8] = chanx_left_in[7];
assign chanx_right_out[9] = chanx_left_in[8];
assign chanx_right_out[11] = chanx_left_in[10];
assign chanx_right_out[12] = chanx_left_in[11];
assign chanx_right_out[13] = chanx_left_in[12];
assign chanx_left_out[8] = chanx_right_in[7];
assign chanx_right_out[15] = chanx_left_in[14];
assign chanx_right_out[16] = chanx_left_in[15];
assign chanx_right_out[17] = chanx_left_in[16];
assign chanx_right_out[19] = chanx_left_in[18];
assign chanx_right_out[20] = chanx_left_in[19];
assign chanx_right_out[21] = chanx_left_in[20];
assign chanx_right_out[23] = chanx_left_in[22];
assign chanx_right_out[24] = chanx_left_in[23];
assign chanx_right_out[25] = chanx_left_in[24];
assign chanx_right_out[27] = chanx_left_in[26];
assign chanx_left_out[9] = chanx_right_in[8];
assign chanx_right_out[28] = chanx_left_in[27];
assign chanx_right_out[29] = chanx_left_in[28];
assign chanx_left_out[11] = chanx_right_in[10];
assign chanx_left_out[12] = chanx_right_in[11];
assign chanx_left_out[13] = chanx_right_in[12];
assign chanx_left_out[15] = chanx_right_in[14];
assign chanx_left_out[16] = chanx_right_in[15];
    mux_tree_tapbuf_size7_mem mem_left_track_1
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size3_mem_6_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size7_mem_3_ccff_tail),
        .mem_out(mux_tree_tapbuf_size7_3_sram)
    );
    mux_tree_tapbuf_size7_mem mem_left_track_11
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_9_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size7_mem_4_ccff_tail),
        .mem_out(mux_tree_tapbuf_size7_4_sram)
    );
    mux_tree_tapbuf_size6_mem mem_left_track_13
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size7_mem_4_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_10_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_10_sram)
    );
    mux_tree_tapbuf_size6_mem mem_left_track_21
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_10_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_11_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_11_sram)
    );
    mux_tree_tapbuf_size6_mem mem_left_track_29
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_11_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_12_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_12_sram)
    );
    mux_tree_tapbuf_size5_mem mem_left_track_3
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size7_mem_3_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size5_mem_3_ccff_tail),
        .mem_out(mux_tree_tapbuf_size5_3_sram)
    );
    mux_tree_tapbuf_size5_mem mem_left_track_37
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_12_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size5_mem_5_ccff_tail),
        .mem_out(mux_tree_tapbuf_size5_5_sram)
    );
    mux_tree_tapbuf_size4_mem mem_left_track_45
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size5_mem_5_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size4_mem_4_ccff_tail),
        .mem_out(mux_tree_tapbuf_size4_4_sram)
    );
    mux_tree_tapbuf_size5_mem mem_left_track_5
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size5_mem_3_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size5_mem_4_ccff_tail),
        .mem_out(mux_tree_tapbuf_size5_4_sram)
    );
    mux_tree_tapbuf_size4_mem mem_left_track_53
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size4_mem_4_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(ccff_tail),
        .mem_out(mux_tree_tapbuf_size4_5_sram)
    );
    mux_tree_tapbuf_size6_mem mem_left_track_7
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size5_mem_4_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_9_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_9_sram)
    );
    mux_tree_tapbuf_size6_mem mem_right_track_0
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size2_mem_10_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_3_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_3_sram)
    );
    mux_tree_tapbuf_size7_mem mem_right_track_10
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size7_mem_1_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size7_mem_2_ccff_tail),
        .mem_out(mux_tree_tapbuf_size7_2_sram)
    );
    mux_tree_tapbuf_size6_mem mem_right_track_12
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size7_mem_2_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_6_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_6_sram)
    );
    mux_tree_tapbuf_size6_mem mem_right_track_2
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_3_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_4_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_4_sram)
    );
    mux_tree_tapbuf_size6_mem mem_right_track_20
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_6_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_7_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_7_sram)
    );
    mux_tree_tapbuf_size6_mem mem_right_track_28
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_7_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_8_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_8_sram)
    );
    mux_tree_tapbuf_size5_mem mem_right_track_36
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_8_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size5_mem_2_ccff_tail),
        .mem_out(mux_tree_tapbuf_size5_2_sram)
    );
    mux_tree_tapbuf_size6_mem mem_right_track_4
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_4_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_5_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_5_sram)
    );
    mux_tree_tapbuf_size3_mem mem_right_track_44
    (
        `ifdef USE_POWER_PINS
        .VPWR(VPWR),
        .VGND(VGND), 
        `endif
        .ccff_head(mux_tree_tapbuf_size5_mem_2_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size3_mem_5_ccff_tail),
        .mem_out(mux_tree_tapbuf_size3_5_sram)
    );
    mux_tree_tapbuf_size3_mem mem_right_track_52
    (
        `ifdef USE_POWER_PINS
        .VPWR(VPWR),
        .VGND(VGND), 
        `endif
        .ccff_head(mux_tree_tapbuf_size3_mem_5_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size3_mem_6_ccff_tail),
        .mem_out(mux_tree_tapbuf_size3_6_sram)
    );
    mux_tree_tapbuf_size7_mem mem_right_track_6
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_5_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size7_mem_1_ccff_tail),
        .mem_out(mux_tree_tapbuf_size7_1_sram)
    );
    mux_tree_tapbuf_size7_mem mem_top_track_0
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(ccff_head),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size7_mem_0_ccff_tail),
        .mem_out(mux_tree_tapbuf_size7_0_sram)
    );
    mux_tree_tapbuf_size5_mem mem_top_track_10
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_2_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size5_mem_1_ccff_tail),
        .mem_out(mux_tree_tapbuf_size5_1_sram)
    );
    mux_tree_tapbuf_size4_mem mem_top_track_12
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size5_mem_1_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size4_mem_0_ccff_tail),
        .mem_out(mux_tree_tapbuf_size4_0_sram)
    );
    mux_tree_tapbuf_size4_mem mem_top_track_14
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size4_mem_0_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size4_mem_1_ccff_tail),
        .mem_out(mux_tree_tapbuf_size4_1_sram)
    );
    mux_tree_tapbuf_size4_mem mem_top_track_16
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size4_mem_1_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size4_mem_2_ccff_tail),
        .mem_out(mux_tree_tapbuf_size4_2_sram)
    );
    mux_tree_tapbuf_size4_mem mem_top_track_18
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size4_mem_2_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size4_mem_3_ccff_tail),
        .mem_out(mux_tree_tapbuf_size4_3_sram)
    );
    mux_tree_tapbuf_size6_mem mem_top_track_2
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size7_mem_0_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_0_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_0_sram)
    );
    mux_tree_tapbuf_size3_mem mem_top_track_20
    (
        `ifdef USE_POWER_PINS
        .VPWR(VPWR),
        .VGND(VGND), 
        `endif
        .ccff_head(mux_tree_tapbuf_size4_mem_3_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size3_mem_0_ccff_tail),
        .mem_out(mux_tree_tapbuf_size3_0_sram)
    );
    mux_tree_tapbuf_size3_mem mem_top_track_22
    (
        `ifdef USE_POWER_PINS
        .VPWR(VPWR),
        .VGND(VGND), 
        `endif
        .ccff_head(mux_tree_tapbuf_size3_mem_0_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size3_mem_1_ccff_tail),
        .mem_out(mux_tree_tapbuf_size3_1_sram)
    );
    mux_tree_tapbuf_size3_mem mem_top_track_24
    (
        `ifdef USE_POWER_PINS
        .VPWR(VPWR),
        .VGND(VGND), 
        `endif
        .ccff_head(mux_tree_tapbuf_size3_mem_1_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size3_mem_2_ccff_tail),
        .mem_out(mux_tree_tapbuf_size3_2_sram)
    );
    mux_tree_tapbuf_size3_mem mem_top_track_26
    (
        `ifdef USE_POWER_PINS
        .VPWR(VPWR),
        .VGND(VGND), 
        `endif
        .ccff_head(mux_tree_tapbuf_size3_mem_2_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size3_mem_3_ccff_tail),
        .mem_out(mux_tree_tapbuf_size3_3_sram)
    );
    mux_tree_tapbuf_size2_mem mem_top_track_28
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size3_mem_3_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size2_mem_0_ccff_tail),
        .mem_out(mux_tree_tapbuf_size2_0_sram)
    );
    mux_tree_tapbuf_size2_mem mem_top_track_30
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size2_mem_0_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size2_mem_1_ccff_tail),
        .mem_out(mux_tree_tapbuf_size2_1_sram)
    );
    mux_tree_tapbuf_size2_mem mem_top_track_32
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size2_mem_1_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size2_mem_2_ccff_tail),
        .mem_out(mux_tree_tapbuf_size2_2_sram)
    );
    mux_tree_tapbuf_size2_mem mem_top_track_34
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size2_mem_2_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size2_mem_3_ccff_tail),
        .mem_out(mux_tree_tapbuf_size2_3_sram)
    );
    mux_tree_tapbuf_size3_mem mem_top_track_36
    (
        `ifdef USE_POWER_PINS
        .VPWR(VPWR),
        .VGND(VGND), 
        `endif
        .ccff_head(mux_tree_tapbuf_size2_mem_3_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size3_mem_4_ccff_tail),
        .mem_out(mux_tree_tapbuf_size3_4_sram)
    );
    mux_tree_tapbuf_size5_mem mem_top_track_4
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_0_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size5_mem_0_ccff_tail),
        .mem_out(mux_tree_tapbuf_size5_0_sram)
    );
    mux_tree_tapbuf_size2_mem mem_top_track_40
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size3_mem_4_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size2_mem_4_ccff_tail),
        .mem_out(mux_tree_tapbuf_size2_4_sram)
    );
    mux_tree_tapbuf_size2_mem mem_top_track_42
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size2_mem_4_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size2_mem_5_ccff_tail),
        .mem_out(mux_tree_tapbuf_size2_5_sram)
    );
    mux_tree_tapbuf_size2_mem mem_top_track_44
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size2_mem_5_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size2_mem_6_ccff_tail),
        .mem_out(mux_tree_tapbuf_size2_6_sram)
    );
    mux_tree_tapbuf_size2_mem mem_top_track_46
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size2_mem_6_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size2_mem_7_ccff_tail),
        .mem_out(mux_tree_tapbuf_size2_7_sram)
    );
    mux_tree_tapbuf_size2_mem mem_top_track_48
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size2_mem_7_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size2_mem_8_ccff_tail),
        .mem_out(mux_tree_tapbuf_size2_8_sram)
    );
    mux_tree_tapbuf_size2_mem mem_top_track_50
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size2_mem_8_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size2_mem_9_ccff_tail),
        .mem_out(mux_tree_tapbuf_size2_9_sram)
    );
    mux_tree_tapbuf_size2_mem mem_top_track_58
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size2_mem_9_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size2_mem_10_ccff_tail),
        .mem_out(mux_tree_tapbuf_size2_10_sram)
    );
    mux_tree_tapbuf_size6_mem mem_top_track_6
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size5_mem_0_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_1_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_1_sram)
    );
    mux_tree_tapbuf_size6_mem mem_top_track_8
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.ccff_head(mux_tree_tapbuf_size6_mem_1_ccff_tail),
        .prog_clk(prog_clk),
        .prog_reset(prog_reset),
        .ccff_tail(mux_tree_tapbuf_size6_mem_2_ccff_tail),
        .mem_out(mux_tree_tapbuf_size6_2_sram)
    );
    mux_tree_tapbuf_size7 mux_left_track_1
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[0], chany_top_in[11], chany_top_in[22], chanx_right_in[3], chanx_right_in[19], left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_}),
        .sram(mux_tree_tapbuf_size7_3_sram),
        .sram_inv(mux_left_track_1_undriven_sram_inv),
        .out(chanx_left_out[0])
    );
    mux_tree_tapbuf_size7 mux_left_track_11
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[7], chany_top_in[18], chany_top_in[29], chanx_right_in[10], chanx_right_in[24], left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_}),
        .sram(mux_tree_tapbuf_size7_4_sram),
        .sram_inv(mux_left_track_11_undriven_sram_inv),
        .out(chanx_left_out[5])
    );
    mux_tree_tapbuf_size6 mux_left_track_13
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[6], chany_top_in[17], chany_top_in[28], chanx_right_in[11], chanx_right_in[26], left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_}),
        .sram(mux_tree_tapbuf_size6_10_sram),
        .sram_inv(mux_left_track_13_undriven_sram_inv),
        .out(chanx_left_out[6])
    );
    mux_tree_tapbuf_size6 mux_left_track_21
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[5], chany_top_in[16], chany_top_in[27], chanx_right_in[12], chanx_right_in[27], left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_}),
        .sram(mux_tree_tapbuf_size6_11_sram),
        .sram_inv(mux_left_track_21_undriven_sram_inv),
        .out(chanx_left_out[10])
    );
    mux_tree_tapbuf_size6 mux_left_track_29
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[4], chany_top_in[15], chany_top_in[26], chanx_right_in[14], chanx_right_in[28], left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_}),
        .sram(mux_tree_tapbuf_size6_12_sram),
        .sram_inv(mux_left_track_29_undriven_sram_inv),
        .out(chanx_left_out[14])
    );
    mux_tree_tapbuf_size5 mux_left_track_3
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[10], chany_top_in[21], chanx_right_in[6], chanx_right_in[20], left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_}),
        .sram(mux_tree_tapbuf_size5_3_sram),
        .sram_inv(mux_left_track_3_undriven_sram_inv),
        .out(chanx_left_out[1])
    );
    mux_tree_tapbuf_size5 mux_left_track_37
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[3], chany_top_in[14], chany_top_in[25], chanx_right_in[15], left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_}),
        .sram(mux_tree_tapbuf_size5_5_sram),
        .sram_inv(mux_left_track_37_undriven_sram_inv),
        .out(chanx_left_out[18])
    );
    mux_tree_tapbuf_size4 mux_left_track_45
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[2], chany_top_in[13], chany_top_in[24], chanx_right_in[16]}),
        .sram(mux_tree_tapbuf_size4_4_sram),
        .sram_inv(mux_left_track_45_undriven_sram_inv),
        .out(chanx_left_out[22])
    );
    mux_tree_tapbuf_size5 mux_left_track_5
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[9], chany_top_in[20], chanx_right_in[7], chanx_right_in[22], left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_}),
        .sram(mux_tree_tapbuf_size5_4_sram),
        .sram_inv(mux_left_track_5_undriven_sram_inv),
        .out(chanx_left_out[2])
    );
    mux_tree_tapbuf_size4 mux_left_track_53
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[1], chany_top_in[12], chany_top_in[23], chanx_right_in[18]}),
        .sram(mux_tree_tapbuf_size4_5_sram),
        .sram_inv(mux_left_track_53_undriven_sram_inv),
        .out(chanx_left_out[26])
    );
    mux_tree_tapbuf_size6 mux_left_track_7
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[8], chany_top_in[19], chanx_right_in[8], chanx_right_in[23], left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_}),
        .sram(mux_tree_tapbuf_size6_9_sram),
        .sram_inv(mux_left_track_7_undriven_sram_inv),
        .out(chanx_left_out[3])
    );
    mux_tree_tapbuf_size6 mux_right_track_0
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[10], chany_top_in[21], right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_, chanx_left_in[3], chanx_left_in[19]}),
        .sram(mux_tree_tapbuf_size6_3_sram),
        .sram_inv(mux_right_track_0_undriven_sram_inv),
        .out(chanx_right_out[0])
    );
    mux_tree_tapbuf_size7 mux_right_track_10
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[3], chany_top_in[14], chany_top_in[25], right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_, chanx_left_in[10], chanx_left_in[24]}),
        .sram(mux_tree_tapbuf_size7_2_sram),
        .sram_inv(mux_right_track_10_undriven_sram_inv),
        .out(chanx_right_out[5])
    );
    mux_tree_tapbuf_size6 mux_right_track_12
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[4], chany_top_in[15], chany_top_in[26], right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_, chanx_left_in[11], chanx_left_in[26]}),
        .sram(mux_tree_tapbuf_size6_6_sram),
        .sram_inv(mux_right_track_12_undriven_sram_inv),
        .out(chanx_right_out[6])
    );
    mux_tree_tapbuf_size6 mux_right_track_2
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[0], chany_top_in[11], chany_top_in[22], right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_, chanx_left_in[6], chanx_left_in[20]}),
        .sram(mux_tree_tapbuf_size6_4_sram),
        .sram_inv(mux_right_track_2_undriven_sram_inv),
        .out(chanx_right_out[1])
    );
    mux_tree_tapbuf_size6 mux_right_track_20
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[5], chany_top_in[16], chany_top_in[27], right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_, chanx_left_in[12], chanx_left_in[27]}),
        .sram(mux_tree_tapbuf_size6_7_sram),
        .sram_inv(mux_right_track_20_undriven_sram_inv),
        .out(chanx_right_out[10])
    );
    mux_tree_tapbuf_size6 mux_right_track_28
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[6], chany_top_in[17], chany_top_in[28], right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_, chanx_left_in[14], chanx_left_in[28]}),
        .sram(mux_tree_tapbuf_size6_8_sram),
        .sram_inv(mux_right_track_28_undriven_sram_inv),
        .out(chanx_right_out[14])
    );
    mux_tree_tapbuf_size5 mux_right_track_36
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[7], chany_top_in[18], chany_top_in[29], right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_, chanx_left_in[15]}),
        .sram(mux_tree_tapbuf_size5_2_sram),
        .sram_inv(mux_right_track_36_undriven_sram_inv),
        .out(chanx_right_out[18])
    );
    mux_tree_tapbuf_size6 mux_right_track_4
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[1], chany_top_in[12], chany_top_in[23], right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_, chanx_left_in[7], chanx_left_in[22]}),
        .sram(mux_tree_tapbuf_size6_5_sram),
        .sram_inv(mux_right_track_4_undriven_sram_inv),
        .out(chanx_right_out[2])
    );
    mux_tree_tapbuf_size3 mux_right_track_44
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[8], chany_top_in[19], chanx_left_in[16]}),
        .sram(mux_tree_tapbuf_size3_5_sram),
        .sram_inv(mux_right_track_44_undriven_sram_inv),
        .out(chanx_right_out[22])
    );
    mux_tree_tapbuf_size3 mux_right_track_52
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[9], chany_top_in[20], chanx_left_in[18]}),
        .sram(mux_tree_tapbuf_size3_6_sram),
        .sram_inv(mux_right_track_52_undriven_sram_inv),
        .out(chanx_right_out[26])
    );
    mux_tree_tapbuf_size7 mux_right_track_6
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chany_top_in[2], chany_top_in[13], chany_top_in[24], right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_, chanx_left_in[8], chanx_left_in[23]}),
        .sram(mux_tree_tapbuf_size7_1_sram),
        .sram_inv(mux_right_track_6_undriven_sram_inv),
        .out(chanx_right_out[3])
    );
    mux_tree_tapbuf_size7 mux_top_track_0
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_, chanx_right_in[1], chanx_right_in[3], chanx_left_in[0], chanx_left_in[3]}),
        .sram(mux_tree_tapbuf_size7_0_sram),
        .sram_inv(mux_top_track_0_undriven_sram_inv),
        .out(chany_top_out[0])
    );
    mux_tree_tapbuf_size5 mux_top_track_10
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, chanx_right_in[11], chanx_right_in[13], chanx_left_in[11]}),
        .sram(mux_tree_tapbuf_size5_1_sram),
        .sram_inv(mux_top_track_10_undriven_sram_inv),
        .out(chany_top_out[5])
    );
    mux_tree_tapbuf_size4 mux_top_track_12
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_, chanx_right_in[12], chanx_right_in[17], chanx_left_in[12]}),
        .sram(mux_tree_tapbuf_size4_0_sram),
        .sram_inv(mux_top_track_12_undriven_sram_inv),
        .out(chany_top_out[6])
    );
    mux_tree_tapbuf_size4 mux_top_track_14
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, chanx_right_in[14], chanx_right_in[21], chanx_left_in[14]}),
        .sram(mux_tree_tapbuf_size4_1_sram),
        .sram_inv(mux_top_track_14_undriven_sram_inv),
        .out(chany_top_out[7])
    );
    mux_tree_tapbuf_size4 mux_top_track_16
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_, chanx_right_in[15], chanx_right_in[25], chanx_left_in[15]}),
        .sram(mux_tree_tapbuf_size4_2_sram),
        .sram_inv(mux_top_track_16_undriven_sram_inv),
        .out(chany_top_out[8])
    );
    mux_tree_tapbuf_size4 mux_top_track_18
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_, chanx_right_in[16], chanx_right_in[29], chanx_left_in[16]}),
        .sram(mux_tree_tapbuf_size4_3_sram),
        .sram_inv(mux_top_track_18_undriven_sram_inv),
        .out(chany_top_out[9])
    );
    mux_tree_tapbuf_size6 mux_top_track_2
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_, chanx_right_in[2], chanx_right_in[6], chanx_left_in[6]}),
        .sram(mux_tree_tapbuf_size6_0_sram),
        .sram_inv(mux_top_track_2_undriven_sram_inv),
        .out(chany_top_out[1])
    );
    mux_tree_tapbuf_size3 mux_top_track_20
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_, chanx_right_in[18], chanx_left_in[18]}),
        .sram(mux_tree_tapbuf_size3_0_sram),
        .sram_inv(mux_top_track_20_undriven_sram_inv),
        .out(chany_top_out[10])
    );
    mux_tree_tapbuf_size3 mux_top_track_22
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, chanx_right_in[19], chanx_left_in[19]}),
        .sram(mux_tree_tapbuf_size3_1_sram),
        .sram_inv(mux_top_track_22_undriven_sram_inv),
        .out(chany_top_out[11])
    );
    mux_tree_tapbuf_size3 mux_top_track_24
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_, chanx_right_in[20], chanx_left_in[20]}),
        .sram(mux_tree_tapbuf_size3_2_sram),
        .sram_inv(mux_top_track_24_undriven_sram_inv),
        .out(chany_top_out[12])
    );
    mux_tree_tapbuf_size3 mux_top_track_26
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_, chanx_right_in[22], chanx_left_in[22]}),
        .sram(mux_tree_tapbuf_size3_3_sram),
        .sram_inv(mux_top_track_26_undriven_sram_inv),
        .out(chany_top_out[13])
    );
    mux_tree_tapbuf_size2 mux_top_track_28
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chanx_right_in[23], chanx_left_in[23]}),
        .sram(mux_tree_tapbuf_size2_0_sram),
        .sram_inv(mux_top_track_28_undriven_sram_inv),
        .out(chany_top_out[14])
    );
    mux_tree_tapbuf_size2 mux_top_track_30
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chanx_right_in[24], chanx_left_in[24]}),
        .sram(mux_tree_tapbuf_size2_1_sram),
        .sram_inv(mux_top_track_30_undriven_sram_inv),
        .out(chany_top_out[15])
    );
    mux_tree_tapbuf_size2 mux_top_track_32
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chanx_right_in[26], chanx_left_in[26]}),
        .sram(mux_tree_tapbuf_size2_2_sram),
        .sram_inv(mux_top_track_32_undriven_sram_inv),
        .out(chany_top_out[16])
    );
    mux_tree_tapbuf_size2 mux_top_track_34
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chanx_right_in[27], chanx_left_in[27]}),
        .sram(mux_tree_tapbuf_size2_3_sram),
        .sram_inv(mux_top_track_34_undriven_sram_inv),
        .out(chany_top_out[17])
    );
    mux_tree_tapbuf_size3 mux_top_track_36
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_, chanx_right_in[28], chanx_left_in[28]}),
        .sram(mux_tree_tapbuf_size3_4_sram),
        .sram_inv(mux_top_track_36_undriven_sram_inv),
        .out(chany_top_out[18])
    );
    mux_tree_tapbuf_size5 mux_top_track_4
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, chanx_right_in[4], chanx_right_in[7], chanx_left_in[7]}),
        .sram(mux_tree_tapbuf_size5_0_sram),
        .sram_inv(mux_top_track_4_undriven_sram_inv),
        .out(chany_top_out[2])
    );
    mux_tree_tapbuf_size2 mux_top_track_40
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_, chanx_left_in[29]}),
        .sram(mux_tree_tapbuf_size2_4_sram),
        .sram_inv(mux_top_track_40_undriven_sram_inv),
        .out(chany_top_out[20])
    );
    mux_tree_tapbuf_size2 mux_top_track_42
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_, chanx_left_in[25]}),
        .sram(mux_tree_tapbuf_size2_5_sram),
        .sram_inv(mux_top_track_42_undriven_sram_inv),
        .out(chany_top_out[21])
    );
    mux_tree_tapbuf_size2 mux_top_track_44
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_, chanx_left_in[21]}),
        .sram(mux_tree_tapbuf_size2_6_sram),
        .sram_inv(mux_top_track_44_undriven_sram_inv),
        .out(chany_top_out[22])
    );
    mux_tree_tapbuf_size2 mux_top_track_46
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, chanx_left_in[17]}),
        .sram(mux_tree_tapbuf_size2_7_sram),
        .sram_inv(mux_top_track_46_undriven_sram_inv),
        .out(chany_top_out[23])
    );
    mux_tree_tapbuf_size2 mux_top_track_48
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_, chanx_left_in[13]}),
        .sram(mux_tree_tapbuf_size2_8_sram),
        .sram_inv(mux_top_track_48_undriven_sram_inv),
        .out(chany_top_out[24])
    );
    mux_tree_tapbuf_size2 mux_top_track_50
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_, chanx_left_in[9]}),
        .sram(mux_tree_tapbuf_size2_9_sram),
        .sram_inv(mux_top_track_50_undriven_sram_inv),
        .out(chany_top_out[25])
    );
    mux_tree_tapbuf_size2 mux_top_track_58
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({chanx_right_in[0], chanx_left_in[1]}),
        .sram(mux_tree_tapbuf_size2_10_sram),
        .sram_inv(mux_top_track_58_undriven_sram_inv),
        .out(chany_top_out[29])
    );
    mux_tree_tapbuf_size6 mux_top_track_6
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_, chanx_right_in[5], chanx_right_in[8], chanx_left_in[8]}),
        .sram(mux_tree_tapbuf_size6_1_sram),
        .sram_inv(mux_top_track_6_undriven_sram_inv),
        .out(chany_top_out[3])
    );
    mux_tree_tapbuf_size6 mux_top_track_8
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_, chanx_right_in[9], chanx_right_in[10], chanx_left_in[10]}),
        .sram(mux_tree_tapbuf_size6_2_sram),
        .sram_inv(mux_top_track_8_undriven_sram_inv),
        .out(chany_top_out[4])
    );
endmodule

// This program was cloned from: https://github.com/efabless/clear
// License: Apache License 2.0

//Generated from netlist by SpyDrNet
//netlist name: FPGA88_SOFA_A
module mux_tree_size2
(
    `ifdef USE_POWER_PINS
    VPWR,
    VGND, 
    `endif
    in,
    sram,
    sram_inv,
    out
);

    `ifdef USE_POWER_PINS
    input VPWR;
    input VGND;
    `endif
    input [0:1]in;
    input [0:1]sram;
    input [0:1]sram_inv;
    output out;

    wire const1_0_const1;
    wire [0:1]in;
    wire out;
    wire sky130_fd_sc_hd__mux2_1_0_X;
    wire [0:1]sram;
    wire [0:1]sram_inv;

    const1 const1_0_
    (
        .const1(const1_0_const1)
    );
    sky130_fd_sc_hd__mux2_1 mux_l1_in_0_
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.A0(in[1]),
        .A1(in[0]),
        .S(sram[0]),
        .X(sky130_fd_sc_hd__mux2_1_0_X)
    );
    sky130_fd_sc_hd__mux2_1 mux_l2_in_0_
    (
        
 	`ifdef USE_POWER_PINS 
	.VPWR(VPWR), 
	.VGND(VGND),  
	`endif 
	.A0(const1_0_const1),
        .A1(sky130_fd_sc_hd__mux2_1_0_X),
        .S(sram[1]),
        .X(out)
    );
endmodule

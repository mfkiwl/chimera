// This program was cloned from: https://github.com/mustafabbas/ECE1373_2016_hft_on_fpga
// License: MIT License

// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module toe_reverseLookupTableInterface_reverseLookupTable_myPort_V_ram (addr0, ce0, d0, we0, q0,  clk);

parameter DWIDTH = 16;
parameter AWIDTH = 14;
parameter MEM_SIZE = 10000;

input[AWIDTH-1:0] addr0;
input ce0;
input[DWIDTH-1:0] d0;
input we0;
output reg[DWIDTH-1:0] q0;
input clk;

(* ram_style = "block" *)reg [DWIDTH-1:0] ram[MEM_SIZE-1:0];

initial begin
    $readmemh("./toe_reverseLookupTableInterface_reverseLookupTable_myPort_V_ram.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        if (we0) 
        begin 
            ram[addr0] <= d0; 
            q0 <= d0;
        end 
        else 
            q0 <= ram[addr0];
    end
end


endmodule


`timescale 1 ns / 1 ps
module toe_reverseLookupTableInterface_reverseLookupTable_myPort_V(
    reset,
    clk,
    address0,
    ce0,
    we0,
    d0,
    q0);

parameter DataWidth = 32'd16;
parameter AddressRange = 32'd10000;
parameter AddressWidth = 32'd14;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
input we0;
input[DataWidth - 1:0] d0;
output[DataWidth - 1:0] q0;



toe_reverseLookupTableInterface_reverseLookupTable_myPort_V_ram toe_reverseLookupTableInterface_reverseLookupTable_myPort_V_ram_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .d0( d0 ),
    .we0( we0 ),
    .q0( q0 ));

endmodule


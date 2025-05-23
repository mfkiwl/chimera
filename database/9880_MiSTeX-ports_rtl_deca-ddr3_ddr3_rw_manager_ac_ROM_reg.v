// This program was cloned from: https://github.com/MiSTeX-devel/MiSTeX-ports
// License: BSD 3-Clause "New" or "Revised" License

// (C) 2001-2023 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


`timescale 1 ps / 1 ps

module rw_manager_ac_ROM_reg(
        rdaddress,
        clock,
        wraddress,
        data,
        wren,
        q);

parameter AC_ROM_DATA_WIDTH = "";
parameter AC_ROM_ADDRESS_WIDTH = ""; 


input   [(AC_ROM_ADDRESS_WIDTH-1):0]  rdaddress;
input     clock;
input [(AC_ROM_ADDRESS_WIDTH-1):0] wraddress;
input [(AC_ROM_DATA_WIDTH-1):0] data;
input wren;
output reg [(AC_ROM_DATA_WIDTH-1):0]  q;

reg [(AC_ROM_DATA_WIDTH-1):0] ac_mem[(2**AC_ROM_ADDRESS_WIDTH-1):0];

always @(posedge clock)

begin
  if(wren)
  ac_mem[wraddress] <= data;
  q <= ac_mem[rdaddress];

end



endmodule
 

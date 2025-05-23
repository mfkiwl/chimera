// This program was cloned from: https://github.com/aolofsson/oh
// License: MIT License

//#############################################################################
//# Function: 4-Input Exclusive-Or Gate                                       #
//# Copyright: OH Project Authors. ALl rights Reserved.                       #
//# License:  MIT (see LICENSE file in OH repository)                         # 
//#############################################################################

module oh_xor4 #(parameter DW = 1 ) // array width
   (
    input [DW-1:0]  a,
    input [DW-1:0]  b,
    input [DW-1:0]  c,
    input [DW-1:0]  d,
    output [DW-1:0] z
    );
   
   assign z =  a ^ b ^ c ^ d;
   
endmodule

// This program was cloned from: https://github.com/aolofsson/oh
// License: MIT License

//#############################################################################
//# Function: And-Or (ao31) Gate                                              #
//# Copyright: OH Project Authors. ALl rights Reserved.                       #
//# License:  MIT (see LICENSE file in OH repository)                         #
//#############################################################################

module asic_ao31 #(parameter PROP = "DEFAULT")  (
   input  a0,
   input  a1,
   input  a2,
   input  b0,
   output z
   );

   assign z = (a0 & a1 & a2) | b0;

endmodule

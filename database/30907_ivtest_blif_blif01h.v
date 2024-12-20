// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0


module test_mux
   (input wire [1:0] D0, D1,
    input wire S,
    output wire [1:0] Q);

   assign Q = S? D1 : D0;

endmodule // test_mux

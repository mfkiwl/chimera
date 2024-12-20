// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

module top;
  reg [31:0] in;
  wire [31:0] out = (~in) + 1'b1 + 31'h1234;

  initial begin
    in = 'h0;
    #1 if (out !== 'h1234) $display("FAILED");
       else $display("PASSED");
  end
endmodule

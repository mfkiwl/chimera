// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

module top;
  parameter weq1 = 2'b01 ==? 0.0;
  parameter weq2 = 0.0 ==? 2'b01;
  parameter wneq1 = 2'b01 !=? 0.0;
  parameter wneq2 = 0.0 !=? 2'b01;

  initial begin
    $display("FAILED");
  end
endmodule

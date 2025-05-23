// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

module test;

wire [7:0] val[3:0];

genvar i;

for (i = 3; i >= 0; i = i - 1) begin
  assign val[i] = i;
end

integer j;

reg failed = 0;

initial begin
  for (j = 3; j >= 0; j = j - 1) begin
    $display(val[j]);
    if (val[j] != j) failed = 1;
  end
  if (failed)
    $display("FAILED");
  else
    $display("PASSED");
end

endmodule

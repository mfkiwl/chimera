// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

module test();

  string str1 = "abcd";
  string str2 = "efgh";

  typedef bit [31:0] vector;

  vector data[1:0];

  initial begin
    data[0] = vector'(str1);
    data[1] = vector'(str2);
    $display("%s %s", data[0], data[1]);
    if (data[0] === "abcd" && data[1] === "efgh")
      $display("PASSED");
    else
      $display("FAILED");
  end

endmodule

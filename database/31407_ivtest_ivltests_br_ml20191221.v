// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

module test;

integer i;

class myclass;
  integer j;
  function void init();
    j = i;
  endfunction
endclass

myclass c;

initial begin
  i = 1;
  c = new;
  c.init();
  if (c.j === 1)
    $display("PASSED");
  else
    $display("FAILED");
end

endmodule

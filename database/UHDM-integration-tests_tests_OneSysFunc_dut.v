// This program was cloned from: https://github.com/chipsalliance/UHDM-integration-tests
// License: Apache License 2.0

module dut (input a, output b);
	assign b = $unsigned(a);
endmodule
// This program was cloned from: https://github.com/furrtek/Arcade-TMNT_MiSTer
// License: GNU General Public License v2.0

// OKI counter cell
// furrtek 2022

module CNT3(
	input CLK,
	input RESET,
	input nLOAD, CEN1, CEN2,
	input [4:0] D,
	output reg [4:0] Q
);

always @(posedge CLK or posedge RESET) begin
	if (RESET) begin
		Q <= 5'd0;
	end else begin
		if (!nLOAD)
			Q <= D;
		else
			if (CEN1 & CEN2) Q <= Q + 1'b1;
	end
end

endmodule
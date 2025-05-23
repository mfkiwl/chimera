// This program was cloned from: https://github.com/ehw-fit/evoapproxlib
// License: MIT License

/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): V. Mrazek, L. Sekanina, Z. Vasicek "Libraries of Approximate Circuits: Automated Design and Application in CNN Accelerators" IEEE Journal on Emerging and Selected Topics in Circuits and Systems, Vol 10, No 4, 2020 
* This file contains a circuit from a sub-set of pareto optimal circuits with respect to the pwr and wce parameters
***/
// MAE% = 3.85 %
// MAE = 316 
// WCE% = 12.89 %
// WCE = 1056 
// WCRE% = 3100.00 %
// EP% = 96.31 %
// MRE% = 54.36 %
// MSE = 154522 
// PDK45_PWR = 0.017 mW
// PDK45_AREA = 66.2 um2
// PDK45_DELAY = 0.37 ns

module mul8x5u_2ML (
    A,
    B,
    O
);

input [7:0] A;
input [4:0] B;
output [12:0] O;

wire sig_50,sig_77,sig_92,sig_93,sig_124,sig_125,sig_133,sig_135,sig_136,sig_166,sig_167,sig_168,sig_170,sig_171,sig_182,sig_183,sig_185,sig_196,sig_197,sig_208;

assign sig_50 = A[7] & B[2];
assign sig_77 = B[4] & A[5];
assign sig_92 = A[6] & B[3];
assign sig_93 = A[7] & B[3];
assign sig_124 = sig_50 | sig_92;
assign sig_125 = sig_50 & sig_92;
assign sig_133 = A[4] & B[1];
assign sig_135 = A[6] & B[4];
assign sig_136 = A[7] & B[4];
assign sig_166 = sig_133 | sig_77;
assign sig_167 = sig_93 ^ sig_135;
assign sig_168 = sig_93 & sig_135;
assign sig_170 = sig_167 ^ sig_125;
assign sig_171 = sig_168 | sig_125;
assign sig_182 = sig_170 & sig_166;
assign sig_183 = sig_170 ^ sig_166;
assign sig_185 = sig_136 ^ sig_171;
assign sig_196 = sig_136 & sig_182;
assign sig_197 = sig_185 ^ sig_182;
assign sig_208 = sig_168 | sig_196;

assign O[12] = sig_208;
assign O[11] = sig_197;
assign O[10] = sig_183;
assign O[9] = sig_124;
assign O[8] = sig_124;
assign O[7] = sig_185;
assign O[6] = sig_77;
assign O[5] = 1'b0;
assign O[4] = 1'b0;
assign O[3] = 1'b0;
assign O[2] = 1'b0;
assign O[1] = 1'b0;
assign O[0] = sig_77;

endmodule



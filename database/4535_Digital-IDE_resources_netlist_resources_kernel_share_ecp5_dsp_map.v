// This program was cloned from: https://github.com/Digital-EDA/Digital-IDE
// License: MIT License

module \$__MUL18X18 (input [17:0] A, input [17:0] B, output [35:0] Y);

	parameter A_WIDTH = 18;
	parameter B_WIDTH = 18;
	parameter Y_WIDTH = 36;
	parameter A_SIGNED = 0;
	parameter B_SIGNED = 0;

	MULT18X18D _TECHMAP_REPLACE_ (
		.A0(A[0]), .A1(A[1]), .A2(A[2]), .A3(A[3]), .A4(A[4]), .A5(A[5]), .A6(A[6]), .A7(A[7]), .A8(A[8]), .A9(A[9]), .A10(A[10]), .A11(A[11]), .A12(A[12]), .A13(A[13]), .A14(A[14]), .A15(A[15]), .A16(A[16]), .A17(A[17]),
		.B0(B[0]), .B1(B[1]), .B2(B[2]), .B3(B[3]), .B4(B[4]), .B5(B[5]), .B6(B[6]), .B7(B[7]), .B8(B[8]), .B9(B[9]), .B10(B[10]), .B11(B[11]), .B12(B[12]), .B13(B[13]), .B14(B[14]), .B15(B[15]), .B16(B[16]), .B17(B[17]),
		.C17(1'b0), .C16(1'b0), .C15(1'b0), .C14(1'b0), .C13(1'b0), .C12(1'b0), .C11(1'b0), .C10(1'b0), .C9(1'b0), .C8(1'b0), .C7(1'b0), .C6(1'b0), .C5(1'b0), .C4(1'b0), .C3(1'b0), .C2(1'b0), .C1(1'b0), .C0(1'b0),
		.SIGNEDA(A_SIGNED ? 1'b1 : 1'b0), .SIGNEDB(B_SIGNED ? 1'b1 : 1'b0), .SOURCEA(1'b0), .SOURCEB(1'b0),

		.P0(Y[0]), .P1(Y[1]), .P2(Y[2]), .P3(Y[3]), .P4(Y[4]), .P5(Y[5]), .P6(Y[6]), .P7(Y[7]), .P8(Y[8]), .P9(Y[9]), .P10(Y[10]), .P11(Y[11]), .P12(Y[12]), .P13(Y[13]), .P14(Y[14]), .P15(Y[15]), .P16(Y[16]), .P17(Y[17]), .P18(Y[18]), .P19(Y[19]), .P20(Y[20]), .P21(Y[21]), .P22(Y[22]), .P23(Y[23]), .P24(Y[24]), .P25(Y[25]), .P26(Y[26]), .P27(Y[27]), .P28(Y[28]), .P29(Y[29]), .P30(Y[30]), .P31(Y[31]), .P32(Y[32]), .P33(Y[33]), .P34(Y[34]), .P35(Y[35])
	);
endmodule

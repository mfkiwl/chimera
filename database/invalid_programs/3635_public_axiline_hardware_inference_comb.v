// This program was cloned from: https://github.com/VeriGOOD-ML/public
// License: Apache License 2.0

//
//      verilog template for combinational logic  in Axiline
//
//`include "../include/config.vh"
// include "./config.vh"
`include "./sigmoid.v"

module comb#(
    parameter bitwidth  =32,
	parameter inputBitwidth =16,
	parameter fracBitwidth = 7
)(
    input [bitwidth-1:0]data_in,
    input [inputBitwidth-1:0]bias,
	input [inputBitwidth-1:0]mu,
    input valid,
	
    output [bitwidth-1:0]data_out
);

    wire [bitwidth-1:0] data;
    /*combination logic*/

    //linear regression
    `ifdef LINEAR
    assign data=data_in-bias;
    `endif

    //SVM
    `ifdef SVM
    assign data=((data_in*bias)>=(1<<fracBitwidth))?-bias:0;
    `endif

    //logistic regression
    `ifdef LOGISTIC
    wire[bitwidth-1:0] diff;
    assign diff=data_in-bias;
    sigmoid sigmoid1(
        .in(diff),
        .out(data)
    );
    `endif


    //assign data_out=data&valid;
	assign data_out=data*mu;
endmodule


// This program was cloned from: https://github.com/lvyitian/public_personal_files
// License: Creative Commons Zero v1.0 Universal

module TC_Shl (in, shift, out);
    parameter UUID = 0;
    parameter NAME = "";
    parameter BIT_WIDTH = 1;
    input [BIT_WIDTH-1:0] in;
    input [7:0] shift;
    output [BIT_WIDTH-1:0] out;

    assign out = in << shift;
endmodule

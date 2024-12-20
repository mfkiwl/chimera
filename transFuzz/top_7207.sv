/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [2:0] celloutsig_0_1z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire [3:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  reg [7:0] celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire [6:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  reg [6:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [18:0] celloutsig_1_7z;
  wire [8:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_3z = ~(celloutsig_1_0z | in_data[117]);
  assign celloutsig_1_10z = ~((celloutsig_1_6z | celloutsig_1_1z) & (celloutsig_1_9z | celloutsig_1_5z));
  assign celloutsig_1_4z = ~(celloutsig_1_3z ^ celloutsig_1_2z[6]);
  assign celloutsig_1_18z = { celloutsig_1_17z, celloutsig_1_13z, celloutsig_1_14z, celloutsig_1_3z } / { 1'h1, celloutsig_1_8z[4:0], celloutsig_1_9z };
  assign celloutsig_1_5z = celloutsig_1_0z & ~(celloutsig_1_0z);
  assign celloutsig_1_12z = celloutsig_1_1z & ~(celloutsig_1_7z[3]);
  assign celloutsig_1_7z = - { in_data[154:142], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_1_9z = & { celloutsig_1_8z[5:3], celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_1_14z = | { celloutsig_1_13z[1:0], celloutsig_1_10z };
  assign celloutsig_1_19z = | { celloutsig_1_16z, celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_0z, in_data[174:171] };
  assign celloutsig_1_8z = { in_data[105], celloutsig_1_2z, celloutsig_1_0z } >> in_data[117:109];
  assign celloutsig_1_13z = { celloutsig_1_8z[8:7], celloutsig_1_1z, celloutsig_1_4z } - { celloutsig_1_8z[7:5], celloutsig_1_9z };
  assign celloutsig_1_0z = ~((in_data[145] & in_data[129]) | in_data[106]);
  assign celloutsig_1_1z = ~((celloutsig_1_0z & in_data[120]) | celloutsig_1_0z);
  assign celloutsig_1_6z = ~((celloutsig_1_2z[2] & celloutsig_1_3z) | celloutsig_1_0z);
  assign celloutsig_1_17z = ~((celloutsig_1_2z[2] & celloutsig_1_1z) | celloutsig_1_12z);
  always_latch
    if (clkin_data[64]) celloutsig_1_2z = 7'h00;
    else if (clkin_data[0]) celloutsig_1_2z = { in_data[174:171], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_1z = 3'h0;
    else if (!celloutsig_1_18z[0]) celloutsig_0_1z = in_data[12:10];
  always_latch
    if (!clkin_data[96]) celloutsig_1_16z = 8'h00;
    else if (!clkin_data[0]) celloutsig_1_16z = { in_data[126:123], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_12z };
  assign { out_data[134:128], out_data[96], out_data[34:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_1z, 1'h0 };
endmodule

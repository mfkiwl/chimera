/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [2:0] celloutsig_0_0z;
  wire [11:0] celloutsig_0_10z;
  wire [7:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  reg [22:0] celloutsig_0_15z;
  wire [10:0] celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [5:0] celloutsig_0_1z;
  wire [4:0] celloutsig_0_20z;
  wire [7:0] celloutsig_0_26z;
  wire [8:0] celloutsig_0_2z;
  wire [3:0] celloutsig_0_3z;
  wire [3:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [3:0] celloutsig_0_67z;
  wire celloutsig_0_69z;
  wire [5:0] celloutsig_0_6z;
  wire celloutsig_0_70z;
  wire [16:0] celloutsig_0_7z;
  wire celloutsig_1_0z;
  reg [2:0] celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [5:0] celloutsig_1_1z;
  wire [13:0] celloutsig_1_2z;
  reg [3:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [4:0] celloutsig_1_6z;
  wire [6:0] celloutsig_1_7z;
  reg [4:0] celloutsig_1_8z;
  input [191:0] clkin_data;
  wire [191:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_0z = !(in_data[175] ? in_data[183] : in_data[150]);
  assign celloutsig_1_18z = ~((celloutsig_1_1z[5] | celloutsig_1_14z[0]) & celloutsig_1_7z[4]);
  assign celloutsig_0_18z = ~((in_data[28] | celloutsig_0_16z[2]) & celloutsig_0_15z[8]);
  assign celloutsig_0_5z = in_data[24:10] === { celloutsig_0_2z[3:0], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_4z };
  assign celloutsig_0_70z = ! { celloutsig_0_67z[3], celloutsig_0_14z, celloutsig_0_26z };
  assign celloutsig_0_69z = celloutsig_0_18z & ~(celloutsig_0_13z[3]);
  assign celloutsig_1_4z = celloutsig_1_1z[0] & ~(celloutsig_1_2z[1]);
  assign celloutsig_1_19z = celloutsig_1_8z[0] & ~(celloutsig_1_4z);
  assign celloutsig_0_19z = celloutsig_0_4z[3] & ~(celloutsig_0_2z[5]);
  assign celloutsig_0_26z = { celloutsig_0_10z[7:1], celloutsig_0_5z } % { 1'h1, celloutsig_0_20z[1], celloutsig_0_3z, celloutsig_0_19z, celloutsig_0_14z };
  assign celloutsig_0_4z = celloutsig_0_1z[4:1] * celloutsig_0_2z[7:4];
  assign celloutsig_1_6z = { celloutsig_1_3z, celloutsig_1_0z } * { celloutsig_1_2z[9:6], celloutsig_1_0z };
  assign celloutsig_0_10z = { celloutsig_0_2z[6:4], celloutsig_0_2z } * { celloutsig_0_2z[5:0], celloutsig_0_1z };
  assign celloutsig_0_1z = in_data[60:55] * in_data[10:5];
  assign celloutsig_0_20z = celloutsig_0_13z[6:2] * celloutsig_0_7z[8:4];
  assign celloutsig_0_2z = { in_data[75:70], celloutsig_0_0z } * in_data[9:1];
  assign celloutsig_0_3z = in_data[36] ? in_data[59:56] : celloutsig_0_1z[4:1];
  assign celloutsig_0_67z = celloutsig_0_1z[2] ? { celloutsig_0_16z[5:3], celloutsig_0_14z } : celloutsig_0_7z[7:4];
  assign celloutsig_0_7z = - { in_data[84:81], celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_1_7z = - { celloutsig_1_2z[3:2], celloutsig_1_6z };
  assign celloutsig_0_13z = - { celloutsig_0_1z[5:2], celloutsig_0_4z };
  assign celloutsig_0_6z = in_data[32:27] << { celloutsig_0_2z[8:7], celloutsig_0_4z };
  assign celloutsig_1_1z = in_data[190:185] - { in_data[120:116], celloutsig_1_0z };
  assign celloutsig_1_2z = in_data[190:177] ~^ { in_data[127:115], celloutsig_1_0z };
  assign celloutsig_0_16z = { celloutsig_0_7z[15:6], celloutsig_0_14z } ^ { celloutsig_0_7z[11:7], celloutsig_0_1z };
  always_latch
    if (clkin_data[64]) celloutsig_0_0z = 3'h0;
    else if (celloutsig_1_19z) celloutsig_0_0z = in_data[45:43];
  always_latch
    if (!clkin_data[160]) celloutsig_1_3z = 4'h0;
    else if (clkin_data[32]) celloutsig_1_3z = { celloutsig_1_1z[5:3], celloutsig_1_0z };
  always_latch
    if (clkin_data[128]) celloutsig_1_8z = 5'h00;
    else if (!clkin_data[32]) celloutsig_1_8z = celloutsig_1_7z[4:0];
  always_latch
    if (clkin_data[160]) celloutsig_1_14z = 3'h0;
    else if (!clkin_data[32]) celloutsig_1_14z = celloutsig_1_8z[4:2];
  always_latch
    if (clkin_data[96]) celloutsig_0_15z = 23'h000000;
    else if (clkin_data[0]) celloutsig_0_15z = { celloutsig_0_4z[2:1], celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_6z };
  assign celloutsig_0_14z = ~((celloutsig_0_10z[0] & celloutsig_0_1z[4]) | (celloutsig_0_0z[1] & celloutsig_0_13z[0]));
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_69z, celloutsig_0_70z };
endmodule

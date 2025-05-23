/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [2:0] celloutsig_0_0z;
  wire [9:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [9:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [11:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [5:0] celloutsig_0_1z;
  wire [4:0] celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [3:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [26:0] celloutsig_0_31z;
  wire [5:0] celloutsig_0_32z;
  reg [11:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [5:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [9:0] celloutsig_1_0z;
  wire [22:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [26:0] celloutsig_1_12z;
  wire [9:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  reg [8:0] celloutsig_1_2z;
  wire [11:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [13:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_9z = celloutsig_1_8z ? celloutsig_1_1z : celloutsig_1_2z[8];
  assign celloutsig_0_26z = ~(celloutsig_0_25z & celloutsig_0_3z[3]);
  assign celloutsig_0_27z = ~(celloutsig_0_13z & celloutsig_0_16z);
  assign celloutsig_1_8z = !(celloutsig_1_6z ? celloutsig_1_4z : celloutsig_1_7z);
  assign celloutsig_1_18z = ~celloutsig_1_7z;
  assign celloutsig_1_14z = ~((celloutsig_1_11z | celloutsig_1_13z[7]) & celloutsig_1_0z[4]);
  assign celloutsig_0_22z = ~((celloutsig_0_6z | celloutsig_0_4z) & (celloutsig_0_5z[3] | celloutsig_0_9z));
  assign celloutsig_1_1z = celloutsig_1_0z[9] | ~(in_data[106]);
  assign celloutsig_0_17z = celloutsig_0_7z | ~(celloutsig_0_6z);
  assign celloutsig_1_4z = celloutsig_1_1z ^ in_data[158];
  assign celloutsig_0_16z = in_data[66] ^ celloutsig_0_8z;
  assign celloutsig_0_20z = { celloutsig_0_1z[5:2], celloutsig_0_9z } + { celloutsig_0_14z[9:6], celloutsig_0_9z };
  assign celloutsig_1_13z = { in_data[180], celloutsig_1_2z } & celloutsig_1_5z[13:4];
  assign celloutsig_0_5z = { celloutsig_0_1z[2:1], celloutsig_0_4z, celloutsig_0_0z } & celloutsig_0_3z[10:5];
  assign celloutsig_0_12z = { celloutsig_0_10z[8:0], celloutsig_0_8z } & { in_data[17:9], celloutsig_0_2z };
  assign celloutsig_1_11z = celloutsig_1_5z[11:8] == in_data[182:179];
  assign celloutsig_0_6z = in_data[58:56] == celloutsig_0_0z;
  assign celloutsig_0_9z = { celloutsig_0_5z[4:0], celloutsig_0_4z } === { in_data[92:91], celloutsig_0_6z, celloutsig_0_0z };
  assign celloutsig_1_6z = celloutsig_1_5z > celloutsig_1_5z;
  assign celloutsig_1_16z = { celloutsig_1_12z[23:15], celloutsig_1_6z } > celloutsig_1_13z;
  assign celloutsig_1_19z = { celloutsig_1_13z[8:2], celloutsig_1_10z, celloutsig_1_8z, celloutsig_1_8z } > { celloutsig_1_10z[21:5], celloutsig_1_16z, celloutsig_1_3z, celloutsig_1_14z, celloutsig_1_15z };
  assign celloutsig_0_7z = celloutsig_0_3z[5:0] > celloutsig_0_3z[11:6];
  assign celloutsig_0_2z = { in_data[89:87], celloutsig_0_1z } > { celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_29z = { celloutsig_0_20z[2:0], celloutsig_0_16z, celloutsig_0_26z, celloutsig_0_22z } > { celloutsig_0_21z, celloutsig_0_27z, celloutsig_0_11z, celloutsig_0_18z };
  assign celloutsig_0_15z = celloutsig_0_3z[7:5] || { in_data[45:44], celloutsig_0_2z };
  assign celloutsig_1_7z = in_data[186:180] < celloutsig_1_5z[11:5];
  assign celloutsig_0_4z = celloutsig_0_3z[4:2] < { celloutsig_0_0z[1:0], celloutsig_0_2z };
  assign celloutsig_0_8z = { in_data[84:75], celloutsig_0_6z, celloutsig_0_0z } < { celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_0_19z = { celloutsig_0_12z[4], celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_7z } < { celloutsig_0_14z[11:8], celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_13z };
  assign celloutsig_0_30z = { celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_13z } < celloutsig_0_20z[4:2];
  assign celloutsig_0_21z = celloutsig_0_20z[2:0] % { 1'h1, celloutsig_0_7z, celloutsig_0_4z };
  assign celloutsig_0_28z = { celloutsig_0_0z[2], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_22z } % { 1'h1, celloutsig_0_20z[3], celloutsig_0_16z, celloutsig_0_24z };
  assign celloutsig_0_14z = { celloutsig_0_3z[9:0], celloutsig_0_2z, celloutsig_0_6z } % { 1'h1, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_1z = in_data[50:45] % { 1'h1, in_data[6:2] };
  assign celloutsig_0_31z = { celloutsig_0_27z, celloutsig_0_8z, celloutsig_0_28z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_9z } % { 1'h1, in_data[67:56], celloutsig_0_6z, celloutsig_0_30z, celloutsig_0_14z };
  assign celloutsig_1_0z = in_data[112:103] * in_data[161:152];
  assign celloutsig_1_15z = { celloutsig_1_13z[8:0], celloutsig_1_1z, celloutsig_1_8z } !== in_data[152:142];
  assign celloutsig_0_11z = | celloutsig_0_3z[7:4];
  assign celloutsig_0_24z = | { celloutsig_0_12z[7:5], celloutsig_0_6z };
  assign celloutsig_0_25z = | { in_data[52:42], celloutsig_0_20z, celloutsig_0_15z, celloutsig_0_21z, celloutsig_0_0z };
  assign celloutsig_0_32z = { celloutsig_0_28z[3], celloutsig_0_28z, celloutsig_0_27z } >> { in_data[50:47], celloutsig_0_15z, celloutsig_0_29z };
  assign celloutsig_1_5z = { in_data[133:129], celloutsig_1_2z } >> { in_data[161:150], celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_12z = { in_data[176:167], celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_5z } >> { in_data[134:126], celloutsig_1_7z, celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_9z };
  assign celloutsig_1_3z = in_data[156:145] ~^ { celloutsig_1_0z[8:7], celloutsig_1_0z };
  assign celloutsig_1_10z = { celloutsig_1_5z[3:2], celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_0z } ~^ { celloutsig_1_5z[6:0], celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_5z };
  assign celloutsig_0_10z = { in_data[41:40], celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z } ~^ in_data[77:68];
  assign celloutsig_0_13z = ~((celloutsig_0_1z[1] & celloutsig_0_9z) | celloutsig_0_3z[6]);
  assign celloutsig_0_18z = ~((celloutsig_0_1z[3] & celloutsig_0_8z) | celloutsig_0_14z[4]);
  always_latch
    if (!clkin_data[32]) celloutsig_0_0z = 3'h0;
    else if (celloutsig_1_7z) celloutsig_0_0z = in_data[2:0];
  always_latch
    if (!clkin_data[64]) celloutsig_1_2z = 9'h000;
    else if (clkin_data[0]) celloutsig_1_2z = celloutsig_1_0z[9:1];
  always_latch
    if (clkin_data[32]) celloutsig_0_3z = 12'h000;
    else if (celloutsig_1_7z) celloutsig_0_3z = { in_data[80:73], celloutsig_0_2z, celloutsig_0_0z };
  assign { out_data[128], out_data[96], out_data[58:32], out_data[5:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_31z, celloutsig_0_32z };
endmodule

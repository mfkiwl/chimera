/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [9:0] _00_;
  wire celloutsig_0_0z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire [12:0] celloutsig_0_1z;
  wire [2:0] celloutsig_0_22z;
  wire [22:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [14:0] celloutsig_0_25z;
  wire [4:0] celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [3:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire [8:0] celloutsig_1_18z;
  wire [12:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [26:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [4:0] celloutsig_1_6z;
  wire [9:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_8z = ~(celloutsig_0_4z & celloutsig_0_1z[11]);
  assign celloutsig_1_10z = !(celloutsig_1_1z ? celloutsig_1_5z : celloutsig_1_4z);
  assign celloutsig_1_13z = !(celloutsig_1_12z ? celloutsig_1_3z : celloutsig_1_6z[1]);
  assign celloutsig_0_5z = !(celloutsig_0_2z[1] ? in_data[24] : celloutsig_0_1z[5]);
  assign celloutsig_0_6z = ~(in_data[68] | celloutsig_0_4z);
  assign celloutsig_1_12z = celloutsig_1_8z | ~(celloutsig_1_3z);
  assign celloutsig_1_4z = celloutsig_1_3z | ~(celloutsig_1_3z);
  assign celloutsig_0_7z = in_data[67] | celloutsig_0_6z;
  assign celloutsig_0_15z = celloutsig_0_6z | celloutsig_0_1z[0];
  assign celloutsig_0_24z = celloutsig_0_13z ^ celloutsig_0_4z;
  assign celloutsig_1_0z = in_data[119] ^ in_data[109];
  always_ff @(negedge celloutsig_1_18z[0], negedge clkin_data[0])
    if (!clkin_data[0]) _00_ <= 10'h000;
    else _00_ <= { celloutsig_0_1z[12:5], celloutsig_0_8z, celloutsig_0_3z };
  assign celloutsig_1_19z = { in_data[174], celloutsig_1_11z, celloutsig_1_13z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_12z, celloutsig_1_15z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_12z } / { 1'h1, celloutsig_1_11z[0], celloutsig_1_7z, celloutsig_1_1z };
  assign celloutsig_0_2z = { in_data[58:55], celloutsig_0_0z } / { 1'h1, in_data[75], celloutsig_0_0z, celloutsig_0_0z, in_data[0] };
  assign celloutsig_0_25z = { celloutsig_0_23z[7:4], celloutsig_0_18z, _00_ } / { 1'h1, celloutsig_0_23z[11:8], celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_22z, celloutsig_0_5z };
  assign celloutsig_1_8z = { celloutsig_1_2z[14:11], celloutsig_1_5z, celloutsig_1_5z } == celloutsig_1_7z[5:0];
  assign celloutsig_0_16z = { celloutsig_0_1z[9:8], celloutsig_0_12z, celloutsig_0_7z } == { celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_14z, celloutsig_0_13z };
  assign celloutsig_0_0z = in_data[26:22] >= in_data[17:13];
  assign celloutsig_0_14z = { celloutsig_0_1z[7:0], celloutsig_0_0z, celloutsig_0_5z } <= { celloutsig_0_1z[10:2], celloutsig_0_12z };
  assign celloutsig_1_5z = celloutsig_1_2z[4:0] && { in_data[98:97], celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_22z = { celloutsig_0_1z[9:8], celloutsig_0_5z } % { 1'h1, celloutsig_0_16z, in_data[0] };
  assign celloutsig_1_18z = celloutsig_1_13z ? { celloutsig_1_7z[9], celloutsig_1_9z, celloutsig_1_10z, celloutsig_1_3z, celloutsig_1_17z, celloutsig_1_11z } : celloutsig_1_2z[10:2];
  assign celloutsig_0_3z = in_data[51:35] != { in_data[23:20], celloutsig_0_1z };
  assign celloutsig_1_3z = in_data[117:101] != { in_data[160:145], celloutsig_1_1z };
  assign celloutsig_0_12z = celloutsig_0_2z[3:0] !== _00_[7:4];
  assign celloutsig_0_18z = { celloutsig_0_1z[11:5], celloutsig_0_3z } !== { in_data[80:76], celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_11z };
  assign celloutsig_0_4z = & in_data[24:11];
  assign celloutsig_1_15z = celloutsig_1_5z & celloutsig_1_1z;
  assign celloutsig_1_17z = celloutsig_1_11z[1] & celloutsig_1_11z[2];
  assign celloutsig_0_11z = celloutsig_0_5z & celloutsig_0_4z;
  assign celloutsig_1_1z = ~^ in_data[164:159];
  assign celloutsig_1_7z = in_data[117:108] << in_data[161:152];
  assign celloutsig_0_1z = { in_data[70:59], celloutsig_0_0z } - in_data[31:19];
  assign celloutsig_1_2z = { in_data[156:132], celloutsig_1_0z, celloutsig_1_1z } - { in_data[134:116], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_1_6z = { in_data[144], celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_4z } ^ { celloutsig_1_2z[11:10], celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_1_11z = in_data[111:108] ^ { celloutsig_1_7z[9:7], celloutsig_1_8z };
  assign celloutsig_1_9z = ~((celloutsig_1_6z[0] & celloutsig_1_8z) | (celloutsig_1_6z[0] & in_data[146]));
  assign celloutsig_0_13z = ~((in_data[67] & celloutsig_0_0z) | (celloutsig_0_7z & celloutsig_0_4z));
  assign { celloutsig_0_23z[4], celloutsig_0_23z[6], celloutsig_0_23z[20], celloutsig_0_23z[5], celloutsig_0_23z[1], celloutsig_0_23z[22:21], celloutsig_0_23z[19:7] } = ~ { celloutsig_0_18z, celloutsig_0_14z, celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_1z };
  assign { celloutsig_0_23z[3:2], celloutsig_0_23z[0] } = { celloutsig_0_23z[6], celloutsig_0_23z[6], celloutsig_0_23z[21] };
  assign { out_data[136:128], out_data[108:96], out_data[32], out_data[14:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_24z, celloutsig_0_25z };
endmodule

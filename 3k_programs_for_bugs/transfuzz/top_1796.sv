/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [13:0] celloutsig_0_0z;
  wire [3:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [5:0] celloutsig_0_16z;
  wire [14:0] celloutsig_0_17z;
  wire [2:0] celloutsig_0_18z;
  reg [12:0] celloutsig_0_19z;
  wire [2:0] celloutsig_0_1z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [5:0] celloutsig_0_25z;
  wire [10:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [17:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [7:0] celloutsig_0_31z;
  wire [10:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [3:0] celloutsig_0_38z;
  wire [3:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire [6:0] celloutsig_0_47z;
  reg [4:0] celloutsig_0_48z;
  wire [9:0] celloutsig_0_4z;
  wire [4:0] celloutsig_0_5z;
  wire [17:0] celloutsig_0_6z;
  wire [4:0] celloutsig_0_7z;
  wire [20:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [3:0] celloutsig_1_12z;
  wire [2:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [11:0] celloutsig_1_15z;
  wire [4:0] celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [45:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [2:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_33z = ~(celloutsig_0_17z[14] & celloutsig_0_30z);
  assign celloutsig_0_11z = ~(in_data[74] & celloutsig_0_9z);
  assign celloutsig_1_11z = ~(celloutsig_1_8z | celloutsig_1_8z);
  assign celloutsig_1_8z = ~((celloutsig_1_2z[27] | in_data[134]) & (celloutsig_1_2z[17] | celloutsig_1_5z));
  assign celloutsig_0_27z = ~((in_data[23] | celloutsig_0_24z) & (celloutsig_0_15z | celloutsig_0_19z[3]));
  assign celloutsig_0_30z = ~((celloutsig_0_4z[5] | celloutsig_0_22z) & (celloutsig_0_7z[0] | celloutsig_0_1z[1]));
  assign celloutsig_0_3z = celloutsig_0_2z | ~(in_data[49]);
  assign celloutsig_0_41z = celloutsig_0_18z[1] | ~(celloutsig_0_2z);
  assign celloutsig_1_3z = celloutsig_1_0z | ~(celloutsig_1_1z);
  assign celloutsig_1_4z = celloutsig_1_2z[21] | ~(celloutsig_1_2z[38]);
  assign celloutsig_0_9z = in_data[68] | ~(celloutsig_0_5z[0]);
  assign celloutsig_0_36z = celloutsig_0_12z | celloutsig_0_27z;
  assign celloutsig_0_24z = celloutsig_0_3z ^ celloutsig_0_6z[15];
  assign celloutsig_1_2z = in_data[145:100] & in_data[173:128];
  assign celloutsig_0_8z = { celloutsig_0_6z[11:2], celloutsig_0_4z, celloutsig_0_2z } / { 1'h1, in_data[77:72], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_1_5z = { celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z } == celloutsig_1_2z[18:16];
  assign celloutsig_0_12z = celloutsig_0_8z[18:11] == { celloutsig_0_1z[2:1], celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_1_14z = { in_data[187:136], celloutsig_1_10z } && { in_data[122:103], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_13z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_13z, celloutsig_1_10z, celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_13z, celloutsig_1_3z, celloutsig_1_11z, celloutsig_1_6z, celloutsig_1_13z, celloutsig_1_13z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_9z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_0_13z = celloutsig_0_6z[16:0] && { celloutsig_0_0z[10:8], celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_11z };
  assign celloutsig_0_22z = { celloutsig_0_6z[17:12], celloutsig_0_10z, celloutsig_0_16z } || in_data[50:35];
  assign celloutsig_0_5z = celloutsig_0_0z[4:0] % { 1'h1, celloutsig_0_4z[7], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_1_13z = celloutsig_1_9z * { celloutsig_1_2z[45:44], celloutsig_1_4z };
  assign celloutsig_1_0z = in_data[127:119] !== in_data[123:115];
  assign celloutsig_0_2z = celloutsig_0_0z[5:2] !== in_data[85:82];
  assign celloutsig_0_31z = { celloutsig_0_26z[3:0], celloutsig_0_30z, celloutsig_0_1z } | { celloutsig_0_0z[7:6], celloutsig_0_16z };
  assign celloutsig_1_10z = | { celloutsig_1_9z[0], celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_7z };
  assign celloutsig_1_19z = | celloutsig_1_12z[3:1];
  assign celloutsig_0_42z = | { celloutsig_0_32z[6:0], celloutsig_0_30z };
  assign celloutsig_1_1z = | in_data[156:148];
  assign celloutsig_1_6z = | celloutsig_1_2z[44:32];
  assign celloutsig_1_7z = | { celloutsig_1_2z[23:22], celloutsig_1_0z, in_data[156:148] };
  assign celloutsig_0_14z = | { celloutsig_0_5z, celloutsig_0_2z, in_data[55:46] };
  assign celloutsig_1_18z = ^ { in_data[126], celloutsig_1_16z, celloutsig_1_5z, celloutsig_1_13z, celloutsig_1_14z };
  assign celloutsig_0_15z = ^ { celloutsig_0_4z[0], celloutsig_0_12z, celloutsig_0_3z };
  assign celloutsig_0_23z = ^ { celloutsig_0_7z[4:1], celloutsig_0_12z };
  assign celloutsig_0_39z = { celloutsig_0_19z[12:10], celloutsig_0_33z } << { celloutsig_0_36z, celloutsig_0_35z, celloutsig_0_23z, celloutsig_0_35z };
  assign celloutsig_0_6z = { in_data[68:62], celloutsig_0_4z, celloutsig_0_3z } << { in_data[24:14], celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_16z = { celloutsig_1_15z[6:4], celloutsig_1_10z, celloutsig_1_5z } << { celloutsig_1_12z[2:0], celloutsig_1_8z, celloutsig_1_7z };
  assign celloutsig_0_25z = celloutsig_0_17z[5:0] >> celloutsig_0_8z[9:4];
  assign celloutsig_0_32z = { celloutsig_0_31z[5:3], celloutsig_0_15z, celloutsig_0_27z, celloutsig_0_25z } <<< { celloutsig_0_6z[17:8], celloutsig_0_30z };
  assign celloutsig_0_4z = { celloutsig_0_0z[7:0], celloutsig_0_3z, celloutsig_0_2z } <<< { celloutsig_0_0z[13:5], celloutsig_0_3z };
  assign celloutsig_0_26z = { celloutsig_0_17z[13:9], celloutsig_0_10z, celloutsig_0_23z, celloutsig_0_14z } <<< { celloutsig_0_4z[9], celloutsig_0_7z, celloutsig_0_7z };
  assign celloutsig_0_28z = { celloutsig_0_8z[20:5], celloutsig_0_23z, celloutsig_0_11z } <<< { celloutsig_0_1z[2:1], celloutsig_0_17z, celloutsig_0_3z };
  assign celloutsig_0_47z = { celloutsig_0_38z, celloutsig_0_18z } >>> { celloutsig_0_28z[8:7], celloutsig_0_33z, celloutsig_0_41z, celloutsig_0_1z };
  assign celloutsig_1_15z = { in_data[171:163], celloutsig_1_10z, celloutsig_1_8z, celloutsig_1_3z } >>> { celloutsig_1_2z[43], celloutsig_1_0z, celloutsig_1_12z, celloutsig_1_1z, celloutsig_1_12z, celloutsig_1_10z };
  assign celloutsig_0_10z = celloutsig_0_4z[7:4] >>> { celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_1z = celloutsig_0_0z[13:11] >>> celloutsig_0_0z[4:2];
  assign celloutsig_0_17z = { celloutsig_0_8z[11:10], celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_13z } >>> { celloutsig_0_6z[12:0], celloutsig_0_11z, celloutsig_0_9z };
  assign celloutsig_1_9z = { celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_7z } ~^ { celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_5z };
  assign celloutsig_0_18z = in_data[76:74] ~^ { celloutsig_0_6z[16], celloutsig_0_13z, celloutsig_0_3z };
  assign celloutsig_0_38z = { celloutsig_0_19z[10:8], celloutsig_0_13z } ^ celloutsig_0_0z[3:0];
  assign celloutsig_1_12z = { celloutsig_1_9z, celloutsig_1_0z } ^ celloutsig_1_2z[24:21];
  assign celloutsig_0_7z = { celloutsig_0_5z[2:0], celloutsig_0_3z, celloutsig_0_2z } ^ celloutsig_0_4z[4:0];
  assign celloutsig_0_16z = { celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_1z } ^ in_data[92:87];
  always_latch
    if (celloutsig_1_19z) celloutsig_0_0z = 14'h0000;
    else if (!clkin_data[0]) celloutsig_0_0z = in_data[84:71];
  always_latch
    if (celloutsig_1_19z) celloutsig_0_48z = 5'h00;
    else if (clkin_data[0]) celloutsig_0_48z = { celloutsig_0_39z, celloutsig_0_42z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_19z = 13'h0000;
    else if (!clkin_data[0]) celloutsig_0_19z = celloutsig_0_0z[12:0];
  assign celloutsig_0_35z = ~((celloutsig_0_31z[1] & celloutsig_0_30z) | (celloutsig_0_27z & celloutsig_0_26z[3]));
  assign { out_data[128], out_data[96], out_data[38:32], out_data[4:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_47z, celloutsig_0_48z };
endmodule

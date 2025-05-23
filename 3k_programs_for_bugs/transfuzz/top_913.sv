/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [23:0] _00_;
  wire [3:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  reg [5:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [20:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [9:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [15:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [2:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [17:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [2:0] celloutsig_0_42z;
  wire [4:0] celloutsig_0_43z;
  wire [26:0] celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire [15:0] celloutsig_0_5z;
  wire celloutsig_0_62z;
  wire celloutsig_0_65z;
  wire celloutsig_0_66z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [4:0] celloutsig_1_14z;
  wire [25:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [14:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [2:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_1z = ~(celloutsig_1_0z & celloutsig_1_0z);
  assign celloutsig_1_9z = ~celloutsig_1_5z;
  assign celloutsig_0_30z = ~celloutsig_0_22z;
  assign celloutsig_1_18z = ~((celloutsig_1_17z | celloutsig_1_7z) & celloutsig_1_16z);
  assign celloutsig_0_26z = ~((celloutsig_0_20z[15] | celloutsig_0_18z[3]) & celloutsig_0_17z);
  assign celloutsig_0_33z = celloutsig_0_10z | ~(celloutsig_0_7z);
  assign celloutsig_0_7z = celloutsig_0_0z[3] | ~(celloutsig_0_1z);
  assign celloutsig_0_37z = celloutsig_0_14z ^ celloutsig_0_5z[12];
  assign celloutsig_0_10z = celloutsig_0_5z[6] ^ celloutsig_0_6z;
  assign celloutsig_0_23z = celloutsig_0_1z ^ celloutsig_0_17z;
  assign celloutsig_0_28z = celloutsig_0_0z[1] ^ celloutsig_0_12z[3];
  assign celloutsig_0_31z = in_data[32] ^ celloutsig_0_19z;
  always_ff @(posedge clkin_data[32], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _00_ <= 24'h000000;
    else _00_ <= { celloutsig_0_16z[19:7], celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_21z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_15z };
  assign celloutsig_0_42z = celloutsig_0_16z[6:4] / { 1'h1, celloutsig_0_26z, celloutsig_0_10z };
  assign celloutsig_0_16z = { celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_8z } / { 1'h1, celloutsig_0_5z[13:0], celloutsig_0_14z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_13z };
  assign celloutsig_0_13z = { celloutsig_0_12z[3:0], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_10z } == in_data[20:13];
  assign celloutsig_1_16z = celloutsig_1_15z[22:20] === { in_data[177:176], celloutsig_1_3z };
  assign celloutsig_0_21z = { celloutsig_0_16z[11:9], celloutsig_0_19z, celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_17z } === { celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_18z };
  assign celloutsig_0_6z = { celloutsig_0_0z[0], celloutsig_0_0z } >= { celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_8z = celloutsig_0_5z[10:5] >= celloutsig_0_5z[12:7];
  assign celloutsig_0_36z = { celloutsig_0_16z[5:2], celloutsig_0_32z, celloutsig_0_10z } > { celloutsig_0_5z[12:11], celloutsig_0_3z, celloutsig_0_35z, celloutsig_0_7z, celloutsig_0_26z };
  assign celloutsig_1_19z = celloutsig_1_2z > { celloutsig_1_16z, celloutsig_1_9z, celloutsig_1_17z, celloutsig_1_17z, celloutsig_1_3z };
  assign celloutsig_0_62z = { celloutsig_0_18z[7:0], celloutsig_0_7z, celloutsig_0_42z, celloutsig_0_26z, celloutsig_0_23z, celloutsig_0_19z } && { celloutsig_0_48z[13:0], celloutsig_0_11z };
  assign celloutsig_1_10z = celloutsig_1_4z[7:4] && { in_data[167:166], celloutsig_1_0z, celloutsig_1_5z };
  assign celloutsig_0_35z = { celloutsig_0_22z, celloutsig_0_25z, celloutsig_0_6z, celloutsig_0_32z, celloutsig_0_7z } || { celloutsig_0_20z[12:9], celloutsig_0_21z, celloutsig_0_13z, celloutsig_0_33z };
  assign celloutsig_1_7z = in_data[121:110] || { in_data[158:148], celloutsig_1_6z };
  assign celloutsig_0_2z = in_data[27:23] || { celloutsig_0_0z[3], celloutsig_0_0z };
  assign celloutsig_0_41z = celloutsig_0_20z[2:0] < { celloutsig_0_25z[0], celloutsig_0_30z, celloutsig_0_31z };
  assign celloutsig_0_15z = celloutsig_0_5z[10:8] < { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_4z };
  assign celloutsig_0_50z = celloutsig_0_15z & ~(celloutsig_0_41z);
  assign celloutsig_1_3z = celloutsig_1_2z[1] & ~(celloutsig_1_0z);
  assign celloutsig_0_11z = celloutsig_0_0z[1] & ~(celloutsig_0_9z);
  assign celloutsig_0_1z = in_data[14] & ~(celloutsig_0_0z[2]);
  assign celloutsig_0_22z = celloutsig_0_14z & ~(celloutsig_0_18z[6]);
  assign celloutsig_1_4z = { in_data[100:99], celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_2z } % { 1'h1, in_data[150:145], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_0_25z = celloutsig_0_12z[5:3] % { 1'h1, celloutsig_0_18z[5], celloutsig_0_6z };
  assign celloutsig_0_0z = in_data[35:32] * in_data[16:13];
  assign celloutsig_1_2z = in_data[130:126] * { in_data[134:131], celloutsig_1_0z };
  assign celloutsig_0_40z = - { celloutsig_0_5z[12:0], celloutsig_0_15z, celloutsig_0_38z, celloutsig_0_3z, celloutsig_0_29z, celloutsig_0_3z };
  assign celloutsig_0_38z = | { celloutsig_0_0z[2:1], celloutsig_0_37z, celloutsig_0_29z, celloutsig_0_15z, celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_7z, celloutsig_0_36z, celloutsig_0_29z, celloutsig_0_32z, celloutsig_0_33z, celloutsig_0_31z, celloutsig_0_31z, celloutsig_0_0z, celloutsig_0_10z };
  assign celloutsig_0_14z = | celloutsig_0_5z[14:4];
  assign celloutsig_0_3z = celloutsig_0_1z & in_data[78];
  assign celloutsig_0_32z = | { celloutsig_0_30z, celloutsig_0_28z, celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_9z = | celloutsig_0_5z[9:3];
  assign celloutsig_1_17z = ~^ celloutsig_1_2z[4:1];
  assign celloutsig_0_66z = ^ { celloutsig_0_5z[13:8], celloutsig_0_50z, celloutsig_0_38z, celloutsig_0_7z };
  assign celloutsig_1_0z = ^ in_data[117:106];
  assign celloutsig_1_5z = ^ { celloutsig_1_4z[12:6], celloutsig_1_2z };
  assign celloutsig_0_17z = ^ { in_data[27:26], celloutsig_0_8z };
  assign celloutsig_0_43z = { celloutsig_0_40z[0], celloutsig_0_23z, celloutsig_0_3z, celloutsig_0_26z, celloutsig_0_41z } << { celloutsig_0_22z, celloutsig_0_36z, celloutsig_0_10z, celloutsig_0_19z, celloutsig_0_38z };
  assign celloutsig_0_5z = { celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_4z } >> { in_data[87:75], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_1_14z = { in_data[144:143], celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_6z } >> { in_data[134], celloutsig_1_9z, celloutsig_1_1z, celloutsig_1_10z, celloutsig_1_3z };
  assign celloutsig_1_15z = { celloutsig_1_4z[13:0], celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_14z } >> { celloutsig_1_4z[14:6], celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_4z };
  assign celloutsig_0_18z = { celloutsig_0_5z[10:8], celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_11z } >> { celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_11z };
  assign celloutsig_0_48z = { celloutsig_0_16z[19:0], celloutsig_0_17z, celloutsig_0_15z, celloutsig_0_4z, celloutsig_0_22z, celloutsig_0_29z, celloutsig_0_19z, celloutsig_0_29z } <<< { _00_[17:0], celloutsig_0_4z, celloutsig_0_35z, celloutsig_0_32z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_26z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_1_8z = { celloutsig_1_4z[8:7], celloutsig_1_3z } ~^ { in_data[146:145], celloutsig_1_6z };
  assign celloutsig_0_20z = { celloutsig_0_12z, celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_8z } ~^ { celloutsig_0_3z, celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_15z };
  assign celloutsig_0_4z = ~((celloutsig_0_3z & celloutsig_0_3z) | celloutsig_0_3z);
  assign celloutsig_0_65z = ~((celloutsig_0_62z & celloutsig_0_6z) | celloutsig_0_43z[2]);
  assign celloutsig_1_6z = ~((celloutsig_1_4z[6] & celloutsig_1_1z) | celloutsig_1_3z);
  assign celloutsig_0_19z = ~((celloutsig_0_18z[6] & celloutsig_0_7z) | celloutsig_0_13z);
  assign celloutsig_0_29z = ~((celloutsig_0_20z[7] & celloutsig_0_16z[1]) | celloutsig_0_25z[0]);
  always_latch
    if (celloutsig_1_19z) celloutsig_0_12z = 6'h00;
    else if (!clkin_data[0]) celloutsig_0_12z = { in_data[93:91], celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_3z };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_65z, celloutsig_0_66z };
endmodule

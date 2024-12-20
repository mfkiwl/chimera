/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [5:0] _01_;
  wire [6:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [7:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [12:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [2:0] celloutsig_0_15z;
  wire [12:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [10:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [7:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [11:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [5:0] celloutsig_0_2z;
  wire [2:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  reg [2:0] celloutsig_0_33z;
  wire [26:0] celloutsig_0_34z;
  wire celloutsig_0_36z;
  wire [2:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [2:0] celloutsig_0_40z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_49z;
  wire [4:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  reg [5:0] celloutsig_0_52z;
  wire celloutsig_0_54z;
  wire celloutsig_0_55z;
  wire [9:0] celloutsig_0_56z;
  wire celloutsig_0_59z;
  wire [32:0] celloutsig_0_5z;
  wire [19:0] celloutsig_0_60z;
  wire [6:0] celloutsig_0_61z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [5:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [23:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [18:0] celloutsig_1_3z;
  wire [6:0] celloutsig_1_8z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_39z = !(celloutsig_0_10z ? celloutsig_0_31z : celloutsig_0_36z);
  assign celloutsig_0_46z = !(_00_ ? celloutsig_0_10z : celloutsig_0_45z);
  assign celloutsig_0_10z = !(celloutsig_0_1z[7] ? celloutsig_0_1z[7] : celloutsig_0_1z[10]);
  assign celloutsig_0_22z = !(celloutsig_0_3z ? celloutsig_0_19z : celloutsig_0_17z);
  assign celloutsig_0_59z = ~(_00_ | celloutsig_0_40z[0]);
  assign celloutsig_1_16z = ~(celloutsig_1_13z | in_data[110]);
  assign celloutsig_0_20z = ~(celloutsig_0_10z | celloutsig_0_10z);
  assign celloutsig_1_18z = ~celloutsig_1_13z;
  assign celloutsig_1_19z = ~celloutsig_1_16z;
  assign celloutsig_0_26z = ~celloutsig_0_16z[10];
  assign celloutsig_0_3z = ~((celloutsig_0_2z[5] | celloutsig_0_2z[3]) & (in_data[10] | in_data[36]));
  assign celloutsig_0_49z = ~((celloutsig_0_40z[1] | celloutsig_0_45z) & (celloutsig_0_17z | celloutsig_0_36z));
  assign celloutsig_1_13z = ~((celloutsig_1_12z[5] | in_data[113]) & (celloutsig_1_12z[5] | celloutsig_1_8z[5]));
  assign celloutsig_0_9z = ~((celloutsig_0_4z[0] | celloutsig_0_6z) & (celloutsig_0_2z[2] | celloutsig_0_8z));
  assign celloutsig_0_17z = ~((celloutsig_0_9z | celloutsig_0_10z) & (celloutsig_0_4z[2] | celloutsig_0_16z[8]));
  reg [5:0] _17_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[32])
    if (!clkin_data[32]) _17_ <= 6'h00;
    else _17_ <= celloutsig_0_5z[30:25];
  assign { _01_[5:3], _00_, _01_[1:0] } = _17_;
  assign celloutsig_0_4z = celloutsig_0_1z[6:2] / { 1'h1, celloutsig_0_0z[3:0] };
  assign celloutsig_0_60z = { celloutsig_0_20z, celloutsig_0_40z, celloutsig_0_52z, celloutsig_0_56z } / { 1'h1, celloutsig_0_34z[18:1], celloutsig_0_32z };
  assign celloutsig_0_31z = { celloutsig_0_2z, celloutsig_0_29z, celloutsig_0_22z } === { in_data[37:36], celloutsig_0_2z };
  assign celloutsig_0_45z = { celloutsig_0_14z, celloutsig_0_2z, celloutsig_0_33z } === { celloutsig_0_38z[2], celloutsig_0_33z, celloutsig_0_7z, celloutsig_0_32z, celloutsig_0_31z, celloutsig_0_27z, celloutsig_0_7z, celloutsig_0_32z };
  assign celloutsig_0_8z = in_data[19:15] === { in_data[65:63], celloutsig_0_7z, celloutsig_0_7z };
  assign celloutsig_0_36z = { celloutsig_0_16z[4:1], celloutsig_0_20z, celloutsig_0_4z } <= { celloutsig_0_2z[5:4], celloutsig_0_21z };
  assign celloutsig_0_50z = celloutsig_0_34z[13:5] <= { celloutsig_0_11z[6:0], celloutsig_0_6z, celloutsig_0_19z };
  assign celloutsig_0_6z = in_data[40:14] && { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_14z = in_data[17:15] < { celloutsig_0_13z[6:5], celloutsig_0_12z };
  assign celloutsig_0_23z = celloutsig_0_15z < in_data[3:1];
  assign celloutsig_0_25z = { celloutsig_0_3z, celloutsig_0_11z } < { celloutsig_0_4z[1], celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_2z };
  assign celloutsig_1_8z = { celloutsig_1_1z[14:9], celloutsig_1_2z } % { 1'h1, celloutsig_1_1z[11:9], 3'h0 };
  assign celloutsig_0_16z = { celloutsig_0_4z, celloutsig_0_11z } % { 1'h1, celloutsig_0_0z[5:0], celloutsig_0_4z, celloutsig_0_6z };
  assign celloutsig_0_38z = celloutsig_0_15z | celloutsig_0_1z[9:7];
  assign celloutsig_0_56z = { celloutsig_0_28z[8:3], celloutsig_0_20z, celloutsig_0_55z, celloutsig_0_39z, celloutsig_0_18z } | { celloutsig_0_54z, celloutsig_0_0z, celloutsig_0_36z, celloutsig_0_50z };
  assign celloutsig_0_55z = & celloutsig_0_21z[5:3];
  assign celloutsig_0_7z = & { celloutsig_0_5z[26:15], celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_54z = celloutsig_0_52z[2] & celloutsig_0_46z;
  assign celloutsig_0_18z = celloutsig_0_6z & celloutsig_0_15z[1];
  assign celloutsig_0_32z = | { _00_, celloutsig_0_31z, celloutsig_0_30z, celloutsig_0_26z, _01_[5:3], _01_[1:0], celloutsig_0_22z, celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_5z[8:1], celloutsig_0_0z };
  assign celloutsig_0_19z = | { celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_5z[8:1], celloutsig_0_0z };
  assign celloutsig_1_2z = ^ { celloutsig_1_1z[14:9], 6'h00 };
  assign celloutsig_0_12z = ^ { celloutsig_0_1z[10:1], celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_10z };
  assign celloutsig_0_27z = ^ { celloutsig_0_17z, celloutsig_0_18z, celloutsig_0_17z };
  assign celloutsig_0_40z = { celloutsig_0_15z[2], celloutsig_0_20z, celloutsig_0_8z } >> { celloutsig_0_28z[6], celloutsig_0_25z, celloutsig_0_25z };
  assign celloutsig_1_12z = celloutsig_1_3z[17:12] >> celloutsig_1_1z[18:13];
  assign celloutsig_0_5z = { in_data[42:17], celloutsig_0_0z } - { in_data[16:7], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_11z = in_data[84:77] - { celloutsig_0_2z[4:1], celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_7z };
  assign celloutsig_0_1z = { celloutsig_0_0z[6:3], celloutsig_0_0z } - in_data[23:13];
  assign celloutsig_0_13z = { celloutsig_0_5z[16:13], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_6z } - { celloutsig_0_4z[3], celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_0_2z = in_data[52:47] - celloutsig_0_0z[6:1];
  assign celloutsig_0_34z = { celloutsig_0_33z[0], celloutsig_0_8z, celloutsig_0_30z, celloutsig_0_28z, celloutsig_0_4z, celloutsig_0_18z, celloutsig_0_8z, celloutsig_0_30z } ~^ { celloutsig_0_4z[4:1], celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_18z, celloutsig_0_4z, celloutsig_0_22z, celloutsig_0_2z };
  assign celloutsig_0_61z = { celloutsig_0_33z[1:0], celloutsig_0_17z, celloutsig_0_59z, celloutsig_0_38z } ~^ { celloutsig_0_11z[7:2], celloutsig_0_49z };
  assign celloutsig_0_21z = { in_data[83:77], celloutsig_0_6z } ~^ { celloutsig_0_0z[5:0], celloutsig_0_6z, celloutsig_0_8z };
  assign celloutsig_0_30z = celloutsig_0_0z[2:0] ~^ celloutsig_0_13z[3:1];
  assign celloutsig_0_0z = in_data[20:14] ^ in_data[9:3];
  assign celloutsig_0_15z = in_data[58:56] ^ celloutsig_0_4z[4:2];
  assign celloutsig_0_28z = { celloutsig_0_4z[3], celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_12z, celloutsig_0_27z } ^ { celloutsig_0_16z[10:0], celloutsig_0_17z };
  assign celloutsig_0_29z = ~((celloutsig_0_22z & celloutsig_0_28z[11]) | celloutsig_0_25z);
  always_latch
    if (clkin_data[32]) celloutsig_0_33z = 3'h0;
    else if (celloutsig_1_13z) celloutsig_0_33z = { celloutsig_0_19z, celloutsig_0_6z, celloutsig_0_25z };
  always_latch
    if (clkin_data[32]) celloutsig_0_52z = 6'h00;
    else if (celloutsig_1_13z) celloutsig_0_52z = { celloutsig_0_21z[5:2], celloutsig_0_27z, celloutsig_0_23z };
  assign celloutsig_1_1z[23:9] = in_data[120:106] ^ in_data[176:162];
  assign celloutsig_1_3z[18:8] = in_data[142:132] ^ celloutsig_1_1z[19:9];
  assign _01_[2] = _00_;
  assign celloutsig_1_1z[8:0] = 9'h000;
  assign celloutsig_1_3z[7:0] = { in_data[131:125], celloutsig_1_2z };
  assign { out_data[128], out_data[96], out_data[51:32], out_data[6:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_60z, celloutsig_0_61z };
endmodule

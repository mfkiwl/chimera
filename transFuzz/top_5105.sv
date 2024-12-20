/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire [9:0] _04_;
  wire [8:0] _05_;
  wire [7:0] celloutsig_0_0z;
  wire [9:0] celloutsig_0_10z;
  wire [2:0] celloutsig_0_11z;
  wire [5:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [2:0] celloutsig_0_14z;
  wire [30:0] celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire [34:0] celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [10:0] celloutsig_0_1z;
  wire [2:0] celloutsig_0_20z;
  wire [3:0] celloutsig_0_21z;
  wire [11:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [9:0] celloutsig_0_28z;
  wire [4:0] celloutsig_0_29z;
  wire [9:0] celloutsig_0_2z;
  wire [5:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [7:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [6:0] celloutsig_0_36z;
  wire [9:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [6:0] celloutsig_0_41z;
  wire [21:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_45z;
  wire [10:0] celloutsig_0_46z;
  wire [4:0] celloutsig_0_47z;
  wire [15:0] celloutsig_0_48z;
  wire [6:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire [7:0] celloutsig_0_54z;
  wire [3:0] celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire [9:0] celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire [6:0] celloutsig_0_66z;
  wire [8:0] celloutsig_0_68z;
  wire [2:0] celloutsig_0_69z;
  wire [2:0] celloutsig_0_6z;
  wire [8:0] celloutsig_0_73z;
  wire [6:0] celloutsig_0_75z;
  wire [3:0] celloutsig_0_7z;
  wire [11:0] celloutsig_0_8z;
  wire celloutsig_0_94z;
  wire [3:0] celloutsig_0_95z;
  wire celloutsig_0_96z;
  wire [37:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [21:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [36:0] celloutsig_1_15z;
  wire [5:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [4:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [23:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [8:0] celloutsig_1_5z;
  wire [7:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [3:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_5z = ~(celloutsig_0_0z[2] & in_data[79]);
  assign celloutsig_0_59z = ~(celloutsig_0_41z[6] & celloutsig_0_31z[2]);
  assign celloutsig_0_94z = ~(celloutsig_0_73z[6] & celloutsig_0_9z[34]);
  assign celloutsig_1_7z = ~(celloutsig_1_2z & celloutsig_1_1z[2]);
  assign celloutsig_0_43z = ~celloutsig_0_6z[0];
  assign celloutsig_0_45z = ~celloutsig_0_32z;
  assign celloutsig_0_40z = ~celloutsig_0_3z;
  assign celloutsig_1_4z = ~celloutsig_1_3z[21];
  assign celloutsig_1_11z = ~celloutsig_1_5z[0];
  assign celloutsig_0_19z = ~celloutsig_0_16z[2];
  assign celloutsig_0_26z = ~celloutsig_0_1z[9];
  assign celloutsig_0_35z = ~((celloutsig_0_32z | celloutsig_0_29z[1]) & (celloutsig_0_21z[1] | celloutsig_0_33z));
  assign celloutsig_0_4z = ~((celloutsig_0_0z[5] | celloutsig_0_2z[7]) & (celloutsig_0_2z[5] | celloutsig_0_3z));
  assign celloutsig_0_51z = ~((celloutsig_0_10z[5] | celloutsig_0_20z[0]) & (celloutsig_0_15z[27] | celloutsig_0_17z[6]));
  assign celloutsig_0_53z = ~((celloutsig_0_36z[6] | celloutsig_0_45z) & (celloutsig_0_48z[8] | celloutsig_0_42z[1]));
  assign celloutsig_0_56z = ~((celloutsig_0_19z | celloutsig_0_46z[9]) & (celloutsig_0_43z | celloutsig_0_4z));
  assign celloutsig_0_61z = ~((celloutsig_0_51z | celloutsig_0_52z) & (celloutsig_0_23z | celloutsig_0_49z[4]));
  assign celloutsig_0_96z = ~((celloutsig_0_21z[2] | celloutsig_0_75z[3]) & (celloutsig_0_69z[1] | _02_));
  assign celloutsig_1_0z = ~((in_data[96] | in_data[182]) & (in_data[172] | in_data[166]));
  assign celloutsig_1_2z = ~((in_data[122] | celloutsig_1_0z) & (celloutsig_1_1z[4] | celloutsig_1_0z));
  assign celloutsig_0_23z = ~((celloutsig_0_2z[7] | celloutsig_0_8z[10]) & (celloutsig_0_18z[0] | celloutsig_0_3z));
  assign celloutsig_0_27z = ~((celloutsig_0_7z[0] | celloutsig_0_20z[2]) & (celloutsig_0_3z | _03_));
  assign celloutsig_0_34z = celloutsig_0_0z + { celloutsig_0_17z[14:12], celloutsig_0_29z };
  assign celloutsig_0_38z = { celloutsig_0_10z[8:6], celloutsig_0_35z, celloutsig_0_12z } + { in_data[36:35], celloutsig_0_34z };
  assign celloutsig_0_55z = celloutsig_0_42z[20:17] + celloutsig_0_47z[4:1];
  assign celloutsig_1_1z = { in_data[118], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } + { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_20z = celloutsig_0_6z + celloutsig_0_6z;
  reg [9:0] _33_;
  always_ff @(posedge celloutsig_1_18z[0], posedge clkin_data[0])
    if (clkin_data[0]) _33_ <= 10'h000;
    else _33_ <= { celloutsig_0_18z[4:0], celloutsig_0_21z, celloutsig_0_35z };
  assign { _04_[9], _01_, _04_[7:2], _00_, _02_ } = _33_;
  reg [8:0] _34_;
  always_ff @(negedge celloutsig_1_18z[0], posedge clkin_data[32])
    if (clkin_data[32]) _34_ <= 9'h000;
    else _34_ <= { celloutsig_0_18z[2:1], celloutsig_0_18z, celloutsig_0_23z };
  assign { _03_, _05_[7:0] } = _34_;
  assign celloutsig_0_42z = { _05_[6:1], celloutsig_0_18z, celloutsig_0_2z } / { 1'h1, celloutsig_0_15z[29:9] };
  assign celloutsig_0_66z = { _04_[6:2], _00_, celloutsig_0_51z } / { 1'h1, celloutsig_0_41z[4:0], celloutsig_0_3z };
  assign celloutsig_0_15z = { in_data[84:83], celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_5z } / { 1'h1, celloutsig_0_9z[21:7], celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_3z };
  assign celloutsig_0_3z = celloutsig_0_0z[6:2] < celloutsig_0_2z[9:5];
  assign celloutsig_1_9z = { celloutsig_1_3z[14], celloutsig_1_0z, celloutsig_1_5z } < { celloutsig_1_6z[7:1], celloutsig_1_8z };
  assign celloutsig_0_13z = { celloutsig_0_12z[3], celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_8z } < { in_data[28:7], celloutsig_0_0z, celloutsig_0_6z };
  assign celloutsig_0_31z = celloutsig_0_9z[16:11] % { 1'h1, celloutsig_0_17z[16], celloutsig_0_21z };
  assign celloutsig_0_36z = { celloutsig_0_8z[6:1], celloutsig_0_23z } % { 1'h1, celloutsig_0_22z[3:2], celloutsig_0_23z, celloutsig_0_23z, celloutsig_0_27z, celloutsig_0_5z };
  assign celloutsig_0_21z = { celloutsig_0_2z[0], celloutsig_0_14z } % { 1'h1, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_13z };
  assign celloutsig_0_0z = in_data[84:77] * in_data[77:70];
  assign celloutsig_0_46z = { celloutsig_0_38z[5], celloutsig_0_35z, celloutsig_0_13z, celloutsig_0_34z } * { celloutsig_0_6z[2], celloutsig_0_38z };
  assign celloutsig_0_69z = celloutsig_0_68z[6:4] * { celloutsig_0_33z, celloutsig_0_56z, celloutsig_0_61z };
  assign celloutsig_0_73z = celloutsig_0_17z[29:21] * { celloutsig_0_23z, celloutsig_0_0z };
  assign celloutsig_0_8z = { celloutsig_0_1z[0], celloutsig_0_0z, celloutsig_0_6z } * { celloutsig_0_1z[10:9], celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_9z = { celloutsig_0_8z[10:8], celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_6z } * in_data[47:10];
  assign celloutsig_1_3z = { in_data[169:147], celloutsig_1_0z } * { in_data[118:102], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_5z = in_data[104:96] * in_data[144:136];
  assign celloutsig_1_15z[36:1] = { celloutsig_1_3z[15:4], celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_10z[21:1] } * { celloutsig_1_5z[6:0], celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_1z };
  assign celloutsig_0_11z = { celloutsig_0_0z[5:4], celloutsig_0_4z } * { celloutsig_0_7z[2:1], celloutsig_0_5z };
  assign celloutsig_0_12z = { celloutsig_0_10z[6:2], celloutsig_0_3z } * celloutsig_0_2z[8:3];
  assign celloutsig_0_14z = in_data[14:12] * celloutsig_0_10z[7:5];
  assign celloutsig_0_2z = celloutsig_0_1z[10:1] * in_data[41:32];
  assign celloutsig_0_28z = { celloutsig_0_10z[5:3], celloutsig_0_12z, celloutsig_0_26z } * celloutsig_0_2z;
  assign celloutsig_0_32z = | { _05_[6:0], celloutsig_0_31z };
  assign celloutsig_0_33z = | { celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_21z };
  assign celloutsig_0_52z = | { celloutsig_0_17z[27:26], celloutsig_0_45z, celloutsig_0_7z, celloutsig_0_0z };
  assign celloutsig_1_19z = | { celloutsig_1_15z[16:6], celloutsig_1_11z, celloutsig_1_7z };
  assign celloutsig_0_41z = celloutsig_0_17z[34:28] >> { celloutsig_0_38z[8:3], celloutsig_0_4z };
  assign celloutsig_0_47z = { celloutsig_0_5z, celloutsig_0_33z, celloutsig_0_14z } >> { celloutsig_0_15z[29:26], celloutsig_0_5z };
  assign celloutsig_0_6z = in_data[15:13] >> celloutsig_0_2z[7:5];
  assign celloutsig_0_68z = { celloutsig_0_22z[8:7], celloutsig_0_31z, celloutsig_0_53z } >> celloutsig_0_58z[9:1];
  assign celloutsig_0_95z = { celloutsig_0_68z[4:2], celloutsig_0_94z } >> celloutsig_0_55z;
  assign celloutsig_0_10z = { celloutsig_0_2z[2:1], celloutsig_0_0z } >> { celloutsig_0_1z[2:0], celloutsig_0_6z, celloutsig_0_7z };
  assign celloutsig_0_16z = { celloutsig_0_0z[3:2], celloutsig_0_4z } >> in_data[43:41];
  assign celloutsig_0_18z = { celloutsig_0_17z[13:12], celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_13z } >> celloutsig_0_15z[14:9];
  assign celloutsig_0_54z = { celloutsig_0_0z[6:0], celloutsig_0_43z } >> celloutsig_0_10z[9:2];
  assign celloutsig_0_58z = celloutsig_0_8z[9:0] >> { celloutsig_0_54z[4], celloutsig_0_40z, celloutsig_0_4z, celloutsig_0_49z };
  assign celloutsig_0_7z = { celloutsig_0_2z[5:4], celloutsig_0_4z, celloutsig_0_5z } >> { in_data[51:50], celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_0_22z = celloutsig_0_8z >> { celloutsig_0_1z[6], celloutsig_0_12z, celloutsig_0_21z, celloutsig_0_13z };
  assign celloutsig_0_75z = { celloutsig_0_66z[4], celloutsig_0_45z, celloutsig_0_29z } >>> { celloutsig_0_12z[2:1], celloutsig_0_21z, celloutsig_0_59z };
  assign celloutsig_1_6z = { in_data[165], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z } >>> celloutsig_1_3z[14:7];
  assign celloutsig_1_18z = { in_data[117:113], celloutsig_1_7z } >>> celloutsig_1_3z[21:16];
  assign celloutsig_0_17z = { celloutsig_0_9z[34:1], celloutsig_0_5z } >>> { celloutsig_0_9z[30:8], celloutsig_0_8z };
  assign celloutsig_0_48z = { celloutsig_0_1z[9:0], celloutsig_0_14z, celloutsig_0_14z } ^ { celloutsig_0_22z[4:2], celloutsig_0_11z, celloutsig_0_28z };
  assign celloutsig_0_49z = { _04_[9], _01_, _04_[7:4], celloutsig_0_26z } ^ { celloutsig_0_0z[3:0], celloutsig_0_11z };
  assign celloutsig_1_8z = { in_data[126:125], celloutsig_1_0z, celloutsig_1_0z } ^ { celloutsig_1_1z[3:1], celloutsig_1_4z };
  assign celloutsig_0_1z = in_data[41:31] ^ in_data[35:25];
  assign celloutsig_0_29z = celloutsig_0_22z[9:5] ^ celloutsig_0_9z[26:22];
  assign { celloutsig_1_10z[19], celloutsig_1_10z[21:20], celloutsig_1_10z[18:11], celloutsig_1_10z[9:1], celloutsig_1_10z[10] } = { celloutsig_1_9z, celloutsig_1_8z[3:2], celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_0z } ^ { celloutsig_1_3z[19], celloutsig_1_3z[21:20], celloutsig_1_3z[18:11], celloutsig_1_3z[9:1], celloutsig_1_3z[10] };
  assign { _04_[8], _04_[1:0] } = { _01_, _00_, _02_ };
  assign _05_[8] = _03_;
  assign celloutsig_1_10z[0] = 1'h0;
  assign celloutsig_1_15z[0] = 1'h0;
  assign { out_data[133:128], out_data[96], out_data[35:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_95z, celloutsig_0_96z };
endmodule

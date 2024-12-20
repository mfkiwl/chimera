/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  reg [3:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [22:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [6:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [5:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  reg [14:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [3:0] celloutsig_0_24z;
  wire [2:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [5:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [10:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [9:0] celloutsig_0_37z;
  wire [3:0] celloutsig_0_38z;
  wire [6:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [2:0] celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire [5:0] celloutsig_0_43z;
  wire [11:0] celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_49z;
  wire [4:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire [28:0] celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire [4:0] celloutsig_0_61z;
  reg [2:0] celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_65z;
  wire celloutsig_0_69z;
  wire [8:0] celloutsig_0_6z;
  wire celloutsig_0_70z;
  wire celloutsig_0_72z;
  wire celloutsig_0_74z;
  wire celloutsig_0_77z;
  wire celloutsig_0_7z;
  wire celloutsig_0_82z;
  wire celloutsig_0_83z;
  wire celloutsig_0_84z;
  wire celloutsig_0_8z;
  wire celloutsig_0_94z;
  wire celloutsig_0_95z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire [10:0] celloutsig_1_19z;
  wire [11:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [13:0] celloutsig_1_3z;
  wire [2:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [10:0] celloutsig_1_7z;
  wire [7:0] celloutsig_1_8z;
  reg [13:0] celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_5z = !(celloutsig_0_4z[0] ? celloutsig_0_3z : celloutsig_0_4z[2]);
  assign celloutsig_0_59z = !(celloutsig_0_53z ? celloutsig_0_19z[0] : celloutsig_0_12z);
  assign celloutsig_0_77z = !(celloutsig_0_19z[3] ? celloutsig_0_30z : celloutsig_0_21z);
  assign celloutsig_0_12z = !(celloutsig_0_5z ? celloutsig_0_1z : celloutsig_0_11z[0]);
  assign celloutsig_0_18z = !(celloutsig_0_1z ? in_data[44] : celloutsig_0_12z);
  assign celloutsig_0_28z = !(celloutsig_0_9z ? celloutsig_0_12z : celloutsig_0_10z);
  assign celloutsig_0_31z = !(celloutsig_0_5z ? celloutsig_0_25z[0] : celloutsig_0_13z[12]);
  assign celloutsig_0_95z = ~celloutsig_0_7z;
  assign celloutsig_1_5z = ~celloutsig_1_2z;
  assign celloutsig_0_14z = ~celloutsig_0_13z[10];
  assign celloutsig_0_46z = ~((celloutsig_0_4z[2] | in_data[34]) & (celloutsig_0_37z[1] | celloutsig_0_35z[2]));
  assign celloutsig_0_53z = ~((celloutsig_0_14z | celloutsig_0_18z) & (celloutsig_0_25z[1] | celloutsig_0_7z));
  assign celloutsig_0_2z = ~((in_data[32] | in_data[26]) & (in_data[95] | celloutsig_0_0z));
  assign celloutsig_0_3z = celloutsig_0_0z | celloutsig_0_2z;
  assign celloutsig_0_49z = celloutsig_0_43z[1] | celloutsig_0_34z;
  assign celloutsig_0_74z = celloutsig_0_2z | celloutsig_0_49z;
  assign celloutsig_0_82z = celloutsig_0_53z | celloutsig_0_58z;
  assign celloutsig_0_30z = celloutsig_0_6z[0] | celloutsig_0_5z;
  assign celloutsig_0_35z = { celloutsig_0_19z[4:3], celloutsig_0_17z, celloutsig_0_5z, celloutsig_0_16z } & { celloutsig_0_22z[11:4], celloutsig_0_2z, celloutsig_0_23z, celloutsig_0_16z };
  assign celloutsig_0_61z = { celloutsig_0_19z[1], celloutsig_0_14z, celloutsig_0_21z, celloutsig_0_23z, celloutsig_0_1z } & { celloutsig_0_52z[17:14], celloutsig_0_34z };
  assign celloutsig_1_1z = in_data[147:136] & in_data[108:97];
  assign celloutsig_0_38z = { celloutsig_0_24z[3:1], celloutsig_0_7z } / { 1'h1, celloutsig_0_32z[3:1] };
  assign celloutsig_0_4z = { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z } / { 1'h1, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, in_data[0] };
  assign celloutsig_0_41z = { celloutsig_0_28z, celloutsig_0_18z, celloutsig_0_7z } / { 1'h1, celloutsig_0_9z, celloutsig_0_28z };
  assign celloutsig_1_19z = { celloutsig_1_3z[8:2], celloutsig_1_12z, celloutsig_1_4z } / { 1'h1, celloutsig_1_14z, celloutsig_1_11z, celloutsig_1_8z };
  assign celloutsig_0_17z = { celloutsig_0_6z[4:2], celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_16z } / { 1'h1, celloutsig_0_13z[19:14] };
  assign celloutsig_0_19z = { celloutsig_0_17z[3:2], celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_16z, celloutsig_0_14z } / { 1'h1, celloutsig_0_11z[2:0], celloutsig_0_2z, celloutsig_0_12z };
  assign celloutsig_0_24z = { in_data[75:73], celloutsig_0_20z } / { 1'h1, celloutsig_0_22z[10:8] };
  assign celloutsig_1_2z = { celloutsig_1_1z[8:3], celloutsig_1_0z } == celloutsig_1_1z[10:4];
  assign celloutsig_1_14z = { celloutsig_1_3z[2:0], celloutsig_1_13z, celloutsig_1_13z } == { celloutsig_1_3z[3:0], celloutsig_1_12z };
  assign celloutsig_0_45z = { celloutsig_0_32z[3:0], celloutsig_0_41z, celloutsig_0_12z, celloutsig_0_40z, celloutsig_0_11z, celloutsig_0_2z } >= { celloutsig_0_22z[11:4], celloutsig_0_19z };
  assign celloutsig_0_63z = { celloutsig_0_37z[4:3], celloutsig_0_15z, celloutsig_0_21z, celloutsig_0_53z } >= { celloutsig_0_37z[5:3], celloutsig_0_46z, celloutsig_0_31z };
  assign celloutsig_0_69z = { celloutsig_0_11z[3:1], celloutsig_0_31z, celloutsig_0_56z, celloutsig_0_59z } >= { celloutsig_0_27z, celloutsig_0_61z };
  assign celloutsig_1_12z = celloutsig_1_3z[9:0] >= celloutsig_1_7z[10:1];
  assign celloutsig_0_27z = { celloutsig_0_11z[1:0], celloutsig_0_21z } >= { celloutsig_0_18z, celloutsig_0_5z, celloutsig_0_2z };
  assign celloutsig_0_7z = { celloutsig_0_4z[4:3], celloutsig_0_5z, celloutsig_0_5z } || in_data[47:44];
  assign celloutsig_0_9z = { in_data[67:57], celloutsig_0_2z, celloutsig_0_3z } || in_data[41:29];
  assign celloutsig_1_10z = celloutsig_1_3z[12:1] || { celloutsig_1_1z[10], celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_5z };
  assign celloutsig_1_11z = { celloutsig_1_1z[8:4], celloutsig_1_3z } || { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_0_10z = { celloutsig_0_6z[2:1], celloutsig_0_3z } || celloutsig_0_4z[4:2];
  assign celloutsig_0_40z = { in_data[71:56], celloutsig_0_15z } < { in_data[80:65], celloutsig_0_28z };
  assign celloutsig_0_72z = { celloutsig_0_21z, celloutsig_0_19z, celloutsig_0_65z, celloutsig_0_62z, celloutsig_0_30z } < { celloutsig_0_13z[17:16], celloutsig_0_47z, celloutsig_0_69z, celloutsig_0_29z, celloutsig_0_28z, celloutsig_0_40z, celloutsig_0_42z, celloutsig_0_63z, celloutsig_0_1z, celloutsig_0_50z, celloutsig_0_28z };
  assign celloutsig_1_8z = { celloutsig_1_3z[11:6], celloutsig_1_6z, celloutsig_1_2z } % { 1'h1, celloutsig_1_3z[9:5], celloutsig_1_2z, in_data[96] };
  assign celloutsig_0_13z = { celloutsig_0_4z[0], celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_3z } % { 1'h1, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_12z };
  assign celloutsig_0_32z = { celloutsig_0_13z[16:13], celloutsig_0_16z, celloutsig_0_20z } * { celloutsig_0_6z[6:2], celloutsig_0_1z };
  assign celloutsig_0_39z = { celloutsig_0_19z[5:1], celloutsig_0_0z, celloutsig_0_3z } * celloutsig_0_35z[8:2];
  assign celloutsig_1_7z = { celloutsig_1_3z[10:1], celloutsig_1_5z } * { in_data[159:150], celloutsig_1_0z };
  assign celloutsig_0_42z = { celloutsig_0_6z[6:3], celloutsig_0_29z, celloutsig_0_9z, celloutsig_0_34z, celloutsig_0_12z, celloutsig_0_3z } != { celloutsig_0_41z[1], celloutsig_0_12z, celloutsig_0_39z };
  assign celloutsig_0_51z = { celloutsig_0_24z[3], celloutsig_0_17z, celloutsig_0_14z, celloutsig_0_21z, celloutsig_0_42z, celloutsig_0_14z } != { celloutsig_0_37z[7:5], celloutsig_0_11z, celloutsig_0_33z, celloutsig_0_25z, celloutsig_0_34z };
  assign celloutsig_0_8z = in_data[52:44] != in_data[45:37];
  assign celloutsig_0_94z = celloutsig_0_44z[10:2] != { celloutsig_0_70z, celloutsig_0_72z, celloutsig_0_15z, celloutsig_0_84z, celloutsig_0_57z, celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_23z };
  assign celloutsig_1_0z = in_data[118:111] != in_data[165:158];
  assign celloutsig_1_18z = { celloutsig_1_13z, celloutsig_1_14z, celloutsig_1_0z, celloutsig_1_10z } != { in_data[121], celloutsig_1_13z, celloutsig_1_5z, celloutsig_1_2z };
  assign celloutsig_0_29z = celloutsig_0_22z[4:1] != { celloutsig_0_19z[3:2], celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_34z = ~^ in_data[63:61];
  assign celloutsig_0_83z = ~^ { celloutsig_0_37z[8:5], celloutsig_0_5z, celloutsig_0_43z, celloutsig_0_3z, celloutsig_0_82z, celloutsig_0_70z, celloutsig_0_2z, celloutsig_0_33z, celloutsig_0_2z, celloutsig_0_13z[10], celloutsig_0_74z, celloutsig_0_18z };
  assign celloutsig_0_84z = ~^ { celloutsig_0_77z, celloutsig_0_4z, celloutsig_0_83z, celloutsig_0_51z };
  assign celloutsig_0_1z = ~^ { in_data[64:58], celloutsig_0_0z };
  assign celloutsig_0_15z = ~^ { celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_0_20z = ~^ { in_data[80:69], celloutsig_0_18z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_5z };
  assign celloutsig_0_26z = ~^ { celloutsig_0_25z, celloutsig_0_19z, celloutsig_0_7z };
  assign celloutsig_0_33z = ^ { celloutsig_0_24z[2:0], celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_5z };
  assign celloutsig_0_36z = ^ { celloutsig_0_29z, celloutsig_0_20z, celloutsig_0_28z };
  assign celloutsig_0_56z = ^ { in_data[58:31], celloutsig_0_29z, celloutsig_0_11z, celloutsig_0_18z, celloutsig_0_36z, celloutsig_0_24z, celloutsig_0_15z };
  assign celloutsig_0_57z = ^ { celloutsig_0_6z[6:2], celloutsig_0_26z };
  assign celloutsig_0_58z = ^ { celloutsig_0_39z[5:0], celloutsig_0_46z, celloutsig_0_50z, celloutsig_0_28z, celloutsig_0_45z };
  assign celloutsig_0_65z = ^ { celloutsig_0_6z[6:4], celloutsig_0_28z };
  assign celloutsig_1_6z = ^ { celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_5z };
  assign celloutsig_0_16z = ^ { celloutsig_0_11z[1], celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_2z };
  assign celloutsig_0_21z = ^ { celloutsig_0_6z[8], celloutsig_0_18z, celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_11z };
  assign celloutsig_1_4z = celloutsig_1_1z[5:3] >> { celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_37z = { celloutsig_0_17z, celloutsig_0_34z, celloutsig_0_1z, celloutsig_0_7z } - celloutsig_0_22z[11:2];
  assign celloutsig_0_43z = celloutsig_0_37z[5:0] - { celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_0_44z = { celloutsig_0_32z[1], celloutsig_0_30z, celloutsig_0_38z, celloutsig_0_5z, celloutsig_0_29z, celloutsig_0_41z, celloutsig_0_21z } - { celloutsig_0_22z[6:0], celloutsig_0_11z, celloutsig_0_40z };
  assign celloutsig_0_52z = { in_data[95:78], celloutsig_0_33z, celloutsig_0_38z, celloutsig_0_43z } - { celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_27z, celloutsig_0_28z, celloutsig_0_23z, celloutsig_0_16z, celloutsig_0_32z, celloutsig_0_39z, celloutsig_0_42z, celloutsig_0_4z };
  assign celloutsig_0_6z = in_data[72:64] ^ { in_data[88:81], celloutsig_0_2z };
  assign celloutsig_1_3z = { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z } ^ in_data[134:121];
  assign celloutsig_0_25z = { celloutsig_0_13z[20], celloutsig_0_7z, celloutsig_0_20z } ^ { in_data[18:17], celloutsig_0_14z };
  assign celloutsig_0_0z = ~((in_data[56] & in_data[65]) | in_data[88]);
  assign celloutsig_0_47z = ~((celloutsig_0_10z & celloutsig_0_26z) | celloutsig_0_8z);
  assign celloutsig_0_50z = ~((celloutsig_0_34z & celloutsig_0_43z[2]) | celloutsig_0_2z);
  assign celloutsig_0_70z = ~((celloutsig_0_26z & celloutsig_0_44z[3]) | celloutsig_0_50z);
  assign celloutsig_1_13z = ~((celloutsig_1_9z[5] & celloutsig_1_4z[1]) | celloutsig_1_6z);
  assign celloutsig_0_23z = ~((celloutsig_0_8z & celloutsig_0_9z) | celloutsig_0_19z[3]);
  always_latch
    if (clkin_data[96]) celloutsig_0_62z = 3'h0;
    else if (clkin_data[0]) celloutsig_0_62z = celloutsig_0_44z[9:7];
  always_latch
    if (clkin_data[128]) celloutsig_1_9z = 14'h0000;
    else if (!clkin_data[64]) celloutsig_1_9z = { celloutsig_1_3z[4:3], celloutsig_1_7z, celloutsig_1_2z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_11z = 4'h0;
    else if (clkin_data[32]) celloutsig_0_11z = { celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_7z };
  always_latch
    if (celloutsig_1_19z[0]) celloutsig_0_22z = 15'h0000;
    else if (clkin_data[32]) celloutsig_0_22z = { celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_16z, celloutsig_0_14z, celloutsig_0_16z, celloutsig_0_21z, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_7z };
  assign { out_data[128], out_data[106:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_94z, celloutsig_0_95z };
endmodule

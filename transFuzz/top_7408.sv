/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [2:0] celloutsig_0_0z;
  wire [4:0] celloutsig_0_10z;
  wire [16:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [24:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [9:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [7:0] celloutsig_0_26z;
  wire [5:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  reg [11:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [5:0] celloutsig_0_30z;
  wire [6:0] celloutsig_0_31z;
  wire [3:0] celloutsig_0_32z;
  wire [2:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [7:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  reg [10:0] celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  reg [49:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire [7:0] celloutsig_0_49z;
  wire [6:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire [10:0] celloutsig_0_54z;
  wire [7:0] celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_61z;
  wire [3:0] celloutsig_0_62z;
  wire [9:0] celloutsig_0_63z;
  wire celloutsig_0_66z;
  wire celloutsig_0_68z;
  wire [12:0] celloutsig_0_6z;
  wire [4:0] celloutsig_0_70z;
  wire [9:0] celloutsig_0_74z;
  wire celloutsig_0_78z;
  wire celloutsig_0_7z;
  wire [2:0] celloutsig_0_80z;
  wire [5:0] celloutsig_0_82z;
  wire celloutsig_0_83z;
  wire celloutsig_0_85z;
  wire celloutsig_0_8z;
  wire celloutsig_0_90z;
  wire celloutsig_0_92z;
  reg [21:0] celloutsig_0_93z;
  wire [12:0] celloutsig_0_94z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [7:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire [3:0] celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  reg [3:0] celloutsig_1_6z;
  wire [5:0] celloutsig_1_7z;
  wire [7:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_45z = { celloutsig_0_29z[11:4], celloutsig_0_3z, celloutsig_0_32z, celloutsig_0_19z, celloutsig_0_41z, celloutsig_0_2z } <= { in_data[14:1], celloutsig_0_25z, celloutsig_0_41z };
  assign celloutsig_0_57z = { celloutsig_0_26z[6:3], celloutsig_0_34z } <= celloutsig_0_29z[4:0];
  assign celloutsig_0_85z = { celloutsig_0_26z[5:4], celloutsig_0_25z } <= { celloutsig_0_31z[2:1], celloutsig_0_52z };
  assign celloutsig_0_90z = { celloutsig_0_70z[2], celloutsig_0_12z, celloutsig_0_58z } <= { celloutsig_0_26z[3:2], celloutsig_0_59z };
  assign celloutsig_0_9z = { in_data[17:7], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_8z } <= { in_data[73:51], celloutsig_0_3z };
  assign celloutsig_1_0z = in_data[144:104] <= in_data[151:111];
  assign celloutsig_1_1z = in_data[140:138] <= in_data[101:99];
  assign celloutsig_1_10z = { celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_7z } <= in_data[148:122];
  assign celloutsig_1_11z = { in_data[169:167], celloutsig_1_9z, celloutsig_1_1z } <= { celloutsig_1_4z, celloutsig_1_6z };
  assign celloutsig_1_14z = { celloutsig_1_8z[4:3], celloutsig_1_2z } <= { celloutsig_1_6z[1], celloutsig_1_13z, celloutsig_1_13z };
  assign celloutsig_1_16z = { in_data[163:160], celloutsig_1_13z, celloutsig_1_1z, celloutsig_1_13z, celloutsig_1_3z } <= { celloutsig_1_1z, celloutsig_1_7z, celloutsig_1_11z };
  assign celloutsig_0_13z = { celloutsig_0_11z[14:9], celloutsig_0_9z } <= { celloutsig_0_11z[15], celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_8z };
  assign celloutsig_0_17z = { celloutsig_0_15z[21:4], celloutsig_0_8z } <= { celloutsig_0_11z[15:6], celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_7z };
  assign celloutsig_0_18z = { celloutsig_0_12z, celloutsig_0_15z } <= { celloutsig_0_13z, celloutsig_0_15z };
  assign celloutsig_0_24z = { celloutsig_0_11z[12:11], celloutsig_0_2z } <= celloutsig_0_10z[4:2];
  assign celloutsig_0_2z = { in_data[93:92], celloutsig_0_1z, celloutsig_0_0z } <= in_data[45:40];
  assign celloutsig_0_25z = { celloutsig_0_11z[14:8], celloutsig_0_18z, celloutsig_0_21z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_1z } <= celloutsig_0_6z[12:1];
  assign celloutsig_0_3z = { in_data[19:15], celloutsig_0_0z } < { in_data[62:61], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_36z = { celloutsig_0_27z[0], celloutsig_0_2z, celloutsig_0_22z, celloutsig_0_8z, celloutsig_0_23z, celloutsig_0_34z, celloutsig_0_34z, celloutsig_0_31z, celloutsig_0_27z, celloutsig_0_8z, celloutsig_0_24z, celloutsig_0_2z } < { celloutsig_0_33z, celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_21z, celloutsig_0_16z, celloutsig_0_22z, celloutsig_0_27z, celloutsig_0_23z, celloutsig_0_23z, celloutsig_0_14z };
  assign celloutsig_0_38z = celloutsig_0_6z[8:4] < { in_data[38:35], celloutsig_0_12z };
  assign celloutsig_0_39z = { celloutsig_0_29z[0], celloutsig_0_10z } < celloutsig_0_35z[5:0];
  assign celloutsig_0_41z = { celloutsig_0_33z, celloutsig_0_1z, celloutsig_0_38z, celloutsig_0_39z, celloutsig_0_9z, celloutsig_0_26z, celloutsig_0_25z } < { in_data[77:68], celloutsig_0_10z, celloutsig_0_39z };
  assign celloutsig_0_52z = celloutsig_0_26z[7:1] < celloutsig_0_49z[6:0];
  assign celloutsig_0_53z = { celloutsig_0_51z, celloutsig_0_11z } < { celloutsig_0_11z[11:3], celloutsig_0_39z, celloutsig_0_28z, celloutsig_0_31z };
  assign celloutsig_0_5z = { in_data[79:46], celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_1z } < { in_data[71:38], celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_58z = { celloutsig_0_0z[1:0], celloutsig_0_3z, celloutsig_0_28z, celloutsig_0_43z, celloutsig_0_21z, celloutsig_0_23z, celloutsig_0_23z } < { celloutsig_0_37z[9:4], celloutsig_0_52z, celloutsig_0_21z };
  assign celloutsig_0_59z = { celloutsig_0_49z[5:2], celloutsig_0_33z } < { celloutsig_0_11z[5:2], celloutsig_0_25z, celloutsig_0_46z, celloutsig_0_14z };
  assign celloutsig_0_60z = { celloutsig_0_59z, celloutsig_0_9z, celloutsig_0_59z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_11z, celloutsig_0_16z, celloutsig_0_7z } < { celloutsig_0_43z, celloutsig_0_2z, celloutsig_0_50z, celloutsig_0_45z, celloutsig_0_51z, celloutsig_0_23z, celloutsig_0_20z, celloutsig_0_57z, celloutsig_0_26z, celloutsig_0_34z, celloutsig_0_30z, celloutsig_0_24z };
  assign celloutsig_0_61z = { celloutsig_0_9z, celloutsig_0_41z, celloutsig_0_52z, celloutsig_0_13z, celloutsig_0_58z, celloutsig_0_42z, celloutsig_0_41z, celloutsig_0_17z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_23z } < { celloutsig_0_30z[2:0], celloutsig_0_21z, celloutsig_0_4z };
  assign celloutsig_0_66z = celloutsig_0_31z < { celloutsig_0_40z[44:39], celloutsig_0_3z };
  assign celloutsig_0_83z = { celloutsig_0_6z[2:0], celloutsig_0_37z, celloutsig_0_68z, celloutsig_0_11z } < { celloutsig_0_59z, celloutsig_0_41z, celloutsig_0_0z, celloutsig_0_37z, celloutsig_0_8z, celloutsig_0_38z, celloutsig_0_82z, celloutsig_0_52z, celloutsig_0_61z, celloutsig_0_58z, celloutsig_0_62z, celloutsig_0_56z };
  assign celloutsig_0_8z = { in_data[60:56], celloutsig_0_5z } < { celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_1_3z = { celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z } < { in_data[177], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_4z = { in_data[114:111], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z } < { in_data[108:105], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_1z = { in_data[45:35], celloutsig_0_0z } < { in_data[41:31], celloutsig_0_0z };
  assign celloutsig_0_19z = { celloutsig_0_15z[11:4], celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_1z } < { celloutsig_0_15z[8:0], celloutsig_0_5z, celloutsig_0_9z };
  assign celloutsig_0_20z = { celloutsig_0_15z[18:15], celloutsig_0_19z, celloutsig_0_7z } < { celloutsig_0_6z[4:0], celloutsig_0_13z };
  assign celloutsig_0_21z = celloutsig_0_11z[6:0] < celloutsig_0_15z[7:1];
  assign celloutsig_0_42z = ^ { celloutsig_0_35z[3:1], celloutsig_0_36z, celloutsig_0_3z };
  assign celloutsig_0_43z = ^ { celloutsig_0_22z[9:2], celloutsig_0_3z, celloutsig_0_38z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_31z };
  assign celloutsig_0_46z = ^ { celloutsig_0_10z[4:1], celloutsig_0_39z, celloutsig_0_1z, celloutsig_0_45z, celloutsig_0_38z, celloutsig_0_41z, celloutsig_0_13z };
  assign celloutsig_0_50z = ^ { celloutsig_0_35z[3:0], celloutsig_0_31z };
  assign celloutsig_0_51z = ^ { celloutsig_0_4z[3], celloutsig_0_18z, celloutsig_0_33z, celloutsig_0_22z, celloutsig_0_5z, celloutsig_0_43z, celloutsig_0_45z, celloutsig_0_18z, celloutsig_0_33z, celloutsig_0_38z, celloutsig_0_39z, celloutsig_0_2z, celloutsig_0_49z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_45z, celloutsig_0_41z, celloutsig_0_38z, celloutsig_0_16z, celloutsig_0_10z };
  assign celloutsig_0_56z = ^ { celloutsig_0_22z, celloutsig_0_35z };
  assign celloutsig_0_68z = ^ { celloutsig_0_25z, celloutsig_0_46z, celloutsig_0_66z };
  assign celloutsig_0_7z = ^ { in_data[81:74], celloutsig_0_2z };
  assign celloutsig_0_78z = ^ { celloutsig_0_74z, celloutsig_0_74z, celloutsig_0_55z, celloutsig_0_16z };
  assign celloutsig_0_92z = ^ { celloutsig_0_63z[5:3], celloutsig_0_61z, celloutsig_0_12z, celloutsig_0_62z, celloutsig_0_53z, celloutsig_0_34z };
  assign celloutsig_1_2z = ^ { in_data[144:127], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_5z = ^ { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_9z = ^ celloutsig_1_8z[4:1];
  assign celloutsig_1_13z = ^ celloutsig_1_12z;
  assign celloutsig_0_12z = ^ { celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_8z };
  assign celloutsig_0_14z = ^ { celloutsig_0_11z[11], celloutsig_0_10z, celloutsig_0_0z };
  assign celloutsig_0_16z = ^ { celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_8z };
  assign celloutsig_0_23z = ^ { celloutsig_0_15z[14:4], celloutsig_0_21z, celloutsig_0_5z, celloutsig_0_21z, celloutsig_0_2z, celloutsig_0_8z };
  assign celloutsig_0_28z = ^ { in_data[25:8], celloutsig_0_27z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_23z, celloutsig_0_1z };
  assign celloutsig_0_34z = ^ { celloutsig_0_18z, celloutsig_0_12z, celloutsig_0_31z };
  assign celloutsig_0_35z = { celloutsig_0_27z[5:1], celloutsig_0_0z } >> { celloutsig_0_33z[2], celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_34z, celloutsig_0_21z, celloutsig_0_16z };
  assign celloutsig_0_49z = { celloutsig_0_22z[5:1], celloutsig_0_8z, celloutsig_0_18z, celloutsig_0_17z } >> { celloutsig_0_10z[4:2], celloutsig_0_24z, celloutsig_0_0z, celloutsig_0_18z };
  assign celloutsig_0_54z = celloutsig_0_40z[37:27] >> { celloutsig_0_35z[4:3], celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_27z, celloutsig_0_46z };
  assign celloutsig_0_55z = { celloutsig_0_29z[9:3], celloutsig_0_18z } >> { celloutsig_0_35z[5:4], celloutsig_0_10z, celloutsig_0_42z };
  assign celloutsig_0_63z = { celloutsig_0_37z[8:0], celloutsig_0_8z } >> { celloutsig_0_35z, celloutsig_0_14z, celloutsig_0_39z };
  assign celloutsig_0_6z = { celloutsig_0_4z[6:3], celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_2z } >> { in_data[24], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_74z = { celloutsig_0_49z, celloutsig_0_56z, celloutsig_0_51z } >> { celloutsig_0_4z[6:4], celloutsig_0_70z, celloutsig_0_13z, celloutsig_0_60z };
  assign celloutsig_0_80z = celloutsig_0_26z[2:0] >> { celloutsig_0_29z[9], celloutsig_0_36z, celloutsig_0_53z };
  assign celloutsig_1_8z = { celloutsig_1_7z[4:1], celloutsig_1_6z } >> { celloutsig_1_7z[3:0], celloutsig_1_6z };
  assign celloutsig_0_10z = { in_data[49:47], celloutsig_0_7z, celloutsig_0_3z } >> celloutsig_0_6z[5:1];
  assign celloutsig_1_19z = { celloutsig_1_13z, celloutsig_1_18z } >> { celloutsig_1_16z, celloutsig_1_14z, celloutsig_1_14z, celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_11z = in_data[35:19] >> { celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_15z = in_data[90:66] >> { celloutsig_0_6z[5:0], celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_1z };
  assign celloutsig_0_22z = { celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_10z } >> { celloutsig_0_12z, celloutsig_0_19z, celloutsig_0_4z, celloutsig_0_19z };
  assign celloutsig_0_26z = { celloutsig_0_10z[3:0], celloutsig_0_23z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_3z } >> { celloutsig_0_7z, celloutsig_0_4z };
  assign celloutsig_0_31z = { celloutsig_0_11z[5:0], celloutsig_0_1z } >> { celloutsig_0_11z[9:7], celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_17z };
  assign celloutsig_0_0z = in_data[30:28] <<< in_data[76:74];
  assign celloutsig_0_4z = { in_data[71:66], celloutsig_0_2z } <<< { in_data[86:82], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_62z = celloutsig_0_54z[3:0] <<< celloutsig_0_10z[3:0];
  assign celloutsig_0_70z = celloutsig_0_30z[5:1] <<< celloutsig_0_40z[46:42];
  assign celloutsig_0_82z = celloutsig_0_63z[6:1] <<< celloutsig_0_55z[5:0];
  assign celloutsig_0_94z = { celloutsig_0_22z, celloutsig_0_80z } <<< { celloutsig_0_63z[9:6], celloutsig_0_78z, celloutsig_0_55z };
  assign celloutsig_1_7z = { celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_1z } <<< in_data[176:171];
  assign celloutsig_1_12z = in_data[128:121] <<< { celloutsig_1_7z[5:2], celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_10z };
  assign celloutsig_1_18z = { celloutsig_1_7z[0], celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_0z } <<< { celloutsig_1_11z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_1z };
  assign celloutsig_0_27z = { celloutsig_0_21z, celloutsig_0_0z, celloutsig_0_19z, celloutsig_0_12z } <<< { celloutsig_0_17z, celloutsig_0_23z, celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_18z, celloutsig_0_5z };
  assign celloutsig_0_30z = { celloutsig_0_8z, celloutsig_0_10z } <<< { celloutsig_0_27z[5:1], celloutsig_0_25z };
  assign celloutsig_0_32z = { in_data[66:65], celloutsig_0_23z, celloutsig_0_17z } <<< { celloutsig_0_28z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_13z };
  assign celloutsig_0_33z = celloutsig_0_22z[5:3] <<< celloutsig_0_32z[3:1];
  always_latch
    if (clkin_data[32]) celloutsig_0_37z = 11'h000;
    else if (!celloutsig_1_19z[0]) celloutsig_0_37z = { celloutsig_0_11z[12:5], celloutsig_0_0z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_40z = 50'h0000000000000;
    else if (celloutsig_1_19z[0]) celloutsig_0_40z = { celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_33z, celloutsig_0_29z, celloutsig_0_36z, celloutsig_0_7z, celloutsig_0_27z, celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_32z, celloutsig_0_23z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_23z, celloutsig_0_13z, celloutsig_0_37z, celloutsig_0_1z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_93z = 22'h000000;
    else if (!celloutsig_1_19z[0]) celloutsig_0_93z = { celloutsig_0_42z, celloutsig_0_85z, celloutsig_0_35z, celloutsig_0_57z, celloutsig_0_66z, celloutsig_0_4z, celloutsig_0_90z, celloutsig_0_83z, celloutsig_0_92z };
  always_latch
    if (!clkin_data[64]) celloutsig_1_6z = 4'h0;
    else if (clkin_data[0]) celloutsig_1_6z = { in_data[108], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_4z };
  always_latch
    if (clkin_data[32]) celloutsig_0_29z = 12'h000;
    else if (celloutsig_1_19z[0]) celloutsig_0_29z = { celloutsig_0_6z[11:2], celloutsig_0_3z, celloutsig_0_20z };
  assign { out_data[131:128], out_data[100:96], out_data[53:32], out_data[12:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_93z, celloutsig_0_94z };
endmodule

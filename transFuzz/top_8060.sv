/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [2:0] celloutsig_0_11z;
  wire [5:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [13:0] celloutsig_0_14z;
  wire [5:0] celloutsig_0_15z;
  wire [14:0] celloutsig_0_16z;
  wire [11:0] celloutsig_0_17z;
  wire [15:0] celloutsig_0_18z;
  wire [6:0] celloutsig_0_19z;
  wire [3:0] celloutsig_0_1z;
  wire [18:0] celloutsig_0_20z;
  wire [3:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [3:0] celloutsig_0_24z;
  wire [30:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [2:0] celloutsig_0_32z;
  wire [27:0] celloutsig_0_33z;
  wire [6:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_43z;
  reg [4:0] celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_47z;
  wire celloutsig_0_49z;
  reg [16:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire [3:0] celloutsig_0_52z;
  wire [22:0] celloutsig_0_56z;
  wire [8:0] celloutsig_0_57z;
  wire [6:0] celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire [4:0] celloutsig_0_65z;
  wire [4:0] celloutsig_0_67z;
  wire celloutsig_0_6z;
  wire [15:0] celloutsig_0_74z;
  wire celloutsig_0_75z;
  wire [3:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [3:0] celloutsig_1_10z;
  wire [2:0] celloutsig_1_11z;
  wire [42:0] celloutsig_1_12z;
  wire [3:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [9:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [9:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [23:0] celloutsig_1_7z;
  wire [2:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = ~(in_data[24] | in_data[5]);
  assign celloutsig_0_29z = ~(in_data[10] | celloutsig_0_14z[5]);
  assign celloutsig_0_37z = ~(celloutsig_0_0z | celloutsig_0_23z);
  assign celloutsig_0_40z = ~(celloutsig_0_26z[8] | celloutsig_0_33z[15]);
  assign celloutsig_0_43z = ~(celloutsig_0_8z | celloutsig_0_38z);
  assign celloutsig_0_45z = ~(celloutsig_0_2z | celloutsig_0_44z[4]);
  assign celloutsig_0_50z = ~(celloutsig_0_40z | celloutsig_0_3z);
  assign celloutsig_0_5z = ~(celloutsig_0_4z[13] | celloutsig_0_0z);
  assign celloutsig_0_75z = ~(celloutsig_0_67z[4] | celloutsig_0_9z);
  assign celloutsig_1_0z = ~(in_data[111] | in_data[138]);
  assign celloutsig_1_4z = ~(celloutsig_1_1z | in_data[120]);
  assign celloutsig_0_8z = ~(celloutsig_0_3z | celloutsig_0_4z[8]);
  assign celloutsig_0_9z = ~(celloutsig_0_5z | celloutsig_0_3z);
  assign celloutsig_0_2z = ~(celloutsig_0_1z[2] | celloutsig_0_0z);
  assign celloutsig_0_27z = ~(celloutsig_0_18z[3] | celloutsig_0_1z[0]);
  assign celloutsig_0_3z = ~((in_data[16] | celloutsig_0_2z) & (celloutsig_0_0z | celloutsig_0_1z[1]));
  assign celloutsig_0_30z = ~((celloutsig_0_11z[2] | celloutsig_0_10z) & (celloutsig_0_7z[3] | celloutsig_0_7z[3]));
  assign celloutsig_0_36z = ~((celloutsig_0_17z[9] | celloutsig_0_21z[1]) & (celloutsig_0_0z | celloutsig_0_1z[2]));
  assign celloutsig_0_38z = ~((celloutsig_0_12z[4] | celloutsig_0_33z[4]) & (celloutsig_0_17z[3] | celloutsig_0_16z[8]));
  assign celloutsig_0_47z = ~((celloutsig_0_36z | celloutsig_0_44z[3]) & (celloutsig_0_15z[2] | celloutsig_0_16z[12]));
  assign celloutsig_0_49z = ~((celloutsig_0_18z[0] | celloutsig_0_33z[16]) & (celloutsig_0_43z | celloutsig_0_27z));
  assign celloutsig_0_61z = ~((celloutsig_0_47z | celloutsig_0_17z[4]) & (celloutsig_0_26z[14] | celloutsig_0_23z));
  assign celloutsig_0_6z = ~((celloutsig_0_0z | in_data[44]) & (celloutsig_0_3z | celloutsig_0_4z[9]));
  assign celloutsig_1_1z = ~((celloutsig_1_0z | in_data[119]) & (celloutsig_1_0z | celloutsig_1_0z));
  assign celloutsig_1_3z = ~((in_data[173] | celloutsig_1_0z) & (in_data[164] | celloutsig_1_1z));
  assign celloutsig_1_6z = ~((celloutsig_1_0z | in_data[154]) & (celloutsig_1_4z | in_data[146]));
  assign celloutsig_1_9z = ~((celloutsig_1_7z[8] | celloutsig_1_2z[1]) & (celloutsig_1_8z[2] | celloutsig_1_7z[11]));
  assign celloutsig_1_19z = ~((celloutsig_1_6z | celloutsig_1_18z[3]) & (celloutsig_1_10z[3] | celloutsig_1_9z));
  assign celloutsig_0_10z = ~((celloutsig_0_2z | celloutsig_0_0z) & (celloutsig_0_5z | in_data[84]));
  assign celloutsig_0_13z = ~((celloutsig_0_10z | celloutsig_0_8z) & (celloutsig_0_7z[2] | in_data[60]));
  assign celloutsig_0_22z = ~((celloutsig_0_3z | celloutsig_0_21z[0]) & (celloutsig_0_5z | celloutsig_0_17z[6]));
  assign celloutsig_0_23z = ~((celloutsig_0_5z | celloutsig_0_14z[10]) & (celloutsig_0_7z[0] | celloutsig_0_4z[14]));
  assign celloutsig_0_35z = celloutsig_0_26z[28:22] % { 1'h1, celloutsig_0_17z[4:1], celloutsig_0_9z, celloutsig_0_8z };
  assign celloutsig_0_59z = { celloutsig_0_57z[1:0], celloutsig_0_24z, celloutsig_0_49z } % { 1'h1, celloutsig_0_26z[6:1] };
  assign celloutsig_0_65z = { celloutsig_0_32z[1], celloutsig_0_0z, celloutsig_0_50z, celloutsig_0_6z, celloutsig_0_8z } % { 1'h1, celloutsig_0_18z[9:8], celloutsig_0_9z, celloutsig_0_30z };
  assign celloutsig_0_74z = { celloutsig_0_65z, celloutsig_0_61z, celloutsig_0_52z, celloutsig_0_11z, celloutsig_0_47z, celloutsig_0_10z, celloutsig_0_29z } % { 1'h1, celloutsig_0_56z[19:7], celloutsig_0_3z, celloutsig_0_27z };
  assign celloutsig_1_2z = in_data[127:118] % { 1'h1, in_data[110:109], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_5z = { in_data[159:153], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z } % { 1'h1, celloutsig_1_2z[6:4], celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_1_12z = { celloutsig_1_10z[3], celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_9z, celloutsig_1_0z } % { 1'h1, in_data[180:176], celloutsig_1_11z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_5z, celloutsig_1_10z, celloutsig_1_9z };
  assign celloutsig_0_11z = { celloutsig_0_1z[1:0], celloutsig_0_9z } % { 1'h1, celloutsig_0_10z, celloutsig_0_2z };
  assign celloutsig_0_12z = { celloutsig_0_4z[11], celloutsig_0_1z, celloutsig_0_3z } % { 1'h1, celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_14z = { in_data[92:87], celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_13z } % { 1'h1, in_data[41:29] };
  assign celloutsig_0_17z = celloutsig_0_16z[12:1] % { 1'h1, in_data[56:50], celloutsig_0_11z, celloutsig_0_5z };
  assign celloutsig_0_18z = { celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_7z } % { 1'h1, celloutsig_0_4z[11:3], celloutsig_0_12z };
  assign celloutsig_0_21z = { celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_3z } % { 1'h1, celloutsig_0_16z[6:4] };
  assign celloutsig_0_24z = { celloutsig_0_14z[6:5], celloutsig_0_6z, celloutsig_0_23z } % { 1'h1, celloutsig_0_15z[4:2] };
  assign celloutsig_0_26z = { celloutsig_0_18z[10:2], celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_22z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_23z, celloutsig_0_19z } % { 1'h1, celloutsig_0_15z, celloutsig_0_16z, celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_2z };
  assign celloutsig_0_32z = celloutsig_0_21z[2:0] << celloutsig_0_20z[12:10];
  assign celloutsig_0_33z = { celloutsig_0_26z[29:5], celloutsig_0_10z, celloutsig_0_27z, celloutsig_0_27z } << { celloutsig_0_17z[5:0], celloutsig_0_8z, celloutsig_0_21z, celloutsig_0_24z, celloutsig_0_10z, celloutsig_0_17z };
  assign celloutsig_0_52z = { celloutsig_0_35z[5:3], celloutsig_0_38z } << celloutsig_0_4z[9:6];
  assign celloutsig_0_56z = { celloutsig_0_14z[11:4], celloutsig_0_35z, celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_0z } << celloutsig_0_26z[27:5];
  assign celloutsig_0_57z = { celloutsig_0_35z[5:1], celloutsig_0_49z, celloutsig_0_45z, celloutsig_0_37z, celloutsig_0_22z } << { celloutsig_0_20z[4:0], celloutsig_0_32z, celloutsig_0_0z };
  assign celloutsig_0_67z = celloutsig_0_59z[6:2] << { in_data[58:55], celloutsig_0_45z };
  assign celloutsig_0_7z = { celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_0z } << celloutsig_0_4z[9:6];
  assign celloutsig_1_7z = { celloutsig_1_2z[0], celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_1z } << { in_data[158:140], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_6z };
  assign celloutsig_1_8z = in_data[157:155] << celloutsig_1_2z[3:1];
  assign celloutsig_1_10z = celloutsig_1_2z[7:4] << celloutsig_1_7z[22:19];
  assign celloutsig_1_11z = { celloutsig_1_2z[7], celloutsig_1_6z, celloutsig_1_3z } << celloutsig_1_8z;
  assign celloutsig_1_18z = celloutsig_1_12z[6:3] << in_data[142:139];
  assign celloutsig_0_1z = in_data[36:33] << in_data[56:53];
  assign celloutsig_0_15z = { celloutsig_0_4z[12:8], celloutsig_0_2z } << { celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_13z, celloutsig_0_3z };
  assign celloutsig_0_16z = { in_data[83:76], celloutsig_0_5z, celloutsig_0_15z } << { celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_13z, celloutsig_0_15z, celloutsig_0_0z };
  assign celloutsig_0_19z = celloutsig_0_18z[15:9] << { celloutsig_0_11z[2:1], celloutsig_0_7z, celloutsig_0_5z };
  assign celloutsig_0_20z = in_data[93:75] << { celloutsig_0_15z, celloutsig_0_11z, celloutsig_0_19z, celloutsig_0_10z, celloutsig_0_13z, celloutsig_0_2z };
  always_latch
    if (clkin_data[96]) celloutsig_0_4z = 17'h00000;
    else if (!celloutsig_1_19z) celloutsig_0_4z = in_data[50:34];
  always_latch
    if (!clkin_data[64]) celloutsig_0_44z = 5'h00;
    else if (!clkin_data[0]) celloutsig_0_44z = in_data[94:90];
  assign { out_data[131:128], out_data[96], out_data[47:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_74z, celloutsig_0_75z };
endmodule

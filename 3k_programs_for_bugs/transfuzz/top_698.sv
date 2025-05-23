/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [6:0] celloutsig_0_10z;
  wire [21:0] celloutsig_0_11z;
  wire [3:0] celloutsig_0_12z;
  wire [6:0] celloutsig_0_13z;
  reg [23:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [7:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [3:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [2:0] celloutsig_0_1z;
  reg [8:0] celloutsig_0_20z;
  wire [18:0] celloutsig_0_21z;
  wire celloutsig_0_23z;
  reg [12:0] celloutsig_0_24z;
  wire [13:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [29:0] celloutsig_0_27z;
  wire [10:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [6:0] celloutsig_0_2z;
  wire [9:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [2:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire [8:0] celloutsig_0_39z;
  wire [20:0] celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_44z;
  wire [4:0] celloutsig_0_45z;
  wire [12:0] celloutsig_0_46z;
  reg [19:0] celloutsig_0_47z;
  wire [10:0] celloutsig_0_4z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire [20:0] celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire [3:0] celloutsig_0_5z;
  reg [30:0] celloutsig_0_60z;
  wire celloutsig_0_62z;
  wire celloutsig_0_65z;
  wire celloutsig_0_67z;
  wire [3:0] celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire celloutsig_0_70z;
  wire [2:0] celloutsig_0_76z;
  wire celloutsig_0_77z;
  wire [34:0] celloutsig_0_78z;
  wire celloutsig_0_7z;
  wire [7:0] celloutsig_0_80z;
  wire celloutsig_0_83z;
  wire [6:0] celloutsig_0_85z;
  wire celloutsig_0_86z;
  wire celloutsig_0_8z;
  reg [3:0] celloutsig_0_9z;
  wire [21:0] celloutsig_1_0z;
  wire [7:0] celloutsig_1_10z;
  wire [8:0] celloutsig_1_11z;
  wire [25:0] celloutsig_1_12z;
  wire [2:0] celloutsig_1_14z;
  wire [30:0] celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire [8:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [6:0] celloutsig_1_3z;
  wire [10:0] celloutsig_1_4z;
  wire [5:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_33z = ~(celloutsig_0_7z & celloutsig_0_4z[6]);
  assign celloutsig_0_7z = ~(celloutsig_0_0z & celloutsig_0_3z[5]);
  assign celloutsig_0_8z = ~(celloutsig_0_1z[0] & celloutsig_0_4z[6]);
  assign celloutsig_0_19z = !(celloutsig_0_9z[1] ? celloutsig_0_16z[4] : celloutsig_0_2z[5]);
  assign celloutsig_0_29z = !(in_data[84] ? in_data[72] : celloutsig_0_25z[7]);
  assign celloutsig_0_52z = ~(celloutsig_0_12z[0] | celloutsig_0_35z[0]);
  assign celloutsig_0_53z = ~(celloutsig_0_23z | celloutsig_0_28z[2]);
  assign celloutsig_0_62z = ~(celloutsig_0_52z | celloutsig_0_7z);
  assign celloutsig_0_65z = ~(celloutsig_0_46z[0] | celloutsig_0_7z);
  assign celloutsig_0_37z = ~celloutsig_0_19z;
  assign celloutsig_0_0z = ~((in_data[48] | in_data[4]) & in_data[30]);
  assign celloutsig_0_6z = ~((celloutsig_0_0z | celloutsig_0_1z[0]) & celloutsig_0_4z[6]);
  assign celloutsig_1_1z = ~((celloutsig_1_0z[16] | celloutsig_1_0z[0]) & celloutsig_1_0z[3]);
  assign celloutsig_0_36z = ~((celloutsig_0_19z | celloutsig_0_30z[8]) & (celloutsig_0_28z[4] | celloutsig_0_11z[12]));
  assign celloutsig_0_32z = celloutsig_0_18z[0] | ~(celloutsig_0_26z);
  assign celloutsig_0_86z = ~(celloutsig_0_45z[4] ^ celloutsig_0_69z[3]);
  assign celloutsig_1_19z = ~(celloutsig_1_17z ^ celloutsig_1_11z[2]);
  assign celloutsig_0_35z = { celloutsig_0_4z[8], celloutsig_0_4z[4], celloutsig_0_4z[6] } & celloutsig_0_11z[16:14];
  assign celloutsig_0_57z = { celloutsig_0_27z[21:6], celloutsig_0_8z, celloutsig_0_5z } & { celloutsig_0_39z[1:0], celloutsig_0_13z, celloutsig_0_4z[10:6], celloutsig_0_4z[8], celloutsig_0_4z[4], celloutsig_0_4z[6], celloutsig_0_4z[2:0], celloutsig_0_38z };
  assign celloutsig_0_76z = celloutsig_0_20z[7:5] & celloutsig_0_25z[9:7];
  assign celloutsig_0_78z = { celloutsig_0_37z, celloutsig_0_36z, celloutsig_0_77z, celloutsig_0_31z, celloutsig_0_60z } & { celloutsig_0_13z[5:0], celloutsig_0_52z, celloutsig_0_70z, celloutsig_0_11z, celloutsig_0_45z };
  assign celloutsig_1_4z = { in_data[140:131], celloutsig_1_2z } & { celloutsig_1_0z[19:10], celloutsig_1_2z };
  assign celloutsig_0_11z = in_data[54:33] & { in_data[21:14], celloutsig_0_2z[6:3], celloutsig_0_2z[5:3], celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_12z = celloutsig_0_10z[3:0] & celloutsig_0_11z[10:7];
  assign celloutsig_0_16z = celloutsig_0_14z[14:7] & { celloutsig_0_10z[4:1], celloutsig_0_5z };
  assign celloutsig_0_21z = in_data[83:65] & celloutsig_0_14z[23:5];
  assign celloutsig_0_5z = { celloutsig_0_2z[6:4], celloutsig_0_0z } / { 1'h1, celloutsig_0_1z };
  assign celloutsig_1_3z = in_data[113:107] / { 1'h1, celloutsig_1_0z[11:6] };
  assign celloutsig_0_18z = { celloutsig_0_2z[4:3], celloutsig_0_2z[5:4] } / { 1'h1, celloutsig_0_4z[6], celloutsig_0_4z[2:1] };
  assign celloutsig_0_25z = { celloutsig_0_5z[3], celloutsig_0_18z, celloutsig_0_13z, celloutsig_0_15z, celloutsig_0_19z } / { 1'h1, celloutsig_0_21z[6:1], celloutsig_0_10z };
  assign celloutsig_0_83z = celloutsig_0_39z[6:4] == { celloutsig_0_80z[5:4], celloutsig_0_42z };
  assign celloutsig_0_42z = { celloutsig_0_2z[6], celloutsig_0_26z, celloutsig_0_34z } > celloutsig_0_18z[2:0];
  assign celloutsig_0_77z = { celloutsig_0_76z[1:0], celloutsig_0_26z, celloutsig_0_70z } > celloutsig_0_46z[11:8];
  assign celloutsig_1_8z = { celloutsig_1_0z[14:3], celloutsig_1_4z } <= { celloutsig_1_0z, celloutsig_1_7z };
  assign celloutsig_1_9z = in_data[169:133] <= { celloutsig_1_0z[17:5], celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_6z };
  assign celloutsig_0_23z = { celloutsig_0_3z[10:8], celloutsig_0_10z } <= { celloutsig_0_11z[14:7], celloutsig_0_0z, celloutsig_0_8z };
  assign celloutsig_0_58z = { celloutsig_0_4z[9:6], celloutsig_0_31z, celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_20z, celloutsig_0_35z } && { celloutsig_0_21z[16:7], celloutsig_0_20z };
  assign celloutsig_0_39z = { celloutsig_0_11z[14:10], celloutsig_0_34z, celloutsig_0_31z, celloutsig_0_15z, celloutsig_0_8z } % { 1'h1, celloutsig_0_28z[9:2] };
  assign celloutsig_0_45z = { celloutsig_0_21z[4:2], celloutsig_0_44z, celloutsig_0_44z } % { 1'h1, in_data[63:60] };
  assign celloutsig_0_85z = { celloutsig_0_78z[34:30], celloutsig_0_83z, celloutsig_0_8z } % { 1'h1, celloutsig_0_57z[16:12], celloutsig_0_65z };
  assign celloutsig_1_0z = in_data[140:119] % { 1'h1, in_data[175:155] };
  assign celloutsig_1_5z = celloutsig_1_0z[20:15] % { 1'h1, in_data[137:133] };
  assign celloutsig_1_10z = { celloutsig_1_3z, celloutsig_1_7z } % { 1'h1, celloutsig_1_4z[9:3] };
  assign celloutsig_1_11z = celloutsig_1_4z[8:0] % { 1'h1, celloutsig_1_3z[2], celloutsig_1_3z };
  assign celloutsig_0_46z = { celloutsig_0_24z[11:1], celloutsig_0_31z, celloutsig_0_36z } * { in_data[88:78], celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_0_27z = { celloutsig_0_12z, celloutsig_0_26z, celloutsig_0_3z[20:4], celloutsig_0_3z[6:5], celloutsig_0_3z[1:0], celloutsig_0_9z } * { celloutsig_0_4z[6], celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_26z, celloutsig_0_16z, celloutsig_0_20z };
  assign celloutsig_0_69z = ~ { celloutsig_0_47z[10:8], celloutsig_0_41z };
  assign celloutsig_1_18z = ~ { celloutsig_1_16z[22:17], celloutsig_1_14z };
  assign celloutsig_0_28z = ~ { celloutsig_0_25z[12:3], celloutsig_0_6z };
  assign celloutsig_0_1z = in_data[31:29] | in_data[23:21];
  assign celloutsig_0_41z = | { celloutsig_0_28z[5:4], celloutsig_0_19z, celloutsig_0_36z };
  assign celloutsig_0_17z = | { celloutsig_0_13z[3:2], celloutsig_0_12z };
  assign celloutsig_0_67z = celloutsig_0_28z[6] & celloutsig_0_29z;
  assign celloutsig_1_2z = in_data[132] & celloutsig_1_1z;
  assign celloutsig_1_6z = celloutsig_1_2z & in_data[138];
  assign celloutsig_0_34z = | { celloutsig_0_23z, celloutsig_0_6z, celloutsig_0_4z[10:6], celloutsig_0_4z[4], celloutsig_0_4z[2:0] };
  assign celloutsig_0_38z = | { celloutsig_0_33z, celloutsig_0_31z, celloutsig_0_30z[9:7] };
  assign celloutsig_0_44z = | { celloutsig_0_12z[2:0], celloutsig_0_10z };
  assign celloutsig_0_70z = | { celloutsig_0_58z, celloutsig_0_53z, celloutsig_0_20z[5] };
  assign celloutsig_1_17z = | { celloutsig_1_16z[26:24], celloutsig_1_9z, celloutsig_1_2z };
  assign celloutsig_0_15z = | in_data[43:41];
  assign celloutsig_0_26z = | celloutsig_0_3z[19:12];
  assign celloutsig_1_7z = ~^ celloutsig_1_4z[3:1];
  assign celloutsig_0_31z = ~^ { celloutsig_0_8z, celloutsig_0_29z, celloutsig_0_19z };
  assign celloutsig_1_12z = { in_data[170:146], celloutsig_1_7z } << { celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_10z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_7z };
  assign celloutsig_1_14z = in_data[160:158] ~^ { celloutsig_1_12z[7:6], celloutsig_1_8z };
  assign celloutsig_1_16z = { in_data[150:128], celloutsig_1_10z } ~^ { celloutsig_1_4z[8:0], celloutsig_1_0z };
  assign celloutsig_0_10z = { celloutsig_0_4z[4], celloutsig_0_4z[6], celloutsig_0_4z[2], celloutsig_0_9z } ~^ { celloutsig_0_4z[8], celloutsig_0_4z[4], celloutsig_0_4z[6], celloutsig_0_4z[2:0], celloutsig_0_8z };
  assign celloutsig_0_80z = { celloutsig_0_62z, celloutsig_0_67z, celloutsig_0_15z, celloutsig_0_18z, celloutsig_0_32z } ^ { celloutsig_0_4z[1], celloutsig_0_13z };
  assign celloutsig_0_13z = { celloutsig_0_10z[4:0], celloutsig_0_8z, celloutsig_0_7z } ^ { celloutsig_0_10z[5:2], celloutsig_0_1z };
  always_latch
    if (clkin_data[64]) celloutsig_0_47z = 20'h00000;
    else if (clkin_data[0]) celloutsig_0_47z = { celloutsig_0_33z, celloutsig_0_15z, celloutsig_0_7z, celloutsig_0_16z, celloutsig_0_20z };
  always_latch
    if (clkin_data[64]) celloutsig_0_60z = 31'h00000000;
    else if (celloutsig_1_18z[0]) celloutsig_0_60z = { celloutsig_0_47z[17], celloutsig_0_5z, celloutsig_0_53z, celloutsig_0_8z, celloutsig_0_14z };
  always_latch
    if (!clkin_data[64]) celloutsig_0_9z = 4'h0;
    else if (!celloutsig_1_18z[0]) celloutsig_0_9z = celloutsig_0_5z;
  always_latch
    if (clkin_data[64]) celloutsig_0_14z = 24'h000000;
    else if (!celloutsig_1_18z[0]) celloutsig_0_14z = { celloutsig_0_12z[3:2], celloutsig_0_4z[10:6], celloutsig_0_4z[8], celloutsig_0_4z[4], celloutsig_0_4z[6], celloutsig_0_4z[2:0], celloutsig_0_4z[10:6], celloutsig_0_4z[8], celloutsig_0_4z[4], celloutsig_0_4z[6], celloutsig_0_4z[2:0] };
  always_latch
    if (!clkin_data[64]) celloutsig_0_20z = 9'h000;
    else if (clkin_data[0]) celloutsig_0_20z = { celloutsig_0_3z[16:9], celloutsig_0_19z };
  always_latch
    if (clkin_data[64]) celloutsig_0_24z = 13'h0000;
    else if (clkin_data[0]) celloutsig_0_24z = { celloutsig_0_14z[19:8], celloutsig_0_23z };
  assign { celloutsig_0_2z[5:3], celloutsig_0_2z[6] } = ~ { celloutsig_0_1z, in_data[29] };
  assign { celloutsig_0_30z[6], celloutsig_0_30z[9:7], celloutsig_0_30z[2:0] } = ~ celloutsig_0_13z;
  assign { celloutsig_0_3z[6:4], celloutsig_0_3z[1], celloutsig_0_3z[7], celloutsig_0_3z[14], celloutsig_0_3z[10], celloutsig_0_3z[13], celloutsig_0_3z[9:8], celloutsig_0_3z[12], celloutsig_0_3z[20:15], celloutsig_0_3z[11], celloutsig_0_3z[0] } = { celloutsig_0_2z[5:3], celloutsig_0_2z[3], celloutsig_0_2z[6], celloutsig_0_1z[2], celloutsig_0_1z[2:1], celloutsig_0_1z[1:0], celloutsig_0_1z[0], in_data[72:67], celloutsig_0_0z, celloutsig_0_0z } & { celloutsig_0_2z[4:3], celloutsig_0_2z[5], celloutsig_0_0z, celloutsig_0_2z[5], in_data[60], in_data[56], in_data[59], celloutsig_0_0z, celloutsig_0_2z[6], in_data[58], in_data[66:61], in_data[57], celloutsig_0_0z };
  assign { celloutsig_0_4z[8], celloutsig_0_4z[4], celloutsig_0_4z[7:6], celloutsig_0_4z[9], celloutsig_0_4z[10], celloutsig_0_4z[2:0] } = { celloutsig_0_2z[5:4], celloutsig_0_2z[4:3], celloutsig_0_2z[6], celloutsig_0_2z[6], celloutsig_0_1z } & { celloutsig_0_2z[4:3], celloutsig_0_2z[6:5], celloutsig_0_2z[5], celloutsig_0_2z[6], celloutsig_0_2z[4:3], celloutsig_0_0z };
  assign celloutsig_0_2z[2:0] = celloutsig_0_2z[5:3];
  assign celloutsig_0_30z[5:3] = celloutsig_0_30z[9:7];
  assign celloutsig_0_3z[3:2] = celloutsig_0_3z[6:5];
  assign { celloutsig_0_4z[5], celloutsig_0_4z[3] } = { celloutsig_0_4z[8], celloutsig_0_4z[6] };
  assign { out_data[136:128], out_data[96], out_data[38:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_85z, celloutsig_0_86z };
endmodule

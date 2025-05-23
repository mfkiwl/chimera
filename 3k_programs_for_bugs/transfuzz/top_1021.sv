/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  reg [8:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [6:0] celloutsig_0_13z;
  wire [2:0] celloutsig_0_14z;
  wire [3:0] celloutsig_0_15z;
  wire [11:0] celloutsig_0_16z;
  wire [8:0] celloutsig_0_17z;
  wire [2:0] celloutsig_0_18z;
  wire [8:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  reg [5:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [5:0] celloutsig_0_33z;
  wire [26:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [3:0] celloutsig_0_37z;
  wire [8:0] celloutsig_0_3z;
  wire [22:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire [3:0] celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire [6:0] celloutsig_0_55z;
  reg [17:0] celloutsig_0_57z;
  wire [6:0] celloutsig_0_5z;
  wire celloutsig_0_61z;
  reg [2:0] celloutsig_0_64z;
  wire [5:0] celloutsig_0_65z;
  wire [17:0] celloutsig_0_67z;
  wire celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire [20:0] celloutsig_0_74z;
  wire celloutsig_0_75z;
  wire [10:0] celloutsig_0_7z;
  wire celloutsig_0_81z;
  wire [9:0] celloutsig_0_82z;
  wire [5:0] celloutsig_0_8z;
  wire [13:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire [25:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  reg [2:0] celloutsig_1_2z;
  wire [8:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [6:0] celloutsig_1_5z;
  wire [10:0] celloutsig_1_7z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_69z = ~(celloutsig_0_36z | celloutsig_0_57z[9]);
  assign celloutsig_0_28z = ~(celloutsig_0_5z[3] | celloutsig_0_14z[0]);
  assign celloutsig_0_22z = ~celloutsig_0_13z[5];
  assign celloutsig_0_30z = ~celloutsig_0_28z;
  assign celloutsig_0_0z = ~((in_data[70] | in_data[54]) & (in_data[9] | in_data[80]));
  assign celloutsig_0_51z = ~((celloutsig_0_12z | celloutsig_0_0z) & (celloutsig_0_31z | celloutsig_0_27z));
  assign celloutsig_0_53z = ~((celloutsig_0_48z[2] | celloutsig_0_48z[1]) & (celloutsig_0_51z | celloutsig_0_24z));
  assign celloutsig_0_81z = ~((celloutsig_0_75z | celloutsig_0_46z) & (celloutsig_0_3z[0] | celloutsig_0_44z));
  assign celloutsig_1_4z = ~((in_data[146] | celloutsig_1_1z) & (celloutsig_1_0z | celloutsig_1_3z[2]));
  assign celloutsig_1_11z = ~((celloutsig_1_7z[9] | 1'h1) & (celloutsig_1_3z[5] | celloutsig_1_2z[2]));
  assign celloutsig_0_43z = celloutsig_0_1z | celloutsig_0_37z[1];
  assign celloutsig_0_23z = celloutsig_0_15z[1] | celloutsig_0_1z;
  assign celloutsig_0_44z = ~(celloutsig_0_18z[2] ^ celloutsig_0_43z);
  assign celloutsig_0_45z = ~(celloutsig_0_2z ^ celloutsig_0_33z[2]);
  assign celloutsig_0_47z = ~(celloutsig_0_15z[3] ^ celloutsig_0_17z[8]);
  assign celloutsig_0_61z = ~(celloutsig_0_51z ^ celloutsig_0_44z);
  assign celloutsig_1_9z = ~(celloutsig_1_7z[6] ^ celloutsig_1_1z);
  assign celloutsig_0_25z = ~(celloutsig_0_19z[3] ^ celloutsig_0_10z);
  assign celloutsig_0_27z = ~(celloutsig_0_8z[3] ^ celloutsig_0_17z[6]);
  assign celloutsig_0_5z = { in_data[62], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_2z } / { 1'h1, in_data[40:37], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_8z = celloutsig_0_3z[6:1] / { 1'h1, celloutsig_0_7z[7:3] };
  assign celloutsig_1_18z = { celloutsig_1_10z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_17z, celloutsig_1_7z, celloutsig_1_13z, celloutsig_1_15z, celloutsig_1_1z } / { 1'h1, celloutsig_1_7z[9:0], celloutsig_1_17z, celloutsig_1_11z, celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_15z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_0_16z = { celloutsig_0_9z[12:2], celloutsig_0_1z } / { 1'h1, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_13z };
  assign celloutsig_0_19z = celloutsig_0_17z / { 1'h1, celloutsig_0_14z[0], celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_75z = celloutsig_0_67z[14:12] === { celloutsig_0_20z, celloutsig_0_28z, celloutsig_0_43z };
  assign celloutsig_0_12z = { celloutsig_0_8z[2], celloutsig_0_10z, celloutsig_0_8z } === { celloutsig_0_7z[6:0], celloutsig_0_10z };
  assign celloutsig_0_24z = celloutsig_0_11z[5:3] === in_data[12:10];
  assign celloutsig_0_37z = { celloutsig_0_34z[24:22], celloutsig_0_28z } % { 1'h1, celloutsig_0_5z[0], celloutsig_0_4z, celloutsig_0_22z };
  assign celloutsig_0_42z = { celloutsig_0_17z[6:2], celloutsig_0_7z, celloutsig_0_13z } % { 1'h1, in_data[24:14], celloutsig_0_6z, celloutsig_0_37z, celloutsig_0_29z };
  assign celloutsig_0_48z = celloutsig_0_11z[4:1] % { 1'h1, celloutsig_0_35z, celloutsig_0_35z, celloutsig_0_46z };
  assign celloutsig_0_82z = { celloutsig_0_53z, celloutsig_0_51z, celloutsig_0_32z, celloutsig_0_55z } % { 1'h1, celloutsig_0_74z[17:10], celloutsig_0_75z };
  assign celloutsig_1_3z = { in_data[141:138], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_2z } % { 1'h1, in_data[177:170] };
  assign celloutsig_0_18z = { celloutsig_0_16z[1:0], celloutsig_0_12z } % { 1'h1, celloutsig_0_8z[4:3] };
  assign celloutsig_0_65z = { celloutsig_0_18z, celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_47z } % { 1'h1, celloutsig_0_19z[4:0] };
  assign celloutsig_1_5z = { celloutsig_1_3z[5:0], celloutsig_1_1z } % { 1'h1, celloutsig_1_3z[7:5], celloutsig_1_2z };
  assign celloutsig_0_13z = { celloutsig_0_8z, celloutsig_0_0z } % { 1'h1, celloutsig_0_3z[4:2], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_6z };
  assign celloutsig_0_14z = { celloutsig_0_9z[7], celloutsig_0_12z, celloutsig_0_6z } % { 1'h1, celloutsig_0_13z[0], in_data[0] };
  assign celloutsig_0_36z = celloutsig_0_34z[22:12] != { celloutsig_0_9z[10:1], celloutsig_0_23z };
  assign celloutsig_1_13z = { celloutsig_1_5z[1], celloutsig_1_5z } != { celloutsig_1_3z[7:2], celloutsig_1_11z, celloutsig_1_1z };
  assign celloutsig_0_2z = { in_data[51:39], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z } != in_data[29:14];
  assign celloutsig_0_46z = & { celloutsig_0_23z, celloutsig_0_16z, celloutsig_0_7z[9:3], celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_52z = & { celloutsig_0_42z[10:4], celloutsig_0_6z };
  assign celloutsig_0_10z = & celloutsig_0_3z[7:3];
  assign celloutsig_0_1z = & { in_data[81:78], celloutsig_0_0z };
  assign celloutsig_0_20z = & { celloutsig_0_16z, celloutsig_0_7z[9:3], celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_0_4z = | { celloutsig_0_3z[5:3], celloutsig_0_2z };
  assign celloutsig_1_0z = | in_data[152:139];
  assign celloutsig_1_1z = | in_data[148:145];
  assign celloutsig_1_15z = | { celloutsig_1_7z[10:4], celloutsig_1_10z };
  assign celloutsig_0_35z = celloutsig_0_25z & celloutsig_0_15z[2];
  assign celloutsig_0_6z = celloutsig_0_0z & celloutsig_0_4z;
  assign celloutsig_1_10z = | celloutsig_1_3z[5:2];
  assign celloutsig_1_17z = | { celloutsig_1_15z, celloutsig_1_13z, in_data[123:108] };
  assign celloutsig_1_19z = | { celloutsig_1_18z[22:17], celloutsig_1_9z, celloutsig_1_1z };
  assign celloutsig_0_26z = | { celloutsig_0_25z, celloutsig_0_19z[8:1], celloutsig_0_7z };
  assign celloutsig_0_32z = | celloutsig_0_14z;
  assign celloutsig_0_74z = { celloutsig_0_5z[0], celloutsig_0_69z, celloutsig_0_55z, celloutsig_0_65z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_51z, celloutsig_0_20z, celloutsig_0_28z, celloutsig_0_28z } >> { celloutsig_0_7z, celloutsig_0_69z, celloutsig_0_64z, celloutsig_0_65z };
  assign celloutsig_0_33z = celloutsig_0_13z[5:0] >> { celloutsig_0_8z[3:0], celloutsig_0_0z, celloutsig_0_12z };
  assign celloutsig_0_3z = { in_data[79:72], celloutsig_0_0z } >>> { celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_67z = { in_data[42:35], celloutsig_0_61z, celloutsig_0_10z, celloutsig_0_37z, celloutsig_0_64z, celloutsig_0_23z } >>> { celloutsig_0_7z[8:0], celloutsig_0_55z, celloutsig_0_30z, celloutsig_0_45z };
  assign celloutsig_0_7z = in_data[25:15] >>> { celloutsig_0_3z[8:1], celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_6z };
  assign celloutsig_0_17z = { celloutsig_0_13z[6:1], celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_10z } >>> { celloutsig_0_16z[6:5], celloutsig_0_15z, celloutsig_0_14z };
  assign celloutsig_0_34z = { in_data[39:20], celloutsig_0_6z, celloutsig_0_29z } - { celloutsig_0_9z[12:7], celloutsig_0_24z, celloutsig_0_12z, celloutsig_0_24z, celloutsig_0_22z, celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_16z, celloutsig_0_1z };
  assign celloutsig_0_55z = celloutsig_0_19z[8:2] ^ { celloutsig_0_19z[5:1], celloutsig_0_20z, celloutsig_0_46z };
  assign celloutsig_0_9z = { celloutsig_0_5z[5:3], celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_3z } ^ { in_data[21:9], celloutsig_0_1z };
  assign celloutsig_1_7z = in_data[183:173] ^ { celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_4z };
  assign celloutsig_0_15z = { celloutsig_0_11z[4:2], celloutsig_0_4z } ^ celloutsig_0_5z[5:2];
  always_latch
    if (celloutsig_1_19z) celloutsig_0_57z = 18'h00000;
    else if (clkin_data[0]) celloutsig_0_57z = { celloutsig_0_7z[8:6], celloutsig_0_7z, celloutsig_0_23z, celloutsig_0_25z, celloutsig_0_10z, celloutsig_0_52z };
  always_latch
    if (celloutsig_1_19z) celloutsig_0_64z = 3'h0;
    else if (clkin_data[32]) celloutsig_0_64z = celloutsig_0_34z[25:23];
  always_latch
    if (!clkin_data[96]) celloutsig_1_2z = 3'h0;
    else if (!clkin_data[64]) celloutsig_1_2z = { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_11z = 9'h000;
    else if (!clkin_data[0]) celloutsig_0_11z = { celloutsig_0_5z[6:2], celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_4z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_29z = 6'h00;
    else if (clkin_data[0]) celloutsig_0_29z = { celloutsig_0_2z, celloutsig_0_25z, celloutsig_0_15z };
  assign celloutsig_0_31z = ~((celloutsig_0_11z[6] & celloutsig_0_26z) | (celloutsig_0_5z[3] & celloutsig_0_27z));
  assign { out_data[153:128], out_data[96], out_data[32], out_data[9:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_81z, celloutsig_0_82z };
endmodule

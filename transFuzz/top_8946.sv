/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [48:0] celloutsig_0_0z;
  reg [7:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [12:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [2:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [2:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [20:0] celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire [4:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [2:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [5:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_35z;
  wire [36:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_44z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [3:0] celloutsig_0_65z;
  reg [2:0] celloutsig_0_6z;
  wire celloutsig_0_72z;
  reg [18:0] celloutsig_0_74z;
  wire [6:0] celloutsig_0_7z;
  wire celloutsig_0_91z;
  wire [7:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_12z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [16:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [23:0] celloutsig_1_4z;
  wire [11:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [12:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_16z = ~((celloutsig_0_6z[1] | celloutsig_0_9z[3]) & (celloutsig_0_0z[17] | celloutsig_0_12z));
  assign celloutsig_0_28z = ~((celloutsig_0_2z | 1'h0) & (celloutsig_0_14z | celloutsig_0_24z[4]));
  assign celloutsig_0_49z = in_data[87] | celloutsig_0_11z;
  assign celloutsig_0_91z = celloutsig_0_74z[11] | celloutsig_0_72z;
  assign celloutsig_1_1z = celloutsig_1_0z | in_data[101];
  assign celloutsig_1_15z = celloutsig_1_3z | celloutsig_1_8z[4];
  assign celloutsig_0_3z = celloutsig_0_1z | celloutsig_0_2z;
  assign celloutsig_0_72z = celloutsig_0_9z[7] ^ celloutsig_0_37z;
  assign celloutsig_1_19z = celloutsig_1_15z ^ celloutsig_1_2z[13];
  assign celloutsig_0_15z = celloutsig_0_5z ^ celloutsig_0_3z;
  assign celloutsig_0_38z = ~(celloutsig_0_36z[35] ^ celloutsig_0_27z[0]);
  assign celloutsig_0_42z = ~(celloutsig_0_11z ^ celloutsig_0_41z);
  assign celloutsig_0_5z = ~(celloutsig_0_0z[8] ^ celloutsig_0_4z);
  assign celloutsig_0_1z = ~(celloutsig_0_0z[31] ^ in_data[48]);
  assign celloutsig_0_18z = ~(celloutsig_0_7z[6] ^ celloutsig_0_15z);
  assign celloutsig_0_65z = { celloutsig_0_24z[4], celloutsig_0_24z[4], celloutsig_0_24z[2:1] } & { celloutsig_0_25z, celloutsig_0_37z, celloutsig_0_49z, celloutsig_0_41z };
  assign celloutsig_1_2z = in_data[174:158] & in_data[120:104];
  assign celloutsig_0_13z = { celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_10z } & { celloutsig_0_0z[44:39], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_17z = { celloutsig_0_0z[43], celloutsig_0_2z, celloutsig_0_11z } & { celloutsig_0_1z, celloutsig_0_12z, celloutsig_0_4z };
  assign celloutsig_0_27z = celloutsig_0_17z & { celloutsig_0_0z[1:0], celloutsig_0_18z };
  assign celloutsig_0_31z = { celloutsig_0_24z[4], celloutsig_0_24z[4], celloutsig_0_24z[2:0], celloutsig_0_12z } & { celloutsig_0_10z[2:1], celloutsig_0_17z, celloutsig_0_20z };
  assign celloutsig_0_35z = { celloutsig_0_10z[2:0], celloutsig_0_33z, celloutsig_0_17z } >= { in_data[85:84], celloutsig_0_25z, celloutsig_0_28z, celloutsig_0_19z };
  assign celloutsig_0_37z = { celloutsig_0_6z[1:0], celloutsig_0_6z } >= { celloutsig_0_11z, celloutsig_0_15z, celloutsig_0_23z, celloutsig_0_1z, celloutsig_0_18z };
  assign celloutsig_0_4z = in_data[71:68] >= { celloutsig_0_0z[32], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_41z = { in_data[70:51], celloutsig_0_40z, celloutsig_0_38z, celloutsig_0_20z, celloutsig_0_23z, 1'h0, celloutsig_0_33z, celloutsig_0_12z, celloutsig_0_32z, celloutsig_0_12z } >= { celloutsig_0_19z[2], celloutsig_0_31z, celloutsig_0_6z, celloutsig_0_13z, celloutsig_0_27z, celloutsig_0_38z, celloutsig_0_37z, celloutsig_0_20z };
  assign celloutsig_0_44z = { celloutsig_0_42z, celloutsig_0_15z, celloutsig_0_1z, celloutsig_0_35z, celloutsig_0_28z } >= { celloutsig_0_24z[4], celloutsig_0_24z[4], celloutsig_0_24z[2:0] };
  assign celloutsig_0_48z = { celloutsig_0_9z[5:2], 1'h1, celloutsig_0_9z[0], celloutsig_0_20z } >= { celloutsig_0_21z[2:0], celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_35z, celloutsig_0_38z };
  assign celloutsig_1_18z = in_data[186:183] >= { celloutsig_1_8z[5:4], celloutsig_1_7z, celloutsig_1_12z };
  assign celloutsig_0_2z = celloutsig_0_0z[34:32] >= celloutsig_0_0z[23:21];
  assign celloutsig_0_29z = { celloutsig_0_13z[6:3], celloutsig_0_1z, 1'h0, celloutsig_0_28z, celloutsig_0_19z, celloutsig_0_11z } >= { celloutsig_0_0z[24], celloutsig_0_15z, celloutsig_0_4z, celloutsig_0_10z };
  assign celloutsig_1_0z = in_data[140:135] <= in_data[190:185];
  assign celloutsig_1_3z = celloutsig_1_2z[3:1] <= celloutsig_1_2z[2:0];
  assign celloutsig_1_6z = { celloutsig_1_5z[1:0], celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_3z } <= celloutsig_1_2z[5:1];
  assign celloutsig_1_9z = celloutsig_1_4z[5:0] <= { celloutsig_1_5z[11:7], celloutsig_1_6z };
  assign celloutsig_0_12z = { celloutsig_0_10z[3:2], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_2z } <= { celloutsig_0_0z[37:34], celloutsig_0_3z };
  assign celloutsig_0_26z = celloutsig_0_13z[5:0] <= celloutsig_0_10z[7:2];
  assign celloutsig_0_33z = { celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_30z, celloutsig_0_24z[4], celloutsig_0_24z[4], celloutsig_0_24z[2:0] } <= celloutsig_0_13z[8:1];
  assign celloutsig_0_14z = { celloutsig_0_7z[5], celloutsig_0_7z[3:1] } && { celloutsig_0_6z[0], celloutsig_0_2z, celloutsig_0_3z };
  assign celloutsig_0_23z = { celloutsig_0_7z[6], celloutsig_0_16z, celloutsig_0_17z } && celloutsig_0_0z[26:22];
  assign celloutsig_0_0z = ~ in_data[49:1];
  assign celloutsig_1_5z = ~ celloutsig_1_2z[13:2];
  assign celloutsig_0_30z = | { celloutsig_0_24z[4], celloutsig_0_15z, celloutsig_0_24z[4], celloutsig_0_24z[4], celloutsig_0_24z[2:0], celloutsig_0_1z };
  assign celloutsig_0_11z = celloutsig_0_4z & celloutsig_0_10z[2];
  assign celloutsig_0_47z = | { celloutsig_0_18z, celloutsig_0_13z[12:5] };
  assign celloutsig_1_12z = | { celloutsig_1_9z, celloutsig_1_4z[6:4], celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_20z = | { celloutsig_0_17z, celloutsig_0_16z, celloutsig_0_15z, celloutsig_0_9z[7:2], celloutsig_0_6z };
  assign celloutsig_0_32z = | { celloutsig_0_29z, celloutsig_0_21z[0], celloutsig_0_11z };
  assign celloutsig_0_40z = ~^ { celloutsig_0_6z, celloutsig_0_28z };
  assign celloutsig_1_7z = ~^ celloutsig_1_2z[8:1];
  assign celloutsig_0_25z = ~^ { in_data[58:51], celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_15z };
  assign celloutsig_1_8z = { celloutsig_1_4z[13:7], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_3z } << in_data[140:128];
  assign celloutsig_1_4z = { in_data[164:142], celloutsig_1_0z } >>> { celloutsig_1_2z[8:6], celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_0_19z = { celloutsig_0_13z[0], celloutsig_0_11z, celloutsig_0_14z } >>> { celloutsig_0_7z[5], celloutsig_0_7z[3], celloutsig_0_2z };
  assign celloutsig_0_21z = { celloutsig_0_0z[41:39], celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_3z, 1'h0, celloutsig_0_1z } >>> { in_data[61:45], celloutsig_0_20z, celloutsig_0_20z, 1'h0, celloutsig_0_18z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_6z = 3'h0;
    else if (!clkin_data[0]) celloutsig_0_6z = in_data[76:74];
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_74z = 19'h00000;
    else if (clkin_data[32]) celloutsig_0_74z = { celloutsig_0_36z[29:23], celloutsig_0_13z[6], celloutsig_0_36z[21:17], celloutsig_0_6z, celloutsig_0_47z, celloutsig_0_48z, celloutsig_0_32z };
  always_latch
    if (clkin_data[64]) celloutsig_0_10z = 8'h00;
    else if (!clkin_data[32]) celloutsig_0_10z = { celloutsig_0_7z[1], celloutsig_0_7z[6:5], celloutsig_0_7z[5], celloutsig_0_7z[3:1], celloutsig_0_7z[6] };
  assign { celloutsig_0_7z[2:1], celloutsig_0_7z[6], celloutsig_0_7z[3], celloutsig_0_7z[5] } = ~ { celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_1z };
  assign { celloutsig_0_9z[0], celloutsig_0_9z[7:2] } = ~ { celloutsig_0_2z, celloutsig_0_0z[43:38] };
  assign { celloutsig_0_24z[1:0], celloutsig_0_24z[2], celloutsig_0_24z[4] } = ~ { celloutsig_0_7z[2:1], celloutsig_0_7z[3], celloutsig_0_7z[5] };
  assign { celloutsig_0_36z[29], celloutsig_0_36z[20:0], celloutsig_0_36z[36:30], celloutsig_0_36z[21], celloutsig_0_36z[28:23] } = { celloutsig_0_35z, celloutsig_0_21z, celloutsig_0_10z[6:0], celloutsig_0_9z[0], celloutsig_0_9z[7:2] } & { celloutsig_0_6z[0], celloutsig_0_13z[4:0], celloutsig_0_2z, celloutsig_0_33z, celloutsig_0_2z, celloutsig_0_28z, celloutsig_0_5z, celloutsig_0_27z, celloutsig_0_30z, celloutsig_0_20z, celloutsig_0_24z[4], celloutsig_0_24z[4], celloutsig_0_24z[2:0], celloutsig_0_30z, celloutsig_0_7z[5], celloutsig_0_33z, celloutsig_0_33z, celloutsig_0_16z, celloutsig_0_26z, celloutsig_0_6z[2:1], celloutsig_0_13z[5], celloutsig_0_13z[12:7] };
  assign { out_data[35:34], out_data[32], out_data[37:36] } = { celloutsig_0_65z[3:2], celloutsig_0_65z[0], celloutsig_0_44z, celloutsig_0_40z } & { celloutsig_0_9z[3:2], celloutsig_0_9z[0], celloutsig_0_9z[5:4] };
  assign celloutsig_0_24z[3] = celloutsig_0_24z[4];
  assign celloutsig_0_36z[22] = celloutsig_0_13z[6];
  assign { celloutsig_0_7z[4], celloutsig_0_7z[0] } = { celloutsig_0_7z[5], celloutsig_0_7z[6] };
  assign celloutsig_0_9z[1] = 1'h1;
  assign { out_data[128], out_data[96], out_data[33], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_65z[1], celloutsig_0_91z };
endmodule

/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [5:0] celloutsig_0_11z;
  wire [2:0] celloutsig_0_12z;
  reg [2:0] celloutsig_0_13z;
  wire [5:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  reg [17:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [4:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [33:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [3:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [8:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [16:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [9:0] celloutsig_0_37z;
  wire [2:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [6:0] celloutsig_0_3z;
  wire [21:0] celloutsig_0_41z;
  wire [10:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_46z;
  wire [18:0] celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire [4:0] celloutsig_0_4z;
  wire celloutsig_0_55z;
  wire [4:0] celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_62z;
  wire celloutsig_0_64z;
  wire [10:0] celloutsig_0_65z;
  wire celloutsig_0_67z;
  wire celloutsig_0_6z;
  wire [2:0] celloutsig_0_70z;
  wire celloutsig_0_71z;
  wire celloutsig_0_7z;
  wire [9:0] celloutsig_0_8z;
  wire [6:0] celloutsig_0_9z;
  wire [30:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [25:0] celloutsig_1_12z;
  wire celloutsig_1_18z;
  wire [12:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  reg [5:0] celloutsig_1_3z;
  wire [7:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [3:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_2z = ~(celloutsig_1_0z[15] | celloutsig_1_1z);
  assign celloutsig_0_0z = in_data[93] | ~(in_data[35]);
  assign celloutsig_0_55z = celloutsig_0_3z[5] | ~(celloutsig_0_48z[18]);
  assign celloutsig_1_8z = celloutsig_1_0z[18] | ~(celloutsig_1_7z[0]);
  assign celloutsig_1_18z = celloutsig_1_12z[16] | ~(celloutsig_1_10z);
  assign celloutsig_0_24z = celloutsig_0_4z[0] | ~(celloutsig_0_14z[2]);
  assign celloutsig_0_30z = celloutsig_0_11z[5] | ~(celloutsig_0_4z[2]);
  assign celloutsig_0_64z = ~(celloutsig_0_4z[0] ^ celloutsig_0_0z);
  assign celloutsig_0_15z = ~(celloutsig_0_1z ^ celloutsig_0_8z[9]);
  assign celloutsig_0_27z = ~(celloutsig_0_25z ^ celloutsig_0_20z);
  assign celloutsig_0_48z = { celloutsig_0_35z[15:0], celloutsig_0_31z, celloutsig_0_15z, celloutsig_0_18z } / { 1'h1, celloutsig_0_2z, celloutsig_0_43z, celloutsig_0_32z, celloutsig_0_3z[6:1], 1'h0 };
  assign celloutsig_0_58z = { celloutsig_0_12z, celloutsig_0_49z, celloutsig_0_44z } / { 1'h1, celloutsig_0_23z[11:10], celloutsig_0_19z, celloutsig_0_55z };
  assign celloutsig_1_5z = { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z } == { celloutsig_1_0z[2:1], celloutsig_1_2z };
  assign celloutsig_0_6z = { in_data[37:27], celloutsig_0_4z, celloutsig_0_2z } >= { celloutsig_0_3z[4:1], 1'h0, celloutsig_0_4z, celloutsig_0_3z[6:1], 1'h0 };
  assign celloutsig_0_59z = { celloutsig_0_42z[2:0], celloutsig_0_29z } >= { celloutsig_0_11z[4:3], celloutsig_0_6z, celloutsig_0_0z };
  assign celloutsig_1_1z = celloutsig_1_0z[16:1] <= in_data[178:163];
  assign celloutsig_1_9z = { celloutsig_1_0z[26], celloutsig_1_4z } <= { celloutsig_1_0z[14:9], celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_5z };
  assign celloutsig_1_11z = { celloutsig_1_7z[2:0], celloutsig_1_8z } <= { celloutsig_1_4z[1:0], celloutsig_1_6z, celloutsig_1_1z };
  assign celloutsig_0_1z = { celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z } <= in_data[82:79];
  assign celloutsig_0_17z = celloutsig_0_3z[5:3] <= { celloutsig_0_8z[5:4], celloutsig_0_1z };
  assign celloutsig_0_34z = { celloutsig_0_14z[4:0], celloutsig_0_15z } && { celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_31z, celloutsig_0_10z };
  assign celloutsig_0_29z = { celloutsig_0_9z[4], celloutsig_0_4z } && { celloutsig_0_12z[0], celloutsig_0_18z, celloutsig_0_28z[3:2], celloutsig_0_26z, celloutsig_0_28z[0] };
  assign celloutsig_0_33z = ! celloutsig_0_23z[20:13];
  assign celloutsig_0_36z = ! { celloutsig_0_14z[5:1], celloutsig_0_20z, celloutsig_0_7z };
  assign celloutsig_0_5z = ! { celloutsig_0_4z[3:1], celloutsig_0_0z };
  assign celloutsig_0_71z = ! { in_data[87:81], celloutsig_0_2z, celloutsig_0_27z, celloutsig_0_58z, celloutsig_0_44z, celloutsig_0_36z, celloutsig_0_9z };
  assign celloutsig_0_19z = ! { celloutsig_0_8z[5:3], celloutsig_0_0z, celloutsig_0_3z[6:1], celloutsig_0_18z, celloutsig_0_6z, celloutsig_0_13z, celloutsig_0_7z };
  assign celloutsig_0_20z = ! { in_data[80:78], celloutsig_0_6z, celloutsig_0_18z, celloutsig_0_14z };
  assign celloutsig_0_2z = ! { in_data[5:4], celloutsig_0_0z };
  assign celloutsig_0_26z = ! { in_data[56:51], celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_8z };
  assign celloutsig_0_43z = { celloutsig_0_42z[7:6], celloutsig_0_42z, celloutsig_0_22z } < { celloutsig_0_32z[3:0], celloutsig_0_24z, celloutsig_0_21z, celloutsig_0_5z, celloutsig_0_17z, celloutsig_0_33z, celloutsig_0_19z };
  assign celloutsig_0_60z = { celloutsig_0_12z, celloutsig_0_31z } < celloutsig_0_8z[3:0];
  assign celloutsig_0_62z = { celloutsig_0_58z[1], celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_0z } < { celloutsig_0_16z[8:1], celloutsig_0_13z };
  assign celloutsig_0_7z = { celloutsig_0_3z[4:1], 1'h0, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_6z } < { celloutsig_0_4z[4:1], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_0_67z = { celloutsig_0_28z[3:2], celloutsig_0_58z, celloutsig_0_65z, celloutsig_0_62z, celloutsig_0_64z, celloutsig_0_18z, celloutsig_0_27z } < { celloutsig_0_48z[10:1], celloutsig_0_26z, celloutsig_0_59z, celloutsig_0_37z };
  assign celloutsig_0_25z = celloutsig_0_9z[4:1] < celloutsig_0_9z[4:1];
  assign celloutsig_0_65z = { celloutsig_0_14z, celloutsig_0_59z, celloutsig_0_24z, celloutsig_0_19z, celloutsig_0_62z, celloutsig_0_62z } % { 1'h1, celloutsig_0_35z[9:1], celloutsig_0_25z };
  assign celloutsig_1_19z = { celloutsig_1_0z[14:4], celloutsig_1_11z, celloutsig_1_9z } % { 1'h1, celloutsig_1_0z[9:5], celloutsig_1_3z, celloutsig_1_5z };
  assign celloutsig_0_11z = { celloutsig_0_3z[4:2], celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_6z } % { 1'h1, celloutsig_0_9z[5:1] };
  assign celloutsig_0_12z = celloutsig_0_4z[2:0] % { 1'h1, celloutsig_0_3z[1], celloutsig_0_10z };
  assign celloutsig_0_37z = celloutsig_0_35z[8] ? { celloutsig_0_31z, celloutsig_0_30z, celloutsig_0_9z, celloutsig_0_18z } : { celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_11z };
  assign celloutsig_0_38z = celloutsig_0_24z ? { celloutsig_0_21z[2:1], celloutsig_0_7z } : { celloutsig_0_8z[4], celloutsig_0_36z, celloutsig_0_19z };
  assign celloutsig_1_0z = in_data[132] ? in_data[172:142] : in_data[190:160];
  assign celloutsig_1_12z = celloutsig_1_2z ? { celloutsig_1_0z[27:20], celloutsig_1_5z, celloutsig_1_10z, celloutsig_1_11z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_3z } : in_data[142:117];
  assign celloutsig_0_9z = in_data[56] ? { in_data[5:0], celloutsig_0_1z } : { celloutsig_0_3z[4:3], celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_6z };
  assign { celloutsig_0_28z[3:2], celloutsig_0_28z[0] } = celloutsig_0_23z[25] ? { in_data[14:13], celloutsig_0_22z } : { celloutsig_0_21z[3], celloutsig_0_2z, celloutsig_0_17z };
  assign celloutsig_0_32z = celloutsig_0_16z[8] ? { celloutsig_0_1z, celloutsig_0_13z, celloutsig_0_4z } : { 1'h0, celloutsig_0_16z[7:0] };
  assign celloutsig_0_49z = in_data[61:57] != celloutsig_0_14z[4:0];
  assign celloutsig_1_10z = { celloutsig_1_3z[4:2], celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_5z } != { celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_7z };
  assign celloutsig_0_46z = { celloutsig_0_41z[14:1], celloutsig_0_0z } !== celloutsig_0_41z[19:5];
  assign celloutsig_0_18z = { in_data[40:37], celloutsig_0_11z } !== { celloutsig_0_14z, celloutsig_0_17z, celloutsig_0_13z };
  assign celloutsig_0_44z = celloutsig_0_36z & celloutsig_0_9z[1];
  assign celloutsig_0_22z = celloutsig_0_21z[3] & celloutsig_0_7z;
  assign celloutsig_0_31z = celloutsig_0_6z & celloutsig_0_17z;
  assign celloutsig_0_42z = { celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_12z, celloutsig_0_24z, celloutsig_0_12z, celloutsig_0_34z, celloutsig_0_17z } << { celloutsig_0_16z[9:0], celloutsig_0_15z };
  assign celloutsig_0_70z = { celloutsig_0_60z, celloutsig_0_46z, celloutsig_0_67z } << celloutsig_0_42z[4:2];
  assign celloutsig_0_41z = { celloutsig_0_38z[0], celloutsig_0_5z, celloutsig_0_17z, celloutsig_0_24z, celloutsig_0_28z[3:2], celloutsig_0_26z, celloutsig_0_28z[0], celloutsig_0_15z, celloutsig_0_14z, celloutsig_0_33z, celloutsig_0_14z } <<< { celloutsig_0_39z, celloutsig_0_34z, celloutsig_0_20z, celloutsig_0_3z[6:1], 1'h0, celloutsig_0_22z, celloutsig_0_37z, celloutsig_0_0z };
  assign celloutsig_0_23z = { celloutsig_0_14z[4:3], celloutsig_0_17z, celloutsig_0_6z, celloutsig_0_16z, celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_18z } <<< { celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_3z[6:1], 1'h0, celloutsig_0_18z, celloutsig_0_8z, celloutsig_0_20z, celloutsig_0_22z, celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_20z, celloutsig_0_12z, celloutsig_0_21z };
  assign celloutsig_0_4z = { in_data[43:40], celloutsig_0_1z } >>> { in_data[28:26], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_8z = { celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_3z[6:1], 1'h0 } >>> { in_data[78:72], celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_7z };
  assign celloutsig_1_7z = { celloutsig_1_4z[3:1], celloutsig_1_1z } >>> celloutsig_1_4z[7:4];
  assign celloutsig_0_21z = { celloutsig_0_4z[2], celloutsig_0_10z, celloutsig_0_13z } >>> celloutsig_0_9z[6:2];
  assign celloutsig_0_35z = in_data[27:11] - { celloutsig_0_14z[1], celloutsig_0_30z, celloutsig_0_0z, celloutsig_0_24z, celloutsig_0_18z, celloutsig_0_14z, celloutsig_0_34z, celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_2z };
  assign celloutsig_1_4z = { celloutsig_1_3z[3], celloutsig_1_1z, celloutsig_1_3z } - celloutsig_1_0z[8:1];
  assign celloutsig_0_14z = { celloutsig_0_8z[6:5], celloutsig_0_7z, celloutsig_0_12z } - { celloutsig_0_3z[3:2], celloutsig_0_12z, celloutsig_0_6z };
  assign celloutsig_0_39z = ~((celloutsig_0_33z & celloutsig_0_0z) | celloutsig_0_8z[2]);
  assign celloutsig_1_6z = ~((celloutsig_1_4z[2] & in_data[133]) | celloutsig_1_0z[1]);
  assign celloutsig_0_10z = ~((in_data[93] & celloutsig_0_0z) | celloutsig_0_3z[6]);
  always_latch
    if (clkin_data[96]) celloutsig_1_3z = 6'h00;
    else if (clkin_data[0]) celloutsig_1_3z = { in_data[112:110], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_13z = 3'h0;
    else if (celloutsig_1_19z[0]) celloutsig_0_13z = celloutsig_0_9z[4:2];
  always_latch
    if (clkin_data[64]) celloutsig_0_16z = 18'h00000;
    else if (!celloutsig_1_19z[0]) celloutsig_0_16z = { celloutsig_0_8z[3:1], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_13z };
  assign { celloutsig_0_3z[1], celloutsig_0_3z[6:2] } = { celloutsig_0_2z, in_data[63:59] } ^ { celloutsig_0_0z, in_data[18:14] };
  assign celloutsig_0_28z[1] = celloutsig_0_26z;
  assign celloutsig_0_3z[0] = 1'h0;
  assign { out_data[128], out_data[108:96], out_data[34:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_70z, celloutsig_0_71z };
endmodule

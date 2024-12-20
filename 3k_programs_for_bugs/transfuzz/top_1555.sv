/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [14:0] _00_;
  wire [5:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [21:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [4:0] celloutsig_0_14z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  reg [2:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [12:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [2:0] celloutsig_0_31z;
  wire [27:0] celloutsig_0_33z;
  wire [7:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [12:0] celloutsig_0_3z;
  wire [3:0] celloutsig_0_40z;
  wire celloutsig_0_42z;
  wire [21:0] celloutsig_0_43z;
  wire [9:0] celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire [2:0] celloutsig_0_4z;
  wire [18:0] celloutsig_0_52z;
  wire [26:0] celloutsig_0_54z;
  wire [15:0] celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire [7:0] celloutsig_0_60z;
  wire celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_6z;
  wire [2:0] celloutsig_0_7z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [5:0] celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [10:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [10:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_37z = !(celloutsig_0_25z ? celloutsig_0_31z[1] : celloutsig_0_35z);
  assign celloutsig_1_5z = !(celloutsig_1_3z ? in_data[141] : celloutsig_1_2z);
  assign celloutsig_1_7z = !(celloutsig_1_2z ? celloutsig_1_0z : celloutsig_1_2z);
  assign celloutsig_0_10z = !(celloutsig_0_5z ? celloutsig_0_7z[0] : celloutsig_0_4z[2]);
  assign celloutsig_0_16z = !(celloutsig_0_12z ? celloutsig_0_13z : celloutsig_0_0z[4]);
  assign celloutsig_0_19z = !(celloutsig_0_14z[0] ? celloutsig_0_2z : celloutsig_0_1z);
  assign celloutsig_0_45z = celloutsig_0_23z | celloutsig_0_33z[15];
  assign celloutsig_0_61z = celloutsig_0_3z[12] | celloutsig_0_58z[2];
  assign celloutsig_1_8z = in_data[155] | celloutsig_1_3z;
  assign celloutsig_1_18z = celloutsig_1_8z | celloutsig_1_6z;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[0])
    if (!clkin_data[0]) _00_ <= 15'h0000;
    else _00_ <= { in_data[73:63], celloutsig_0_5z, celloutsig_0_7z };
  assign celloutsig_0_33z = { celloutsig_0_0z[4:1], celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_18z } & { _00_[14:1], celloutsig_0_12z, celloutsig_0_18z, celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_21z, celloutsig_0_14z };
  assign celloutsig_0_54z = { celloutsig_0_24z[2], celloutsig_0_43z, celloutsig_0_46z, celloutsig_0_46z, celloutsig_0_38z, celloutsig_0_46z } & in_data[50:24];
  assign celloutsig_0_29z = { celloutsig_0_28z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_23z } & { in_data[93:87], celloutsig_0_14z, celloutsig_0_10z };
  assign celloutsig_0_58z = { celloutsig_0_44z[2:0], celloutsig_0_29z } / { 1'h1, celloutsig_0_52z[6:2], celloutsig_0_0z[4], celloutsig_0_40z, celloutsig_0_42z, celloutsig_0_4z, celloutsig_0_9z };
  assign celloutsig_0_6z = { celloutsig_0_3z[12:1], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_2z } == { in_data[68:49], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_1_2z = celloutsig_1_1z[5:0] == { celloutsig_1_1z[8:5], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_11z = in_data[162:157] == { celloutsig_1_4z[9:7], celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_10z };
  assign celloutsig_0_12z = { celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_5z } == { celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_2z };
  assign celloutsig_0_1z = celloutsig_0_0z[4:0] == in_data[11:7];
  assign celloutsig_0_2z = { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z } == in_data[24:17];
  assign celloutsig_0_38z = { celloutsig_0_24z[2:1], celloutsig_0_34z } >= { celloutsig_0_3z[7:2], celloutsig_0_4z, celloutsig_0_27z };
  assign celloutsig_1_0z = in_data[185:175] >= in_data[150:140];
  assign celloutsig_1_3z = in_data[117:112] >= in_data[132:127];
  assign celloutsig_1_9z = { celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_6z } >= { celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_6z };
  assign celloutsig_1_10z = { in_data[188:179], celloutsig_1_5z, celloutsig_1_2z } >= { celloutsig_1_4z[4:0], celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_6z };
  assign celloutsig_1_12z = { celloutsig_1_10z, celloutsig_1_11z, celloutsig_1_9z, celloutsig_1_8z } >= in_data[171:168];
  assign celloutsig_0_17z = { celloutsig_0_11z[18:8], celloutsig_0_5z, celloutsig_0_5z } >= { _00_[9:6], celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_6z, celloutsig_0_6z };
  assign celloutsig_0_36z = { celloutsig_0_4z, celloutsig_0_16z } <= { celloutsig_0_11z[14:12], celloutsig_0_13z };
  assign celloutsig_0_42z = { celloutsig_0_29z[12:3], celloutsig_0_22z, celloutsig_0_40z, celloutsig_0_13z } <= { celloutsig_0_3z[10], celloutsig_0_37z, celloutsig_0_25z, celloutsig_0_5z, celloutsig_0_36z, celloutsig_0_34z, celloutsig_0_20z, celloutsig_0_20z, celloutsig_0_2z };
  assign celloutsig_0_63z = { celloutsig_0_60z, celloutsig_0_39z, celloutsig_0_17z, celloutsig_0_31z, celloutsig_0_61z, celloutsig_0_1z, celloutsig_0_26z, celloutsig_0_35z, celloutsig_0_5z, celloutsig_0_45z, celloutsig_0_1z, celloutsig_0_24z } <= { in_data[92:87], celloutsig_0_59z, celloutsig_0_58z };
  assign celloutsig_0_23z = celloutsig_0_3z[11:3] <= { celloutsig_0_0z[2:0], celloutsig_0_14z, celloutsig_0_12z };
  assign celloutsig_0_25z = { _00_[14:7], celloutsig_0_0z, celloutsig_0_9z } <= { in_data[85:72], celloutsig_0_20z };
  assign celloutsig_0_20z = _00_[4] & ~(in_data[90]);
  assign celloutsig_0_21z = celloutsig_0_14z[2] & ~(celloutsig_0_9z);
  assign celloutsig_0_22z = celloutsig_0_17z & ~(celloutsig_0_16z);
  assign celloutsig_0_27z = celloutsig_0_0z[4] & ~(celloutsig_0_24z[0]);
  assign celloutsig_0_30z = celloutsig_0_26z & ~(celloutsig_0_11z[3]);
  assign celloutsig_0_0z = in_data[7:2] % { 1'h1, in_data[92:88] };
  assign celloutsig_0_40z = { celloutsig_0_0z[5:3], celloutsig_0_18z } % { 1'h1, celloutsig_0_20z, celloutsig_0_12z, celloutsig_0_38z };
  assign celloutsig_1_4z = in_data[167:157] % { 1'h1, in_data[125:122], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_35z = { celloutsig_0_22z, celloutsig_0_13z } != { celloutsig_0_24z[0], celloutsig_0_22z };
  assign celloutsig_0_46z = celloutsig_0_29z[8:0] != { in_data[9:6], celloutsig_0_35z, celloutsig_0_4z, celloutsig_0_18z };
  assign celloutsig_0_5z = { in_data[63:56], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_2z } != { in_data[88:69], celloutsig_0_4z };
  assign celloutsig_0_62z = celloutsig_0_29z[4:2] != celloutsig_0_58z[5:3];
  assign celloutsig_1_17z = { celloutsig_1_15z[5], celloutsig_1_15z, celloutsig_1_9z } != { in_data[171:165], celloutsig_1_2z };
  assign celloutsig_1_19z = { celloutsig_1_4z[9:6], celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_17z } != { celloutsig_1_4z[7:3], celloutsig_1_2z, celloutsig_1_12z, celloutsig_1_3z, celloutsig_1_5z };
  assign celloutsig_0_9z = { in_data[71:52], celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_4z } != { in_data[25:13], celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_0_18z = { in_data[23:2], celloutsig_0_5z, celloutsig_0_12z } != { celloutsig_0_3z[12:6], celloutsig_0_17z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_0z[4], celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_6z };
  assign celloutsig_0_28z = { celloutsig_0_25z, celloutsig_0_16z, celloutsig_0_23z } != { celloutsig_0_3z[11:10], celloutsig_0_6z };
  assign celloutsig_0_3z = - { in_data[18:13], celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_4z = - { celloutsig_0_3z[5:4], celloutsig_0_1z };
  assign celloutsig_0_52z = - celloutsig_0_43z[19:1];
  assign celloutsig_0_7z = - { celloutsig_0_4z[2:1], celloutsig_0_6z };
  assign celloutsig_1_15z = celloutsig_1_4z[7:2] | { celloutsig_1_4z[10:6], celloutsig_1_5z };
  assign celloutsig_0_13z = | celloutsig_0_3z[10:1];
  assign celloutsig_0_39z = ^ { celloutsig_0_11z[15:6], celloutsig_0_19z, celloutsig_0_13z };
  assign celloutsig_0_59z = ^ { celloutsig_0_52z[18:16], celloutsig_0_23z };
  assign celloutsig_1_6z = ^ in_data[124:121];
  assign celloutsig_0_26z = ^ { in_data[43:42], celloutsig_0_9z };
  assign celloutsig_0_44z = { celloutsig_0_34z[1:0], celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_28z, celloutsig_0_6z, celloutsig_0_22z } >> celloutsig_0_33z[20:11];
  assign celloutsig_0_60z = celloutsig_0_54z[22:15] >> { celloutsig_0_52z[18:12], celloutsig_0_26z };
  assign celloutsig_1_1z = { in_data[185:176], celloutsig_1_0z } >> in_data[124:114];
  assign celloutsig_0_11z = { in_data[65:54], celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_0z[4], celloutsig_0_5z, celloutsig_0_0z } >> { celloutsig_0_3z[6:0], celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_3z };
  assign celloutsig_0_14z = { celloutsig_0_0z[5], celloutsig_0_4z, celloutsig_0_6z } >> { celloutsig_0_4z[1], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_0_31z = { celloutsig_0_24z[1:0], celloutsig_0_9z } >> { celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_30z };
  assign celloutsig_0_34z = { celloutsig_0_7z[1:0], celloutsig_0_25z, celloutsig_0_5z, celloutsig_0_30z, celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_25z } ~^ _00_[7:0];
  assign celloutsig_0_43z = { celloutsig_0_31z[0], celloutsig_0_21z, celloutsig_0_25z, celloutsig_0_28z, celloutsig_0_31z, celloutsig_0_4z, celloutsig_0_20z, celloutsig_0_22z, celloutsig_0_13z, celloutsig_0_17z, celloutsig_0_34z } ~^ { celloutsig_0_33z[26:11], celloutsig_0_18z, celloutsig_0_35z, celloutsig_0_7z, celloutsig_0_36z };
  always_latch
    if (!clkin_data[0]) celloutsig_0_24z = 3'h0;
    else if (clkin_data[32]) celloutsig_0_24z = { celloutsig_0_3z[6], celloutsig_0_19z, celloutsig_0_20z };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_62z, celloutsig_0_63z };
endmodule

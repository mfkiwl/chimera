/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [4:0] _02_;
  wire [15:0] _03_;
  wire [15:0] _04_;
  reg [3:0] _05_;
  reg [5:0] _06_;
  wire celloutsig_0_0z;
  wire [4:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [22:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire [8:0] celloutsig_0_17z;
  wire [3:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire [2:0] celloutsig_0_24z;
  wire [3:0] celloutsig_0_25z;
  wire [14:0] celloutsig_0_26z;
  wire [22:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [2:0] celloutsig_0_2z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [2:0] celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [12:0] celloutsig_0_41z;
  wire celloutsig_0_43z;
  wire [9:0] celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire [2:0] celloutsig_0_50z;
  wire [5:0] celloutsig_0_51z;
  wire [18:0] celloutsig_0_57z;
  wire [4:0] celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire [9:0] celloutsig_0_6z;
  wire [2:0] celloutsig_0_73z;
  wire [7:0] celloutsig_0_7z;
  wire [2:0] celloutsig_0_8z;
  wire [5:0] celloutsig_0_93z;
  wire [3:0] celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [9:0] celloutsig_1_18z;
  wire [36:0] celloutsig_1_19z;
  wire [2:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [8:0] celloutsig_1_4z;
  wire [10:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [5:0] celloutsig_1_8z;
  wire [3:0] celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_4z = !(celloutsig_0_1z ? celloutsig_0_1z : celloutsig_0_1z);
  assign celloutsig_0_0z = ~((in_data[60] | in_data[23]) & in_data[9]);
  assign celloutsig_0_3z = ~((celloutsig_0_1z | celloutsig_0_1z) & celloutsig_0_2z[0]);
  assign celloutsig_0_11z = ~((celloutsig_0_0z | celloutsig_0_1z) & celloutsig_0_0z);
  assign celloutsig_0_19z = ~((celloutsig_0_11z | celloutsig_0_15z) & celloutsig_0_8z[0]);
  assign celloutsig_1_3z = in_data[115] | ~(celloutsig_1_0z[3]);
  assign celloutsig_0_23z = celloutsig_0_8z[2] | ~(celloutsig_0_21z);
  assign celloutsig_0_59z = _02_ + celloutsig_0_7z[7:3];
  reg [15:0] _15_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z[5])
    if (celloutsig_1_19z[5]) _15_ <= 16'h0000;
    else _15_ <= { celloutsig_0_26z[14:7], celloutsig_0_43z, celloutsig_0_39z, celloutsig_0_15z, celloutsig_0_4z, _03_[3], _01_, _03_[1:0] };
  assign { _04_[15], _02_, _00_, _04_[8:0] } = _15_;
  reg [11:0] _16_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z[5])
    if (celloutsig_1_19z[5]) _16_ <= 12'h000;
    else _16_ <= { in_data[27:21], celloutsig_0_59z };
  assign out_data[43:32] = _16_;
  always_ff @(posedge clkin_data[64], negedge clkin_data[96])
    if (!clkin_data[96]) _05_ <= 4'h0;
    else _05_ <= celloutsig_1_0z;
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_19z[5])
    if (celloutsig_1_19z[5]) _06_ <= 6'h00;
    else _06_ <= celloutsig_0_17z[6:1];
  reg [3:0] _19_;
  always_ff @(posedge clkin_data[32], negedge celloutsig_1_19z[5])
    if (!celloutsig_1_19z[5]) _19_ <= 4'h0;
    else _19_ <= { celloutsig_0_1z, celloutsig_0_12z, celloutsig_0_19z, celloutsig_0_23z };
  assign { _03_[3], _01_, _03_[1:0] } = _19_;
  assign celloutsig_1_6z = in_data[124:114] / { 1'h1, celloutsig_1_4z[7:1], celloutsig_1_2z };
  assign celloutsig_0_33z = { celloutsig_0_13z[6:3], celloutsig_0_32z, celloutsig_0_6z, celloutsig_0_0z } > { celloutsig_0_2z[2:1], _06_, celloutsig_0_24z, celloutsig_0_1z, celloutsig_0_25z };
  assign celloutsig_0_12z = in_data[12:3] > { 2'h3, celloutsig_0_9z[1:0], celloutsig_0_5z, celloutsig_0_10z };
  assign celloutsig_0_38z = celloutsig_0_8z || { celloutsig_0_24z[2:1], celloutsig_0_3z };
  assign celloutsig_0_1z = { in_data[88:80], celloutsig_0_0z, celloutsig_0_0z } || { in_data[52:43], celloutsig_0_0z };
  assign celloutsig_0_39z = 1'h1 & ~(celloutsig_0_13z[1]);
  assign celloutsig_1_10z = celloutsig_1_9z[0] & ~(celloutsig_1_8z[5]);
  assign celloutsig_1_12z = _05_[1] & ~(celloutsig_1_7z);
  assign celloutsig_0_7z = { celloutsig_0_6z[7:2], celloutsig_0_1z, celloutsig_0_1z } % { 1'h1, in_data[47:41] };
  assign celloutsig_1_2z = _05_[3:1] % { 1'h1, in_data[178:177] };
  assign celloutsig_0_17z = { celloutsig_0_16z[2:1], celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_0z } % { 1'h1, celloutsig_0_7z[4:1], 2'h3, celloutsig_0_9z[1:0] };
  assign celloutsig_0_24z = { 2'h3, celloutsig_0_9z[1] } % { 1'h1, celloutsig_0_13z[10:9] };
  assign celloutsig_1_19z = celloutsig_1_12z ? in_data[151:115] : { celloutsig_1_0z[3:1], celloutsig_1_8z, celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_13z };
  assign celloutsig_0_26z = celloutsig_0_20z ? { _06_, celloutsig_0_7z, celloutsig_0_5z } : { celloutsig_0_10z[2:0], celloutsig_0_12z, celloutsig_0_23z, celloutsig_0_5z, celloutsig_0_17z };
  assign celloutsig_0_8z = ~ celloutsig_0_7z[6:4];
  assign celloutsig_1_0z = ~ in_data[133:130];
  assign celloutsig_0_16z = ~ { celloutsig_0_14z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_43z = & { celloutsig_0_32z, celloutsig_0_14z, in_data[21:12] };
  assign celloutsig_0_15z = & { celloutsig_0_13z[19:17], celloutsig_0_9z[1:0] };
  assign celloutsig_0_20z = & { celloutsig_0_19z, celloutsig_0_18z, celloutsig_0_3z };
  assign celloutsig_0_31z = & { celloutsig_0_27z[14:7], celloutsig_0_21z };
  assign celloutsig_0_21z = | { celloutsig_0_14z, celloutsig_0_8z, celloutsig_0_2z[2] };
  assign celloutsig_0_28z = | { celloutsig_0_19z, celloutsig_0_8z, celloutsig_0_3z };
  assign celloutsig_1_7z = ~^ { celloutsig_1_6z[10:1], celloutsig_1_6z, _05_ };
  assign celloutsig_1_13z = ~^ celloutsig_1_0z;
  assign celloutsig_0_5z = ^ celloutsig_0_2z;
  assign celloutsig_0_14z = ^ { 2'h3, celloutsig_0_9z[1:0], celloutsig_0_12z, 2'h3, celloutsig_0_9z[1:0], celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_0_32z = ^ { celloutsig_0_16z[1], celloutsig_0_24z, _03_[3], _01_, _03_[1:0], celloutsig_0_10z, celloutsig_0_2z };
  assign celloutsig_0_36z = celloutsig_0_18z[2:0] >> celloutsig_0_17z[5:3];
  assign celloutsig_0_41z = { in_data[72:67], celloutsig_0_12z, _06_ } >> { celloutsig_0_13z[19:18], celloutsig_0_32z, celloutsig_0_6z };
  assign celloutsig_0_50z = celloutsig_0_41z[7:5] >> celloutsig_0_25z[3:1];
  assign celloutsig_0_73z = celloutsig_0_57z[11:9] >> celloutsig_0_7z[5:3];
  assign celloutsig_0_10z = { celloutsig_0_7z[4:2], celloutsig_0_0z, celloutsig_0_4z } >> { 2'h3, celloutsig_0_9z[1], celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_1_18z = in_data[112:103] >> in_data[147:138];
  assign celloutsig_0_18z = { celloutsig_0_2z[2:1], celloutsig_0_1z, celloutsig_0_14z } >> { celloutsig_0_13z[22:21], celloutsig_0_15z, celloutsig_0_15z };
  assign celloutsig_0_25z = { 2'h3, celloutsig_0_15z, celloutsig_0_11z } >> celloutsig_0_17z[3:0];
  assign celloutsig_0_51z = { celloutsig_0_26z[5:1], celloutsig_0_4z } <<< { celloutsig_0_26z[10:6], celloutsig_0_43z };
  assign celloutsig_0_57z = { celloutsig_0_51z[4:0], celloutsig_0_17z, celloutsig_0_50z, celloutsig_0_28z, celloutsig_0_33z } <<< { celloutsig_0_11z, celloutsig_0_31z, celloutsig_0_24z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_39z, celloutsig_0_10z, celloutsig_0_50z, celloutsig_0_12z, celloutsig_0_32z, celloutsig_0_23z };
  assign celloutsig_0_6z = { celloutsig_0_2z[2], celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_0z } <<< { celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_1_4z = { in_data[148:144], celloutsig_1_3z, celloutsig_1_2z } <<< { in_data[155:154], celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_1_9z = celloutsig_1_6z[6:3] <<< celloutsig_1_8z[3:0];
  assign celloutsig_0_2z = { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z } <<< { in_data[92], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_48z = { celloutsig_0_41z[8:5], celloutsig_0_24z, celloutsig_0_2z } ^ { celloutsig_0_24z, celloutsig_0_28z, celloutsig_0_3z, celloutsig_0_21z, celloutsig_0_36z, celloutsig_0_38z };
  assign celloutsig_0_93z = { celloutsig_0_51z[4:0], celloutsig_0_15z } ^ { celloutsig_0_48z[4:2], celloutsig_0_73z };
  assign celloutsig_1_8z = { celloutsig_1_4z[2:1], celloutsig_1_0z } ^ { _05_[1], celloutsig_1_3z, _05_ };
  assign celloutsig_0_13z[18] = ~ celloutsig_0_6z[2];
  assign celloutsig_0_13z[19] = ~ celloutsig_0_6z[3];
  assign celloutsig_0_27z[7] = ~ celloutsig_0_2z[1];
  assign celloutsig_0_27z[8] = ~ celloutsig_0_2z[2];
  assign celloutsig_0_9z[1:0] = { celloutsig_0_1z, celloutsig_0_1z } ~^ celloutsig_0_6z[5:4];
  assign { celloutsig_0_13z[17:16], celloutsig_0_13z[8], celloutsig_0_13z[9], celloutsig_0_13z[15:11], celloutsig_0_13z[7:0], celloutsig_0_13z[10], celloutsig_0_13z[21:20], celloutsig_0_13z[22] } = { celloutsig_0_9z[1:0], celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_3z, in_data[58] } ^ { celloutsig_0_8z[2:1], celloutsig_0_6z[7], celloutsig_0_6z[8], celloutsig_0_8z[0], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_6z[6:0], celloutsig_0_3z, celloutsig_0_6z[9], celloutsig_0_6z[5:4], celloutsig_0_6z[6] };
  assign { celloutsig_0_27z[21:19], celloutsig_0_27z[16], celloutsig_0_27z[13:10], celloutsig_0_27z[5], celloutsig_0_27z[2], celloutsig_0_27z[3], celloutsig_0_27z[0], celloutsig_0_27z[14], celloutsig_0_27z[4], celloutsig_0_27z[1], celloutsig_0_27z[6], celloutsig_0_27z[18:17], celloutsig_0_27z[15], celloutsig_0_27z[9] } = { celloutsig_0_9z[1:0], celloutsig_0_23z, celloutsig_0_20z, celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_2z[0], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z } ^ { celloutsig_0_13z[21:19], celloutsig_0_13z[16], celloutsig_0_13z[13:10], celloutsig_0_9z[0], celloutsig_0_2z[2], celloutsig_0_21z, celloutsig_0_2z[0], celloutsig_0_13z[14], celloutsig_0_3z, celloutsig_0_2z[1], celloutsig_0_9z[1], celloutsig_0_13z[18:17], celloutsig_0_13z[15], celloutsig_0_13z[9] };
  assign { _03_[15:4], _03_[2] } = { celloutsig_0_26z[14:7], celloutsig_0_43z, celloutsig_0_39z, celloutsig_0_15z, celloutsig_0_4z, _01_ };
  assign _04_[14:9] = { _02_, _00_ };
  assign celloutsig_0_9z[3:2] = 2'h3;
  assign { out_data[137:96], out_data[5:0] } = { celloutsig_1_18z, celloutsig_1_19z[36:5], celloutsig_0_93z };
endmodule

/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire [6:0] _07_;
  wire [13:0] _08_;
  reg [3:0] _09_;
  wire celloutsig_0_0z;
  wire [16:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [4:0] celloutsig_0_18z;
  wire [3:0] celloutsig_0_19z;
  wire [6:0] celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [9:0] celloutsig_0_24z;
  wire [4:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [14:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [2:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [7:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [14:0] celloutsig_0_41z;
  wire celloutsig_0_4z;
  wire celloutsig_0_57z;
  wire [27:0] celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_69z;
  wire [3:0] celloutsig_0_6z;
  wire [18:0] celloutsig_0_70z;
  wire celloutsig_0_7z;
  wire [6:0] celloutsig_0_8z;
  wire [2:0] celloutsig_0_9z;
  wire [22:0] celloutsig_1_0z;
  wire [21:0] celloutsig_1_10z;
  wire [3:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_16z;
  wire [9:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [5:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [2:0] celloutsig_1_5z;
  wire [12:0] celloutsig_1_6z;
  wire [6:0] celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_4z = ~(_00_ & celloutsig_0_3z);
  assign celloutsig_0_5z = ~(_00_ & _00_);
  assign celloutsig_0_3z = !(_01_ ? celloutsig_0_0z : celloutsig_0_0z);
  assign celloutsig_0_31z = !(_01_ ? celloutsig_0_4z : celloutsig_0_16z);
  assign celloutsig_0_13z = !(celloutsig_0_10z[0] ? celloutsig_0_11z : celloutsig_0_7z);
  assign celloutsig_0_28z = ~(celloutsig_0_9z[0] | celloutsig_0_4z);
  assign celloutsig_0_15z = ~((celloutsig_0_4z | celloutsig_0_13z) & (celloutsig_0_13z | celloutsig_0_8z[6]));
  assign celloutsig_0_17z = ~((_04_ | celloutsig_0_9z[1]) & (celloutsig_0_5z | celloutsig_0_13z));
  assign celloutsig_0_22z = ~((celloutsig_0_9z[0] | celloutsig_0_5z) & (celloutsig_0_2z | celloutsig_0_15z));
  assign celloutsig_0_27z = ~((celloutsig_0_26z[2] | celloutsig_0_18z[3]) & (celloutsig_0_11z | celloutsig_0_4z));
  assign celloutsig_0_7z = _05_ ^ _06_;
  assign celloutsig_1_3z = celloutsig_1_2z ^ celloutsig_1_1z[0];
  assign celloutsig_1_19z = celloutsig_1_5z[1] ^ celloutsig_1_12z[2];
  assign celloutsig_1_1z = celloutsig_1_0z[8:3] + celloutsig_1_0z[6:1];
  reg [6:0] _24_;
  always_ff @(posedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _24_ <= 7'h00;
    else _24_ <= in_data[128:122];
  assign { _07_[6], _03_, _07_[4:1], _02_ } = _24_;
  reg [3:0] _25_;
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _25_ <= 4'h0;
    else _25_ <= { celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign { _00_, _05_, _06_, _01_ } = _25_;
  reg [13:0] _26_;
  always_ff @(posedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _26_ <= 14'h0000;
    else _26_ <= { celloutsig_0_10z[10:7], _00_, _05_, _06_, _01_, _00_, _05_, _06_, _01_, celloutsig_0_2z, celloutsig_0_13z };
  assign { _08_[13:10], _04_, _08_[8:0] } = _26_;
  always_ff @(posedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _09_ <= 4'h0;
    else _09_ <= celloutsig_0_8z[5:2];
  assign celloutsig_1_18z = { celloutsig_1_10z[14:6], celloutsig_1_13z } & { celloutsig_1_13z, celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_16z };
  assign celloutsig_0_21z = celloutsig_0_18z[2:0] & celloutsig_0_20z[2:0];
  assign celloutsig_0_26z = celloutsig_0_10z[5:1] / { 1'h1, _05_, _06_, _01_, celloutsig_0_22z };
  assign celloutsig_1_16z = { celloutsig_1_0z[16:15], celloutsig_1_8z } && celloutsig_1_6z[8:0];
  assign celloutsig_0_70z = { celloutsig_0_34z, celloutsig_0_31z, celloutsig_0_10z } % { 1'h1, in_data[92:75] };
  assign celloutsig_0_9z = { in_data[7], celloutsig_0_0z, celloutsig_0_5z } % { 1'h1, celloutsig_0_7z, celloutsig_0_4z };
  assign celloutsig_0_30z = { celloutsig_0_19z[3:2], celloutsig_0_5z } % { 1'h1, _09_[2], celloutsig_0_28z };
  assign celloutsig_0_24z = { celloutsig_0_10z[6], celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_17z } * { in_data[70:67], celloutsig_0_11z, celloutsig_0_21z, celloutsig_0_7z, celloutsig_0_22z };
  assign celloutsig_0_41z = celloutsig_0_28z ? { celloutsig_0_4z, celloutsig_0_24z, celloutsig_0_35z, celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_34z } : { celloutsig_0_33z[6:0], celloutsig_0_39z, _00_, _05_, _06_, _01_, celloutsig_0_30z };
  assign celloutsig_0_18z = _08_[1] ? { celloutsig_0_9z[2], celloutsig_0_17z, celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_3z } : { _04_, _08_[8:6], celloutsig_0_2z };
  assign celloutsig_0_33z = - { celloutsig_0_24z[7:1], celloutsig_0_31z };
  assign celloutsig_0_10z = - { in_data[79:69], celloutsig_0_4z, celloutsig_0_0z, _00_, _05_, _06_, _01_ };
  assign celloutsig_0_29z = - { _09_[2:0], celloutsig_0_21z, celloutsig_0_20z, celloutsig_0_27z, celloutsig_0_27z };
  assign celloutsig_1_8z = ~ celloutsig_1_0z[22:16];
  assign celloutsig_1_12z = ~ _07_[4:1];
  assign celloutsig_0_20z = ~ { in_data[66:62], celloutsig_0_16z, celloutsig_0_4z };
  assign celloutsig_0_35z = & { celloutsig_0_24z[8:1], celloutsig_0_22z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_0z = | in_data[19:12];
  assign celloutsig_0_34z = | { celloutsig_0_19z[2:1], celloutsig_0_5z, _00_, _05_, _06_, _01_, _08_[13:10], _04_, _08_[8:0], celloutsig_0_21z };
  assign celloutsig_0_11z = | in_data[82:79];
  assign celloutsig_0_57z = | { celloutsig_0_39z, celloutsig_0_22z, celloutsig_0_19z[0] };
  assign celloutsig_1_2z = | celloutsig_1_1z;
  assign celloutsig_1_13z = | { celloutsig_1_10z[5:3], celloutsig_1_5z };
  assign celloutsig_0_16z = | { celloutsig_0_10z[15:14], celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_0z };
  assign celloutsig_0_2z = | in_data[36:34];
  assign celloutsig_0_39z = ~^ { celloutsig_0_26z[4:3], celloutsig_0_27z };
  assign celloutsig_0_69z = ^ { celloutsig_0_59z[17:1], celloutsig_0_57z };
  assign celloutsig_0_6z = in_data[84:81] >> in_data[15:12];
  assign celloutsig_1_0z = in_data[145:123] << in_data[161:139];
  assign celloutsig_0_59z = { _08_[12:10], _04_, _08_[8:1], celloutsig_0_5z, celloutsig_0_41z } >>> { celloutsig_0_33z[2:0], celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_39z, celloutsig_0_29z, celloutsig_0_6z };
  assign celloutsig_1_10z = in_data[172:151] >>> { in_data[166:149], celloutsig_1_3z, celloutsig_1_5z };
  assign celloutsig_0_8z = { in_data[25:24], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_4z } >>> in_data[64:58];
  assign celloutsig_0_19z = { celloutsig_0_6z[3:1], celloutsig_0_17z } >>> { celloutsig_0_8z[2:0], celloutsig_0_2z };
  assign celloutsig_1_5z = { in_data[102:101], celloutsig_1_3z } ^ in_data[121:119];
  assign celloutsig_1_6z = { in_data[114:111], celloutsig_1_5z, celloutsig_1_1z } ^ celloutsig_1_0z[21:9];
  assign { _07_[5], _07_[0] } = { _03_, _02_ };
  assign _08_[9] = _04_;
  assign { out_data[137:128], out_data[96], out_data[32], out_data[18:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_69z, celloutsig_0_70z };
endmodule

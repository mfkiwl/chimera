/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [19:0] _02_;
  wire [4:0] _03_;
  wire [25:0] _04_;
  wire [15:0] _05_;
  wire [12:0] _06_;
  wire [12:0] _07_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [10:0] celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire [15:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire [6:0] celloutsig_0_19z;
  wire celloutsig_0_20z;
  wire [3:0] celloutsig_0_21z;
  wire [2:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [3:0] celloutsig_0_25z;
  wire [20:0] celloutsig_0_26z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [3:0] celloutsig_0_30z;
  wire [7:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [19:0] celloutsig_0_33z;
  wire [4:0] celloutsig_0_34z;
  wire [3:0] celloutsig_0_35z;
  wire [9:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [25:0] celloutsig_0_38z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [4:0] celloutsig_1_13z;
  wire [9:0] celloutsig_1_14z;
  wire [4:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [2:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire [36:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [4:0] celloutsig_1_7z;
  wire [3:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_28z = celloutsig_0_20z ? celloutsig_0_17z : celloutsig_0_8z;
  assign celloutsig_1_12z = ~(celloutsig_1_10z & in_data[189]);
  assign celloutsig_0_14z = ~(_00_ & celloutsig_0_0z);
  assign celloutsig_0_20z = ~(_01_ | celloutsig_0_15z[0]);
  assign celloutsig_0_33z = { celloutsig_0_26z[18:16], celloutsig_0_25z, _02_[12:11], _01_, celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_18z, celloutsig_0_17z, celloutsig_0_23z } + { celloutsig_0_25z[2], celloutsig_0_15z, celloutsig_0_22z, celloutsig_0_22z, celloutsig_0_28z, celloutsig_0_19z };
  assign celloutsig_0_34z = { _03_[4:3], celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_10z } + celloutsig_0_33z[12:8];
  assign celloutsig_0_38z = { _04_[25:11], celloutsig_0_28z, celloutsig_0_35z, celloutsig_0_34z, celloutsig_0_32z } + { celloutsig_0_36z[4:2], celloutsig_0_11z, celloutsig_0_20z, celloutsig_0_33z, celloutsig_0_4z };
  assign celloutsig_0_16z = { _04_[24:18], _00_, _05_[7:0] } + { _04_[21:20], celloutsig_0_15z, _00_, _05_[7:0] };
  reg [12:0] _16_;
  always_ff @(posedge celloutsig_1_18z, negedge clkin_data[32])
    if (!clkin_data[32]) _16_ <= 13'h0000;
    else _16_ <= in_data[39:27];
  assign { _06_[12:2], _03_[4:3] } = _16_;
  reg [2:0] _17_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[32])
    if (!clkin_data[32]) _17_ <= 3'h0;
    else _17_ <= in_data[12:10];
  assign { _02_[12:11], _01_ } = _17_;
  reg [8:0] _18_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[32])
    if (!clkin_data[32]) _18_ <= 9'h000;
    else _18_ <= in_data[34:26];
  assign { _00_, _05_[7:0] } = _18_;
  reg [12:0] _19_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[32])
    if (!clkin_data[32]) _19_ <= 13'h0000;
    else _19_ <= { celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_5z };
  assign { _07_[12], _04_[25:15], _07_[0] } = _19_;
  reg [3:0] _20_;
  always_ff @(posedge celloutsig_1_18z, posedge clkin_data[32])
    if (clkin_data[32]) _20_ <= 4'h0;
    else _20_ <= { celloutsig_0_16z[8:6], celloutsig_0_7z };
  assign _04_[14:11] = _20_;
  assign celloutsig_1_8z = { celloutsig_1_7z[2:0], celloutsig_1_2z } / { 1'h1, celloutsig_1_4z[11:9] };
  assign celloutsig_0_15z = _05_[6:2] / { 1'h1, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_8z };
  assign celloutsig_1_6z = celloutsig_1_4z[20:17] <= { celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_1_10z = { celloutsig_1_4z[20:14], celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_9z, celloutsig_1_8z } <= { celloutsig_1_4z[27:16], celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_6z };
  assign celloutsig_1_16z = { celloutsig_1_4z[18:11], celloutsig_1_2z, celloutsig_1_13z } <= { in_data[166:158], celloutsig_1_6z, celloutsig_1_8z };
  assign celloutsig_0_10z = { _06_[9:5], celloutsig_0_8z, celloutsig_0_7z } <= { _06_[8:5], celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_5z };
  assign celloutsig_0_23z = _05_[4:0] <= { _04_[22:21], celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_7z };
  assign celloutsig_1_11z = { celloutsig_1_4z[22:21], celloutsig_1_5z, celloutsig_1_1z } && { celloutsig_1_8z, celloutsig_1_9z, celloutsig_1_9z };
  assign celloutsig_0_11z = { _00_, _05_[7:1] } && in_data[90:83];
  assign celloutsig_0_32z = ! { _05_[4:0], celloutsig_0_19z, celloutsig_0_10z };
  assign celloutsig_0_37z = ! { celloutsig_0_36z[6:3], celloutsig_0_8z, celloutsig_0_20z, celloutsig_0_7z };
  assign celloutsig_1_0z = ! in_data[175:172];
  assign celloutsig_0_5z = ! { _06_[10:4], celloutsig_0_4z };
  assign celloutsig_0_0z = in_data[38:29] < in_data[74:65];
  assign celloutsig_1_5z = { celloutsig_1_4z[23], celloutsig_1_3z, celloutsig_1_0z } < { celloutsig_1_3z[3], celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_1_19z = { in_data[138:117], celloutsig_1_10z, celloutsig_1_18z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_2z } < { in_data[177:155], celloutsig_1_15z, celloutsig_1_15z };
  assign celloutsig_1_1z = { in_data[102:101], celloutsig_1_0z } % { 1'h1, celloutsig_1_0z, in_data[96] };
  assign celloutsig_1_4z = { in_data[190:155], celloutsig_1_0z } % { 1'h1, in_data[144:125], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_1_7z = in_data[176:172] % { 1'h1, celloutsig_1_3z[3:0] };
  assign celloutsig_1_15z = { in_data[171], celloutsig_1_11z, celloutsig_1_1z } % { 1'h1, celloutsig_1_3z[3:0] };
  assign celloutsig_0_12z = { _06_[10:5], celloutsig_0_8z, celloutsig_0_4z, _02_[12:11], _01_ } % { 1'h1, in_data[90:82], celloutsig_0_8z };
  assign celloutsig_0_18z = { _04_[22:21], celloutsig_0_10z, _02_[12:11], _01_ } % { 1'h1, celloutsig_0_12z[4:3], celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_5z };
  assign celloutsig_0_26z = { _06_[4:2], _03_[4:3], celloutsig_0_16z } % { 1'h1, celloutsig_0_19z[2:1], _04_[14:11], celloutsig_0_10z, _02_[12:11], _01_, celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_22z, celloutsig_0_14z };
  assign celloutsig_0_30z = { celloutsig_0_2z, celloutsig_0_29z, celloutsig_0_8z, celloutsig_0_5z } % { 1'h1, celloutsig_0_21z[1:0], celloutsig_0_7z };
  assign celloutsig_0_25z = { celloutsig_0_16z[15], _02_[12:11], _01_ } % { 1'h1, celloutsig_0_16z[8:6] };
  assign celloutsig_0_35z = celloutsig_0_31z[4] ? { celloutsig_0_30z[2:0], celloutsig_0_10z } : _04_[14:11];
  assign celloutsig_1_2z = in_data[157:148] != { celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_0_4z = _06_[12:8] != { _06_[4:2], _03_[4:3] };
  assign celloutsig_1_18z = { celloutsig_1_4z[19:5], celloutsig_1_2z } != { celloutsig_1_14z[5:4], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_16z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_9z };
  assign celloutsig_0_9z = _05_[6:1] != _06_[10:5];
  assign celloutsig_0_29z = { celloutsig_0_19z[4:0], celloutsig_0_0z } != { celloutsig_0_16z[6], celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_23z, celloutsig_0_7z, celloutsig_0_5z };
  assign celloutsig_1_13z = ~ { celloutsig_1_3z[2:0], celloutsig_1_11z, celloutsig_1_9z };
  assign celloutsig_1_14z = ~ { celloutsig_1_0z, celloutsig_1_12z, celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_21z = ~ celloutsig_0_16z[8:5];
  assign celloutsig_1_9z = | { celloutsig_1_4z[29:23], celloutsig_1_3z, celloutsig_1_8z };
  assign celloutsig_0_7z = | { _06_[9], celloutsig_0_5z, _02_[12:11], _01_, celloutsig_0_2z };
  assign celloutsig_0_8z = celloutsig_0_0z & celloutsig_0_2z;
  assign celloutsig_0_17z = celloutsig_0_16z[12] & celloutsig_0_14z;
  assign celloutsig_0_2z = ^ { _05_[4:3], celloutsig_0_0z, _00_, _05_[7:0] };
  assign celloutsig_0_31z = { celloutsig_0_16z[5:2], celloutsig_0_25z } <<< { celloutsig_0_19z[3:1], celloutsig_0_15z };
  assign celloutsig_0_36z = { celloutsig_0_16z[15:11], celloutsig_0_21z, celloutsig_0_14z } - { celloutsig_0_12z[4:0], celloutsig_0_2z, celloutsig_0_29z, celloutsig_0_22z };
  assign celloutsig_1_3z = { in_data[156:153], celloutsig_1_2z } - in_data[188:184];
  assign celloutsig_0_19z = { celloutsig_0_18z[3:0], _02_[12:11], _01_ } ~^ { celloutsig_0_16z[14:10], celloutsig_0_10z, celloutsig_0_8z };
  assign celloutsig_0_22z = { celloutsig_0_18z[1:0], celloutsig_0_5z } ~^ { celloutsig_0_12z[1:0], celloutsig_0_20z };
  assign { _02_[19:13], _02_[10:0] } = { celloutsig_0_26z[18:16], celloutsig_0_25z, _01_, celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_18z, celloutsig_0_17z, celloutsig_0_23z };
  assign _03_[2:0] = { celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_10z };
  assign _04_[10:0] = { celloutsig_0_28z, celloutsig_0_35z, celloutsig_0_34z, celloutsig_0_32z };
  assign _05_[15:8] = { _04_[24:18], _00_ };
  assign _06_[1:0] = _03_[4:3];
  assign _07_[11:1] = _04_[25:15];
  assign { out_data[128], out_data[96], out_data[32], out_data[25:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_37z, celloutsig_0_38z };
endmodule

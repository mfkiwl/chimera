/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [8:0] _01_;
  wire [8:0] celloutsig_0_10z;
  wire [7:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [8:0] celloutsig_0_13z;
  wire [5:0] celloutsig_0_14z;
  wire [22:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [21:0] celloutsig_0_17z;
  wire [23:0] celloutsig_0_18z;
  wire [25:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [7:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [5:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [11:0] celloutsig_0_25z;
  wire [7:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [7:0] celloutsig_0_2z;
  wire [8:0] celloutsig_0_30z;
  wire [14:0] celloutsig_0_37z;
  wire [9:0] celloutsig_0_3z;
  wire celloutsig_0_42z;
  wire [9:0] celloutsig_0_49z;
  wire [3:0] celloutsig_0_4z;
  wire celloutsig_0_53z;
  wire celloutsig_0_54z;
  wire celloutsig_0_55z;
  wire celloutsig_0_57z;
  wire celloutsig_0_59z;
  wire [5:0] celloutsig_0_5z;
  wire [5:0] celloutsig_0_61z;
  wire [12:0] celloutsig_0_64z;
  wire [29:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [4:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [16:0] celloutsig_1_0z;
  wire [2:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [8:0] celloutsig_1_15z;
  wire [9:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [45:0] celloutsig_1_5z;
  wire [9:0] celloutsig_1_6z;
  wire [20:0] celloutsig_1_8z;
  wire [4:0] celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_7z = ~(_00_ & celloutsig_0_1z);
  assign celloutsig_0_29z = celloutsig_0_20z[5] | ~(celloutsig_0_17z[15]);
  assign celloutsig_0_12z = ~(celloutsig_0_7z ^ celloutsig_0_3z[0]);
  reg [8:0] _05_;
  always_ff @(posedge celloutsig_1_18z[0], negedge clkin_data[32])
    if (!clkin_data[32]) _05_ <= 9'h000;
    else _05_ <= in_data[91:83];
  assign { _01_[8:5], _00_, _01_[3:0] } = _05_;
  reg [3:0] _06_;
  always_ff @(negedge celloutsig_1_18z[0], negedge clkin_data[32])
    if (!clkin_data[32]) _06_ <= 4'h0;
    else _06_ <= celloutsig_0_14z[5:2];
  assign out_data[3:0] = _06_;
  assign celloutsig_0_3z = { in_data[25], celloutsig_0_1z, celloutsig_0_2z } / { 1'h1, celloutsig_0_2z[6:1], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_1_3z = in_data[125:123] / { 1'h1, celloutsig_1_0z[1:0] };
  assign celloutsig_0_30z = { celloutsig_0_15z[18:15], celloutsig_0_4z, celloutsig_0_21z } / { 1'h1, celloutsig_0_25z[10:3] };
  assign celloutsig_0_4z = { _01_[7:5], _00_ } / { 1'h1, _01_[5], _00_, _01_[3] };
  assign celloutsig_1_8z = { in_data[171:152], celloutsig_1_2z } / { 1'h1, celloutsig_1_5z[26:9], celloutsig_1_2z, celloutsig_1_4z };
  assign celloutsig_0_54z = celloutsig_0_6z[18] == celloutsig_0_28z[4];
  assign celloutsig_1_1z = celloutsig_1_0z[14:4] == in_data[162:152];
  assign celloutsig_1_4z = celloutsig_1_0z[13:4] == celloutsig_1_0z[11:2];
  assign celloutsig_1_19z = { celloutsig_1_6z[8:7], celloutsig_1_4z } == celloutsig_1_15z[4:2];
  assign celloutsig_0_21z = { celloutsig_0_8z[3:0], celloutsig_0_12z } == celloutsig_0_13z[6:2];
  assign celloutsig_0_24z = { celloutsig_0_17z[17:16], celloutsig_0_16z, celloutsig_0_21z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_9z } == { _01_[8:6], celloutsig_0_2z, celloutsig_0_3z };
  assign celloutsig_0_57z = celloutsig_0_17z[10:5] === in_data[75:70];
  assign celloutsig_0_1z = in_data[64:52] === in_data[28:16];
  assign celloutsig_0_59z = ! { celloutsig_0_57z, celloutsig_0_42z, celloutsig_0_57z };
  assign celloutsig_0_16z = ! celloutsig_0_3z[6:1];
  assign celloutsig_0_42z = celloutsig_0_37z[12:2] < { celloutsig_0_15z[21:20], celloutsig_0_30z };
  assign celloutsig_1_13z = { celloutsig_1_5z[18:3], celloutsig_1_3z } < { celloutsig_1_0z[2], celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_12z, celloutsig_1_6z, celloutsig_1_3z };
  assign celloutsig_0_23z = { _01_[7:5], _00_, _01_[3:2], celloutsig_0_22z } < { celloutsig_0_18z[21:11], celloutsig_0_1z };
  assign celloutsig_0_61z = { _01_[6:5], _00_, _01_[3:1] } % { 1'h1, celloutsig_0_11z[6:3], celloutsig_0_23z };
  assign celloutsig_0_64z = { celloutsig_0_49z[6:5], celloutsig_0_57z, celloutsig_0_14z, celloutsig_0_59z, celloutsig_0_1z, celloutsig_0_29z, celloutsig_0_55z } % { 1'h1, celloutsig_0_4z[2:0], celloutsig_0_61z, celloutsig_0_24z, celloutsig_0_54z, celloutsig_0_57z };
  assign celloutsig_1_6z = celloutsig_1_0z[12:3] % { 1'h1, in_data[144:141], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_12z = celloutsig_1_3z % { 1'h1, celloutsig_1_9z[2], celloutsig_1_4z };
  assign celloutsig_0_8z = in_data[71:67] % { 1'h1, celloutsig_0_2z[5:3], celloutsig_0_7z };
  assign celloutsig_0_15z = { in_data[45:32], celloutsig_0_13z } % { 1'h1, celloutsig_0_3z[8:0], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_4z };
  assign celloutsig_0_17z = { celloutsig_0_5z[3:0], celloutsig_0_10z, _01_[8:5], _00_, _01_[3:0] } * { _01_[8:6], celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_8z };
  assign celloutsig_0_49z = - celloutsig_0_15z[21:12];
  assign celloutsig_0_11z = - { celloutsig_0_6z[18:15], celloutsig_0_4z };
  assign celloutsig_0_14z = - celloutsig_0_13z[8:3];
  assign celloutsig_0_20z = - { _01_[8:5], _00_, _01_[3:1] };
  assign celloutsig_0_25z = - { celloutsig_0_2z[5:2], celloutsig_0_2z };
  assign celloutsig_0_37z = ~ celloutsig_0_19z[22:8];
  assign celloutsig_0_5z = ~ { in_data[3], celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_1_15z = ~ { celloutsig_1_9z[1], celloutsig_1_2z, celloutsig_1_13z, celloutsig_1_3z, celloutsig_1_12z };
  assign celloutsig_1_5z = in_data[143:98] | in_data[181:136];
  assign celloutsig_1_9z = celloutsig_1_5z[21:17] | { in_data[151:148], celloutsig_1_4z };
  assign celloutsig_1_18z = { celloutsig_1_8z[19:11], celloutsig_1_13z } | celloutsig_1_6z;
  assign celloutsig_0_22z = { celloutsig_0_13z[8], celloutsig_0_4z, celloutsig_0_9z } | { celloutsig_0_18z[5:1], celloutsig_0_9z };
  assign celloutsig_0_55z = & { celloutsig_0_53z, celloutsig_0_11z, celloutsig_0_3z };
  assign celloutsig_1_2z = & in_data[112:103];
  assign celloutsig_0_53z = | celloutsig_0_2z[5:3];
  assign celloutsig_0_9z = | { celloutsig_0_5z, celloutsig_0_1z, in_data[81:76] };
  assign celloutsig_0_6z = { celloutsig_0_3z[1:0], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_3z, _01_[8:5], _00_, _01_[3:0] } << { _01_[8:5], _00_, _01_[3:0], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_19z = { celloutsig_0_6z[19:5], celloutsig_0_1z, celloutsig_0_3z } << { celloutsig_0_15z[19:11], celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_3z };
  assign celloutsig_0_2z = { _01_[8:5], _00_, _01_[3:1] } << { _01_[6:5], _00_, _01_[3:1], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_13z = celloutsig_0_3z[8:0] ~^ { celloutsig_0_3z[7:0], celloutsig_0_12z };
  assign celloutsig_1_0z = in_data[162:146] ^ in_data[126:110];
  assign celloutsig_0_10z = { _01_[7:5], _00_, _01_[3:1], celloutsig_0_9z, celloutsig_0_7z } ^ celloutsig_0_3z[8:0];
  assign celloutsig_0_18z = { _01_[6], celloutsig_0_11z, celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_4z } ^ { celloutsig_0_17z[21], celloutsig_0_15z };
  assign celloutsig_0_28z = celloutsig_0_2z ^ celloutsig_0_13z[8:1];
  assign _01_[4] = _00_;
  assign { out_data[137:128], out_data[96], out_data[44:32] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_64z };
endmodule

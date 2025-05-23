/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [8:0] _00_;
  reg [6:0] _01_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [6:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [10:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [18:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [9:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [20:0] celloutsig_0_25z;
  wire [3:0] celloutsig_0_26z;
  wire [5:0] celloutsig_0_3z;
  wire [6:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [2:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [7:0] celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [6:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [23:0] celloutsig_1_5z;
  wire [9:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = ~(in_data[54] & in_data[72]);
  assign celloutsig_0_15z = in_data[55] ^ celloutsig_0_6z;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _00_ <= 9'h000;
    else _00_ <= in_data[88:80];
  always_ff @(negedge clkin_data[64], posedge clkin_data[128])
    if (clkin_data[128]) _01_ <= 7'h00;
    else _01_ <= in_data[153:147];
  assign celloutsig_0_5z = { _00_[6:2], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, _00_ } >= { in_data[89], _00_, celloutsig_0_4z };
  assign celloutsig_0_1z = in_data[32:12] >= in_data[39:19];
  assign celloutsig_0_10z = { celloutsig_0_7z[2:1], celloutsig_0_1z } && celloutsig_0_4z[6:4];
  assign celloutsig_1_18z = celloutsig_1_10z & ~(celloutsig_1_14z);
  assign celloutsig_1_7z = { celloutsig_1_5z[6:5], celloutsig_1_2z, celloutsig_1_1z } % { 1'h1, celloutsig_1_0z[1], celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_0_9z = { in_data[42:36], celloutsig_0_0z } % { 1'h1, celloutsig_0_4z[1:0], celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_0_17z = { celloutsig_0_12z[6:1], celloutsig_0_12z[1], celloutsig_0_14z[10:1], celloutsig_0_14z[10], celloutsig_0_5z } % { 1'h1, celloutsig_0_3z[4:0], celloutsig_0_16z, celloutsig_0_15z, celloutsig_0_14z[10:1], celloutsig_0_14z[10] };
  assign celloutsig_1_0z = in_data[131:129] % { 1'h1, in_data[157:156] };
  assign celloutsig_1_5z = { in_data[180:162], celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_0z } % { 1'h1, in_data[127:113], celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_23z = { celloutsig_0_22z[9:2], celloutsig_0_19z } != { celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_20z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_21z, celloutsig_0_5z, celloutsig_0_20z };
  assign celloutsig_1_19z = { celloutsig_1_4z, celloutsig_1_15z, celloutsig_1_15z } !== celloutsig_1_7z[3:1];
  assign celloutsig_0_8z = in_data[27:17] !== { in_data[7:5], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_13z = { celloutsig_0_9z[7:6], celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_8z, _00_ } !== in_data[22:3];
  assign celloutsig_0_16z = { celloutsig_0_6z, celloutsig_0_13z, celloutsig_0_6z } !== { in_data[73:72], celloutsig_0_5z };
  assign celloutsig_1_2z = celloutsig_1_1z[5:3] !== celloutsig_1_0z;
  assign celloutsig_1_1z = ~ in_data[113:107];
  assign celloutsig_0_3z = { in_data[25:22], celloutsig_0_0z, celloutsig_0_1z } | { in_data[88:85], celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_4z = _00_[7:1] | { _00_[3], celloutsig_0_3z };
  assign celloutsig_0_26z = celloutsig_0_4z[6:3] | { celloutsig_0_16z, celloutsig_0_10z, celloutsig_0_21z, celloutsig_0_0z };
  assign celloutsig_0_6z = & { celloutsig_0_5z, celloutsig_0_3z[5:1], _00_ };
  assign celloutsig_1_15z = | _01_[5:1];
  assign celloutsig_0_18z = | { celloutsig_0_7z[1:0], celloutsig_0_7z, celloutsig_0_12z[6:1], celloutsig_0_12z[1], celloutsig_0_15z };
  assign celloutsig_0_21z = | { celloutsig_0_17z[8:7], celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_1_14z = | { celloutsig_1_8z, celloutsig_1_5z[18:0], celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_0z, in_data[123:116] };
  assign celloutsig_0_11z = | celloutsig_0_9z[6:0];
  assign celloutsig_0_19z = | { celloutsig_0_7z, celloutsig_0_4z[2:1] };
  assign celloutsig_1_3z = | { celloutsig_1_0z, in_data[123:116] };
  assign celloutsig_1_8z = ~^ { celloutsig_1_5z[20:14], celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_1_10z = ~^ { celloutsig_1_1z[3:0], celloutsig_1_1z };
  assign celloutsig_1_4z = ~^ { celloutsig_1_0z[1:0], celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_0_22z = { in_data[7:6], celloutsig_0_11z, celloutsig_0_20z, celloutsig_0_18z, celloutsig_0_18z, celloutsig_0_7z, celloutsig_0_21z } <<< celloutsig_0_17z[13:4];
  assign celloutsig_0_25z = { in_data[95:88], celloutsig_0_18z, celloutsig_0_4z, celloutsig_0_16z, celloutsig_0_23z, celloutsig_0_18z, celloutsig_0_6z, celloutsig_0_13z } <<< { celloutsig_0_7z[1], celloutsig_0_23z, celloutsig_0_1z, celloutsig_0_8z, _00_, celloutsig_0_12z[6:1], celloutsig_0_12z[1], celloutsig_0_6z };
  assign celloutsig_0_7z = { in_data[41:40], celloutsig_0_5z } ~^ celloutsig_0_3z[5:3];
  assign celloutsig_0_20z = ~((celloutsig_0_3z[4] & celloutsig_0_6z) | (celloutsig_0_9z[0] & celloutsig_0_5z));
  assign celloutsig_0_12z[6:1] = ~ { _00_[4:0], celloutsig_0_1z };
  assign { celloutsig_0_14z[9], celloutsig_0_14z[10], celloutsig_0_14z[8:1] } = ~ { celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_12z[0] = celloutsig_0_12z[1];
  assign celloutsig_0_14z[0] = celloutsig_0_14z[10];
  assign { out_data[128], out_data[96], out_data[52:32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_25z, celloutsig_0_26z };
endmodule

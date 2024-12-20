/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [10:0] _02_;
  wire [21:0] celloutsig_0_0z;
  wire [20:0] celloutsig_0_10z;
  wire [12:0] celloutsig_0_11z;
  wire [4:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire [5:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire [19:0] celloutsig_0_27z;
  wire [4:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [14:0] celloutsig_0_32z;
  wire celloutsig_0_35z;
  wire celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire [5:0] celloutsig_0_4z;
  wire [6:0] celloutsig_0_53z;
  wire celloutsig_0_54z;
  wire [3:0] celloutsig_0_5z;
  wire [6:0] celloutsig_0_6z;
  wire [5:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [6:0] celloutsig_1_10z;
  wire [12:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [9:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [23:0] celloutsig_1_16z;
  wire [18:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [8:0] celloutsig_1_3z;
  wire [10:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [14:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [3:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_5z = ~(celloutsig_1_0z & celloutsig_1_4z[0]);
  assign celloutsig_0_3z = ~(in_data[18] | celloutsig_0_2z);
  assign celloutsig_0_35z = ~(celloutsig_0_11z[9] | celloutsig_0_4z[1]);
  assign celloutsig_1_9z = ~((celloutsig_1_2z | in_data[110]) & celloutsig_1_7z);
  assign celloutsig_1_12z = ~((celloutsig_1_7z | in_data[166]) & in_data[105]);
  assign celloutsig_0_37z = ~((celloutsig_0_32z[7] | celloutsig_0_5z[3]) & (celloutsig_0_29z[2] | _00_));
  assign celloutsig_1_2z = celloutsig_1_0z | ~(celloutsig_1_0z);
  assign celloutsig_1_19z = celloutsig_1_13z[5] | ~(celloutsig_1_14z);
  assign celloutsig_0_13z = celloutsig_0_11z[3] | ~(celloutsig_0_0z[21]);
  assign celloutsig_0_15z = celloutsig_0_11z[2] | ~(celloutsig_0_6z[3]);
  assign celloutsig_1_16z = { celloutsig_1_8z[2:0], celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_10z, celloutsig_1_3z } + { in_data[180:173], celloutsig_1_5z, celloutsig_1_6z };
  assign celloutsig_1_18z = { celloutsig_1_3z[8:1], celloutsig_1_4z } + celloutsig_1_16z[20:2];
  assign celloutsig_0_27z = { celloutsig_0_10z[19:7], celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_9z } + { celloutsig_0_11z[8:3], celloutsig_0_18z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_13z };
  assign celloutsig_0_32z = { celloutsig_0_27z[17:4], celloutsig_0_17z } + { celloutsig_0_4z[5:4], celloutsig_0_13z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_5z };
  reg [10:0] _17_;
  always_ff @(posedge celloutsig_1_19z, negedge clkin_data[0])
    if (!clkin_data[0]) _17_ <= 11'h000;
    else _17_ <= { celloutsig_0_12z[3:0], celloutsig_0_7z, celloutsig_0_9z };
  assign { _01_, _02_[9:7], _00_, _02_[5:0] } = _17_;
  assign celloutsig_1_14z = { in_data[178:175], celloutsig_1_7z } == { celloutsig_1_8z[3], celloutsig_1_1z, celloutsig_1_12z, celloutsig_1_9z, celloutsig_1_9z };
  assign celloutsig_0_8z = { celloutsig_0_0z[12:6], celloutsig_0_2z } == in_data[92:85];
  assign celloutsig_0_9z = { celloutsig_0_6z[6:2], celloutsig_0_2z, celloutsig_0_1z } == in_data[77:71];
  assign celloutsig_0_1z = celloutsig_0_0z[6:2] == in_data[35:31];
  assign celloutsig_1_1z = { in_data[104:97], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } && in_data[151:139];
  assign celloutsig_1_0z = in_data[168] & ~(in_data[117]);
  assign celloutsig_1_7z = celloutsig_1_0z & ~(celloutsig_1_6z[7]);
  assign celloutsig_0_2z = celloutsig_0_0z[6] & ~(celloutsig_0_0z[8]);
  assign celloutsig_1_8z = { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_2z } % { 1'h1, in_data[131:130], celloutsig_1_5z };
  assign celloutsig_0_6z = in_data[22:16] % { 1'h1, in_data[54:50], celloutsig_0_2z };
  assign celloutsig_1_13z = { celloutsig_1_0z, celloutsig_1_3z } % { 1'h1, celloutsig_1_11z[9:1] };
  assign celloutsig_0_10z = { celloutsig_0_0z[18:6], celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_7z } % { 1'h1, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_11z = celloutsig_0_10z[19:7] % { 1'h1, celloutsig_0_0z[9:5], celloutsig_0_8z, celloutsig_0_7z };
  assign celloutsig_0_4z = celloutsig_0_1z ? celloutsig_0_0z[14:9] : { celloutsig_0_0z[17:14], 1'h0, celloutsig_0_3z };
  assign celloutsig_1_3z = - in_data[147:139];
  assign celloutsig_1_6z = - in_data[147:133];
  assign celloutsig_0_29z = - { celloutsig_0_11z[4], celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_13z, celloutsig_0_3z };
  assign celloutsig_0_53z = { celloutsig_0_35z, celloutsig_0_37z, celloutsig_0_29z } | { _02_[9:7], _00_, _02_[5:3] };
  assign celloutsig_1_4z = in_data[132:122] | { in_data[113:112], celloutsig_1_3z };
  assign celloutsig_0_16z = celloutsig_0_4z | { celloutsig_0_12z, celloutsig_0_3z };
  assign celloutsig_0_17z = | { celloutsig_0_12z[3:2], celloutsig_0_1z };
  assign celloutsig_0_54z = ^ { celloutsig_0_0z[12:6], celloutsig_0_37z };
  assign celloutsig_0_18z = ^ { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_16z };
  assign celloutsig_0_12z = { celloutsig_0_5z, celloutsig_0_9z } >> in_data[7:3];
  assign celloutsig_0_0z = in_data[33:12] >> in_data[47:26];
  assign celloutsig_0_5z = in_data[21:18] >> in_data[93:90];
  assign celloutsig_1_10z = celloutsig_1_4z[9:3] >> celloutsig_1_4z[6:0];
  assign celloutsig_1_11z = { celloutsig_1_6z[2:0], celloutsig_1_3z, celloutsig_1_0z } >> { celloutsig_1_6z[14], celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_0_7z = in_data[40:35] ~^ celloutsig_0_6z[6:1];
  assign { _02_[10], _02_[6] } = { _01_, _00_ };
  assign { out_data[146:128], out_data[96], out_data[38:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_53z, celloutsig_0_54z };
endmodule

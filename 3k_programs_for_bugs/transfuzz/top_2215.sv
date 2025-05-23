/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  reg [6:0] _01_;
  wire [15:0] _02_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [4:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [15:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [5:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_25z;
  wire celloutsig_0_27z;
  wire celloutsig_0_2z;
  wire [5:0] celloutsig_0_38z;
  wire [2:0] celloutsig_0_39z;
  reg [8:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [31:0] celloutsig_0_5z;
  wire [7:0] celloutsig_0_6z;
  wire [4:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [7:0] celloutsig_1_12z;
  wire [12:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire [6:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  reg [11:0] celloutsig_1_2z;
  wire [12:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [4:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [191:0] clkin_data;
  wire [191:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_10z = ~((celloutsig_1_2z[8] | celloutsig_1_7z[3]) & celloutsig_1_5z);
  assign celloutsig_0_21z = ~((celloutsig_0_4z | celloutsig_0_2z) & celloutsig_0_1z[1]);
  assign celloutsig_1_11z = ~((celloutsig_1_2z[1] | celloutsig_1_8z) & (celloutsig_1_0z[2] | celloutsig_1_3z[10]));
  assign celloutsig_0_10z = ~((celloutsig_0_2z | in_data[40]) & (celloutsig_0_0z | celloutsig_0_6z[1]));
  assign celloutsig_1_1z = celloutsig_1_0z[0] | ~(celloutsig_1_0z[1]);
  assign celloutsig_1_8z = celloutsig_1_6z | ~(celloutsig_1_5z);
  assign celloutsig_0_9z = celloutsig_0_4z | ~(celloutsig_0_0z);
  assign celloutsig_0_15z = celloutsig_0_5z[10] | ~(celloutsig_0_14z[1]);
  assign celloutsig_1_5z = celloutsig_1_2z[4] ^ celloutsig_1_3z[10];
  always_ff @(posedge celloutsig_1_18z[0], negedge clkin_data[96])
    if (!clkin_data[96]) _01_ <= 7'h00;
    else _01_ <= celloutsig_0_3z[8:2];
  reg [15:0] _13_;
  always_ff @(negedge celloutsig_1_18z[0], negedge clkin_data[96])
    if (!clkin_data[96]) _13_ <= 16'h0000;
    else _13_ <= { in_data[18:17], celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_4z };
  assign { _02_[15:13], _00_, _02_[11:0] } = _13_;
  assign celloutsig_1_18z = { celloutsig_1_14z[5], celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_15z, celloutsig_1_4z } & { in_data[107:103], celloutsig_1_10z, celloutsig_1_9z };
  assign celloutsig_0_1z = in_data[39:34] & in_data[38:33];
  assign celloutsig_0_8z = _01_[6:2] & celloutsig_0_3z[6:2];
  assign celloutsig_1_14z = { celloutsig_1_3z[10:2], celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_4z } / { 1'h1, celloutsig_1_12z[5:0], celloutsig_1_11z, celloutsig_1_9z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_4z, in_data[96] };
  assign celloutsig_0_5z = { in_data[51:27], celloutsig_0_1z, celloutsig_0_0z } / { 1'h1, celloutsig_0_3z[5:3], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_0_12z = celloutsig_0_6z[6:2] >= { celloutsig_0_8z[4:1], celloutsig_0_9z };
  assign celloutsig_1_9z = celloutsig_1_3z[9:5] > { celloutsig_1_7z[3:2], celloutsig_1_0z };
  assign celloutsig_0_11z = { celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_1z } > { _01_[6:2], celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_0_19z = { in_data[18:13], celloutsig_0_15z, celloutsig_0_1z } > { celloutsig_0_17z[15:5], celloutsig_0_10z, celloutsig_0_9z };
  assign celloutsig_0_20z = { celloutsig_0_8z[2:1], celloutsig_0_0z } > celloutsig_0_5z[20:18];
  assign celloutsig_1_4z = celloutsig_1_2z[9:6] || celloutsig_1_2z[6:3];
  assign celloutsig_1_6z = { in_data[188:186], celloutsig_1_0z } || in_data[189:184];
  assign celloutsig_1_3z = { celloutsig_1_2z, celloutsig_1_1z } % { 1'h1, in_data[138:127] };
  assign celloutsig_1_0z = in_data[140:138] % { 1'h1, in_data[164:163] };
  assign celloutsig_0_25z = { _02_[15:13], _00_, _02_[11:3], celloutsig_0_4z, celloutsig_0_20z, celloutsig_0_0z, celloutsig_0_18z } != { _01_[4:0], celloutsig_0_20z, celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_19z };
  assign celloutsig_0_39z = celloutsig_0_5z[31:29] | { _02_[11:10], celloutsig_0_15z };
  assign celloutsig_0_0z = & in_data[84:56];
  assign celloutsig_0_18z = & in_data[19:17];
  assign celloutsig_1_15z = | { celloutsig_1_14z[4:1], celloutsig_1_11z, celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_0_16z = | { celloutsig_0_14z, celloutsig_0_4z, celloutsig_0_3z[8:2] };
  assign celloutsig_1_17z = ~^ in_data[155:137];
  assign celloutsig_0_27z = ^ { celloutsig_0_17z[8:1], celloutsig_0_19z, celloutsig_0_21z };
  assign celloutsig_0_6z = { celloutsig_0_1z[4:3], celloutsig_0_1z } >> { celloutsig_0_3z[6:0], celloutsig_0_4z };
  assign celloutsig_0_17z = { celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_12z } >> { celloutsig_0_14z[1], celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_2z };
  assign celloutsig_0_38z = { celloutsig_0_5z[19:17], celloutsig_0_16z, celloutsig_0_25z, celloutsig_0_27z } >> _02_[10:5];
  assign celloutsig_0_14z = { celloutsig_0_3z[4:1], celloutsig_0_10z } >> { in_data[16], celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_4z };
  assign celloutsig_1_7z = { celloutsig_1_3z[10:9], celloutsig_1_0z } >>> { in_data[102:99], celloutsig_1_1z };
  assign celloutsig_1_12z = in_data[131:124] ^ { in_data[144:139], celloutsig_1_8z, celloutsig_1_8z };
  always_latch
    if (clkin_data[64]) celloutsig_0_3z = 9'h000;
    else if (!clkin_data[0]) celloutsig_0_3z = { celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z };
  always_latch
    if (clkin_data[128]) celloutsig_1_2z = 12'h000;
    else if (!clkin_data[32]) celloutsig_1_2z = { in_data[158:151], celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_0_4z = ~((celloutsig_0_1z[0] & celloutsig_0_0z) | (celloutsig_0_2z & in_data[75]));
  assign celloutsig_1_19z = ~((celloutsig_1_7z[0] & celloutsig_1_17z) | (celloutsig_1_9z & celloutsig_1_8z));
  assign celloutsig_0_2z = ~((celloutsig_0_1z[5] & celloutsig_0_1z[3]) | (celloutsig_0_1z[4] & celloutsig_0_0z));
  assign _02_[12] = _00_;
  assign { out_data[134:128], out_data[96], out_data[37:32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_38z, celloutsig_0_39z };
endmodule

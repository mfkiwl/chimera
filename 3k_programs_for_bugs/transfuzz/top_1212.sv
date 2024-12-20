/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  reg [22:0] _01_;
  reg [6:0] _02_;
  wire [15:0] _03_;
  reg [9:0] _04_;
  wire celloutsig_0_11z;
  wire [28:0] celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire [19:0] celloutsig_0_15z;
  wire celloutsig_0_2z;
  wire [2:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [9:0] celloutsig_0_5z;
  wire [3:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [12:0] celloutsig_0_8z;
  wire [4:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [7:0] celloutsig_1_11z;
  wire [3:0] celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire [4:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire [25:0] celloutsig_1_18z;
  wire [10:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [16:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_2z = ~(in_data[6] | _00_);
  assign celloutsig_0_7z = ~(celloutsig_0_3z[1] | celloutsig_0_4z);
  assign celloutsig_1_17z = ~celloutsig_1_4z[5];
  assign celloutsig_1_1z = ~((celloutsig_1_0z[1] | celloutsig_1_0z[2]) & (celloutsig_1_0z[1] | in_data[96]));
  assign celloutsig_1_14z = ~((celloutsig_1_11z[6] | celloutsig_1_4z[8]) & (celloutsig_1_5z | celloutsig_1_6z));
  assign celloutsig_1_7z = celloutsig_1_4z[7] | ~(celloutsig_1_5z);
  assign celloutsig_1_6z = celloutsig_1_1z ^ celloutsig_1_5z;
  reg [15:0] _12_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _12_ <= 16'h0000;
    else _12_ <= in_data[64:49];
  assign { _03_[15:14], _00_, _03_[12:0] } = _12_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _02_ <= 7'h00;
    else _02_ <= { in_data[67:63], celloutsig_0_2z, celloutsig_0_7z };
  always_ff @(posedge clkin_data[32], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _01_ <= 23'h000000;
    else _01_ <= { _00_, _03_[12:7], _03_[15:14], _00_, _03_[12:0] };
  always_ff @(negedge clkin_data[64], negedge clkin_data[96])
    if (!clkin_data[96]) _04_ <= 10'h000;
    else _04_ <= { celloutsig_1_4z[9:4], celloutsig_1_4z[5], celloutsig_1_4z[2], celloutsig_1_10z, celloutsig_1_7z };
  assign celloutsig_0_8z = { in_data[85:75], celloutsig_0_2z, celloutsig_0_4z } & { _03_[14], _00_, _03_[12:2] };
  assign celloutsig_1_19z = { celloutsig_1_4z[13:4], celloutsig_1_5z } / { 1'h1, _04_[8:0], celloutsig_1_14z };
  assign celloutsig_1_15z = _04_[4:0] / { 1'h1, celloutsig_1_11z[2:1], celloutsig_1_3z, celloutsig_1_10z };
  assign celloutsig_1_16z = { celloutsig_1_11z[3:0], celloutsig_1_1z } == celloutsig_1_15z;
  assign celloutsig_0_4z = celloutsig_0_3z[2] & ~(_03_[5]);
  assign celloutsig_1_3z = celloutsig_1_0z[2] & ~(celloutsig_1_0z[3]);
  assign celloutsig_0_5z = { in_data[29:21], celloutsig_0_2z } % { 1'h1, in_data[77:73], celloutsig_0_3z, in_data[0] };
  assign celloutsig_1_0z = in_data[119:115] * in_data[137:133];
  assign celloutsig_0_3z = - { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_15z = - { celloutsig_0_12z[10:9], celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_6z, _02_, celloutsig_0_2z, celloutsig_0_14z };
  assign celloutsig_0_11z = { celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_2z } !== _03_[11:7];
  assign celloutsig_0_12z = ~ { celloutsig_0_8z[12:5], celloutsig_0_2z, _03_[15:14], _00_, _03_[12:0], celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_1_11z = ~ { celloutsig_1_4z[5], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_0_14z = | _02_[6:4];
  assign celloutsig_1_5z = | celloutsig_1_4z[10:7];
  assign celloutsig_1_10z = | { celloutsig_1_4z[10:7], in_data[131:113] };
  assign celloutsig_1_18z = { celloutsig_1_16z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_14z, celloutsig_1_6z, celloutsig_1_0z, _04_, celloutsig_1_16z, celloutsig_1_6z } <<< { celloutsig_1_4z[13:4], celloutsig_1_4z[5], celloutsig_1_4z[2], celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_12z, celloutsig_1_17z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_0z };
  assign celloutsig_0_6z = _01_[8:5] <<< celloutsig_0_5z[9:6];
  assign celloutsig_1_12z = { in_data[134], celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_6z } <<< { celloutsig_1_4z[13], celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_7z };
  assign celloutsig_1_2z = ~((celloutsig_1_0z[4] & celloutsig_1_1z) | (celloutsig_1_0z[3] & celloutsig_1_0z[2]));
  assign { celloutsig_1_4z[4], celloutsig_1_4z[5], celloutsig_1_4z[2], celloutsig_1_4z[16:6] } = ~ { celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_1z, in_data[158:148] };
  assign _03_[13] = _00_;
  assign { celloutsig_1_4z[3], celloutsig_1_4z[1:0] } = { celloutsig_1_4z[5], celloutsig_1_4z[5], celloutsig_1_4z[5] };
  assign { out_data[153:128], out_data[106:96], out_data[32], out_data[19:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_14z, celloutsig_0_15z };
endmodule

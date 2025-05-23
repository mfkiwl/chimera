/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [21:0] _00_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [5:0] celloutsig_0_12z;
  wire [13:0] celloutsig_0_13z;
  wire [2:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [9:0] celloutsig_0_16z;
  wire [10:0] celloutsig_0_17z;
  wire [4:0] celloutsig_0_18z;
  wire [3:0] celloutsig_0_19z;
  wire [7:0] celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [2:0] celloutsig_0_23z;
  wire celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [4:0] celloutsig_0_30z;
  wire [5:0] celloutsig_0_32z;
  wire [24:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire [5:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [3:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [4:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [5:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [6:0] celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [15:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [12:0] celloutsig_1_19z;
  wire [3:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [16:0] celloutsig_1_5z;
  wire [19:0] celloutsig_1_6z;
  wire [3:0] celloutsig_1_7z;
  wire [10:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_15z = celloutsig_1_8z[3] ? celloutsig_1_9z : in_data[108];
  assign celloutsig_0_11z = celloutsig_0_3z[2] ? celloutsig_0_0z : celloutsig_0_10z;
  assign celloutsig_1_12z = ~(celloutsig_1_10z[5] | celloutsig_1_11z);
  assign celloutsig_1_0z = ~((in_data[164] | in_data[101]) & in_data[189]);
  assign celloutsig_1_9z = ~((celloutsig_1_0z | celloutsig_1_4z) & celloutsig_1_4z);
  assign celloutsig_0_6z = ~((celloutsig_0_3z[4] | celloutsig_0_3z[4]) & celloutsig_0_5z);
  assign celloutsig_0_2z = ~((celloutsig_0_0z | celloutsig_0_1z[4]) & celloutsig_0_1z[3]);
  assign celloutsig_0_27z = ~((celloutsig_0_9z[3] | celloutsig_0_19z[2]) & (celloutsig_0_1z[2] | celloutsig_0_7z[1]));
  assign celloutsig_0_8z = celloutsig_0_7z[1] | ~(celloutsig_0_5z);
  assign celloutsig_0_15z = in_data[48] | ~(celloutsig_0_2z);
  reg [3:0] _11_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[64])
    if (!clkin_data[64]) _11_ <= 4'h0;
    else _11_ <= { celloutsig_0_9z[4:3], celloutsig_0_0z, celloutsig_0_36z };
  assign out_data[35:32] = _11_;
  always_ff @(negedge clkin_data[0], negedge clkin_data[32])
    if (!clkin_data[32]) _00_ <= 22'h000000;
    else _00_ <= { celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_14z, celloutsig_0_19z };
  assign celloutsig_1_17z = { celloutsig_1_8z[4], celloutsig_1_16z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_12z, 1'h1, celloutsig_1_0z, 1'h1, celloutsig_1_16z } / { 1'h1, celloutsig_1_10z[4:1], celloutsig_1_8z[10:3], celloutsig_1_6z[2], celloutsig_1_8z[1], celloutsig_1_6z[0] };
  assign celloutsig_1_19z = { celloutsig_1_6z[7:2], celloutsig_1_15z, celloutsig_1_15z, celloutsig_1_18z, celloutsig_1_9z, celloutsig_1_18z, celloutsig_1_18z, celloutsig_1_0z } / { 1'h1, celloutsig_1_17z[12:1] };
  assign celloutsig_0_9z = { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_6z } / { 1'h1, celloutsig_0_1z[6:5], celloutsig_0_4z, celloutsig_0_5z };
  assign celloutsig_0_13z = { in_data[70:69], celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_7z } / { 1'h1, celloutsig_0_9z, celloutsig_0_1z };
  assign celloutsig_0_17z = { in_data[39:31], celloutsig_0_4z, celloutsig_0_2z } / { 1'h1, celloutsig_0_13z[12:10], celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_11z };
  assign celloutsig_0_30z = { celloutsig_0_19z[2:0], celloutsig_0_15z, celloutsig_0_27z } / { 1'h1, celloutsig_0_7z[1:0], celloutsig_0_21z, celloutsig_0_22z };
  assign celloutsig_0_38z = { celloutsig_0_19z, celloutsig_0_23z, celloutsig_0_9z, celloutsig_0_23z } === { celloutsig_0_35z[11:10], celloutsig_0_29z, celloutsig_0_32z, celloutsig_0_3z };
  assign celloutsig_1_18z = { celloutsig_1_3z[3:1], celloutsig_1_12z } > { celloutsig_1_7z[3:2], celloutsig_1_4z, celloutsig_1_7z[0] };
  assign celloutsig_0_0z = in_data[87:69] && in_data[45:27];
  assign celloutsig_0_4z = { in_data[15:10], celloutsig_0_0z } && { celloutsig_0_1z[6:1], celloutsig_0_0z };
  assign celloutsig_0_32z = { celloutsig_0_13z[1], celloutsig_0_9z } % { 1'h1, celloutsig_0_18z[3:0], celloutsig_0_2z };
  assign celloutsig_0_3z = celloutsig_0_1z[5:0] % { 1'h1, in_data[69:65] };
  assign celloutsig_1_3z = { in_data[126], 1'h1, celloutsig_1_0z, 1'h1 } % { 1'h1, celloutsig_1_0z, 2'h3 };
  assign celloutsig_1_5z = { in_data[149:137], celloutsig_1_4z, 1'h1, celloutsig_1_0z, celloutsig_1_4z } % { 1'h1, in_data[111:96] };
  assign celloutsig_1_6z = { celloutsig_1_5z[8:0], 1'h1, celloutsig_1_0z, 2'h3, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_0z } % { 1'h1, celloutsig_1_5z[15:1], celloutsig_1_3z };
  assign celloutsig_0_1z = { in_data[52:48], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z } % { 1'h1, in_data[37:31] };
  assign { celloutsig_1_7z[3:2], celloutsig_1_7z[0] } = celloutsig_1_3z[0] ? { 1'h1, celloutsig_1_0z, celloutsig_1_4z } : { celloutsig_1_0z, 1'h1, celloutsig_1_0z };
  assign celloutsig_1_10z = celloutsig_1_0z ? { in_data[166:162], celloutsig_1_9z } : { celloutsig_1_8z[3], celloutsig_1_6z[2], celloutsig_1_3z };
  assign celloutsig_0_36z = | { celloutsig_0_13z[10:6], celloutsig_0_15z };
  assign celloutsig_1_11z = | { celloutsig_1_6z[19:6], celloutsig_1_4z };
  assign celloutsig_1_16z = | celloutsig_1_13z[5:2];
  assign celloutsig_0_10z = | { celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_1z[5], celloutsig_0_0z };
  assign celloutsig_0_21z = | celloutsig_0_17z[7:5];
  assign celloutsig_0_29z = | { celloutsig_0_16z[7:4], celloutsig_0_11z };
  assign celloutsig_0_5z = ~^ { in_data[77:65], celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_22z = ~^ { celloutsig_0_7z[3:2], celloutsig_0_10z };
  assign celloutsig_0_7z = { celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_5z } >> celloutsig_0_3z[5:2];
  assign celloutsig_0_18z = { celloutsig_0_13z[8:5], celloutsig_0_8z } >>> { celloutsig_0_3z[4:1], celloutsig_0_11z };
  assign celloutsig_0_35z = { celloutsig_0_3z[5:2], celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_21z, celloutsig_0_14z, celloutsig_0_30z, celloutsig_0_30z, celloutsig_0_4z } ~^ { _00_[19:1], celloutsig_0_15z, celloutsig_0_6z, celloutsig_0_7z };
  assign celloutsig_1_13z = { celloutsig_1_8z[8:3], celloutsig_1_6z[2] } ~^ celloutsig_1_6z[7:1];
  assign celloutsig_0_12z = { celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_6z } ~^ { celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_11z };
  assign celloutsig_0_16z = { celloutsig_0_14z[2], celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_5z } ~^ { in_data[41:37], celloutsig_0_9z };
  assign celloutsig_0_19z = celloutsig_0_13z[10:7] ~^ { celloutsig_0_18z[2:1], celloutsig_0_6z, celloutsig_0_15z };
  assign celloutsig_0_14z = celloutsig_0_7z[3:1] ^ { celloutsig_0_12z[3:2], celloutsig_0_10z };
  assign celloutsig_0_23z = celloutsig_0_17z[3:1] ^ { celloutsig_0_12z[4:3], celloutsig_0_21z };
  assign { celloutsig_1_8z[10:3], celloutsig_1_8z[1] } = { celloutsig_1_6z[10:3], celloutsig_1_6z[1] } ~^ { celloutsig_1_6z[9:2], celloutsig_1_0z };
  assign celloutsig_1_4z = ~in_data[133];
  assign celloutsig_1_7z[1] = celloutsig_1_4z;
  assign { celloutsig_1_8z[2], celloutsig_1_8z[0] } = { celloutsig_1_6z[2], celloutsig_1_6z[0] };
  assign { out_data[128], out_data[108:96], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_38z };
endmodule

/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  reg [15:0] _01_;
  wire [8:0] _02_;
  reg [24:0] _03_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [4:0] celloutsig_0_11z;
  wire [4:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [3:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [5:0] celloutsig_0_22z;
  wire [14:0] celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [8:0] celloutsig_0_29z;
  wire [25:0] celloutsig_0_2z;
  wire [4:0] celloutsig_0_30z;
  wire celloutsig_0_32z;
  wire celloutsig_0_35z;
  wire [3:0] celloutsig_0_36z;
  wire celloutsig_0_3z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire [3:0] celloutsig_0_45z;
  wire celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire [15:0] celloutsig_0_51z;
  wire [4:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_12z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [21:0] celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_50z = !(celloutsig_0_7z ? _00_ : celloutsig_0_14z);
  assign celloutsig_0_7z = ~(celloutsig_0_4z | celloutsig_0_0z);
  assign celloutsig_0_10z = ~celloutsig_0_4z;
  assign celloutsig_0_17z = ~celloutsig_0_15z;
  assign celloutsig_0_35z = ~((celloutsig_0_4z | celloutsig_0_16z) & celloutsig_0_30z[0]);
  assign celloutsig_1_19z = ~((celloutsig_1_3z[0] | celloutsig_1_16z) & celloutsig_1_12z);
  assign celloutsig_0_8z = ~((celloutsig_0_5z[0] | celloutsig_0_0z) & celloutsig_0_0z);
  assign celloutsig_0_1z = ~((celloutsig_0_0z | in_data[49]) & celloutsig_0_0z);
  assign celloutsig_0_14z = ~((celloutsig_0_1z | celloutsig_0_4z) & celloutsig_0_10z);
  assign celloutsig_0_25z = ~((celloutsig_0_5z[2] | celloutsig_0_1z) & celloutsig_0_1z);
  assign celloutsig_0_42z = celloutsig_0_2z[17] | ~(celloutsig_0_23z[6]);
  assign celloutsig_1_12z = in_data[129] | ~(celloutsig_1_0z[0]);
  assign celloutsig_0_19z = celloutsig_0_13z[2] | ~(celloutsig_0_11z[2]);
  assign celloutsig_0_26z = celloutsig_0_16z | ~(celloutsig_0_19z);
  assign celloutsig_0_32z = celloutsig_0_7z | ~(celloutsig_0_19z);
  assign celloutsig_0_21z = celloutsig_0_19z | celloutsig_0_7z;
  assign celloutsig_0_47z = celloutsig_0_16z ^ celloutsig_0_11z[1];
  assign celloutsig_1_18z = celloutsig_1_4z ^ in_data[111];
  assign celloutsig_0_18z = celloutsig_0_1z ^ in_data[50];
  always_ff @(negedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _01_ <= 16'h0000;
    else _01_ <= { celloutsig_0_15z, celloutsig_0_32z, celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_11z };
  reg [8:0] _24_;
  always_ff @(negedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _24_ <= 9'h000;
    else _24_ <= { in_data[21:15], celloutsig_0_15z, celloutsig_0_8z };
  assign { _02_[8:7], _00_, _02_[5:0] } = _24_;
  always_ff @(negedge clkin_data[0], negedge clkin_data[64])
    if (!clkin_data[64]) _03_ <= 25'h0000000;
    else _03_ <= { in_data[124:101], celloutsig_1_12z };
  assign celloutsig_0_0z = in_data[20:15] === in_data[86:81];
  assign celloutsig_0_3z = { in_data[86:71], celloutsig_0_0z } === celloutsig_0_2z[22:6];
  assign celloutsig_0_6z = { celloutsig_0_2z[24:16], celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_3z } === in_data[88:75];
  assign celloutsig_1_16z = _03_[12:0] === _03_[14:2];
  assign celloutsig_0_43z = { celloutsig_0_30z[1:0], celloutsig_0_18z } || celloutsig_0_36z[3:1];
  assign celloutsig_0_9z = { in_data[59], celloutsig_0_4z, celloutsig_0_8z } || { celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_0_16z = celloutsig_0_3z & ~(celloutsig_0_7z);
  assign celloutsig_0_20z = { celloutsig_0_2z[10:9], celloutsig_0_3z, celloutsig_0_8z } % { 1'h1, celloutsig_0_7z, celloutsig_0_16z, celloutsig_0_3z };
  assign celloutsig_1_2z = - { in_data[187:168], celloutsig_1_12z, celloutsig_1_12z };
  assign celloutsig_0_23z = - { celloutsig_0_13z[3:0], celloutsig_0_0z, celloutsig_0_22z[5:2], celloutsig_0_22z[3], celloutsig_0_22z[4], celloutsig_0_3z, celloutsig_0_19z, celloutsig_0_9z, celloutsig_0_14z };
  assign celloutsig_0_30z = - { celloutsig_0_13z[1], celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_4z };
  assign celloutsig_0_51z = { _01_[13:4], celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_47z, celloutsig_0_25z } | { _01_[14:13], celloutsig_0_42z, celloutsig_0_26z, celloutsig_0_45z, celloutsig_0_13z, celloutsig_0_27z, celloutsig_0_3z, celloutsig_0_21z };
  assign celloutsig_1_0z = in_data[177:174] | in_data[188:185];
  assign celloutsig_1_3z = celloutsig_1_0z[3:1] | celloutsig_1_2z[9:7];
  assign celloutsig_0_11z = { celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_8z } | { in_data[16], celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_0_29z = { celloutsig_0_2z[17:10], celloutsig_0_18z } | { celloutsig_0_2z[15:14], celloutsig_0_6z, celloutsig_0_20z, celloutsig_0_14z, celloutsig_0_26z };
  assign celloutsig_1_4z = | { celloutsig_1_3z[2], celloutsig_1_3z };
  assign celloutsig_0_15z = | { celloutsig_0_5z[4:2], celloutsig_0_7z };
  assign celloutsig_0_27z = celloutsig_0_19z & celloutsig_0_20z[3];
  assign celloutsig_0_4z = ^ { celloutsig_0_2z[8:1], celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_36z = in_data[66:63] << { celloutsig_0_17z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_27z };
  assign celloutsig_0_45z = celloutsig_0_29z[7:4] << { celloutsig_0_36z[3], celloutsig_0_35z, celloutsig_0_8z, celloutsig_0_43z };
  assign celloutsig_0_5z = { in_data[85:84], celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_1z } << { celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_13z = { celloutsig_0_2z[2:0], celloutsig_0_9z, celloutsig_0_0z } ^ celloutsig_0_2z[6:2];
  assign celloutsig_0_2z = { in_data[73:49], celloutsig_0_0z } ^ in_data[77:52];
  assign { celloutsig_0_22z[3:2], celloutsig_0_22z[4], celloutsig_0_22z[5] } = ~ { celloutsig_0_21z, celloutsig_0_19z, celloutsig_0_9z, celloutsig_0_4z };
  assign _02_[6] = _00_;
  assign celloutsig_0_22z[1:0] = { celloutsig_0_22z[3], celloutsig_0_22z[4] };
  assign { out_data[128], out_data[96], out_data[32], out_data[15:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_50z, celloutsig_0_51z };
endmodule

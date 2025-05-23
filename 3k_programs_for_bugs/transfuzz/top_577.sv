/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [3:0] _01_;
  wire [9:0] celloutsig_0_0z;
  wire [2:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [6:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [7:0] celloutsig_1_10z;
  wire celloutsig_1_18z;
  wire [2:0] celloutsig_1_19z;
  reg [10:0] celloutsig_1_2z;
  reg [17:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [21:0] celloutsig_1_6z;
  wire celloutsig_1_8z;
  reg [3:0] celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_6z = ~(in_data[49] & in_data[80]);
  assign celloutsig_1_8z = ~(celloutsig_1_0z & celloutsig_1_6z[5]);
  assign celloutsig_0_2z = ~(celloutsig_0_0z[4] | _00_);
  assign celloutsig_1_0z = ~in_data[135];
  reg [3:0] _06_;
  always_ff @(posedge celloutsig_1_19z[0], negedge clkin_data[32])
    if (!clkin_data[32]) _06_ <= 4'h0;
    else _06_ <= in_data[13:10];
  assign { _01_[3], _00_, _01_[1:0] } = _06_;
  assign celloutsig_1_19z = { celloutsig_1_2z[8], celloutsig_1_18z, celloutsig_1_8z } / { 1'h1, celloutsig_1_10z[4:3] };
  assign celloutsig_1_5z = { celloutsig_1_3z[12:8], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_0z } == { in_data[178:171], celloutsig_1_4z };
  assign celloutsig_0_9z = { celloutsig_0_0z[9:2], celloutsig_0_3z } >= { celloutsig_0_5z[6:2], _01_[3], _00_, _01_[1:0] };
  assign celloutsig_0_11z = { celloutsig_0_0z[5:1], celloutsig_0_3z } >= { celloutsig_0_10z[1:0], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_9z };
  assign celloutsig_0_12z = ! in_data[51:34];
  assign celloutsig_1_4z = ! celloutsig_1_3z[15:9];
  assign celloutsig_0_3z = { in_data[9:4], celloutsig_0_2z } || in_data[76:70];
  assign celloutsig_0_7z = celloutsig_0_6z & ~(celloutsig_0_3z);
  assign celloutsig_1_18z = celloutsig_1_3z[16] & ~(celloutsig_1_9z[2]);
  assign celloutsig_0_10z = celloutsig_0_5z[4:2] % { 1'h1, celloutsig_0_3z, celloutsig_0_7z };
  assign celloutsig_1_6z = in_data[135:114] % { 1'h1, celloutsig_1_3z[13], celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_1_10z = celloutsig_1_2z[10:3] * { in_data[134:128], celloutsig_1_0z };
  assign celloutsig_0_0z = in_data[91] ? in_data[60:51] : in_data[34:25];
  assign celloutsig_0_4z = | { celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z[6:4] };
  assign celloutsig_0_5z = in_data[52:46] <<< celloutsig_0_0z[6:0];
  always_latch
    if (!clkin_data[64]) celloutsig_1_2z = 11'h000;
    else if (!clkin_data[96]) celloutsig_1_2z = in_data[151:141];
  always_latch
    if (!clkin_data[64]) celloutsig_1_3z = 18'h00000;
    else if (clkin_data[96]) celloutsig_1_3z = { in_data[185:181], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z };
  always_latch
    if (!clkin_data[64]) celloutsig_1_9z = 4'h0;
    else if (clkin_data[96]) celloutsig_1_9z = celloutsig_1_2z[9:6];
  assign _01_[2] = _00_;
  assign { out_data[128], out_data[98:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_11z, celloutsig_0_12z };
endmodule

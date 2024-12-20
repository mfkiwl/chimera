/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  reg [3:0] _01_;
  reg [4:0] _02_;
  wire [2:0] _03_;
  wire [5:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_12z;
  wire [3:0] celloutsig_0_14z;
  wire [13:0] celloutsig_0_15z;
  wire celloutsig_0_1z;
  wire [12:0] celloutsig_0_23z;
  wire [9:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [5:0] celloutsig_0_31z;
  wire celloutsig_0_3z;
  wire [8:0] celloutsig_0_4z;
  wire [2:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [6:0] celloutsig_0_8z;
  wire [4:0] celloutsig_0_9z;
  wire [18:0] celloutsig_1_0z;
  wire [12:0] celloutsig_1_10z;
  wire celloutsig_1_13z;
  wire [2:0] celloutsig_1_15z;
  wire [8:0] celloutsig_1_16z;
  wire [6:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [17:0] celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire [5:0] celloutsig_1_3z;
  wire [5:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_3z = ~in_data[38];
  assign celloutsig_1_6z = ~celloutsig_1_2z[0];
  assign celloutsig_1_7z = ~celloutsig_1_0z[14];
  assign celloutsig_1_13z = ~celloutsig_1_10z[9];
  assign celloutsig_0_7z = ~celloutsig_0_1z;
  assign celloutsig_0_12z = ~celloutsig_0_10z;
  always_ff @(posedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _01_ <= 4'h0;
    else _01_ <= { celloutsig_1_1z[5:3], celloutsig_1_9z };
  always_ff @(negedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _02_ <= 5'h00;
    else _02_ <= celloutsig_1_2z;
  reg [2:0] _12_;
  always_ff @(negedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _12_ <= 3'h0;
    else _12_ <= in_data[61:59];
  assign { _00_, _03_[1:0] } = _12_;
  assign celloutsig_0_0z = in_data[62:57] & in_data[56:51];
  assign celloutsig_1_3z = celloutsig_1_1z[14:9] & celloutsig_1_1z[13:8];
  assign celloutsig_1_16z = { celloutsig_1_2z[3:2], celloutsig_1_6z, celloutsig_1_8z, _02_ } & { celloutsig_1_2z[4:3], celloutsig_1_8z, celloutsig_1_3z };
  assign celloutsig_1_18z = { _01_, celloutsig_1_15z } & celloutsig_1_16z[8:2];
  assign celloutsig_0_14z = { _00_, _03_[1:0], celloutsig_0_12z } & { _03_[0], celloutsig_0_6z };
  assign celloutsig_0_23z = { celloutsig_0_15z[6:0], celloutsig_0_0z } & { celloutsig_0_8z[5:1], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_7z };
  assign celloutsig_0_31z = celloutsig_0_4z[8:3] & celloutsig_0_23z[8:3];
  assign celloutsig_1_0z = in_data[159:141] & in_data[148:130];
  assign celloutsig_1_5z = celloutsig_1_0z[3] & ~(celloutsig_1_3z[2]);
  assign celloutsig_1_8z = in_data[186] & ~(celloutsig_1_6z);
  assign celloutsig_1_9z = celloutsig_1_6z & ~(celloutsig_1_4z[4]);
  assign celloutsig_1_19z = celloutsig_1_18z[0] & ~(celloutsig_1_1z[15]);
  assign celloutsig_0_10z = celloutsig_0_9z[0] & ~(in_data[51]);
  assign celloutsig_0_1z = celloutsig_0_0z[3] & ~(celloutsig_0_0z[2]);
  assign celloutsig_0_30z = celloutsig_0_15z[9] & ~(celloutsig_0_1z);
  assign celloutsig_1_2z = celloutsig_1_1z[15:11] * celloutsig_1_1z[7:3];
  assign celloutsig_1_4z = celloutsig_1_1z[8:3] * celloutsig_1_1z[7:2];
  assign celloutsig_0_4z = celloutsig_0_2z[9:1] * in_data[39:31];
  assign celloutsig_1_10z = { in_data[178:176], celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_6z } * { celloutsig_1_3z[1:0], celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_4z };
  assign celloutsig_1_15z = { celloutsig_1_10z[11], celloutsig_1_2z[0], celloutsig_1_7z } * { _02_[3:2], celloutsig_1_13z };
  assign celloutsig_0_6z = in_data[86:84] * celloutsig_0_0z[3:1];
  assign celloutsig_0_8z = { in_data[95:94], celloutsig_0_3z, _00_, _03_[1:0], celloutsig_0_7z } * { celloutsig_0_7z, celloutsig_0_0z };
  assign celloutsig_0_9z = celloutsig_0_2z[4:0] * { celloutsig_0_2z[4:1], celloutsig_0_3z };
  assign celloutsig_0_15z = { celloutsig_0_8z[4:1], _00_, _03_[1:0], celloutsig_0_10z, celloutsig_0_0z } * in_data[19:6];
  assign celloutsig_0_2z = in_data[16:7] * in_data[38:29];
  assign celloutsig_1_1z = celloutsig_1_0z[17:0] * celloutsig_1_0z[18:1];
  assign _03_[2] = _00_;
  assign { out_data[134:128], out_data[96], out_data[32], out_data[5:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_30z, celloutsig_0_31z };
endmodule

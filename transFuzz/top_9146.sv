/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [6:0] _02_;
  wire celloutsig_0_11z;
  wire [8:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_2z;
  wire [6:0] celloutsig_0_3z;
  wire celloutsig_0_7z;
  wire celloutsig_1_0z;
  wire [2:0] celloutsig_1_10z;
  wire [5:0] celloutsig_1_11z;
  wire [3:0] celloutsig_1_13z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [3:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [7:0] celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire [7:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [5:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_11z = celloutsig_0_7z | ~(celloutsig_0_7z);
  assign celloutsig_1_16z = celloutsig_1_13z[0] | celloutsig_1_6z[7];
  reg [6:0] _05_;
  always_ff @(posedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _05_ <= 7'h00;
    else _05_ <= in_data[70:64];
  assign { _02_[6:5], _00_, _01_, _02_[2:0] } = _05_;
  assign celloutsig_1_0z = in_data[154:136] === in_data[140:122];
  assign celloutsig_1_18z = { celloutsig_1_3z[2], celloutsig_1_13z } != celloutsig_1_9z[5:1];
  assign celloutsig_1_19z = { celloutsig_1_3z[4:1], celloutsig_1_16z } != { celloutsig_1_3z[6:3], celloutsig_1_7z };
  assign celloutsig_1_2z = in_data[104:98] != { in_data[189:184], celloutsig_1_0z };
  assign celloutsig_0_2z = in_data[93:91] != celloutsig_0_1z[6:4];
  assign celloutsig_1_1z = - in_data[99:96];
  assign celloutsig_1_3z = - { in_data[109:106], celloutsig_1_1z };
  assign celloutsig_1_7z = & celloutsig_1_1z[3:1];
  assign celloutsig_0_20z = celloutsig_0_1z[3] & celloutsig_0_11z;
  assign celloutsig_0_21z = ~^ celloutsig_0_3z[5:2];
  assign celloutsig_0_7z = ^ { celloutsig_0_1z[4:0], _02_[6:5], _00_, _01_, _02_[2:0] };
  assign celloutsig_0_1z = in_data[29:21] >> { _02_[1:0], _02_[6:5], _00_, _01_, _02_[2:0] };
  assign celloutsig_1_10z = in_data[188:186] >> { celloutsig_1_4z[3:2], celloutsig_1_2z };
  assign celloutsig_0_3z = in_data[46:40] <<< { celloutsig_0_1z[7:2], celloutsig_0_2z };
  assign celloutsig_1_4z = in_data[156:153] <<< celloutsig_1_3z[6:3];
  assign celloutsig_1_11z = { celloutsig_1_6z[2:0], celloutsig_1_10z } <<< celloutsig_1_3z[5:0];
  assign celloutsig_1_13z = celloutsig_1_11z[3:0] >>> celloutsig_1_11z[4:1];
  assign celloutsig_1_6z = celloutsig_1_3z ~^ in_data[115:108];
  assign celloutsig_1_9z = { celloutsig_1_4z[3], celloutsig_1_0z, celloutsig_1_1z } ~^ { celloutsig_1_3z[3:0], celloutsig_1_2z, celloutsig_1_0z };
  assign _02_[4:3] = { _00_, _01_ };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_20z, celloutsig_0_21z };
endmodule

/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire [23:0] _05_;
  wire [10:0] _06_;
  wire [3:0] _07_;
  wire [3:0] _08_;
  wire [3:0] _09_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [8:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire [10:0] celloutsig_0_24z;
  wire celloutsig_0_27z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [3:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [8:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [10:0] celloutsig_1_5z;
  wire [15:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_15z = ~((celloutsig_1_6z[4] | _01_) & (celloutsig_1_14z | celloutsig_1_0z[2]));
  assign celloutsig_0_8z = ~((celloutsig_0_3z | celloutsig_0_4z) & (celloutsig_0_0z | celloutsig_0_2z));
  assign celloutsig_0_22z = ~((celloutsig_0_8z | celloutsig_0_11z) & (celloutsig_0_8z | celloutsig_0_13z[5]));
  assign celloutsig_0_2z = ~((_00_ | celloutsig_0_0z) & (celloutsig_0_0z | celloutsig_0_0z));
  assign celloutsig_0_0z = in_data[66] | in_data[63];
  assign celloutsig_1_1z = celloutsig_1_0z[1] | celloutsig_1_0z[3];
  assign celloutsig_1_14z = celloutsig_1_5z[2] | celloutsig_1_1z;
  assign celloutsig_0_3z = in_data[74] | celloutsig_0_2z;
  assign celloutsig_0_4z = celloutsig_0_2z | in_data[42];
  assign celloutsig_0_14z = in_data[13] | celloutsig_0_3z;
  assign celloutsig_0_19z = celloutsig_0_14z | celloutsig_0_12z;
  assign celloutsig_0_20z = celloutsig_0_2z | _02_;
  assign celloutsig_0_12z = ~(_03_ ^ _04_);
  reg [23:0] _23_;
  always_ff @(negedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _23_ <= 24'h000000;
    else _23_ <= { celloutsig_1_3z[0], celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_6z };
  assign { _05_[23:7], _01_, _05_[5:0] } = _23_;
  reg [10:0] _24_;
  always_ff @(negedge clkin_data[0], negedge clkin_data[64])
    if (!clkin_data[64]) _24_ <= 11'h000;
    else _24_ <= { in_data[56:49], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_4z };
  assign { _02_, _06_[9:1], _04_ } = _24_;
  reg [3:0] _25_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[64])
    if (clkin_data[64]) _25_ <= 4'h0;
    else _25_ <= { _07_[3], celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_8z };
  assign { _03_, _08_[2:0] } = _25_;
  reg [3:0] _26_;
  always_ff @(posedge celloutsig_1_18z, posedge clkin_data[64])
    if (clkin_data[64]) _26_ <= 4'h0;
    else _26_ <= { in_data[78:76], celloutsig_0_0z };
  assign { _09_[3], _00_, _09_[1], _07_[3] } = _26_;
  reg [8:0] _27_;
  always_ff @(posedge celloutsig_1_18z, posedge clkin_data[64])
    if (clkin_data[64]) _27_ <= 9'h000;
    else _27_ <= { celloutsig_0_24z[7:2], celloutsig_0_19z, celloutsig_0_12z, celloutsig_0_22z };
  assign out_data[40:32] = _27_;
  assign celloutsig_1_4z = celloutsig_1_0z[2] & ~(celloutsig_1_3z[8]);
  assign celloutsig_0_7z = celloutsig_0_3z & ~(in_data[91]);
  assign celloutsig_1_18z = { in_data[176:166], celloutsig_1_1z } !== { _05_[22:13], celloutsig_1_15z, celloutsig_1_4z };
  assign celloutsig_1_19z = celloutsig_1_3z[2:0] !== { celloutsig_1_0z[1:0], celloutsig_1_13z };
  assign celloutsig_0_10z = { celloutsig_0_6z[2:1], _03_, _08_[2:0], celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_3z } !== { in_data[31:21], celloutsig_0_4z };
  assign celloutsig_0_11z = { _09_[3], _00_, _09_[1], _03_, _08_[2:0], _02_, _06_[9:1], _04_, celloutsig_0_6z, celloutsig_0_2z, _02_, _06_[9:1], _04_ } !== { in_data[93:91], _09_[3], _00_, _09_[1], _07_[3], _03_, _08_[2:0], celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_7z, _03_, _08_[2:0] };
  assign celloutsig_1_13z = ~^ { in_data[141:137], celloutsig_1_1z };
  assign celloutsig_1_7z = ~^ { celloutsig_1_6z[8:1], celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_0_18z = ~^ { celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_11z };
  assign celloutsig_0_27z = ~^ { celloutsig_0_13z[4], celloutsig_0_22z, celloutsig_0_18z, _09_[3], _00_, _09_[1], _07_[3], celloutsig_0_0z };
  assign celloutsig_1_5z = { in_data[172:168], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z } >> { celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_13z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_13z, celloutsig_1_13z, celloutsig_1_4z };
  assign celloutsig_1_6z = in_data[145:130] >> { celloutsig_1_5z, celloutsig_1_13z, celloutsig_1_0z };
  assign celloutsig_0_24z = { in_data[33:25], celloutsig_0_4z, celloutsig_0_14z } >> { in_data[30], celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_20z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_6z };
  assign celloutsig_0_6z = in_data[58:55] >>> in_data[15:12];
  assign celloutsig_0_13z = { _03_, _08_[2:0], celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_2z } >>> { _09_[3], _00_, _09_[1], _07_[3], _03_, _08_[2:0], celloutsig_0_7z };
  assign celloutsig_1_0z = in_data[121:118] >>> in_data[101:98];
  assign celloutsig_1_3z = in_data[119:111] ^ { in_data[174:170], celloutsig_1_0z };
  assign _05_[6] = _01_;
  assign { _06_[10], _06_[0] } = { _02_, _04_ };
  assign _07_[2:0] = { celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_8z };
  assign _08_[3] = _03_;
  assign { _09_[2], _09_[0] } = { _00_, _07_[3] };
  assign { out_data[128], out_data[96], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_27z };
endmodule

/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [25:0] _02_;
  wire [17:0] _03_;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [4:0] celloutsig_0_13z;
  wire [3:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [2:0] celloutsig_0_17z;
  wire [4:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [8:0] celloutsig_0_20z;
  wire [5:0] celloutsig_0_22z;
  wire [10:0] celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire [2:0] celloutsig_0_27z;
  wire celloutsig_0_2z;
  wire celloutsig_0_32z;
  wire celloutsig_0_3z;
  wire celloutsig_0_46z;
  wire [7:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [25:0] celloutsig_0_9z;
  wire [7:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [4:0] celloutsig_1_11z;
  wire celloutsig_1_14z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [2:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [7:0] celloutsig_1_4z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_3z = !(celloutsig_0_2z ? _00_ : celloutsig_0_1z);
  assign celloutsig_1_14z = !(celloutsig_1_2z ? celloutsig_1_1z : celloutsig_1_2z);
  assign celloutsig_1_17z = !(celloutsig_1_9z ? in_data[190] : celloutsig_1_9z);
  assign celloutsig_0_10z = !(celloutsig_0_3z ? celloutsig_0_8z : celloutsig_0_5z);
  assign celloutsig_0_11z = !(celloutsig_0_10z ? celloutsig_0_3z : celloutsig_0_8z);
  assign celloutsig_0_32z = !(celloutsig_0_22z[0] ? celloutsig_0_25z : celloutsig_0_23z[0]);
  assign celloutsig_0_46z = ~_01_;
  assign celloutsig_0_6z = ~celloutsig_0_4z;
  assign celloutsig_1_18z = ~celloutsig_1_14z;
  assign celloutsig_0_8z = ~in_data[33];
  assign celloutsig_0_2z = ~celloutsig_0_1z;
  assign celloutsig_1_1z = in_data[136] | ~(celloutsig_1_0z[4]);
  assign celloutsig_0_5z = celloutsig_0_4z | ~(celloutsig_0_1z);
  assign celloutsig_1_7z = celloutsig_1_2z | ~(in_data[191]);
  assign celloutsig_0_19z = celloutsig_0_4z | ~(celloutsig_0_15z);
  assign celloutsig_0_25z = celloutsig_0_18z[2] | ~(celloutsig_0_5z);
  assign celloutsig_0_9z = { in_data[24:7], celloutsig_0_5z, celloutsig_0_1z, _02_[5], _00_, _02_[3:1], celloutsig_0_3z } + { in_data[25:11], _02_[5], _00_, _02_[3:1], celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_6z };
  assign celloutsig_0_17z = { celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_6z } + { _00_, celloutsig_0_5z, celloutsig_0_7z };
  reg [4:0] _22_;
  always_ff @(negedge celloutsig_1_14z, posedge clkin_data[64])
    if (clkin_data[64]) _22_ <= 5'h00;
    else _22_ <= in_data[70:66];
  assign { _02_[5], _00_, _02_[3:1] } = _22_;
  reg [17:0] _23_;
  always_ff @(posedge celloutsig_1_14z, negedge clkin_data[64])
    if (!clkin_data[64]) _23_ <= 18'h00000;
    else _23_ <= { celloutsig_0_9z[25:14], celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_32z };
  assign { _03_[17:15], _01_, _03_[13:0] } = _23_;
  assign celloutsig_1_19z = { celloutsig_1_14z, celloutsig_1_17z, celloutsig_1_14z } / { 1'h1, celloutsig_1_11z[2], celloutsig_1_11z[3] };
  assign celloutsig_0_13z = { celloutsig_0_9z[20], celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_11z } / { 1'h1, in_data[33], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_22z = { celloutsig_0_14z[3:2], celloutsig_0_14z } / { 1'h1, celloutsig_0_13z };
  assign celloutsig_0_23z = { celloutsig_0_13z, celloutsig_0_11z, _02_[5], _00_, _02_[3:1] } / { 1'h1, celloutsig_0_14z[2:0], celloutsig_0_18z, celloutsig_0_2z, celloutsig_0_19z };
  assign celloutsig_0_27z = celloutsig_0_13z[2:0] / { 1'h1, celloutsig_0_18z[3:2] };
  assign celloutsig_0_50z = { celloutsig_0_46z, celloutsig_0_27z } == celloutsig_0_23z[10:7];
  assign celloutsig_1_2z = { celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z } == celloutsig_1_0z[3:1];
  assign celloutsig_1_3z = celloutsig_1_0z[7:3] == { celloutsig_1_0z[5:3], celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_9z = { celloutsig_1_0z[4], celloutsig_1_7z, celloutsig_1_0z } == { celloutsig_1_0z[6:2], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_7z = { celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_2z, _02_[5], _00_, _02_[3:1], celloutsig_0_6z, _02_[5], _00_, _02_[3:1], celloutsig_0_4z } == { _02_[5], _00_, _02_[3:1], celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_2z, _02_[5], _00_, _02_[3:1], celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_15z = { celloutsig_0_9z[11:9], celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_5z } == { _02_[5], _00_, _02_[3:1], celloutsig_0_7z };
  assign celloutsig_0_1z = in_data[85:74] == in_data[55:44];
  assign celloutsig_0_4z = { in_data[74:65], celloutsig_0_2z, celloutsig_0_1z } < { celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z, _02_[5], _00_, _02_[3:1], celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_1_6z = celloutsig_1_0z[4:2] < { celloutsig_1_4z[3], celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_1_10z = { in_data[113:110], celloutsig_1_1z } < { celloutsig_1_0z[1:0], celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_0_12z = { in_data[92:91], celloutsig_0_7z } < { celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_5z };
  assign celloutsig_0_20z = { celloutsig_0_18z[1:0], celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_14z, celloutsig_0_19z } % { 1'h1, celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_3z };
  assign celloutsig_0_49z = ~ { celloutsig_0_20z[8:6], celloutsig_0_10z, celloutsig_0_17z, celloutsig_0_32z };
  assign celloutsig_0_14z = ~ celloutsig_0_9z[23:20];
  assign celloutsig_1_0z = in_data[113:106] << in_data[185:178];
  assign celloutsig_0_18z = { celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_2z } << { celloutsig_0_14z, celloutsig_0_6z };
  assign { celloutsig_1_4z[5], celloutsig_1_4z[3], celloutsig_1_4z[0], celloutsig_1_4z[7:6] } = ~ { celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_1z, in_data[167:166] };
  assign { celloutsig_1_11z[2], celloutsig_1_11z[3], celloutsig_1_11z[0], celloutsig_1_11z[4] } = ~ { celloutsig_1_10z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_1z };
  assign { _02_[25:6], _02_[4], _02_[0] } = { in_data[24:7], celloutsig_0_5z, celloutsig_0_1z, _00_, celloutsig_0_3z };
  assign _03_[14] = _01_;
  assign celloutsig_1_11z[1] = celloutsig_1_11z[3];
  assign { celloutsig_1_4z[4], celloutsig_1_4z[2:1] } = { celloutsig_1_4z[5], celloutsig_1_4z[3], celloutsig_1_4z[5] };
  assign { out_data[128], out_data[98:96], out_data[39:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_49z, celloutsig_0_50z };
endmodule

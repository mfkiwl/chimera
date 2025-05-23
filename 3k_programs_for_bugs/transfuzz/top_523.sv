/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  reg [20:0] _02_;
  wire [9:0] _03_;
  wire [16:0] _04_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [12:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [4:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [2:0] celloutsig_0_23z;
  wire [22:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [2:0] celloutsig_0_26z;
  wire [30:0] celloutsig_0_28z;
  wire celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_39z;
  wire celloutsig_0_4z;
  wire celloutsig_0_56z;
  wire celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire [13:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [7:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [5:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [12:0] celloutsig_1_6z;
  wire [14:0] celloutsig_1_7z;
  wire [25:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_11z = celloutsig_0_8z ? celloutsig_0_6z : _00_;
  assign celloutsig_0_34z = ~(celloutsig_0_32z | celloutsig_0_19z);
  assign celloutsig_0_59z = ~(celloutsig_0_10z | celloutsig_0_56z);
  assign celloutsig_1_19z = ~(celloutsig_1_9z | celloutsig_1_12z);
  assign celloutsig_0_1z = ~(celloutsig_0_0z | celloutsig_0_0z);
  assign celloutsig_1_14z = ~((celloutsig_1_7z[0] | celloutsig_1_2z) & celloutsig_1_11z);
  assign celloutsig_0_12z = ~((celloutsig_0_4z | celloutsig_0_5z[11]) & celloutsig_0_6z);
  assign celloutsig_1_2z = in_data[155] | celloutsig_1_1z[3];
  assign celloutsig_1_18z = celloutsig_1_17z | _01_;
  assign celloutsig_0_10z = celloutsig_0_7z[2] | celloutsig_0_8z;
  reg [9:0] _15_;
  always_ff @(posedge celloutsig_1_18z, negedge clkin_data[32])
    if (!clkin_data[32]) _15_ <= 10'h000;
    else _15_ <= { in_data[32:24], celloutsig_0_0z };
  assign { _03_[9:8], _00_, _03_[6:0] } = _15_;
  reg [16:0] _16_;
  always_ff @(posedge clkin_data[0], posedge clkin_data[96])
    if (clkin_data[96]) _16_ <= 17'h00000;
    else _16_ <= in_data[181:165];
  assign { _04_[16:13], _01_, _04_[11:0] } = _16_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[64])
    if (!clkin_data[64]) _02_ <= 21'h000000;
    else _02_ <= { in_data[45:26], celloutsig_0_1z };
  assign celloutsig_0_5z = { _02_[18:12], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_4z } & { in_data[47:35], celloutsig_0_1z };
  assign celloutsig_0_58z = { celloutsig_0_14z[9:0], celloutsig_0_25z } == { in_data[86:79], celloutsig_0_13z, celloutsig_0_18z, celloutsig_0_15z };
  assign celloutsig_1_10z = _04_[4:2] == { _04_[9:8], celloutsig_1_2z };
  assign celloutsig_0_8z = { _00_, _03_[6:4] } == in_data[14:11];
  assign celloutsig_0_20z = { celloutsig_0_14z[5:1], celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_4z } == { in_data[19:17], celloutsig_0_17z, celloutsig_0_18z, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_10z };
  assign celloutsig_1_4z = _04_[6:3] === { celloutsig_1_1z[1:0], celloutsig_1_3z, celloutsig_1_2z };
  assign celloutsig_1_12z = celloutsig_1_6z[10:6] === celloutsig_1_6z[4:0];
  assign celloutsig_0_6z = _02_[9:1] === in_data[93:85];
  assign celloutsig_0_0z = in_data[80:77] && in_data[53:50];
  assign celloutsig_0_39z = { celloutsig_0_14z[2:0], celloutsig_0_19z, celloutsig_0_22z, celloutsig_0_22z, celloutsig_0_25z, celloutsig_0_1z, celloutsig_0_37z } && { celloutsig_0_14z[2:1], celloutsig_0_36z, celloutsig_0_12z, celloutsig_0_16z, celloutsig_0_18z, celloutsig_0_10z, celloutsig_0_15z, celloutsig_0_10z };
  assign celloutsig_1_9z = celloutsig_1_1z[4:2] && celloutsig_1_7z[2:0];
  assign celloutsig_1_11z = { _04_[15:13], _01_, _04_[11:9] } && celloutsig_1_8z[15:9];
  assign celloutsig_1_6z = { _04_[4:1], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_3z } % { 1'h1, _04_[5:1], celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_0_7z = { in_data[47:41], celloutsig_0_1z } % { 1'h1, _03_[6:1], celloutsig_0_0z };
  assign celloutsig_0_28z = { celloutsig_0_26z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_13z, celloutsig_0_4z, celloutsig_0_22z, celloutsig_0_4z } * { _03_[2:0], celloutsig_0_9z, celloutsig_0_24z[22:16], celloutsig_0_24z[22:17], celloutsig_0_24z[9:0], celloutsig_0_9z, celloutsig_0_19z, celloutsig_0_18z, celloutsig_0_22z };
  assign celloutsig_0_23z = celloutsig_0_17z[0] ? in_data[53:51] : { celloutsig_0_19z, celloutsig_0_6z, celloutsig_0_11z };
  assign celloutsig_0_32z = celloutsig_0_28z[30:28] != { celloutsig_0_20z, celloutsig_0_12z, celloutsig_0_15z };
  assign celloutsig_0_37z = { celloutsig_0_24z[4:1], celloutsig_0_19z, celloutsig_0_35z, celloutsig_0_25z, celloutsig_0_18z, celloutsig_0_36z, celloutsig_0_32z } !== { _00_, _03_[6:3], celloutsig_0_20z, celloutsig_0_13z, celloutsig_0_26z };
  assign celloutsig_1_8z = ~ { celloutsig_1_6z[12:3], celloutsig_1_7z, celloutsig_1_4z };
  assign celloutsig_0_17z = { _02_[19:16], celloutsig_0_12z } | { _03_[9:8], celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_26z = celloutsig_0_5z[11:9] | { celloutsig_0_17z[4], celloutsig_0_25z, celloutsig_0_9z };
  assign celloutsig_0_56z = & { celloutsig_0_39z, celloutsig_0_34z, celloutsig_0_19z, celloutsig_0_10z, in_data[47:44] };
  assign celloutsig_0_9z = & { celloutsig_0_8z, celloutsig_0_4z, _02_[4:3], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_15z = & _02_[16:11];
  assign celloutsig_0_16z = & { celloutsig_0_7z, _02_[16:11] };
  assign celloutsig_1_3z = in_data[135] & _04_[9];
  assign celloutsig_0_22z = celloutsig_0_6z & celloutsig_0_12z;
  assign celloutsig_0_35z = | _03_[6:1];
  assign celloutsig_1_5z = | _04_[6:4];
  assign celloutsig_0_21z = | { celloutsig_0_18z, celloutsig_0_12z, in_data[23:16] };
  assign celloutsig_1_17z = ^ { _04_[11:8], celloutsig_1_10z, celloutsig_1_14z, celloutsig_1_3z };
  assign celloutsig_0_13z = ^ { celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_11z };
  assign celloutsig_1_1z = in_data[184:179] <<< _04_[7:2];
  assign celloutsig_1_7z = { _04_[15:13], _01_, _04_[11:1] } <<< { in_data[163:162], celloutsig_1_6z };
  assign celloutsig_0_14z = { _02_[15:7], celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_8z } <<< in_data[64:52];
  assign celloutsig_0_36z = ~((celloutsig_0_21z & celloutsig_0_23z[2]) | celloutsig_0_24z[6]);
  assign celloutsig_0_4z = ~((in_data[13] & celloutsig_0_1z) | _03_[1]);
  assign celloutsig_0_18z = ~((celloutsig_0_4z & celloutsig_0_10z) | _03_[2]);
  assign celloutsig_0_19z = ~((celloutsig_0_10z & celloutsig_0_17z[2]) | celloutsig_0_18z);
  assign celloutsig_0_25z = ~((celloutsig_0_14z[8] & _03_[0]) | celloutsig_0_7z[4]);
  assign { celloutsig_0_24z[0], celloutsig_0_24z[1], celloutsig_0_24z[16], celloutsig_0_24z[22:17], celloutsig_0_24z[9:2] } = ~ { celloutsig_0_21z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_5z };
  assign _03_[7] = _00_;
  assign _04_[12] = _01_;
  assign celloutsig_0_24z[15:10] = celloutsig_0_24z[22:17];
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_58z, celloutsig_0_59z };
endmodule

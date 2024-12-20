/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [20:0] _00_;
  wire [5:0] celloutsig_0_0z;
  wire [18:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [6:0] celloutsig_0_13z;
  wire [7:0] celloutsig_0_14z;
  wire [5:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [5:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire celloutsig_0_27z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [8:0] celloutsig_0_3z;
  wire celloutsig_0_5z;
  wire [6:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_87z;
  wire [2:0] celloutsig_0_88z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [12:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [12:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_1z = ~(in_data[183] | in_data[135]);
  assign celloutsig_0_1z = ~(in_data[85] | celloutsig_0_0z[2]);
  assign celloutsig_0_31z = ~(celloutsig_0_23z | celloutsig_0_8z);
  assign celloutsig_1_2z = ~((celloutsig_1_1z | celloutsig_1_1z) & in_data[178]);
  assign celloutsig_1_8z = ~((celloutsig_1_7z | celloutsig_1_3z) & celloutsig_1_4z);
  assign celloutsig_0_7z = celloutsig_0_3z[2] | in_data[15];
  assign celloutsig_1_7z = in_data[180] | in_data[160];
  assign celloutsig_1_15z = celloutsig_1_8z | celloutsig_1_1z;
  assign celloutsig_0_12z = celloutsig_0_9z | celloutsig_0_10z[5];
  reg [3:0] _10_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _10_ <= 4'h0;
    else _10_ <= { celloutsig_0_0z[4:2], celloutsig_0_1z };
  assign _00_[3:0] = _10_;
  assign celloutsig_1_0z = in_data[182:177] <= in_data[114:109];
  assign celloutsig_0_17z = { celloutsig_0_10z[11], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_11z } <= { celloutsig_0_10z[15:2], celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_11z };
  assign celloutsig_0_27z = { celloutsig_0_13z[5:3], celloutsig_0_12z } && { _00_[3:2], celloutsig_0_11z, celloutsig_0_21z };
  assign celloutsig_0_87z = ! { celloutsig_0_3z[6], celloutsig_0_15z };
  assign celloutsig_1_3z = ! in_data[170:157];
  assign celloutsig_1_6z = ! { celloutsig_1_5z[11:5], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_9z = ! { celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_11z = ! in_data[186:179];
  assign celloutsig_1_16z = ! { celloutsig_1_12z, celloutsig_1_14z, celloutsig_1_15z, celloutsig_1_12z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_11z, celloutsig_1_15z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_13z, celloutsig_1_12z };
  assign celloutsig_0_11z = ! { celloutsig_0_10z[11:4], _00_[3:0] };
  assign celloutsig_0_21z = ! { celloutsig_0_19z[5:2], _00_[3:0] };
  assign celloutsig_0_23z = ! { celloutsig_0_0z[1:0], celloutsig_0_20z };
  assign celloutsig_1_17z = { celloutsig_1_5z[7:4], celloutsig_1_16z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_11z, celloutsig_1_1z, celloutsig_1_13z, celloutsig_1_3z, celloutsig_1_15z, celloutsig_1_0z } % { 1'h1, celloutsig_1_15z, celloutsig_1_11z, celloutsig_1_15z, celloutsig_1_12z, celloutsig_1_7z, celloutsig_1_14z, celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_11z };
  assign celloutsig_0_8z = in_data[18:16] != celloutsig_0_3z[6:4];
  assign celloutsig_0_9z = celloutsig_0_3z[5:2] != _00_[3:0];
  assign celloutsig_1_13z = { celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_11z } != { in_data[156], celloutsig_1_8z, celloutsig_1_3z };
  assign celloutsig_0_16z = { celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_12z } != { celloutsig_0_9z, celloutsig_0_14z };
  assign celloutsig_0_32z = { celloutsig_0_0z[4:2], celloutsig_0_18z } != { celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_31z, celloutsig_0_7z };
  assign celloutsig_0_3z = - in_data[95:87];
  assign celloutsig_0_13z = - { celloutsig_0_0z, celloutsig_0_12z };
  assign celloutsig_0_5z = _00_[3:0] !== celloutsig_0_0z[5:2];
  assign celloutsig_1_12z = { celloutsig_1_5z[4:1], celloutsig_1_2z } !== in_data[112:108];
  assign celloutsig_0_88z = ~ { celloutsig_0_32z, celloutsig_0_27z, celloutsig_0_8z };
  assign celloutsig_1_5z = ~ in_data[145:133];
  assign celloutsig_0_0z = in_data[55:50] | in_data[24:19];
  assign celloutsig_0_6z = { celloutsig_0_3z[2:1], _00_[3:0], celloutsig_0_1z } | { celloutsig_0_3z[5:0], celloutsig_0_1z };
  assign celloutsig_1_14z = ^ { celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_4z };
  assign celloutsig_1_18z = ^ { in_data[172:168], celloutsig_1_9z, celloutsig_1_1z };
  assign celloutsig_0_18z = ^ { celloutsig_0_10z[17:4], celloutsig_0_16z, _00_[3:0], celloutsig_0_17z, celloutsig_0_15z, celloutsig_0_1z };
  assign celloutsig_0_20z = ^ celloutsig_0_6z[5:0];
  assign celloutsig_0_10z = { celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_3z } >> { in_data[32:26], celloutsig_0_7z, _00_[3:0], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_15z = { celloutsig_0_14z[7:5], celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_11z } >> { celloutsig_0_3z[7:3], celloutsig_0_7z };
  assign celloutsig_0_14z = { celloutsig_0_13z[5:0], celloutsig_0_1z, celloutsig_0_12z } - { celloutsig_0_6z[6:1], celloutsig_0_11z, celloutsig_0_1z };
  assign celloutsig_0_19z = celloutsig_0_3z[8:3] - { celloutsig_0_3z[6:2], celloutsig_0_17z };
  assign celloutsig_1_19z = celloutsig_1_17z[12:9] ~^ { celloutsig_1_17z[11:9], celloutsig_1_14z };
  assign celloutsig_1_4z = ~((celloutsig_1_1z & celloutsig_1_3z) | celloutsig_1_3z);
  assign _00_[20:4] = { celloutsig_0_10z[15:0], celloutsig_0_32z };
  assign { out_data[128], out_data[99:96], out_data[32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_87z, celloutsig_0_88z };
endmodule

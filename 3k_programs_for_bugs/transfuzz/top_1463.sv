/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [3:0] _00_;
  wire [10:0] celloutsig_0_0z;
  wire [3:0] celloutsig_0_10z;
  wire [2:0] celloutsig_0_11z;
  wire [8:0] celloutsig_0_1z;
  wire celloutsig_0_3z;
  wire [5:0] celloutsig_0_5z;
  wire [27:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [2:0] celloutsig_1_11z;
  wire [5:0] celloutsig_1_13z;
  wire [3:0] celloutsig_1_18z;
  wire [29:0] celloutsig_1_19z;
  wire [5:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
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
  assign celloutsig_0_3z = ~celloutsig_0_1z[3];
  assign celloutsig_1_6z = celloutsig_1_4z[1] | ~(celloutsig_1_5z);
  assign celloutsig_1_8z = celloutsig_1_5z | ~(celloutsig_1_4z[1]);
  assign celloutsig_1_9z = celloutsig_1_4z[0] | ~(celloutsig_1_7z);
  assign celloutsig_1_10z = celloutsig_1_9z | ~(celloutsig_1_2z);
  assign celloutsig_1_0z = in_data[130:103] + in_data[190:163];
  always_ff @(negedge celloutsig_1_18z[0], negedge clkin_data[0])
    if (!clkin_data[0]) _00_ <= 4'h0;
    else _00_ <= celloutsig_0_5z[5:2];
  assign celloutsig_1_5z = { celloutsig_1_0z[15:14], celloutsig_1_4z } <= in_data[169:164];
  assign celloutsig_1_7z = { in_data[159:158], celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_5z } <= { celloutsig_1_1z[4:0], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_1_3z = ! { celloutsig_1_0z[23:16], celloutsig_1_2z };
  assign celloutsig_0_10z = in_data[16:13] * in_data[43:40];
  assign celloutsig_1_1z = in_data[177:172] * in_data[130:125];
  assign celloutsig_0_5z = ~ { in_data[16:12], celloutsig_0_3z };
  assign celloutsig_0_0z = in_data[34:24] | in_data[37:27];
  assign celloutsig_1_2z = | in_data[118:116];
  assign celloutsig_0_1z = in_data[74:66] << celloutsig_0_0z[10:2];
  assign celloutsig_1_19z = { in_data[124:98], celloutsig_1_11z[2], celloutsig_1_11z[2], celloutsig_1_11z[0] } << { celloutsig_1_0z[27:11], celloutsig_1_1z, celloutsig_1_11z[2], celloutsig_1_11z[2], celloutsig_1_11z[0], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_10z };
  assign celloutsig_0_11z = celloutsig_0_1z[8:6] - _00_[3:1];
  assign celloutsig_1_4z = { celloutsig_1_0z[5:3], celloutsig_1_3z } - { in_data[153:151], celloutsig_1_3z };
  assign celloutsig_1_13z = { celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_7z } - { celloutsig_1_1z[0], celloutsig_1_4z, celloutsig_1_8z };
  assign celloutsig_1_18z = celloutsig_1_13z[5:2] - celloutsig_1_1z[3:0];
  assign { celloutsig_1_11z[0], celloutsig_1_11z[2] } = ~ { celloutsig_1_8z, celloutsig_1_6z };
  assign celloutsig_1_11z[1] = celloutsig_1_11z[2];
  assign { out_data[131:128], out_data[125:96], out_data[35:32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_10z, celloutsig_0_11z };
endmodule

/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  reg [6:0] celloutsig_0_1z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [3:0] celloutsig_0_2z;
  reg [2:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [4:0] celloutsig_0_8z;
  wire [9:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [8:0] celloutsig_1_16z;
  wire [3:0] celloutsig_1_17z;
  wire [3:0] celloutsig_1_18z;
  wire [6:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [4:0] celloutsig_1_5z;
  wire [13:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_9z = !(celloutsig_1_2z ? celloutsig_1_1z : celloutsig_1_2z);
  assign celloutsig_0_14z = !(in_data[39] ? in_data[12] : celloutsig_0_13z);
  assign celloutsig_0_29z = !(in_data[91] ? in_data[59] : celloutsig_0_5z);
  assign celloutsig_1_12z = ~((celloutsig_1_0z | celloutsig_1_3z) & celloutsig_1_9z);
  assign celloutsig_1_13z = ~((celloutsig_1_12z | celloutsig_1_2z) & celloutsig_1_7z);
  assign celloutsig_0_5z = ~((celloutsig_0_1z[0] | celloutsig_0_3z[0]) & celloutsig_0_4z);
  assign celloutsig_0_7z = ~((celloutsig_0_6z | celloutsig_0_4z) & celloutsig_0_4z);
  assign celloutsig_0_11z = ~((in_data[56] | celloutsig_0_6z) & celloutsig_0_1z[0]);
  assign celloutsig_1_1z = ~((in_data[151] | celloutsig_1_0z) & celloutsig_1_0z);
  assign celloutsig_1_4z = ~((in_data[157] | in_data[155]) & celloutsig_1_1z);
  assign celloutsig_1_8z = { in_data[148:135], celloutsig_1_0z, celloutsig_1_4z } <= { celloutsig_1_6z[13:5], celloutsig_1_6z[10:6], celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_1_10z = { celloutsig_1_6z[7:6], celloutsig_1_2z, celloutsig_1_0z } <= { celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_9z, celloutsig_1_3z };
  assign celloutsig_1_14z = { in_data[147:145], celloutsig_1_0z } <= celloutsig_1_6z[10:7];
  assign celloutsig_0_6z = celloutsig_0_1z[4:0] <= { celloutsig_0_5z, celloutsig_0_2z };
  assign celloutsig_0_13z = { celloutsig_0_9z[9:8], celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_2z } <= { celloutsig_0_8z[2], celloutsig_0_8z[0], celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_5z };
  assign celloutsig_1_2z = { in_data[184:179], celloutsig_1_0z } <= in_data[108:102];
  assign celloutsig_1_5z = ~ in_data[142:138];
  assign celloutsig_1_16z = ~ { celloutsig_1_6z[7:5], celloutsig_1_6z[10:8], celloutsig_1_13z, celloutsig_1_0z, celloutsig_1_9z };
  assign celloutsig_1_17z = ~ { in_data[146], celloutsig_1_0z, celloutsig_1_14z, celloutsig_1_10z };
  assign celloutsig_1_18z = ~ celloutsig_1_17z;
  assign celloutsig_1_19z = ~ celloutsig_1_16z[6:0];
  assign celloutsig_0_2z = ~ in_data[16:13];
  assign celloutsig_0_0z = ~^ in_data[92:86];
  assign celloutsig_1_7z = ~^ celloutsig_1_6z[13:11];
  assign celloutsig_0_4z = ~^ { celloutsig_0_1z[5:4], celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_10z = ~^ { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_12z = ~^ { celloutsig_0_3z[1:0], celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_3z };
  assign celloutsig_0_28z = ~^ { celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_14z };
  assign celloutsig_1_0z = ~^ in_data[186:177];
  assign celloutsig_1_3z = ~^ in_data[156:145];
  always_latch
    if (celloutsig_1_18z[0]) celloutsig_0_1z = 7'h00;
    else if (!clkin_data[0]) celloutsig_0_1z = { in_data[85:80], celloutsig_0_0z };
  always_latch
    if (celloutsig_1_18z[0]) celloutsig_0_3z = 3'h0;
    else if (!clkin_data[0]) celloutsig_0_3z = in_data[56:54];
  assign { celloutsig_0_8z[0], celloutsig_0_8z[4:2] } = ~ { celloutsig_0_6z, in_data[37:36], celloutsig_0_0z };
  assign { celloutsig_0_9z[1], celloutsig_0_9z[7:5], celloutsig_0_9z[9:8] } = ~ { celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_1z[5:4] };
  assign { celloutsig_1_6z[10:6], celloutsig_1_6z[11], celloutsig_1_6z[5], celloutsig_1_6z[13:12] } = ~ { celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_0z, in_data[191:190] };
  assign celloutsig_0_8z[1] = celloutsig_0_8z[2];
  assign { celloutsig_0_9z[4:2], celloutsig_0_9z[0] } = { celloutsig_0_9z[7:5], celloutsig_0_9z[1] };
  assign celloutsig_1_6z[4:0] = celloutsig_1_6z[10:6];
  assign { out_data[131:128], out_data[102:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_28z, celloutsig_0_29z };
endmodule

/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [8:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  reg [18:0] celloutsig_0_12z;
  wire [2:0] celloutsig_0_13z;
  wire [2:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_1z;
  wire [17:0] celloutsig_0_2z;
  wire [5:0] celloutsig_0_3z;
  wire [8:0] celloutsig_0_4z;
  wire [6:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire [17:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [20:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [2:0] celloutsig_1_4z;
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
  assign celloutsig_1_18z = ~(celloutsig_1_11z & celloutsig_1_9z);
  assign celloutsig_1_11z = !(celloutsig_1_4z[2] ? celloutsig_1_3z : celloutsig_1_3z);
  assign celloutsig_1_13z = !(celloutsig_1_11z ? celloutsig_1_7z : celloutsig_1_0z);
  assign celloutsig_0_10z = { celloutsig_0_4z[0], celloutsig_0_5z, celloutsig_0_9z } + { celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_7z };
  assign celloutsig_0_16z = { celloutsig_0_13z[1:0], celloutsig_0_7z } & celloutsig_0_4z[6:4];
  assign celloutsig_1_4z = in_data[138:136] & { celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_0_4z = celloutsig_0_2z[11:3] / { 1'h1, celloutsig_0_2z[10:4], in_data[0] };
  assign celloutsig_0_11z = { celloutsig_0_10z[6:1], celloutsig_0_9z } === { celloutsig_0_10z[7:2], celloutsig_0_1z };
  assign celloutsig_0_6z = celloutsig_0_3z >= celloutsig_0_4z[8:3];
  assign celloutsig_1_1z = { in_data[127:124], celloutsig_1_0z } >= { in_data[144:141], celloutsig_1_0z };
  assign celloutsig_1_7z = { in_data[147:146], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z } >= { in_data[185:167], celloutsig_1_5z };
  assign celloutsig_0_1z = in_data[4:0] > { in_data[30:28], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_8z = { in_data[169:161], celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_6z } > { in_data[129:119], celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_6z };
  assign celloutsig_0_0z = in_data[35:25] && in_data[54:44];
  assign celloutsig_1_5z = { in_data[190:164], celloutsig_1_2z, celloutsig_1_0z } && in_data[135:107];
  assign celloutsig_1_17z = { celloutsig_1_12z[7], celloutsig_1_15z, celloutsig_1_7z, celloutsig_1_6z } && { celloutsig_1_9z, celloutsig_1_6z, celloutsig_1_13z, celloutsig_1_8z };
  assign celloutsig_1_6z = ! { celloutsig_1_4z, celloutsig_1_5z };
  assign celloutsig_0_17z = celloutsig_0_12z[11:1] < { celloutsig_0_2z[15:14], celloutsig_0_11z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_11z };
  assign celloutsig_1_2z = { in_data[169:154], celloutsig_1_1z } < in_data[152:136];
  assign celloutsig_0_5z = { in_data[88:83], celloutsig_0_0z } % { 1'h1, celloutsig_0_2z[10:5] };
  assign celloutsig_0_13z = { celloutsig_0_12z[11:10], celloutsig_0_0z } % { 1'h1, celloutsig_0_4z[5:4] };
  assign celloutsig_0_2z = ~ in_data[72:55];
  assign celloutsig_0_9z = & { celloutsig_0_8z, celloutsig_0_4z[6:0], celloutsig_0_1z };
  assign celloutsig_1_0z = & in_data[115:110];
  assign celloutsig_1_3z = & in_data[161:143];
  assign celloutsig_0_8z = ~^ { celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_5z };
  assign celloutsig_1_15z = ~^ { celloutsig_1_12z[12:9], celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_4z };
  assign celloutsig_0_7z = ^ { celloutsig_0_4z[5:2], celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_4z };
  assign celloutsig_1_9z = ^ { in_data[126:123], celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_2z };
  assign celloutsig_1_19z = { in_data[172:153], celloutsig_1_18z } >>> { in_data[129:112], celloutsig_1_3z, celloutsig_1_17z, celloutsig_1_7z };
  assign celloutsig_1_12z = in_data[173:156] - { celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_11z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_4z };
  assign celloutsig_0_3z = { celloutsig_0_2z[7:3], celloutsig_0_1z } - { celloutsig_0_2z[9:7], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z };
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_12z = 19'h00000;
    else if (clkin_data[0]) celloutsig_0_12z = { in_data[28:21], celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_8z };
  assign { out_data[128], out_data[116:96], out_data[34:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_16z, celloutsig_0_17z };
endmodule

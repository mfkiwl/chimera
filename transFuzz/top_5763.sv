/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [13:0] celloutsig_0_0z;
  wire [4:0] celloutsig_0_10z;
  wire [3:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  reg [13:0] celloutsig_0_13z;
  wire [3:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [22:0] celloutsig_0_19z;
  wire [7:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [5:0] celloutsig_0_21z;
  wire [13:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [8:0] celloutsig_0_24z;
  reg [2:0] celloutsig_0_25z;
  wire [3:0] celloutsig_0_2z;
  wire [8:0] celloutsig_0_32z;
  wire [23:0] celloutsig_0_33z;
  wire [10:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [10:0] celloutsig_0_4z;
  wire celloutsig_0_55z;
  wire [8:0] celloutsig_0_56z;
  wire celloutsig_0_5z;
  wire [11:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [5:0] celloutsig_0_8z;
  wire [27:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [3:0] celloutsig_1_12z;
  wire [17:0] celloutsig_1_15z;
  wire [8:0] celloutsig_1_18z;
  wire [9:0] celloutsig_1_19z;
  wire [22:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire [5:0] celloutsig_1_5z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_40z = { celloutsig_0_19z[12:6], celloutsig_0_32z } && { celloutsig_0_8z[4:0], celloutsig_0_3z };
  assign celloutsig_0_41z = { celloutsig_0_32z[8:3], celloutsig_0_22z } && { celloutsig_0_33z[19:4], celloutsig_0_23z, celloutsig_0_25z };
  assign celloutsig_0_55z = { celloutsig_0_6z[5:2], celloutsig_0_41z, celloutsig_0_24z } && { celloutsig_0_13z[12:0], celloutsig_0_12z };
  assign celloutsig_1_0z = in_data[135:118] && in_data[177:160];
  assign celloutsig_0_5z = { celloutsig_0_1z[5:1], celloutsig_0_4z } && in_data[30:15];
  assign celloutsig_1_2z = { celloutsig_1_1z[6:0], celloutsig_1_0z } && { celloutsig_1_1z[21:16], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_7z = celloutsig_0_4z[8:2] && { in_data[52:50], celloutsig_0_2z };
  assign celloutsig_0_12z = { in_data[38:23], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_4z } && { celloutsig_0_6z[8:1], celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_10z };
  assign celloutsig_0_15z = celloutsig_0_9z[14:11] && in_data[71:68];
  assign celloutsig_0_16z = celloutsig_0_13z[8:3] && { celloutsig_0_6z[5:1], celloutsig_0_15z };
  assign celloutsig_0_20z = { in_data[33:21], celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_1z } && { celloutsig_0_13z[9:4], celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_16z };
  assign celloutsig_0_23z = { in_data[95:81], celloutsig_0_20z } && { celloutsig_0_14z, celloutsig_0_4z, celloutsig_0_20z };
  assign celloutsig_0_56z = - { celloutsig_0_3z[9:2], celloutsig_0_40z };
  assign celloutsig_1_5z = - { celloutsig_1_3z[4:3], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_12z = - in_data[99:96];
  assign celloutsig_1_15z = - in_data[181:164];
  assign celloutsig_0_9z = - in_data[47:20];
  assign celloutsig_0_10z = - celloutsig_0_9z[23:19];
  assign celloutsig_0_19z = - { celloutsig_0_6z[7:4], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_7z };
  assign celloutsig_0_22z = - { in_data[56], celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_21z };
  assign celloutsig_0_32z = - { celloutsig_0_19z[9:2], celloutsig_0_23z };
  assign celloutsig_0_33z = - { celloutsig_0_8z[5], celloutsig_0_19z };
  assign celloutsig_0_3z = { in_data[93:91], celloutsig_0_1z } <<< celloutsig_0_0z[10:0];
  assign celloutsig_0_4z = in_data[41:31] <<< celloutsig_0_3z;
  assign celloutsig_1_3z = { in_data[141:139], celloutsig_1_2z, celloutsig_1_2z } <<< { celloutsig_1_1z[11:8], celloutsig_1_0z };
  assign celloutsig_0_11z = celloutsig_0_4z[10:7] <<< { celloutsig_0_8z[5:3], celloutsig_0_5z };
  assign celloutsig_0_14z = celloutsig_0_3z[7:4] <<< celloutsig_0_10z[4:1];
  assign celloutsig_0_1z = in_data[11:4] <<< celloutsig_0_0z[13:6];
  assign celloutsig_0_21z = celloutsig_0_1z[6:1] <<< { celloutsig_0_3z[1:0], celloutsig_0_11z };
  assign celloutsig_0_2z = in_data[64:61] <<< in_data[16:13];
  assign celloutsig_1_1z = in_data[162:140] ~^ in_data[140:118];
  assign celloutsig_0_6z = { celloutsig_0_4z, celloutsig_0_5z } ~^ { celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_1_18z = celloutsig_1_15z[17:9] ~^ celloutsig_1_15z[10:2];
  assign celloutsig_1_19z = { celloutsig_1_5z[0], celloutsig_1_18z } ~^ { in_data[144:139], celloutsig_1_12z };
  assign celloutsig_0_8z = celloutsig_0_3z[10:5] ~^ { celloutsig_0_0z[11:7], celloutsig_0_5z };
  assign celloutsig_0_24z = { celloutsig_0_6z[11:9], celloutsig_0_21z } ~^ { celloutsig_0_13z[6], celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_20z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_0z = 14'h0000;
    else if (clkin_data[0]) celloutsig_0_0z = in_data[72:59];
  always_latch
    if (celloutsig_1_19z[0]) celloutsig_0_13z = 14'h0000;
    else if (clkin_data[32]) celloutsig_0_13z = celloutsig_0_9z[18:5];
  always_latch
    if (celloutsig_1_19z[0]) celloutsig_0_25z = 3'h0;
    else if (clkin_data[0]) celloutsig_0_25z = { celloutsig_0_3z[1:0], celloutsig_0_20z };
  assign { out_data[136:128], out_data[105:96], out_data[32], out_data[8:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_55z, celloutsig_0_56z };
endmodule

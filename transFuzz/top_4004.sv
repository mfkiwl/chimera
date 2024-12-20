/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [5:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [9:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [10:0] celloutsig_0_15z;
  wire [22:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [3:0] celloutsig_0_19z;
  reg [5:0] celloutsig_0_1z;
  reg [11:0] celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [6:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_28z;
  wire [8:0] celloutsig_0_29z;
  wire [4:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [15:0] celloutsig_0_31z;
  wire [10:0] celloutsig_0_32z;
  wire [11:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [12:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [2:0] celloutsig_0_44z;
  reg [3:0] celloutsig_0_46z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  reg [4:0] celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire [7:0] celloutsig_0_53z;
  wire [2:0] celloutsig_0_5z;
  wire [2:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire [11:0] celloutsig_1_13z;
  reg [7:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [17:0] celloutsig_1_1z;
  wire [5:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [6:0] celloutsig_1_5z;
  wire [5:0] celloutsig_1_6z;
  wire [2:0] celloutsig_1_7z;
  reg [8:0] celloutsig_1_8z;
  wire [22:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = in_data[43:24] > in_data[32:13];
  assign celloutsig_0_40z = celloutsig_0_1z[4:0] > { celloutsig_0_13z[5:2], celloutsig_0_23z };
  assign celloutsig_0_4z = { celloutsig_0_3z[10:8], celloutsig_0_0z } > celloutsig_0_2z[3:0];
  assign celloutsig_0_51z = { celloutsig_0_20z[2:0], celloutsig_0_1z } > celloutsig_0_13z[8:0];
  assign celloutsig_1_11z = { celloutsig_1_5z[6], celloutsig_1_6z } > celloutsig_1_9z[7:1];
  assign celloutsig_0_7z = { celloutsig_0_3z[12:1], celloutsig_0_1z } > { celloutsig_0_3z[6:0], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_8z = celloutsig_0_3z[11:2] > { celloutsig_0_2z[4:2], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_2z };
  assign celloutsig_0_9z = celloutsig_0_3z[8:2] > { celloutsig_0_1z[2], celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_8z };
  assign celloutsig_0_25z = { in_data[41:38], celloutsig_0_10z, celloutsig_0_4z } > { celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_5z };
  assign celloutsig_0_26z = in_data[33:23] > { celloutsig_0_20z[11:8], celloutsig_0_17z, celloutsig_0_1z };
  assign celloutsig_0_28z = { celloutsig_0_20z[7:4], celloutsig_0_4z, celloutsig_0_20z, celloutsig_0_26z, celloutsig_0_9z } > { celloutsig_0_3z[9:1], celloutsig_0_23z, celloutsig_0_1z, celloutsig_0_21z };
  assign celloutsig_0_34z = { celloutsig_0_18z, celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_25z, celloutsig_0_26z, celloutsig_0_32z, celloutsig_0_0z } > { celloutsig_0_31z, celloutsig_0_23z };
  assign celloutsig_0_35z = { celloutsig_0_11z[0], celloutsig_0_29z, celloutsig_0_33z } && { celloutsig_0_15z[8:2], celloutsig_0_20z, celloutsig_0_34z, celloutsig_0_7z, celloutsig_0_26z };
  assign celloutsig_0_49z = { celloutsig_0_12z, celloutsig_0_34z, celloutsig_0_40z, celloutsig_0_14z } && celloutsig_0_20z[7:4];
  assign celloutsig_0_52z = { in_data[46:32], celloutsig_0_2z, celloutsig_0_49z, celloutsig_0_44z, celloutsig_0_51z, celloutsig_0_49z, celloutsig_0_50z, celloutsig_0_28z, celloutsig_0_4z } && in_data[86:54];
  assign celloutsig_1_0z = in_data[151:148] && in_data[103:100];
  assign celloutsig_1_3z = in_data[171:134] && in_data[190:153];
  assign celloutsig_1_4z = celloutsig_1_1z[15:2] && celloutsig_1_1z[17:4];
  assign celloutsig_1_19z = celloutsig_1_6z[5:2] && celloutsig_1_9z[10:7];
  assign celloutsig_0_10z = { celloutsig_0_3z[1:0], celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_1z } && { celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_12z = celloutsig_0_1z[4:0] && { celloutsig_0_11z[2:0], celloutsig_0_8z, celloutsig_0_8z };
  assign celloutsig_0_14z = { celloutsig_0_3z[10:5], celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_0z } && in_data[81:59];
  assign celloutsig_0_17z = { celloutsig_0_11z[2:0], celloutsig_0_1z, celloutsig_0_8z } && celloutsig_0_3z[10:1];
  assign celloutsig_0_18z = { celloutsig_0_5z, celloutsig_0_14z, celloutsig_0_7z } && celloutsig_0_15z[7:3];
  assign celloutsig_0_22z = { celloutsig_0_3z[8:6], celloutsig_0_4z } && celloutsig_0_2z[4:1];
  assign celloutsig_0_23z = { celloutsig_0_19z, celloutsig_0_19z } && { in_data[10:9], celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_30z = { celloutsig_0_29z[4:3], celloutsig_0_12z, celloutsig_0_23z, celloutsig_0_5z } && { celloutsig_0_11z[4:0], celloutsig_0_8z, celloutsig_0_0z };
  assign celloutsig_0_3z = { in_data[18:17], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z } * in_data[63:51];
  assign celloutsig_0_44z = celloutsig_0_20z[5:3] * celloutsig_0_16z[15:13];
  assign celloutsig_0_53z = { celloutsig_0_24z[5:4], celloutsig_0_35z, celloutsig_0_46z, celloutsig_0_25z } * { celloutsig_0_3z[8:3], celloutsig_0_26z, celloutsig_0_34z };
  assign celloutsig_0_5z = celloutsig_0_1z[3:1] * in_data[21:19];
  assign celloutsig_1_5z = { in_data[121:118], celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_3z } * in_data[191:185];
  assign celloutsig_1_9z = in_data[136:114] * { celloutsig_1_5z[3], celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_6z };
  assign celloutsig_1_13z = { celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_11z, celloutsig_1_5z } * { celloutsig_1_9z[17:9], celloutsig_1_7z };
  assign celloutsig_0_11z = { celloutsig_0_3z[8:4], celloutsig_0_7z } * { celloutsig_0_1z[1:0], celloutsig_0_7z, celloutsig_0_5z };
  assign celloutsig_0_15z = { in_data[53:47], celloutsig_0_5z, celloutsig_0_4z } * { celloutsig_0_5z[0], celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_16z = { in_data[55:47], celloutsig_0_9z, celloutsig_0_3z } * { in_data[32:12], celloutsig_0_7z, celloutsig_0_9z };
  assign celloutsig_0_21z = { celloutsig_0_10z, celloutsig_0_17z, celloutsig_0_4z } * { celloutsig_0_6z[1], celloutsig_0_17z, celloutsig_0_4z };
  assign celloutsig_0_24z = { celloutsig_0_4z, celloutsig_0_11z } * celloutsig_0_13z[9:3];
  assign celloutsig_0_2z = { celloutsig_0_1z[3:2], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z } * celloutsig_0_1z[4:0];
  assign celloutsig_0_32z = { celloutsig_0_3z[11:6], celloutsig_0_30z, celloutsig_0_10z, celloutsig_0_5z } * { celloutsig_0_17z, celloutsig_0_13z };
  assign celloutsig_1_1z = - in_data[184:167];
  assign celloutsig_1_2z = - in_data[130:125];
  assign celloutsig_1_6z = - celloutsig_1_1z[11:6];
  assign celloutsig_1_7z = - celloutsig_1_1z[6:4];
  assign celloutsig_0_6z = - celloutsig_0_1z[5:3];
  assign celloutsig_0_13z = - celloutsig_0_3z[10:1];
  assign celloutsig_0_19z = - { celloutsig_0_16z[20:18], celloutsig_0_4z };
  assign celloutsig_0_29z = - { celloutsig_0_6z[0], celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_0z };
  assign celloutsig_0_31z = - { celloutsig_0_24z[2:1], celloutsig_0_22z, celloutsig_0_10z, celloutsig_0_25z, celloutsig_0_15z };
  assign celloutsig_0_33z = - { celloutsig_0_20z[11:2], celloutsig_0_18z, celloutsig_0_28z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_46z = 4'h0;
    else if (!celloutsig_1_19z) celloutsig_0_46z = celloutsig_0_29z[6:3];
  always_latch
    if (clkin_data[32]) celloutsig_0_50z = 5'h00;
    else if (!celloutsig_1_19z) celloutsig_0_50z = celloutsig_0_3z[11:7];
  always_latch
    if (clkin_data[64]) celloutsig_1_8z = 9'h000;
    else if (clkin_data[0]) celloutsig_1_8z = { celloutsig_1_1z[12:10], celloutsig_1_6z };
  always_latch
    if (clkin_data[64]) celloutsig_1_18z = 8'h00;
    else if (!clkin_data[0]) celloutsig_1_18z = celloutsig_1_13z[10:3];
  always_latch
    if (!clkin_data[32]) celloutsig_0_1z = 6'h00;
    else if (celloutsig_1_19z) celloutsig_0_1z = { in_data[5:1], celloutsig_0_0z };
  always_latch
    if (clkin_data[32]) celloutsig_0_20z = 12'h000;
    else if (celloutsig_1_19z) celloutsig_0_20z = { celloutsig_0_3z[10:0], celloutsig_0_17z };
  assign { out_data[135:128], out_data[96], out_data[32], out_data[7:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_52z, celloutsig_0_53z };
endmodule

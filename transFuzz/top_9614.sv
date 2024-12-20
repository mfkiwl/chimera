/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  reg [8:0] celloutsig_0_10z;
  wire [5:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [20:0] celloutsig_0_15z;
  reg [4:0] celloutsig_0_16z;
  wire [9:0] celloutsig_0_17z;
  wire celloutsig_0_19z;
  reg [3:0] celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire [4:0] celloutsig_0_26z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [4:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_35z;
  wire [5:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [3:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  reg [19:0] celloutsig_0_9z;
  wire [8:0] celloutsig_1_0z;
  wire [2:0] celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire [16:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [3:0] celloutsig_1_2z;
  reg [2:0] celloutsig_1_3z;
  wire [15:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = ~(in_data[61] & in_data[1]);
  assign celloutsig_1_1z = ~(in_data[149] & celloutsig_1_0z[0]);
  assign celloutsig_1_8z = ~(celloutsig_1_2z[3] & celloutsig_1_2z[0]);
  assign celloutsig_1_12z = ~(celloutsig_1_4z[3] & in_data[160]);
  assign celloutsig_1_19z = ~(celloutsig_1_7z & in_data[147]);
  assign celloutsig_0_6z = ~(celloutsig_0_3z[2] & celloutsig_0_4z);
  assign celloutsig_0_8z = ~(celloutsig_0_5z & celloutsig_0_5z);
  assign celloutsig_0_13z = ~(celloutsig_0_12z & celloutsig_0_9z[6]);
  assign celloutsig_0_14z = ~(celloutsig_0_11z[5] & in_data[74]);
  assign celloutsig_0_23z = ~(celloutsig_0_8z & in_data[17]);
  assign celloutsig_0_2z = ~(celloutsig_0_1z[0] & celloutsig_0_1z[0]);
  assign celloutsig_0_30z = ~(celloutsig_0_13z & celloutsig_0_6z);
  assign celloutsig_0_32z = ~(celloutsig_0_14z & celloutsig_0_2z);
  assign celloutsig_1_5z = { celloutsig_1_4z[10:4], celloutsig_1_3z } && { in_data[135:130], celloutsig_1_2z };
  assign celloutsig_1_7z = in_data[152:144] && { celloutsig_1_0z[7:1], celloutsig_1_5z, celloutsig_1_5z };
  assign celloutsig_0_4z = { in_data[73:66], celloutsig_0_0z, celloutsig_0_2z } && { celloutsig_0_3z[4:2], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_5z = in_data[50:43] && in_data[74:67];
  assign celloutsig_0_12z = { celloutsig_0_11z[4:1], celloutsig_0_2z } && celloutsig_0_3z[5:1];
  assign celloutsig_0_19z = { celloutsig_0_10z[6:4], celloutsig_0_11z[5:1], celloutsig_0_11z[1], celloutsig_0_7z, celloutsig_0_11z[5:1], celloutsig_0_11z[1] } && { celloutsig_0_17z[7:6], celloutsig_0_16z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_1z };
  assign celloutsig_0_21z = celloutsig_0_7z && { celloutsig_0_1z[2:0], celloutsig_0_6z };
  assign celloutsig_0_35z = { celloutsig_0_26z[3:1], celloutsig_0_32z } && celloutsig_0_16z[4:1];
  assign celloutsig_1_0z = ~ in_data[145:137];
  assign celloutsig_1_2z = ~ in_data[106:103];
  assign celloutsig_0_3z = ~ in_data[81:76];
  assign celloutsig_1_4z = ~ { in_data[148:136], celloutsig_1_3z };
  assign celloutsig_1_10z = ~ { celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_7z };
  assign celloutsig_1_18z = ~ { in_data[182:170], celloutsig_1_10z, celloutsig_1_12z };
  assign celloutsig_0_7z = ~ in_data[38:35];
  assign celloutsig_0_15z = ~ { celloutsig_0_2z, celloutsig_0_9z };
  assign celloutsig_0_17z = ~ { celloutsig_0_10z[6:0], celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_5z };
  assign celloutsig_0_26z = ~ { celloutsig_0_15z[15:14], celloutsig_0_2z, celloutsig_0_23z, celloutsig_0_19z };
  assign celloutsig_0_31z = ~ { celloutsig_0_21z, celloutsig_0_7z };
  always_latch
    if (clkin_data[96]) celloutsig_1_3z = 3'h0;
    else if (clkin_data[64]) celloutsig_1_3z = in_data[114:112];
  always_latch
    if (!celloutsig_1_18z[0]) celloutsig_0_9z = 20'h00000;
    else if (clkin_data[0]) celloutsig_0_9z = { in_data[21:20], celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_7z };
  always_latch
    if (!celloutsig_1_18z[0]) celloutsig_0_10z = 9'h000;
    else if (!clkin_data[32]) celloutsig_0_10z = { celloutsig_0_3z[5:1], celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_2z };
  always_latch
    if (!celloutsig_1_18z[0]) celloutsig_0_1z = 4'h0;
    else if (!clkin_data[32]) celloutsig_0_1z = { in_data[70:68], celloutsig_0_0z };
  always_latch
    if (celloutsig_1_18z[0]) celloutsig_0_16z = 5'h00;
    else if (clkin_data[0]) celloutsig_0_16z = { celloutsig_0_11z[2:1], celloutsig_0_11z[1], celloutsig_0_14z, celloutsig_0_12z };
  assign { celloutsig_0_11z[1], celloutsig_0_11z[5:2] } = ~ { celloutsig_0_6z, celloutsig_0_3z[3:0] };
  assign { out_data[38:33], out_data[39] } = ~ { celloutsig_0_31z, celloutsig_0_30z, celloutsig_0_3z[4] };
  assign celloutsig_0_11z[0] = celloutsig_0_11z[1];
  assign { out_data[144:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, out_data[33], celloutsig_0_35z };
endmodule

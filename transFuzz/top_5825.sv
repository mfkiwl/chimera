/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [4:0] celloutsig_0_0z;
  wire [5:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [20:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [11:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire [30:0] celloutsig_0_17z;
  reg [3:0] celloutsig_0_18z;
  wire [6:0] celloutsig_0_1z;
  wire [8:0] celloutsig_0_2z;
  wire [9:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  reg [13:0] celloutsig_0_8z;
  wire [6:0] celloutsig_0_9z;
  wire [5:0] celloutsig_1_0z;
  wire [16:0] celloutsig_1_10z;
  wire [5:0] celloutsig_1_11z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [13:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [5:0] celloutsig_1_4z;
  wire [5:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [3:0] celloutsig_1_8z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_4z = ~(celloutsig_0_3z[3] & celloutsig_0_3z[9]);
  assign celloutsig_0_11z = !(celloutsig_0_3z[2] ? celloutsig_0_8z[10] : celloutsig_0_0z[1]);
  assign celloutsig_1_16z = ~(celloutsig_1_8z[1] | celloutsig_1_1z);
  assign celloutsig_1_19z = ~((celloutsig_1_11z[2] | celloutsig_1_0z[1]) & celloutsig_1_4z[0]);
  assign celloutsig_1_6z = ~((in_data[151] | in_data[132]) & celloutsig_1_5z[1]);
  assign celloutsig_0_5z = celloutsig_0_0z[0] | ~(celloutsig_0_2z[5]);
  assign celloutsig_1_2z = { in_data[191:185], celloutsig_1_0z, celloutsig_1_1z } / { 1'h1, in_data[126:115], in_data[96] };
  assign celloutsig_0_6z = { celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_1z } == { in_data[43:36], celloutsig_0_0z };
  assign celloutsig_1_18z = celloutsig_1_10z[10:8] > { celloutsig_1_10z[4:3], celloutsig_1_16z };
  assign celloutsig_1_1z = celloutsig_1_0z[4:0] && in_data[131:127];
  assign celloutsig_0_13z = { in_data[89:82], celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_9z[6:5], celloutsig_0_0z, celloutsig_0_6z } || { in_data[58:51], celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_5z };
  assign celloutsig_1_11z = { celloutsig_1_4z[4:0], celloutsig_1_6z } % { 1'h1, in_data[121:117] };
  assign celloutsig_0_14z = in_data[74:63] % { 1'h1, in_data[27:25], celloutsig_0_5z, celloutsig_0_9z[6:5], celloutsig_0_0z };
  assign celloutsig_0_10z = celloutsig_0_1z[5:0] * celloutsig_0_3z[8:3];
  assign celloutsig_0_12z = { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_9z[6:5], celloutsig_0_0z } * { celloutsig_0_8z[8:1], celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_2z[8:5], celloutsig_0_0z, celloutsig_0_11z };
  assign celloutsig_0_9z[6:5] = celloutsig_0_6z ? celloutsig_0_1z[3:2] : { celloutsig_0_0z[2], celloutsig_0_7z };
  assign celloutsig_0_17z = celloutsig_0_5z ? { celloutsig_0_12z[14:3], celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_16z[2:1], 1'h0 } : { celloutsig_0_14z[11:8], celloutsig_0_7z, celloutsig_0_13z, celloutsig_0_4z, celloutsig_0_15z, 1'h0, celloutsig_0_16z[2:1], 1'h0, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_11z, celloutsig_0_11z };
  assign celloutsig_0_2z[8:5] = celloutsig_0_1z[1] ? { celloutsig_0_1z[3:2], 1'h1, celloutsig_0_1z[0] } : in_data[72:69];
  assign celloutsig_1_4z = celloutsig_1_3z ? celloutsig_1_0z : in_data[164:159];
  assign celloutsig_1_8z[3:1] = celloutsig_1_2z[8] ? { celloutsig_1_2z[6:5], celloutsig_1_6z } : celloutsig_1_0z[3:1];
  assign celloutsig_1_3z = celloutsig_1_2z[10:7] != celloutsig_1_0z[3:0];
  assign celloutsig_1_0z = - in_data[107:102];
  assign celloutsig_1_10z = - { celloutsig_1_8z[3:1], celloutsig_1_2z };
  assign celloutsig_0_7z = | { celloutsig_0_3z[8:5], celloutsig_0_6z };
  assign celloutsig_0_15z = | in_data[90:79];
  assign celloutsig_0_3z = in_data[91:82] >>> { in_data[62:58], celloutsig_0_0z };
  assign celloutsig_0_0z = in_data[64:60] ~^ in_data[16:12];
  assign celloutsig_0_1z = { celloutsig_0_0z[2:1], celloutsig_0_0z } ~^ in_data[34:28];
  assign celloutsig_1_5z = { celloutsig_1_0z[0], celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_3z } ^ celloutsig_1_0z;
  always_latch
    if (celloutsig_1_18z) celloutsig_0_8z = 14'h0000;
    else if (!clkin_data[0]) celloutsig_0_8z = { celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_6z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_18z = 4'h0;
    else if (clkin_data[0]) celloutsig_0_18z = celloutsig_0_10z[3:0];
  assign celloutsig_0_16z[2:1] = { celloutsig_0_13z, celloutsig_0_4z } ^ celloutsig_0_8z[13:12];
  assign celloutsig_0_16z[0] = 1'h0;
  assign celloutsig_0_2z[4:0] = celloutsig_0_0z;
  assign celloutsig_0_9z[4:0] = celloutsig_0_0z;
  assign celloutsig_1_8z[0] = celloutsig_1_6z;
  assign { out_data[128], out_data[96], out_data[62:32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_17z, celloutsig_0_18z };
endmodule

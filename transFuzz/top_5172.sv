/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [7:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [4:0] celloutsig_0_11z;
  wire [10:0] celloutsig_0_12z;
  wire [14:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  reg [6:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [4:0] celloutsig_0_1z;
  wire [22:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [8:0] celloutsig_0_22z;
  wire [13:0] celloutsig_0_23z;
  wire [3:0] celloutsig_0_25z;
  wire [6:0] celloutsig_0_26z;
  wire [23:0] celloutsig_0_28z;
  wire [2:0] celloutsig_0_2z;
  wire [6:0] celloutsig_0_30z;
  reg [7:0] celloutsig_0_31z;
  wire [16:0] celloutsig_0_36z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [5:0] celloutsig_0_55z;
  wire celloutsig_0_5z;
  wire celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire [8:0] celloutsig_0_70z;
  wire celloutsig_0_7z;
  wire [4:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [2:0] celloutsig_1_11z;
  wire [3:0] celloutsig_1_12z;
  wire [5:0] celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire [8:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [10:0] celloutsig_1_5z;
  wire celloutsig_1_7z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_6z = celloutsig_0_4z | ~(celloutsig_0_4z);
  assign celloutsig_1_15z = celloutsig_1_5z[6] | ~(celloutsig_1_2z);
  assign celloutsig_0_9z = celloutsig_0_3z | ~(celloutsig_0_6z);
  assign celloutsig_0_4z = celloutsig_0_1z[0] | celloutsig_0_2z[0];
  assign celloutsig_0_5z = celloutsig_0_1z[2] | celloutsig_0_4z;
  assign celloutsig_1_10z = in_data[149] | in_data[169];
  assign celloutsig_1_18z = celloutsig_1_3z | celloutsig_1_9z;
  assign celloutsig_0_0z = in_data[31:24] / { 1'h1, in_data[29:23] };
  assign celloutsig_0_11z = { celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_2z } / { 1'h1, in_data[72:69] };
  assign celloutsig_0_13z = { celloutsig_0_0z[1], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_12z } / { 1'h1, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_1z };
  assign celloutsig_0_69z = { celloutsig_0_13z[1], celloutsig_0_55z } > { celloutsig_0_36z[7:5], celloutsig_0_25z };
  assign celloutsig_0_17z = { celloutsig_0_2z[2], celloutsig_0_3z, celloutsig_0_9z } > celloutsig_0_1z[3:1];
  assign celloutsig_0_18z = { celloutsig_0_12z[6:1], celloutsig_0_14z } > { celloutsig_0_8z[1:0], celloutsig_0_16z, celloutsig_0_2z, celloutsig_0_9z };
  assign celloutsig_1_1z = { celloutsig_1_0z[2:1], celloutsig_1_0z } <= { in_data[177:176], celloutsig_1_0z };
  assign celloutsig_1_2z = { in_data[125:124], celloutsig_1_0z } <= in_data[186:181];
  assign celloutsig_1_3z = { in_data[112:110], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z } <= { celloutsig_1_0z[1], celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_7z = { celloutsig_1_2z, celloutsig_1_0z } <= { in_data[157:155], celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_16z = { celloutsig_0_15z[2:0], celloutsig_0_10z } && { in_data[44:42], celloutsig_0_5z };
  assign celloutsig_0_19z = { celloutsig_0_13z[11:6], celloutsig_0_2z, celloutsig_0_16z } && { in_data[95:87], celloutsig_0_9z };
  assign celloutsig_0_21z = { celloutsig_0_13z[6:4], celloutsig_0_18z } && celloutsig_0_20z[16:13];
  assign celloutsig_0_7z = celloutsig_0_5z & ~(celloutsig_0_6z);
  assign celloutsig_1_9z = celloutsig_1_5z[9] & ~(celloutsig_1_3z);
  assign celloutsig_0_10z = celloutsig_0_9z & ~(celloutsig_0_3z);
  assign celloutsig_0_14z = celloutsig_0_10z & ~(celloutsig_0_6z);
  assign celloutsig_0_3z = celloutsig_0_0z[4] & ~(celloutsig_0_2z[1]);
  assign celloutsig_0_36z = { in_data[48:34], celloutsig_0_16z, celloutsig_0_18z } % { 1'h1, celloutsig_0_8z[3:0], celloutsig_0_16z, celloutsig_0_17z, celloutsig_0_31z, celloutsig_0_19z, celloutsig_0_17z };
  assign celloutsig_1_0z = in_data[130:127] % { 1'h1, in_data[109:107] };
  assign celloutsig_0_20z = { in_data[18:16], celloutsig_0_13z, celloutsig_0_1z } % { 1'h1, celloutsig_0_12z[8:3], celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_0z };
  assign celloutsig_0_30z = celloutsig_0_12z[8:2] % { 1'h1, celloutsig_0_26z[5:0] };
  assign celloutsig_0_55z = { celloutsig_0_2z, celloutsig_0_19z, celloutsig_0_16z, celloutsig_0_17z } * celloutsig_0_13z[14:9];
  assign celloutsig_1_5z = { in_data[187:181], celloutsig_1_0z } * { celloutsig_1_0z[1:0], celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_2z };
  assign celloutsig_0_22z = { celloutsig_0_15z[5:0], celloutsig_0_2z } * { celloutsig_0_1z[3:1], celloutsig_0_6z, celloutsig_0_8z };
  assign celloutsig_0_23z = { in_data[65:53], celloutsig_0_6z } * { celloutsig_0_13z[11:3], celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_9z };
  assign celloutsig_0_1z = - celloutsig_0_0z[7:3];
  assign celloutsig_0_25z = - celloutsig_0_11z[3:0];
  assign celloutsig_0_28z = - { celloutsig_0_20z[20:9], celloutsig_0_22z, celloutsig_0_16z, celloutsig_0_3z, celloutsig_0_6z };
  assign celloutsig_1_12z = celloutsig_1_5z[5:2] >> { celloutsig_1_11z, celloutsig_1_10z };
  assign celloutsig_0_2z = celloutsig_0_1z[3:1] >> celloutsig_0_0z[3:1];
  assign celloutsig_0_70z = { celloutsig_0_28z[11:6], celloutsig_0_2z } ^ celloutsig_0_23z[9:1];
  assign celloutsig_0_8z = { celloutsig_0_2z[1], celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_6z } ^ celloutsig_0_0z[6:2];
  assign celloutsig_1_11z = { celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_10z } ^ { celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_2z };
  assign celloutsig_1_13z = in_data[111:106] ^ { celloutsig_1_5z[9:5], celloutsig_1_10z };
  assign celloutsig_1_19z = { celloutsig_1_15z, celloutsig_1_0z, celloutsig_1_0z } ^ { celloutsig_1_12z[2:1], celloutsig_1_13z, celloutsig_1_1z };
  assign celloutsig_0_12z = { celloutsig_0_8z[3:0], celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_4z } ^ in_data[62:52];
  assign celloutsig_0_26z = celloutsig_0_15z ^ in_data[14:8];
  always_latch
    if (clkin_data[32]) celloutsig_0_15z = 7'h00;
    else if (celloutsig_1_19z[0]) celloutsig_0_15z = celloutsig_0_0z[6:0];
  always_latch
    if (!clkin_data[32]) celloutsig_0_31z = 8'h00;
    else if (!celloutsig_1_19z[0]) celloutsig_0_31z = { celloutsig_0_30z[5:0], celloutsig_0_21z, celloutsig_0_5z };
  assign { out_data[128], out_data[104:96], out_data[32], out_data[8:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_69z, celloutsig_0_70z };
endmodule

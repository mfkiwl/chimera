/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [13:0] celloutsig_0_0z;
  wire [5:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  reg [3:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [21:0] celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire [5:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_27z;
  wire celloutsig_0_2z;
  wire [7:0] celloutsig_0_30z;
  reg [15:0] celloutsig_0_32z;
  wire [7:0] celloutsig_0_33z;
  wire celloutsig_0_35z;
  wire celloutsig_0_37z;
  reg [7:0] celloutsig_0_38z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire [8:0] celloutsig_0_44z;
  wire [11:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  reg [7:0] celloutsig_0_9z;
  wire [5:0] celloutsig_1_0z;
  wire [6:0] celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire [4:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [7:0] celloutsig_1_2z;
  reg [14:0] celloutsig_1_4z;
  wire celloutsig_1_6z;
  wire [10:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_37z = celloutsig_0_1z ? celloutsig_0_8z : celloutsig_0_4z;
  assign celloutsig_0_6z = celloutsig_0_4z ? celloutsig_0_4z : celloutsig_0_1z;
  assign celloutsig_0_1z = in_data[78] ? celloutsig_0_0z[6] : in_data[7];
  assign celloutsig_0_19z = celloutsig_0_10z[4] ? celloutsig_0_15z : celloutsig_0_12z[3];
  assign celloutsig_0_35z = celloutsig_0_9z[4] | celloutsig_0_21z[0];
  assign celloutsig_0_41z = celloutsig_0_12z[3] | celloutsig_0_32z[3];
  assign celloutsig_0_4z = in_data[34] | in_data[83];
  assign celloutsig_0_5z = celloutsig_0_1z | celloutsig_0_4z;
  assign celloutsig_0_13z = celloutsig_0_6z | celloutsig_0_7z;
  assign celloutsig_0_24z = celloutsig_0_23z | celloutsig_0_20z;
  assign celloutsig_1_19z = celloutsig_1_15z[6] ^ celloutsig_1_17z;
  assign celloutsig_0_16z = { celloutsig_0_0z[7], celloutsig_0_0z, celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_8z } + { in_data[55:48], celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_4z, celloutsig_0_12z };
  assign celloutsig_0_22z = { celloutsig_0_21z[1:0], celloutsig_0_18z, celloutsig_0_20z, celloutsig_0_13z, celloutsig_0_15z } + { celloutsig_0_19z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_20z, celloutsig_0_5z };
  assign celloutsig_0_43z = { celloutsig_0_12z[3:1], celloutsig_0_1z, celloutsig_0_12z } === { celloutsig_0_21z[2], celloutsig_0_35z, celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_19z };
  assign celloutsig_0_40z = { celloutsig_0_21z[1:0], celloutsig_0_14z, celloutsig_0_12z } > { celloutsig_0_16z[20:15], celloutsig_0_1z };
  assign celloutsig_0_42z = { celloutsig_0_1z, celloutsig_0_24z, celloutsig_0_33z, celloutsig_0_33z, celloutsig_0_8z } > { celloutsig_0_16z[21:4], celloutsig_0_13z };
  assign celloutsig_1_9z = celloutsig_1_8z[7:1] > { celloutsig_1_8z[7:2], celloutsig_1_6z };
  assign celloutsig_0_47z = { celloutsig_0_43z, celloutsig_0_5z, celloutsig_0_33z, celloutsig_0_42z, celloutsig_0_14z, celloutsig_0_41z } < { in_data[55:54], celloutsig_0_19z, celloutsig_0_37z, celloutsig_0_21z, celloutsig_0_22z };
  assign celloutsig_0_7z = { celloutsig_0_0z[13:6], celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_4z } < { celloutsig_0_0z[4:3], celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_0_20z = celloutsig_0_0z[9:7] < { celloutsig_0_7z, celloutsig_0_19z, celloutsig_0_4z };
  assign celloutsig_0_27z = { celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_18z, celloutsig_0_2z } < { celloutsig_0_0z[11:0], celloutsig_0_18z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_20z, celloutsig_0_4z };
  assign celloutsig_1_2z = ~ in_data[111:104];
  assign celloutsig_0_33z = ~ celloutsig_0_9z;
  assign celloutsig_1_6z = | in_data[145:132];
  assign celloutsig_1_1z = ^ { in_data[174:146], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_17z = ^ { celloutsig_1_0z[2:1], celloutsig_1_2z };
  assign celloutsig_0_8z = ^ celloutsig_0_0z;
  assign celloutsig_0_11z = ^ celloutsig_0_0z[12:5];
  assign celloutsig_0_14z = ^ { celloutsig_0_6z, celloutsig_0_9z };
  assign celloutsig_0_15z = ^ { celloutsig_0_10z[5:4], celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_2z };
  assign celloutsig_0_18z = ^ { in_data[35:28], celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_14z };
  assign celloutsig_0_23z = ^ { celloutsig_0_4z, celloutsig_0_21z, celloutsig_0_2z };
  assign celloutsig_0_2z = ^ { in_data[90:68], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_46z = { celloutsig_0_44z[6:3], celloutsig_0_10z, celloutsig_0_23z, celloutsig_0_6z } << { celloutsig_0_9z[3:2], celloutsig_0_1z, celloutsig_0_35z, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_20z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_37z, celloutsig_0_41z, celloutsig_0_1z };
  assign celloutsig_1_18z = celloutsig_1_2z[6:2] << celloutsig_1_2z[6:2];
  assign celloutsig_0_10z = { in_data[13:12], celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_7z } << { celloutsig_0_9z[7:3], celloutsig_0_2z };
  assign celloutsig_0_21z = in_data[47:45] << { celloutsig_0_9z[1], celloutsig_0_14z, celloutsig_0_15z };
  assign celloutsig_0_0z = in_data[88:75] ~^ in_data[55:42];
  assign celloutsig_1_15z = { celloutsig_1_8z[5:1], celloutsig_1_1z, celloutsig_1_9z } ~^ celloutsig_1_2z[7:1];
  assign celloutsig_0_44z = { celloutsig_0_38z[7:1], celloutsig_0_11z, celloutsig_0_40z } ^ { celloutsig_0_33z, celloutsig_0_5z };
  assign celloutsig_1_0z = in_data[182:177] ^ in_data[106:101];
  assign celloutsig_1_8z = { celloutsig_1_0z[3:0], celloutsig_1_0z, celloutsig_1_6z } ^ celloutsig_1_4z[14:4];
  assign celloutsig_0_30z = { celloutsig_0_0z[2], celloutsig_0_27z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_11z, celloutsig_0_23z, celloutsig_0_19z } ^ { celloutsig_0_12z[1:0], celloutsig_0_10z };
  always_latch
    if (celloutsig_1_19z) celloutsig_0_38z = 8'h00;
    else if (!clkin_data[0]) celloutsig_0_38z = { celloutsig_0_22z[5:1], celloutsig_0_37z, celloutsig_0_11z, celloutsig_0_2z };
  always_latch
    if (clkin_data[64]) celloutsig_1_4z = 15'h0000;
    else if (!clkin_data[32]) celloutsig_1_4z = { in_data[167:161], celloutsig_1_2z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_9z = 8'h00;
    else if (!clkin_data[0]) celloutsig_0_9z = { in_data[81:75], celloutsig_0_6z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_12z = 4'h0;
    else if (clkin_data[0]) celloutsig_0_12z = { celloutsig_0_0z[12:11], celloutsig_0_11z, celloutsig_0_8z };
  always_latch
    if (celloutsig_1_19z) celloutsig_0_32z = 16'h0000;
    else if (clkin_data[0]) celloutsig_0_32z = { celloutsig_0_30z[6:0], celloutsig_0_9z, celloutsig_0_8z };
  assign { out_data[132:128], out_data[96], out_data[43:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_46z, celloutsig_0_47z };
endmodule

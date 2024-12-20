/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [6:0] celloutsig_0_10z;
  wire [8:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [10:0] celloutsig_0_14z;
  wire [25:0] celloutsig_0_15z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  reg [8:0] celloutsig_0_19z;
  wire [7:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [17:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [7:0] celloutsig_0_25z;
  wire [3:0] celloutsig_0_26z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [8:0] celloutsig_0_30z;
  wire [9:0] celloutsig_0_31z;
  wire celloutsig_0_34z;
  wire [3:0] celloutsig_0_37z;
  wire [8:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [16:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_42z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [20:0] celloutsig_0_54z;
  wire celloutsig_0_5z;
  wire celloutsig_0_64z;
  wire [6:0] celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire celloutsig_0_73z;
  wire [14:0] celloutsig_0_74z;
  wire celloutsig_0_7z;
  wire [14:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  wire [3:0] celloutsig_1_3z;
  wire [10:0] celloutsig_1_6z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_40z = ~(celloutsig_0_4z & celloutsig_0_14z[4]);
  assign celloutsig_0_7z = !(celloutsig_0_4z ? celloutsig_0_5z : celloutsig_0_4z);
  assign celloutsig_0_13z = !(celloutsig_0_0z ? celloutsig_0_3z[4] : celloutsig_0_7z);
  assign celloutsig_0_34z = !(celloutsig_0_30z[2] ? celloutsig_0_13z : celloutsig_0_14z[10]);
  assign celloutsig_0_4z = ~in_data[59];
  assign celloutsig_0_73z = celloutsig_0_69z[4] | ~(celloutsig_0_8z[12]);
  assign celloutsig_0_22z = celloutsig_0_17z | ~(celloutsig_0_2z);
  assign celloutsig_1_0z = in_data[170] ^ in_data[173];
  assign celloutsig_0_39z = ~(celloutsig_0_19z[2] ^ celloutsig_0_38z[8]);
  assign celloutsig_0_49z = ~(celloutsig_0_25z[4] ^ celloutsig_0_6z);
  assign celloutsig_0_6z = ~(celloutsig_0_4z ^ celloutsig_0_1z[4]);
  assign celloutsig_0_37z = { celloutsig_0_14z[6], celloutsig_0_6z, celloutsig_0_17z, celloutsig_0_4z } & { celloutsig_0_25z[3:2], celloutsig_0_4z, celloutsig_0_23z };
  assign celloutsig_1_3z = { in_data[98:96], celloutsig_1_0z } & { in_data[150:148], celloutsig_1_0z };
  assign celloutsig_0_0z = in_data[45:36] < in_data[92:83];
  assign celloutsig_0_64z = { celloutsig_0_49z, celloutsig_0_37z } < celloutsig_0_15z[9:5];
  assign celloutsig_0_17z = celloutsig_0_7z & ~(celloutsig_0_10z[5]);
  assign celloutsig_0_20z = celloutsig_0_17z & ~(celloutsig_0_5z);
  assign celloutsig_0_69z = celloutsig_0_3z[7:1] % { 1'h1, celloutsig_0_11z[4:0], celloutsig_0_64z };
  assign celloutsig_0_8z = { celloutsig_0_3z[13:0], celloutsig_0_4z } * { in_data[46:34], celloutsig_0_5z, celloutsig_0_7z };
  assign celloutsig_1_19z = celloutsig_1_3z * { in_data[161:160], celloutsig_1_0z, celloutsig_1_18z };
  assign celloutsig_0_25z = celloutsig_0_8z[12:5] * { celloutsig_0_15z[23:19], celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_12z };
  assign celloutsig_0_42z = { celloutsig_0_17z, celloutsig_0_10z, celloutsig_0_5z } != { celloutsig_0_1z, celloutsig_0_13z };
  assign celloutsig_0_9z = { celloutsig_0_8z[4:0], celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_0z } != { celloutsig_0_8z[12:6], celloutsig_0_4z };
  assign celloutsig_0_12z = celloutsig_0_1z[7:1] != { celloutsig_0_3z[7:3], celloutsig_0_4z, celloutsig_0_9z };
  assign celloutsig_0_28z = { celloutsig_0_8z[3:2], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_22z, celloutsig_0_26z, celloutsig_0_0z, celloutsig_0_20z } != { celloutsig_0_21z[17:12], celloutsig_0_26z, celloutsig_0_5z };
  assign celloutsig_0_29z = { celloutsig_0_3z[15:13], celloutsig_0_10z } != { celloutsig_0_8z[14:13], celloutsig_0_25z };
  assign celloutsig_0_38z = - { celloutsig_0_31z[2:0], celloutsig_0_28z, celloutsig_0_34z, celloutsig_0_37z };
  assign celloutsig_0_54z = - { celloutsig_0_38z, celloutsig_0_40z, celloutsig_0_19z, celloutsig_0_39z, celloutsig_0_42z };
  assign celloutsig_0_74z = - { celloutsig_0_54z[15:3], celloutsig_0_29z, celloutsig_0_20z };
  assign celloutsig_1_6z = - { in_data[107:98], celloutsig_1_0z };
  assign celloutsig_0_14z = - celloutsig_0_3z[15:5];
  assign celloutsig_0_15z = - { celloutsig_0_14z[9:5], celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_21z = - { celloutsig_0_3z[7:1], celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_19z };
  assign celloutsig_0_26z = - celloutsig_0_11z[8:5];
  assign celloutsig_0_31z = - { celloutsig_0_28z, celloutsig_0_25z, celloutsig_0_17z };
  assign celloutsig_0_5z = | celloutsig_0_1z[5:0];
  assign celloutsig_1_18z = ^ { celloutsig_1_6z[3:1], celloutsig_1_6z };
  assign celloutsig_0_18z = ^ celloutsig_0_11z[6:0];
  assign celloutsig_0_23z = ^ { celloutsig_0_19z[5:3], celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_18z, celloutsig_0_20z, celloutsig_0_13z, celloutsig_0_12z };
  assign celloutsig_0_2z = ^ { in_data[47:40], celloutsig_0_0z };
  assign celloutsig_0_10z = { celloutsig_0_1z[7:5], celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_2z } - { celloutsig_0_1z[7:2], celloutsig_0_2z };
  assign celloutsig_0_11z = { celloutsig_0_8z[9:2], celloutsig_0_0z } - celloutsig_0_3z[11:3];
  assign celloutsig_0_1z = in_data[81:74] - { in_data[28:22], celloutsig_0_0z };
  assign celloutsig_0_30z = celloutsig_0_8z[11:3] - { celloutsig_0_3z[15:9], celloutsig_0_22z, celloutsig_0_7z };
  assign celloutsig_0_3z = { in_data[72:58], celloutsig_0_2z, celloutsig_0_2z } - { celloutsig_0_1z[6:2], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z };
  always_latch
    if (clkin_data[32]) celloutsig_0_19z = 9'h000;
    else if (celloutsig_1_19z[0]) celloutsig_0_19z = { in_data[20], celloutsig_0_5z, celloutsig_0_10z };
  assign { out_data[128], out_data[99:96], out_data[32], out_data[14:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_73z, celloutsig_0_74z };
endmodule

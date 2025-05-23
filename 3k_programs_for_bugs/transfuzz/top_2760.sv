/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [21:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  reg [2:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [2:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [5:0] celloutsig_0_21z;
  wire [7:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [6:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [23:0] celloutsig_0_27z;
  reg [18:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [10:0] celloutsig_0_30z;
  wire [2:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [4:0] celloutsig_0_37z;
  wire [14:0] celloutsig_0_38z;
  wire [6:0] celloutsig_0_3z;
  wire [11:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [2:0] celloutsig_0_42z;
  wire celloutsig_0_45z;
  wire celloutsig_0_48z;
  wire [8:0] celloutsig_0_4z;
  wire [5:0] celloutsig_0_50z;
  wire celloutsig_0_52z;
  wire celloutsig_0_54z;
  wire [10:0] celloutsig_0_56z;
  wire [2:0] celloutsig_0_5z;
  wire [4:0] celloutsig_0_60z;
  wire celloutsig_0_61z;
  wire [5:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [15:0] celloutsig_1_0z;
  wire [14:0] celloutsig_1_10z;
  wire [3:0] celloutsig_1_11z;
  wire [7:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [34:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [5:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [6:0] celloutsig_1_4z;
  wire celloutsig_1_7z;
  wire [21:0] celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_14z = !(celloutsig_1_11z[3] ? celloutsig_1_2z[4] : celloutsig_1_4z[3]);
  assign celloutsig_0_20z = ~(celloutsig_0_17z | celloutsig_0_19z);
  assign celloutsig_0_26z = ~(celloutsig_0_14z | celloutsig_0_2z);
  assign celloutsig_0_41z = ~((celloutsig_0_5z[0] | in_data[21]) & celloutsig_0_27z[23]);
  assign celloutsig_0_25z = ~((celloutsig_0_20z | celloutsig_0_0z[7]) & celloutsig_0_10z);
  assign celloutsig_0_17z = ~(celloutsig_0_11z ^ celloutsig_0_14z);
  assign celloutsig_0_19z = ~(celloutsig_0_1z[1] ^ celloutsig_0_18z[2]);
  assign celloutsig_0_0z = in_data[35:14] + in_data[44:23];
  assign celloutsig_1_9z = { celloutsig_1_0z[13:0], celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_7z } + { celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_10z = in_data[142:128] + { in_data[125:113], celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_13z = celloutsig_1_10z[12:5] + { celloutsig_1_11z[3:2], celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_3z };
  assign celloutsig_0_1z = celloutsig_0_0z[4:2] + in_data[25:23];
  assign celloutsig_0_27z = { in_data[80:79], celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_25z, celloutsig_0_25z, celloutsig_0_21z, celloutsig_0_11z, celloutsig_0_18z, celloutsig_0_17z, celloutsig_0_26z, celloutsig_0_25z, celloutsig_0_8z, celloutsig_0_23z } + { celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_25z };
  assign celloutsig_0_45z = celloutsig_0_29z[9:5] == celloutsig_0_21z[4:0];
  assign celloutsig_0_48z = { celloutsig_0_21z[2:0], celloutsig_0_30z, celloutsig_0_41z } == { celloutsig_0_6z, celloutsig_0_25z, celloutsig_0_12z, celloutsig_0_35z, celloutsig_0_6z };
  assign celloutsig_0_12z = { in_data[61:44], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_2z } == { in_data[8:1], celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_1z };
  assign celloutsig_0_2z = celloutsig_0_0z[19:1] == celloutsig_0_0z[18:0];
  assign celloutsig_0_52z = 1'h1 && { celloutsig_0_42z[1], celloutsig_0_6z };
  assign celloutsig_0_10z = celloutsig_0_6z[4:0] && { celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_5z };
  assign celloutsig_1_1z = ! in_data[185:170];
  assign celloutsig_1_3z = in_data[156:140] || { in_data[112:109], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_0_56z = celloutsig_0_40z[8] ? { celloutsig_0_50z[5], celloutsig_0_6z, celloutsig_0_34z, celloutsig_0_35z } : { celloutsig_0_0z[18:11], celloutsig_0_25z, celloutsig_0_54z, celloutsig_0_23z };
  assign celloutsig_1_18z = celloutsig_1_14z ? { celloutsig_1_10z[14:1], celloutsig_1_4z, celloutsig_1_13z, celloutsig_1_2z } : { celloutsig_1_10z[13:1], celloutsig_1_9z };
  assign celloutsig_0_37z = - celloutsig_0_29z[11:7];
  assign celloutsig_0_38z = - { in_data[42:32], celloutsig_0_5z, celloutsig_0_12z };
  assign celloutsig_1_11z = - { celloutsig_1_2z[5:3], celloutsig_1_7z };
  assign celloutsig_0_18z = - { celloutsig_0_3z[3:0], celloutsig_0_10z, celloutsig_0_9z };
  assign celloutsig_0_21z = - in_data[55:50];
  assign celloutsig_0_9z = in_data[87:76] !== { celloutsig_0_6z[4:0], celloutsig_0_6z, celloutsig_0_8z };
  assign celloutsig_1_19z = | celloutsig_1_13z[7:1];
  assign celloutsig_0_8z = | { celloutsig_0_4z[2:0], celloutsig_0_2z };
  assign celloutsig_0_11z = | { celloutsig_0_4z[6], celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_0_23z = | { celloutsig_0_3z[6:4], celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_10z };
  assign celloutsig_0_61z = | { celloutsig_0_26z, celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_1z };
  assign celloutsig_1_7z = | celloutsig_1_4z[4:2];
  assign celloutsig_0_16z = | { celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_3z[5:0] };
  assign celloutsig_0_50z = { celloutsig_0_45z, celloutsig_0_5z, celloutsig_0_19z, celloutsig_0_19z } >> { celloutsig_0_27z[22:18], celloutsig_0_12z };
  assign celloutsig_0_4z = { celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_2z } << celloutsig_0_0z[13:5];
  assign celloutsig_0_5z = { in_data[54:53], celloutsig_0_2z } << celloutsig_0_1z;
  assign celloutsig_0_60z = { celloutsig_0_37z[4], celloutsig_0_52z, celloutsig_0_15z } << celloutsig_0_56z[6:2];
  assign celloutsig_1_4z = in_data[184:178] << celloutsig_1_0z[10:4];
  assign celloutsig_0_24z = { celloutsig_0_16z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_20z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_19z } << { celloutsig_0_22z[3], celloutsig_0_16z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_15z };
  assign celloutsig_0_3z = in_data[13:7] ~^ { in_data[37:34], celloutsig_0_1z };
  assign celloutsig_0_34z = celloutsig_0_18z[4:2] ~^ { celloutsig_0_12z, celloutsig_0_25z, celloutsig_0_19z };
  assign celloutsig_0_40z = { celloutsig_0_26z, celloutsig_0_30z } ~^ { celloutsig_0_38z[10], celloutsig_0_22z, celloutsig_0_14z, celloutsig_0_19z, celloutsig_0_23z };
  assign celloutsig_0_42z = { celloutsig_0_37z[4:3], celloutsig_0_19z } ~^ celloutsig_0_0z[19:17];
  assign celloutsig_0_6z = { celloutsig_0_3z[2:1], celloutsig_0_1z, celloutsig_0_2z } ~^ { in_data[19:18], celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_1_0z = in_data[133:118] ~^ in_data[135:120];
  assign celloutsig_1_2z = in_data[150:145] ~^ in_data[186:181];
  assign celloutsig_0_22z = { celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_12z } ~^ { celloutsig_0_6z[4:0], celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_10z };
  assign celloutsig_0_30z = { celloutsig_0_15z[2:1], celloutsig_0_14z, celloutsig_0_3z, celloutsig_0_14z } ~^ { in_data[47:40], celloutsig_0_13z, celloutsig_0_23z, celloutsig_0_19z };
  always_latch
    if (!clkin_data[64]) celloutsig_0_15z = 3'h0;
    else if (!celloutsig_1_19z) celloutsig_0_15z = { celloutsig_0_6z[4:3], celloutsig_0_13z };
  always_latch
    if (clkin_data[64]) celloutsig_0_29z = 19'h00000;
    else if (!clkin_data[0]) celloutsig_0_29z = { celloutsig_0_24z[5:4], celloutsig_0_26z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_21z };
  assign celloutsig_0_35z = ~((celloutsig_0_18z[4] & celloutsig_0_15z[0]) | (celloutsig_0_14z & celloutsig_0_34z[0]));
  assign celloutsig_0_54z = ~((celloutsig_0_21z[1] & celloutsig_0_48z) | (celloutsig_0_21z[1] & celloutsig_0_3z[4]));
  assign celloutsig_0_7z = ~((celloutsig_0_6z[3] & celloutsig_0_3z[3]) | (celloutsig_0_1z[0] & celloutsig_0_5z[0]));
  assign celloutsig_0_13z = ~((celloutsig_0_6z[2] & celloutsig_0_5z[1]) | (celloutsig_0_6z[3] & celloutsig_0_5z[0]));
  assign celloutsig_0_14z = ~((celloutsig_0_1z[1] & celloutsig_0_9z) | (celloutsig_0_13z & celloutsig_0_5z[0]));
  assign { out_data[159:128], out_data[96], out_data[36:32], out_data[0] } = { celloutsig_1_18z[31:0], celloutsig_1_19z, celloutsig_0_60z, celloutsig_0_61z };
endmodule

/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  reg [24:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  reg [4:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [2:0] celloutsig_0_22z;
  wire [5:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [29:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [3:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [19:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [8:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [2:0] celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire [6:0] celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_46z;
  wire [17:0] celloutsig_0_47z;
  wire celloutsig_0_49z;
  reg [30:0] celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [12:0] celloutsig_0_9z;
  wire [19:0] celloutsig_1_0z;
  wire [15:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  reg [9:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [8:0] celloutsig_1_6z;
  wire [16:0] celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_7z = ~(celloutsig_0_2z[2] & celloutsig_0_5z);
  assign celloutsig_0_10z = ~(celloutsig_0_9z[12] & celloutsig_0_6z);
  assign celloutsig_0_16z = ~(celloutsig_0_15z & celloutsig_0_9z[0]);
  assign celloutsig_0_27z = !(in_data[49] ? celloutsig_0_18z : celloutsig_0_0z);
  assign celloutsig_0_46z = ~celloutsig_0_6z;
  assign celloutsig_1_3z = ~celloutsig_1_1z;
  assign celloutsig_1_5z = ~celloutsig_1_0z[6];
  assign celloutsig_1_19z = ~celloutsig_1_8z[3];
  assign celloutsig_0_35z = ~(celloutsig_0_6z ^ celloutsig_0_15z);
  assign celloutsig_1_11z = ~(celloutsig_1_10z[9] ^ celloutsig_1_4z[9]);
  assign celloutsig_0_29z = ~(celloutsig_0_2z[2] ^ celloutsig_0_19z[1]);
  assign celloutsig_0_31z = ~(celloutsig_0_19z[0] ^ celloutsig_0_0z);
  assign celloutsig_0_37z = celloutsig_0_4z[24:22] + { celloutsig_0_23z[5], celloutsig_0_33z, celloutsig_0_1z };
  assign celloutsig_1_6z = in_data[167:159] + { celloutsig_1_0z[19:14], celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_43z = { celloutsig_0_25z[24:14], celloutsig_0_42z } === { celloutsig_0_32z[15:5], celloutsig_0_21z };
  assign celloutsig_0_49z = { celloutsig_0_17z[11:10], celloutsig_0_19z } === { celloutsig_0_32z[8:3], celloutsig_0_21z };
  assign celloutsig_0_14z = celloutsig_0_4z[22:18] === in_data[9:5];
  assign celloutsig_0_24z = celloutsig_0_23z === { celloutsig_0_3z[2], celloutsig_0_22z, 1'h1, celloutsig_0_11z };
  assign celloutsig_0_41z = { celloutsig_0_35z, celloutsig_0_38z, celloutsig_0_37z, celloutsig_0_23z, 1'h1, celloutsig_0_29z } >= celloutsig_0_25z[22:10];
  assign celloutsig_0_5z = in_data[53:49] >= { celloutsig_0_3z[0], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_1_18z = in_data[133:124] >= { celloutsig_1_10z[10:3], celloutsig_1_11z, celloutsig_1_2z };
  assign celloutsig_0_1z = { in_data[47:41], celloutsig_0_0z } > in_data[35:28];
  assign celloutsig_0_6z = in_data[43:32] && in_data[50:39];
  assign celloutsig_0_15z = { celloutsig_0_9z[11:9], celloutsig_0_5z } && in_data[17:14];
  assign celloutsig_0_38z = in_data[17:12] || { in_data[61:57], celloutsig_0_21z };
  assign celloutsig_0_56z = { celloutsig_0_9z[8:2], celloutsig_0_23z, celloutsig_0_51z, celloutsig_0_51z } || { celloutsig_0_47z[17:4], celloutsig_0_5z };
  assign celloutsig_1_1z = { in_data[119:117], celloutsig_1_0z } || { in_data[158:156], celloutsig_1_0z };
  assign celloutsig_0_30z = { celloutsig_0_4z[28:10], celloutsig_0_15z } || { celloutsig_0_17z[20:2], celloutsig_0_27z };
  assign celloutsig_0_25z = { in_data[63:35], celloutsig_0_1z } % { 1'h1, in_data[32:5], celloutsig_0_14z };
  assign celloutsig_0_23z = { 1'h1, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_6z } * { celloutsig_0_22z, celloutsig_0_16z, 1'h1, celloutsig_0_13z };
  assign celloutsig_0_0z = in_data[54:51] != in_data[81:78];
  assign celloutsig_0_42z = { in_data[69:52], celloutsig_0_6z, celloutsig_0_35z, celloutsig_0_22z } != celloutsig_0_17z[22:0];
  assign celloutsig_0_51z = { celloutsig_0_3z[2:0], celloutsig_0_38z } != { in_data[2], celloutsig_0_49z, celloutsig_0_46z, celloutsig_0_7z };
  assign celloutsig_0_22z = - celloutsig_0_3z[4:2];
  assign celloutsig_0_3z = - { celloutsig_0_2z[3:2], celloutsig_0_2z[2], celloutsig_0_2z[3:2], celloutsig_0_2z[2], celloutsig_0_2z[0] };
  assign celloutsig_0_32z = - { in_data[27:14], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_24z, celloutsig_0_15z };
  assign celloutsig_0_36z = { celloutsig_0_9z[6:2], celloutsig_0_31z, celloutsig_0_28z, celloutsig_0_14z, celloutsig_0_28z, celloutsig_0_19z } !== { celloutsig_0_17z[17:6], celloutsig_0_29z, celloutsig_0_7z };
  assign celloutsig_0_28z = { celloutsig_0_4z[29:16], celloutsig_0_16z } !== { celloutsig_0_27z, celloutsig_0_2z[3:2], celloutsig_0_2z[2], celloutsig_0_2z[0], celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_15z, celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_18z };
  assign celloutsig_1_0z = in_data[155:136] | in_data[127:108];
  assign celloutsig_0_18z = | { in_data[65:64], celloutsig_0_5z };
  assign celloutsig_0_33z = celloutsig_0_29z & celloutsig_0_26z;
  assign celloutsig_0_55z = celloutsig_0_34z[2] & celloutsig_0_15z;
  assign celloutsig_1_2z = celloutsig_1_1z & in_data[188];
  assign celloutsig_0_11z = celloutsig_0_5z & celloutsig_0_6z;
  assign celloutsig_0_21z = | celloutsig_0_9z[8:2];
  assign celloutsig_0_8z = ^ { celloutsig_0_2z[2], celloutsig_0_2z[2], celloutsig_0_2z[0], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_2z[3:2], celloutsig_0_2z[2], celloutsig_0_2z[0], celloutsig_0_1z, celloutsig_0_2z[3:2], celloutsig_0_2z[2], celloutsig_0_2z[0] };
  assign celloutsig_0_26z = ^ { celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_2z[3:2], celloutsig_0_2z[2], celloutsig_0_2z[0] };
  assign celloutsig_0_47z = { celloutsig_0_30z, 1'h1, celloutsig_0_36z, celloutsig_0_33z, celloutsig_0_2z[3:2], celloutsig_0_2z[2], celloutsig_0_2z[0], celloutsig_0_37z, celloutsig_0_30z, celloutsig_0_35z, celloutsig_0_24z, celloutsig_0_29z, celloutsig_0_20z, celloutsig_0_30z, celloutsig_0_28z } >> { celloutsig_0_2z[2], celloutsig_0_2z[2], celloutsig_0_2z[0], celloutsig_0_5z, celloutsig_0_43z, celloutsig_0_41z, celloutsig_0_16z, celloutsig_0_24z, celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_43z, celloutsig_0_6z, celloutsig_0_28z, celloutsig_0_8z, celloutsig_0_46z, celloutsig_0_41z, celloutsig_0_5z };
  assign celloutsig_1_8z = { celloutsig_1_6z[6:3], celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_5z } >> celloutsig_1_0z[17:1];
  assign celloutsig_1_10z = { celloutsig_1_0z[17:3], celloutsig_1_5z } >> { celloutsig_1_8z[16:2], celloutsig_1_5z };
  assign celloutsig_0_9z = { celloutsig_0_4z[6:3], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_7z } >> { celloutsig_0_4z[10:0], celloutsig_0_1z, celloutsig_0_0z };
  always_latch
    if (!clkin_data[64]) celloutsig_0_4z = 31'h00000000;
    else if (!celloutsig_1_18z) celloutsig_0_4z = { in_data[73:44], celloutsig_0_0z };
  always_latch
    if (!clkin_data[96]) celloutsig_1_4z = 10'h000;
    else if (!clkin_data[32]) celloutsig_1_4z = { in_data[111:104], celloutsig_1_2z, celloutsig_1_1z };
  always_latch
    if (!clkin_data[64]) celloutsig_0_17z = 25'h0000000;
    else if (clkin_data[0]) celloutsig_0_17z = { celloutsig_0_4z[26:11], celloutsig_0_16z, celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_15z };
  always_latch
    if (clkin_data[64]) celloutsig_0_19z = 5'h00;
    else if (!celloutsig_1_18z) celloutsig_0_19z = { celloutsig_0_4z[5:2], 1'h1 };
  assign celloutsig_0_13z = ~((celloutsig_0_7z & celloutsig_0_3z[5]) | (celloutsig_0_7z & celloutsig_0_8z));
  assign celloutsig_0_20z = ~((celloutsig_0_19z[1] & celloutsig_0_0z) | (celloutsig_0_0z & celloutsig_0_1z));
  assign { celloutsig_0_2z[2], celloutsig_0_2z[3], celloutsig_0_2z[0] } = ~ { celloutsig_0_1z, in_data[82], celloutsig_0_0z };
  assign { celloutsig_0_34z[7:2], celloutsig_0_34z[0], celloutsig_0_34z[1] } = { celloutsig_0_23z, celloutsig_0_14z, celloutsig_0_7z } & { celloutsig_0_17z[17:12], celloutsig_0_17z[10], celloutsig_0_17z[11] };
  assign celloutsig_0_2z[1] = celloutsig_0_2z[2];
  assign celloutsig_0_34z[8] = celloutsig_0_17z[18];
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_55z, celloutsig_0_56z };
endmodule

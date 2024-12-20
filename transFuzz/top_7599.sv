/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [2:0] celloutsig_0_0z;
  wire [3:0] celloutsig_0_10z;
  wire [2:0] celloutsig_0_11z;
  wire [31:0] celloutsig_0_12z;
  reg [2:0] celloutsig_0_13z;
  reg [3:0] celloutsig_0_14z;
  reg [2:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [7:0] celloutsig_0_18z;
  wire [4:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire [7:0] celloutsig_0_22z;
  reg [6:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  reg [11:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire [7:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [4:0] celloutsig_0_32z;
  wire [5:0] celloutsig_0_33z;
  wire [2:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [2:0] celloutsig_0_38z;
  wire [9:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire [6:0] celloutsig_0_42z;
  wire [3:0] celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_46z;
  wire [18:0] celloutsig_0_47z;
  wire [9:0] celloutsig_0_48z;
  reg [13:0] celloutsig_0_49z;
  wire [2:0] celloutsig_0_4z;
  wire [4:0] celloutsig_0_53z;
  wire [13:0] celloutsig_0_56z;
  wire celloutsig_0_58z;
  wire [4:0] celloutsig_0_5z;
  wire [9:0] celloutsig_0_60z;
  wire celloutsig_0_62z;
  wire [3:0] celloutsig_0_63z;
  wire celloutsig_0_64z;
  wire celloutsig_0_68z;
  wire celloutsig_0_69z;
  wire [27:0] celloutsig_0_6z;
  wire celloutsig_0_70z;
  reg [27:0] celloutsig_0_71z;
  wire celloutsig_0_73z;
  wire celloutsig_0_77z;
  wire celloutsig_0_78z;
  wire [10:0] celloutsig_0_79z;
  wire celloutsig_0_7z;
  wire [3:0] celloutsig_0_80z;
  wire celloutsig_0_83z;
  wire [10:0] celloutsig_0_88z;
  wire celloutsig_0_89z;
  reg [5:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [15:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [2:0] celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_58z = celloutsig_0_36z ? celloutsig_0_33z[3] : celloutsig_0_0z[2];
  assign celloutsig_0_73z = celloutsig_0_27z ? celloutsig_0_0z[0] : celloutsig_0_71z[6];
  assign celloutsig_0_16z = celloutsig_0_9z ? celloutsig_0_4z[1] : celloutsig_0_11z[2];
  assign celloutsig_0_3z = celloutsig_0_0z[0] ? celloutsig_0_0z[1] : in_data[48];
  assign celloutsig_0_30z = celloutsig_0_27z ? celloutsig_0_15z[0] : celloutsig_0_1z;
  assign celloutsig_1_4z = ~(celloutsig_1_3z[14] | in_data[105]);
  assign celloutsig_0_27z = ~(celloutsig_0_7z | celloutsig_0_0z[1]);
  assign celloutsig_0_31z = ~celloutsig_0_3z;
  assign celloutsig_1_6z = ~celloutsig_1_3z[7];
  assign celloutsig_1_11z = ~celloutsig_1_10z;
  assign celloutsig_0_46z = celloutsig_0_27z | ~(celloutsig_0_19z[3]);
  assign celloutsig_0_62z = celloutsig_0_29z | ~(celloutsig_0_56z[9]);
  assign celloutsig_0_70z = celloutsig_0_39z[2] | ~(celloutsig_0_42z[3]);
  assign celloutsig_1_0z = in_data[154] | ~(in_data[165]);
  assign celloutsig_1_10z = celloutsig_1_1z | ~(celloutsig_1_3z[2]);
  assign celloutsig_1_19z = celloutsig_1_15z | ~(celloutsig_1_17z);
  assign celloutsig_0_24z = celloutsig_0_0z[0] | ~(celloutsig_0_3z);
  assign celloutsig_1_18z = celloutsig_1_2z | celloutsig_1_9z[0];
  assign celloutsig_0_41z = ~(celloutsig_0_35z[0] ^ celloutsig_0_13z[0]);
  assign celloutsig_0_44z = ~(in_data[18] ^ celloutsig_0_32z[0]);
  assign celloutsig_0_77z = ~(celloutsig_0_26z[11] ^ celloutsig_0_73z);
  assign celloutsig_1_15z = ~(celloutsig_1_6z ^ celloutsig_1_11z);
  assign celloutsig_0_35z = celloutsig_0_4z + { celloutsig_0_32z[3:2], celloutsig_0_24z };
  assign celloutsig_0_43z = celloutsig_0_2z[6:3] + { celloutsig_0_5z[2:0], celloutsig_0_24z };
  assign celloutsig_1_9z = { celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_4z } + { celloutsig_1_7z, celloutsig_1_8z, celloutsig_1_7z };
  assign celloutsig_0_33z = { celloutsig_0_21z, celloutsig_0_0z } & { celloutsig_0_11z[1:0], celloutsig_0_30z, celloutsig_0_21z };
  assign celloutsig_0_38z = celloutsig_0_15z & { celloutsig_0_0z[2:1], celloutsig_0_17z };
  assign celloutsig_0_48z = { celloutsig_0_23z[6:1], celloutsig_0_14z } & { celloutsig_0_26z[2:0], celloutsig_0_30z, celloutsig_0_35z, celloutsig_0_35z };
  assign celloutsig_0_22z = { celloutsig_0_15z[0], celloutsig_0_14z, celloutsig_0_4z } & { celloutsig_0_8z[3:1], celloutsig_0_10z, celloutsig_0_16z };
  assign celloutsig_0_11z = { celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_9z } / { 1'h1, celloutsig_0_0z[1:0] };
  assign celloutsig_0_18z = { celloutsig_0_11z[0], celloutsig_0_1z, celloutsig_0_8z } / { 1'h1, celloutsig_0_6z[19:13] };
  assign celloutsig_0_37z = { celloutsig_0_0z[2], celloutsig_0_22z, celloutsig_0_2z, celloutsig_0_25z } == { celloutsig_0_4z[2:1], celloutsig_0_17z, celloutsig_0_26z, celloutsig_0_11z };
  assign celloutsig_0_64z = { celloutsig_0_4z[1:0], celloutsig_0_41z, celloutsig_0_11z } == { celloutsig_0_48z[4:0], celloutsig_0_3z };
  assign celloutsig_0_69z = celloutsig_0_39z[7:3] == celloutsig_0_60z[5:1];
  assign celloutsig_1_2z = { celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z } == in_data[158:155];
  assign celloutsig_1_8z = { celloutsig_1_3z[8:2], celloutsig_1_4z } == { in_data[170:168], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_0z, 1'h1 };
  assign celloutsig_0_25z = { celloutsig_0_6z[21], celloutsig_0_17z, celloutsig_0_3z, celloutsig_0_20z } == celloutsig_0_23z[3:0];
  assign celloutsig_0_36z = ! celloutsig_0_6z[21:15];
  assign celloutsig_1_1z = ! { in_data[155:153], celloutsig_1_0z };
  assign celloutsig_0_9z = celloutsig_0_8z[4:1] || { celloutsig_0_2z[4:3], celloutsig_0_7z, celloutsig_0_3z };
  assign celloutsig_0_68z = { celloutsig_0_22z[5:0], celloutsig_0_62z, celloutsig_0_48z, celloutsig_0_18z, celloutsig_0_9z } < { celloutsig_0_56z[5:4], celloutsig_0_8z, celloutsig_0_20z, celloutsig_0_10z, celloutsig_0_27z, celloutsig_0_26z };
  assign celloutsig_0_83z = { celloutsig_0_56z[4:3], celloutsig_0_44z } < celloutsig_0_5z[2:0];
  assign celloutsig_0_56z = { celloutsig_0_37z, celloutsig_0_5z, celloutsig_0_22z } % { 1'h1, celloutsig_0_49z[12:0] };
  assign celloutsig_0_79z = { celloutsig_0_47z[11:6], celloutsig_0_29z, celloutsig_0_14z } % { 1'h1, celloutsig_0_32z[0], celloutsig_0_63z, celloutsig_0_0z, celloutsig_0_68z, celloutsig_0_9z };
  assign celloutsig_0_88z = { celloutsig_0_47z[16:15], celloutsig_0_77z, celloutsig_0_11z, celloutsig_0_43z, celloutsig_0_83z } % { 1'h1, celloutsig_0_79z[4], celloutsig_0_77z, celloutsig_0_15z, celloutsig_0_36z, celloutsig_0_46z, celloutsig_0_38z };
  assign celloutsig_0_32z = { celloutsig_0_27z, celloutsig_0_31z, celloutsig_0_21z } % { 1'h1, celloutsig_0_24z, celloutsig_0_13z };
  assign celloutsig_0_5z = { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z } * { in_data[82:80], celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_2z = { in_data[26:24], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z } * { in_data[35:34], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_53z[4:3] = in_data[69] ? celloutsig_0_21z[2:1] : { celloutsig_0_43z[1], celloutsig_0_3z };
  assign celloutsig_0_63z = celloutsig_0_44z ? { celloutsig_0_27z, celloutsig_0_3z, celloutsig_0_41z, celloutsig_0_37z } : { celloutsig_0_53z[4:3], celloutsig_0_21z[2:1] };
  assign celloutsig_1_3z = in_data[109] ? in_data[157:142] : in_data[145:130];
  assign celloutsig_0_10z = celloutsig_0_3z ? { celloutsig_0_4z[1:0], 2'h3 } : in_data[64:61];
  assign celloutsig_0_19z = celloutsig_0_2z[6] ? { celloutsig_0_12z[30:27], celloutsig_0_9z } : celloutsig_0_5z;
  assign celloutsig_0_0z = - in_data[88:86];
  assign celloutsig_0_12z = - { in_data[35:32], celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_5z };
  assign celloutsig_0_42z = ~ { celloutsig_0_0z[1:0], celloutsig_0_32z };
  assign celloutsig_0_47z = ~ { in_data[30:13], celloutsig_0_29z };
  assign celloutsig_0_80z = { celloutsig_0_2z[7:5], celloutsig_0_24z } | { celloutsig_0_26z[11:9], celloutsig_0_64z };
  assign celloutsig_0_17z = & { celloutsig_0_6z[22:14], celloutsig_0_0z };
  assign celloutsig_0_89z = | { celloutsig_0_5z[3:1], celloutsig_0_70z, celloutsig_0_80z, celloutsig_0_78z, celloutsig_0_70z };
  assign celloutsig_1_7z = | { in_data[119:97], celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_2z };
  assign celloutsig_0_1z = | in_data[85:74];
  assign celloutsig_0_7z = celloutsig_0_1z & celloutsig_0_2z[7];
  assign celloutsig_0_78z = celloutsig_0_73z & celloutsig_0_5z[0];
  assign celloutsig_1_17z = celloutsig_1_15z & celloutsig_1_11z;
  assign celloutsig_0_20z = celloutsig_0_9z & celloutsig_0_1z;
  assign celloutsig_0_29z = celloutsig_0_10z[2] & celloutsig_0_11z[1];
  assign celloutsig_0_4z = { celloutsig_0_2z[2:1], celloutsig_0_3z } >> { celloutsig_0_2z[3:2], celloutsig_0_3z };
  assign celloutsig_0_39z = { celloutsig_0_35z[2:1], celloutsig_0_2z } >> { celloutsig_0_36z, celloutsig_0_30z, celloutsig_0_5z, celloutsig_0_15z };
  assign celloutsig_0_21z = celloutsig_0_13z >> celloutsig_0_19z[2:0];
  assign celloutsig_0_60z = { celloutsig_0_5z[0], celloutsig_0_2z, celloutsig_0_9z } ^ { celloutsig_0_0z, celloutsig_0_58z, celloutsig_0_9z, celloutsig_0_53z[4:3], celloutsig_0_21z };
  always_latch
    if (clkin_data[0]) celloutsig_0_49z = 14'h0000;
    else if (!celloutsig_1_19z) celloutsig_0_49z = in_data[43:30];
  always_latch
    if (clkin_data[32]) celloutsig_0_71z = 28'h0000000;
    else if (celloutsig_1_19z) celloutsig_0_71z = { celloutsig_0_6z[19:5], celloutsig_0_35z, celloutsig_0_7z, celloutsig_0_69z, celloutsig_0_18z };
  always_latch
    if (clkin_data[32]) celloutsig_0_8z = 6'h00;
    else if (celloutsig_1_19z) celloutsig_0_8z = { celloutsig_0_7z, celloutsig_0_5z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_13z = 3'h0;
    else if (celloutsig_1_19z) celloutsig_0_13z = celloutsig_0_11z;
  always_latch
    if (!clkin_data[32]) celloutsig_0_14z = 4'h0;
    else if (!celloutsig_1_19z) celloutsig_0_14z = { celloutsig_0_10z[2:0], celloutsig_0_9z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_15z = 3'h0;
    else if (celloutsig_1_19z) celloutsig_0_15z = celloutsig_0_12z[6:4];
  always_latch
    if (!clkin_data[0]) celloutsig_0_23z = 7'h00;
    else if (celloutsig_1_19z) celloutsig_0_23z = in_data[9:3];
  always_latch
    if (!clkin_data[32]) celloutsig_0_26z = 12'h000;
    else if (celloutsig_1_19z) celloutsig_0_26z = { celloutsig_0_11z, celloutsig_0_19z, celloutsig_0_3z, celloutsig_0_21z };
  assign celloutsig_0_6z[27:1] = in_data[69:43] ^ { in_data[61:38], celloutsig_0_0z };
  assign celloutsig_0_53z[2:0] = celloutsig_0_21z;
  assign celloutsig_0_6z[0] = 1'h0;
  assign { out_data[128], out_data[96], out_data[42:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_88z, celloutsig_0_89z };
endmodule

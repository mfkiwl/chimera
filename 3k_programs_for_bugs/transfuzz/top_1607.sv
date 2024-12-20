/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [15:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  reg [13:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [3:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  reg [2:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [28:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire [8:0] celloutsig_0_46z;
  wire [10:0] celloutsig_0_47z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  reg [2:0] celloutsig_0_54z;
  wire celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire [2:0] celloutsig_0_57z;
  wire [34:0] celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_64z;
  wire celloutsig_0_65z;
  wire celloutsig_0_68z;
  wire [5:0] celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire celloutsig_0_73z;
  wire [4:0] celloutsig_0_74z;
  wire celloutsig_0_77z;
  wire celloutsig_0_78z;
  wire celloutsig_0_7z;
  wire celloutsig_0_80z;
  wire celloutsig_0_81z;
  wire [12:0] celloutsig_0_82z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [4:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [5:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [2:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_52z = ~(in_data[44] & celloutsig_0_6z);
  assign celloutsig_0_53z = ~(celloutsig_0_22z[1] & celloutsig_0_24z);
  assign celloutsig_0_55z = ~(celloutsig_0_9z & celloutsig_0_24z);
  assign celloutsig_0_9z = ~(in_data[77] & celloutsig_0_8z);
  assign celloutsig_1_19z = ~(celloutsig_1_8z[1] & celloutsig_1_13z);
  assign celloutsig_0_1z = ~(in_data[54] & in_data[93]);
  assign celloutsig_0_28z = ~(celloutsig_0_6z & celloutsig_0_19z);
  assign celloutsig_0_32z = ~(celloutsig_0_29z & celloutsig_0_3z[17]);
  assign celloutsig_0_45z = ~((celloutsig_0_29z | in_data[84]) & celloutsig_0_30z);
  assign celloutsig_0_63z = ~((celloutsig_0_46z[4] | celloutsig_0_21z) & celloutsig_0_35z);
  assign celloutsig_0_65z = ~((celloutsig_0_19z | celloutsig_0_47z[2]) & celloutsig_0_57z[0]);
  assign celloutsig_0_8z = ~((celloutsig_0_3z[26] | celloutsig_0_1z) & celloutsig_0_2z);
  assign celloutsig_0_19z = ~((celloutsig_0_5z | celloutsig_0_1z) & celloutsig_0_17z);
  assign celloutsig_0_25z = ~((celloutsig_0_8z | celloutsig_0_9z) & celloutsig_0_18z);
  assign celloutsig_0_36z = celloutsig_0_27z | celloutsig_0_25z;
  assign celloutsig_0_44z = celloutsig_0_32z | celloutsig_0_34z;
  assign celloutsig_0_49z = celloutsig_0_29z | celloutsig_0_38z[2];
  assign celloutsig_0_77z = celloutsig_0_8z | celloutsig_0_49z;
  assign celloutsig_1_9z = celloutsig_1_3z | celloutsig_1_5z;
  assign celloutsig_1_16z = celloutsig_1_0z | celloutsig_1_6z[4];
  assign celloutsig_0_18z = celloutsig_0_9z | celloutsig_0_1z;
  assign celloutsig_0_27z = celloutsig_0_4z | in_data[7];
  assign celloutsig_0_7z = celloutsig_0_5z ^ celloutsig_0_3z[16];
  assign celloutsig_1_3z = celloutsig_1_0z ^ celloutsig_1_1z;
  assign celloutsig_0_10z = celloutsig_0_6z ^ celloutsig_0_2z;
  assign celloutsig_0_12z = celloutsig_0_11z ^ celloutsig_0_3z[4];
  assign celloutsig_0_15z = celloutsig_0_1z ^ celloutsig_0_3z[22];
  assign celloutsig_0_29z = in_data[58] ^ celloutsig_0_16z[1];
  assign celloutsig_0_37z = { in_data[77:76], celloutsig_0_23z, celloutsig_0_30z, celloutsig_0_12z, celloutsig_0_4z } == { celloutsig_0_1z, celloutsig_0_27z, celloutsig_0_32z, celloutsig_0_32z, celloutsig_0_9z, celloutsig_0_35z };
  assign celloutsig_0_51z = celloutsig_0_3z[25:6] == { in_data[58:43], celloutsig_0_19z, celloutsig_0_43z, celloutsig_0_29z, celloutsig_0_11z };
  assign celloutsig_0_78z = { celloutsig_0_35z, celloutsig_0_11z, celloutsig_0_2z } == celloutsig_0_0z[2:0];
  assign celloutsig_1_5z = { in_data[151:143], celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_0z } == { in_data[166:157], celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_11z = { celloutsig_0_0z[9:8], celloutsig_0_9z } == { celloutsig_0_0z[11:10], celloutsig_0_5z };
  assign celloutsig_0_14z = { celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_11z } == { in_data[6:3], celloutsig_0_12z };
  assign celloutsig_0_26z = { celloutsig_0_3z[3], celloutsig_0_21z, celloutsig_0_10z } == { celloutsig_0_23z, celloutsig_0_25z, celloutsig_0_1z };
  assign celloutsig_0_35z = { celloutsig_0_0z[13:1], celloutsig_0_12z, celloutsig_0_32z, celloutsig_0_30z, celloutsig_0_18z, celloutsig_0_19z, celloutsig_0_20z, celloutsig_0_4z, celloutsig_0_34z, celloutsig_0_23z, celloutsig_0_15z } === { celloutsig_0_11z, celloutsig_0_20z, celloutsig_0_19z, celloutsig_0_25z, celloutsig_0_25z, celloutsig_0_22z, celloutsig_0_14z, celloutsig_0_18z, celloutsig_0_28z, celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_13z, celloutsig_0_33z, celloutsig_0_21z, celloutsig_0_9z, celloutsig_0_27z, celloutsig_0_33z, celloutsig_0_26z };
  assign celloutsig_1_11z = celloutsig_1_6z[5:1] === { celloutsig_1_8z[1:0], celloutsig_1_8z };
  assign celloutsig_1_13z = { celloutsig_1_2z, celloutsig_1_12z, celloutsig_1_8z, celloutsig_1_0z } === { celloutsig_1_6z[3:0], celloutsig_1_9z, celloutsig_1_7z };
  assign celloutsig_0_21z = { celloutsig_0_16z[10:7], celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_19z } === { celloutsig_0_16z[6:1], celloutsig_0_7z };
  assign celloutsig_0_23z = { celloutsig_0_3z[8:4], celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_9z, celloutsig_0_18z, celloutsig_0_8z, celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_15z } === { in_data[37:27], celloutsig_0_19z, celloutsig_0_19z };
  assign celloutsig_0_34z = { celloutsig_0_32z, celloutsig_0_19z, celloutsig_0_25z, celloutsig_0_22z, celloutsig_0_24z } >= { celloutsig_0_3z[7], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_32z, celloutsig_0_31z, celloutsig_0_31z, celloutsig_0_1z, celloutsig_0_17z };
  assign celloutsig_0_39z = { celloutsig_0_0z[15:11], celloutsig_0_24z, celloutsig_0_9z } >= celloutsig_0_0z[8:2];
  assign celloutsig_0_56z = { celloutsig_0_38z[0], celloutsig_0_54z, celloutsig_0_7z, celloutsig_0_30z, celloutsig_0_45z, celloutsig_0_26z, celloutsig_0_51z, celloutsig_0_40z, celloutsig_0_44z } >= { celloutsig_0_3z[19:13], celloutsig_0_29z, celloutsig_0_45z, celloutsig_0_33z, celloutsig_0_18z };
  assign celloutsig_0_62z = { celloutsig_0_46z[2], celloutsig_0_49z, celloutsig_0_59z, celloutsig_0_56z, celloutsig_0_29z, celloutsig_0_9z, celloutsig_0_61z, celloutsig_0_37z } >= celloutsig_0_47z[7:0];
  assign celloutsig_0_68z = { celloutsig_0_58z[26:13], celloutsig_0_10z, celloutsig_0_64z, celloutsig_0_2z, celloutsig_0_7z } >= { celloutsig_0_20z, celloutsig_0_22z, celloutsig_0_53z, celloutsig_0_53z, celloutsig_0_63z, celloutsig_0_37z, celloutsig_0_32z, celloutsig_0_9z, celloutsig_0_45z, celloutsig_0_14z, celloutsig_0_8z, celloutsig_0_21z, celloutsig_0_54z };
  assign celloutsig_1_18z = { celloutsig_1_3z, celloutsig_1_11z, celloutsig_1_13z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_16z } >= in_data[165:160];
  assign celloutsig_0_2z = in_data[28:24] >= { in_data[5:3], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_41z = { celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_28z, celloutsig_0_12z, celloutsig_0_33z, celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_39z, celloutsig_0_26z, celloutsig_0_2z, celloutsig_0_33z, celloutsig_0_30z, celloutsig_0_39z, celloutsig_0_32z, celloutsig_0_40z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_28z, celloutsig_0_13z, celloutsig_0_17z, celloutsig_0_25z, celloutsig_0_17z, celloutsig_0_10z, celloutsig_0_19z } > { in_data[83:69], celloutsig_0_11z, celloutsig_0_30z, celloutsig_0_12z, celloutsig_0_19z, celloutsig_0_10z, celloutsig_0_33z, celloutsig_0_22z, celloutsig_0_35z };
  assign celloutsig_0_5z = { celloutsig_0_3z[13:12], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z } > { celloutsig_0_0z[10:8], celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_61z = { celloutsig_0_47z[8:7], celloutsig_0_1z } > { celloutsig_0_58z[21:20], celloutsig_0_20z };
  assign celloutsig_0_80z = { celloutsig_0_38z, celloutsig_0_19z, celloutsig_0_62z, celloutsig_0_78z, celloutsig_0_44z, celloutsig_0_25z, celloutsig_0_34z, celloutsig_0_52z, celloutsig_0_77z, celloutsig_0_24z, celloutsig_0_73z } > { celloutsig_0_16z[12:1], celloutsig_0_12z };
  assign celloutsig_0_81z = { celloutsig_0_37z, celloutsig_0_63z, celloutsig_0_2z, celloutsig_0_50z } > { celloutsig_0_80z, celloutsig_0_56z, celloutsig_0_77z, celloutsig_0_4z };
  assign celloutsig_1_1z = { in_data[144:137], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } > { in_data[116:104], celloutsig_1_0z };
  assign celloutsig_0_13z = { celloutsig_0_3z[22:14], celloutsig_0_8z } > { in_data[29:23], celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_6z };
  assign celloutsig_0_24z = celloutsig_0_0z[13:2] > { celloutsig_0_16z[10:4], celloutsig_0_5z, celloutsig_0_18z, celloutsig_0_17z, celloutsig_0_1z, celloutsig_0_9z };
  assign celloutsig_0_73z = { celloutsig_0_18z, celloutsig_0_62z, celloutsig_0_55z, celloutsig_0_29z, celloutsig_0_61z } !== { celloutsig_0_24z, celloutsig_0_14z, celloutsig_0_43z, celloutsig_0_30z, celloutsig_0_27z };
  assign celloutsig_1_2z = in_data[171:149] !== { in_data[150:129], celloutsig_1_1z };
  assign celloutsig_0_33z = celloutsig_0_0z[6:4] !== { celloutsig_0_21z, celloutsig_0_27z, celloutsig_0_10z };
  assign celloutsig_0_0z = in_data[70:55] | in_data[31:16];
  assign celloutsig_0_82z = { celloutsig_0_74z[4:2], celloutsig_0_18z, celloutsig_0_28z, celloutsig_0_40z, celloutsig_0_69z, celloutsig_0_33z } | { celloutsig_0_0z[12:6], celloutsig_0_65z, celloutsig_0_57z, celloutsig_0_78z, celloutsig_0_63z };
  assign celloutsig_1_4z = { in_data[125:122], celloutsig_1_2z } | { in_data[143:140], celloutsig_1_1z };
  assign celloutsig_0_22z = { celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_17z, celloutsig_0_7z } | { in_data[7], celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_13z };
  assign celloutsig_0_40z = | { in_data[37:32], celloutsig_0_7z, celloutsig_0_17z, celloutsig_0_9z, celloutsig_0_27z, celloutsig_0_24z };
  assign celloutsig_0_42z = | celloutsig_0_3z[24:8];
  assign celloutsig_0_43z = | celloutsig_0_0z[12:8];
  assign celloutsig_0_4z = | { celloutsig_0_0z[8], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_59z = | { celloutsig_0_46z[4:3], celloutsig_0_15z, celloutsig_0_15z };
  assign celloutsig_0_6z = | { celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_1_0z = | in_data[141:138];
  assign celloutsig_1_7z = | { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_6z };
  assign celloutsig_0_17z = | celloutsig_0_16z[4:0];
  assign celloutsig_0_20z = | { celloutsig_0_3z[8:3], celloutsig_0_5z };
  assign celloutsig_0_50z = ~^ { celloutsig_0_23z, celloutsig_0_6z, celloutsig_0_44z };
  assign celloutsig_0_64z = ~^ { celloutsig_0_10z, celloutsig_0_35z, celloutsig_0_12z, celloutsig_0_38z, celloutsig_0_57z, celloutsig_0_50z };
  assign celloutsig_1_12z = ~^ { in_data[190:188], celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_8z };
  assign celloutsig_0_30z = ~^ { celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_27z, celloutsig_0_14z, celloutsig_0_21z };
  assign celloutsig_0_31z = ~^ { in_data[40:38], celloutsig_0_8z, celloutsig_0_1z };
  assign celloutsig_0_3z = { in_data[58:31], celloutsig_0_2z } - { in_data[40:29], celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_46z = { celloutsig_0_16z[4:2], celloutsig_0_18z, celloutsig_0_42z, celloutsig_0_27z, celloutsig_0_38z } - { celloutsig_0_16z[10:3], celloutsig_0_41z };
  assign celloutsig_0_47z = { celloutsig_0_12z, celloutsig_0_24z, celloutsig_0_34z, celloutsig_0_41z, celloutsig_0_34z, celloutsig_0_6z, celloutsig_0_25z, celloutsig_0_17z, celloutsig_0_12z, celloutsig_0_14z, celloutsig_0_4z } - { in_data[29:22], celloutsig_0_43z, celloutsig_0_6z, celloutsig_0_8z };
  assign celloutsig_0_57z = { celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_33z } - { celloutsig_0_32z, celloutsig_0_36z, celloutsig_0_19z };
  assign celloutsig_0_58z = { in_data[63:42], celloutsig_0_2z, celloutsig_0_40z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_39z, celloutsig_0_15z, celloutsig_0_28z, celloutsig_0_22z, celloutsig_0_24z, celloutsig_0_52z } - { celloutsig_0_3z[27:15], celloutsig_0_51z, celloutsig_0_56z, celloutsig_0_1z, celloutsig_0_21z, celloutsig_0_2z, celloutsig_0_22z, celloutsig_0_33z, celloutsig_0_45z, celloutsig_0_34z, celloutsig_0_25z, celloutsig_0_36z, celloutsig_0_21z, celloutsig_0_53z, celloutsig_0_49z, celloutsig_0_22z, celloutsig_0_2z };
  assign celloutsig_0_69z = { celloutsig_0_7z, celloutsig_0_34z, celloutsig_0_43z, celloutsig_0_41z, celloutsig_0_4z, celloutsig_0_8z } - { celloutsig_0_23z, celloutsig_0_57z, celloutsig_0_28z, celloutsig_0_40z };
  assign celloutsig_0_74z = { celloutsig_0_0z[5:4], celloutsig_0_25z, celloutsig_0_68z, celloutsig_0_31z } - { celloutsig_0_25z, celloutsig_0_4z, celloutsig_0_59z, celloutsig_0_4z, celloutsig_0_31z };
  assign celloutsig_1_6z = { celloutsig_1_4z[4:1], celloutsig_1_2z, celloutsig_1_3z } - { celloutsig_1_2z, celloutsig_1_4z };
  assign celloutsig_1_8z = { celloutsig_1_4z[3:2], celloutsig_1_2z } - { in_data[147:146], celloutsig_1_0z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_38z = 3'h0;
    else if (clkin_data[0]) celloutsig_0_38z = { celloutsig_0_9z, celloutsig_0_32z, celloutsig_0_27z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_54z = 3'h0;
    else if (clkin_data[0]) celloutsig_0_54z = { celloutsig_0_30z, celloutsig_0_36z, celloutsig_0_31z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_16z = 14'h0000;
    else if (clkin_data[0]) celloutsig_0_16z = { in_data[75:64], celloutsig_0_13z, celloutsig_0_11z };
  assign { out_data[128], out_data[96], out_data[32], out_data[12:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_81z, celloutsig_0_82z };
endmodule

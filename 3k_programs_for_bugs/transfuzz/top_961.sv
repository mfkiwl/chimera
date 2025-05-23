/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [4:0] _00_;
  reg [4:0] _01_;
  wire [7:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [3:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [9:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [17:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [4:0] celloutsig_0_26z;
  wire [2:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [25:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [10:0] celloutsig_0_34z;
  wire celloutsig_0_37z;
  wire [5:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [20:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [9:0] celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire [5:0] celloutsig_0_45z;
  wire [6:0] celloutsig_0_46z;
  wire [23:0] celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire [3:0] celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire [9:0] celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire celloutsig_0_55z;
  wire [11:0] celloutsig_0_57z;
  wire [2:0] celloutsig_0_58z;
  wire [4:0] celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_64z;
  wire celloutsig_0_65z;
  wire celloutsig_0_66z;
  wire celloutsig_0_68z;
  wire [5:0] celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire celloutsig_0_72z;
  wire celloutsig_0_75z;
  wire celloutsig_0_76z;
  wire celloutsig_0_80z;
  wire [18:0] celloutsig_0_82z;
  wire celloutsig_0_83z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [3:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [3:0] celloutsig_1_3z;
  wire [2:0] celloutsig_1_4z;
  wire [7:0] celloutsig_1_5z;
  wire [8:0] celloutsig_1_6z;
  wire [2:0] celloutsig_1_8z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_37z = ~(celloutsig_0_31z ^ celloutsig_0_33z);
  assign celloutsig_0_39z = ~(celloutsig_0_24z[7] ^ celloutsig_0_0z[3]);
  assign celloutsig_0_43z = ~(celloutsig_0_10z ^ celloutsig_0_18z);
  assign celloutsig_0_51z = ~(celloutsig_0_8z ^ celloutsig_0_6z);
  assign celloutsig_0_60z = ~(celloutsig_0_32z ^ celloutsig_0_15z[0]);
  assign celloutsig_0_6z = ~(celloutsig_0_3z[15] ^ celloutsig_0_5z);
  assign celloutsig_0_61z = ~(celloutsig_0_4z[3] ^ celloutsig_0_43z);
  assign celloutsig_0_62z = ~(celloutsig_0_4z[3] ^ in_data[29]);
  assign celloutsig_0_63z = ~(celloutsig_0_55z ^ celloutsig_0_17z);
  assign celloutsig_0_65z = ~(celloutsig_0_11z ^ celloutsig_0_6z);
  assign celloutsig_0_66z = ~(celloutsig_0_37z ^ celloutsig_0_4z[1]);
  assign celloutsig_0_80z = ~(celloutsig_0_19z ^ celloutsig_0_72z);
  assign celloutsig_1_0z = ~(in_data[107] ^ in_data[179]);
  assign celloutsig_1_1z = ~(in_data[160] ^ celloutsig_1_0z);
  assign celloutsig_1_2z = ~(in_data[122] ^ celloutsig_1_1z);
  assign celloutsig_1_12z = ~(celloutsig_1_11z[1] ^ celloutsig_1_6z[8]);
  assign celloutsig_0_12z = ~(celloutsig_0_4z[0] ^ celloutsig_0_2z);
  assign celloutsig_0_13z = ~(celloutsig_0_9z ^ celloutsig_0_5z);
  assign celloutsig_0_1z = ~(celloutsig_0_0z[4] ^ in_data[25]);
  assign celloutsig_0_16z = ~(celloutsig_0_15z[1] ^ celloutsig_0_4z[2]);
  assign celloutsig_0_21z = ~(celloutsig_0_5z ^ celloutsig_0_16z);
  assign celloutsig_0_31z = ~(celloutsig_0_21z ^ celloutsig_0_4z[3]);
  always_ff @(posedge celloutsig_1_19z, negedge clkin_data[0])
    if (!clkin_data[0]) _01_ <= 5'h00;
    else _01_ <= { celloutsig_0_44z, _00_[3:0] };
  reg [3:0] _25_;
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[0])
    if (clkin_data[0]) _25_ <= 4'h0;
    else _25_ <= celloutsig_0_3z[13:10];
  assign _00_[3:0] = _25_;
  assign celloutsig_0_40z = { celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_25z, celloutsig_0_39z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_18z, celloutsig_0_10z } === { celloutsig_0_21z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_12z };
  assign celloutsig_0_5z = { in_data[68:61], celloutsig_0_4z } === { celloutsig_0_3z[15:6], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_55z = { celloutsig_0_41z[7:0], celloutsig_0_8z, celloutsig_0_31z } === { celloutsig_0_12z, celloutsig_0_49z, celloutsig_0_12z, celloutsig_0_46z };
  assign celloutsig_0_64z = { celloutsig_0_3z[18:12], celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_55z, celloutsig_0_32z } === { celloutsig_0_29z[22], celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_42z, celloutsig_0_61z, celloutsig_0_51z, celloutsig_0_16z, celloutsig_0_51z };
  assign celloutsig_0_68z = { celloutsig_0_39z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_17z } === { celloutsig_0_21z, celloutsig_0_31z, celloutsig_0_62z, celloutsig_0_32z };
  assign celloutsig_0_8z = { celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_5z } === { celloutsig_0_3z[17:11], celloutsig_0_4z };
  assign celloutsig_0_9z = celloutsig_0_3z[12:10] === celloutsig_0_4z[3:1];
  assign celloutsig_1_10z = celloutsig_1_6z[6:0] === in_data[124:118];
  assign celloutsig_0_17z = { celloutsig_0_3z[13:11], celloutsig_0_15z, 1'h1, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_0z } === { celloutsig_0_3z[12:0], celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_12z };
  assign celloutsig_0_19z = { in_data[94], celloutsig_0_17z, celloutsig_0_2z, celloutsig_0_13z } === { celloutsig_0_4z[1:0], celloutsig_0_8z, celloutsig_0_9z };
  assign celloutsig_0_44z = celloutsig_0_29z[22:18] && celloutsig_0_41z[8:4];
  assign celloutsig_0_49z = { celloutsig_0_0z[7:1], celloutsig_0_20z, celloutsig_0_25z } && { celloutsig_0_29z[21:5], celloutsig_0_43z };
  assign celloutsig_0_72z = celloutsig_0_48z[19:17] && { celloutsig_0_69z[5:4], celloutsig_0_44z };
  assign celloutsig_0_75z = { celloutsig_0_20z[9:8], celloutsig_0_30z, celloutsig_0_61z, celloutsig_0_40z } && { celloutsig_0_59z[4], celloutsig_0_66z, celloutsig_0_1z, celloutsig_0_53z, celloutsig_0_65z };
  assign celloutsig_0_76z = { celloutsig_0_41z[9:1], celloutsig_0_75z, celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_45z, celloutsig_0_53z } && { celloutsig_0_3z[18:11], celloutsig_0_33z, celloutsig_0_57z, celloutsig_0_17z, celloutsig_0_12z };
  assign celloutsig_0_83z = { _01_[4:1], celloutsig_0_51z } && celloutsig_0_29z[23:19];
  assign celloutsig_0_10z = in_data[89:84] && { in_data[80:79], celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_9z };
  assign celloutsig_0_28z = 1'h1 && { celloutsig_0_4z[1:0], celloutsig_0_8z, celloutsig_0_19z, celloutsig_0_16z, celloutsig_0_18z };
  assign celloutsig_0_32z = { in_data[81:69], celloutsig_0_4z } && { in_data[40:25], celloutsig_0_30z };
  assign celloutsig_0_33z = { celloutsig_0_3z[4], celloutsig_0_27z } && { celloutsig_0_18z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_11z };
  assign celloutsig_0_0z = in_data[50:43] % { 1'h1, in_data[21:15] };
  assign celloutsig_0_41z = { celloutsig_0_29z[10:3], celloutsig_0_13z, celloutsig_0_9z } % { 1'h1, celloutsig_0_29z[8:1], celloutsig_0_32z };
  assign celloutsig_0_45z = { celloutsig_0_6z, celloutsig_0_39z, 1'h1, celloutsig_0_18z, celloutsig_0_30z, celloutsig_0_32z } % { 1'h1, celloutsig_0_0z[6:4], celloutsig_0_1z, celloutsig_0_11z };
  assign celloutsig_0_48z = { celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_25z, celloutsig_0_16z } % { 1'h1, celloutsig_0_29z[11:3], celloutsig_0_41z, celloutsig_0_15z };
  assign celloutsig_0_57z = { celloutsig_0_34z[9:2], celloutsig_0_37z, celloutsig_0_43z, celloutsig_0_44z, celloutsig_0_5z } % { 1'h1, celloutsig_0_3z[10:1], celloutsig_0_53z };
  assign celloutsig_0_82z = { celloutsig_0_3z[16:0], celloutsig_0_80z, celloutsig_0_42z } % { 1'h1, celloutsig_0_34z[6:0], celloutsig_0_68z, celloutsig_0_76z, celloutsig_0_60z, celloutsig_0_76z, celloutsig_0_6z, celloutsig_0_26z, 1'h1 };
  assign celloutsig_1_3z = { in_data[186:184], celloutsig_1_2z } % { 1'h1, in_data[169], celloutsig_1_1z, in_data[96] };
  assign celloutsig_1_4z = in_data[109:107] % { 1'h1, in_data[124:123] };
  assign celloutsig_1_5z = { celloutsig_1_3z[3:1], celloutsig_1_3z, celloutsig_1_1z } % { 1'h1, in_data[145:142], celloutsig_1_1z, celloutsig_1_0z, in_data[96] };
  assign celloutsig_0_20z = celloutsig_0_3z[16:7] % { 1'h1, celloutsig_0_0z[6:0], celloutsig_0_6z, celloutsig_0_12z };
  assign celloutsig_0_26z = { celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_10z, celloutsig_0_2z } % { 1'h1, _00_[3:0] };
  assign celloutsig_0_27z = { _00_[3:2], celloutsig_0_10z } % { 1'h1, celloutsig_0_0z[6], celloutsig_0_16z };
  assign celloutsig_0_29z = { in_data[85:72], celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_6z, celloutsig_0_0z, 1'h1 } % { 1'h1, in_data[89:72], celloutsig_0_21z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_28z, celloutsig_0_9z, celloutsig_0_11z };
  assign celloutsig_0_3z = { in_data[75:62], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z } % { 1'h1, in_data[39:21], celloutsig_0_2z };
  assign celloutsig_0_42z = ^ { celloutsig_0_11z, celloutsig_0_37z, celloutsig_0_18z };
  assign celloutsig_0_53z = ^ celloutsig_0_3z[20:1];
  assign celloutsig_1_19z = ^ { in_data[173:159], celloutsig_1_11z, celloutsig_1_12z };
  assign celloutsig_0_11z = ^ { celloutsig_0_0z[6:0], celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_4z };
  assign celloutsig_0_18z = ^ { celloutsig_0_0z[4:1], celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_6z };
  assign celloutsig_0_2z = ^ celloutsig_0_0z;
  assign celloutsig_0_25z = ^ { celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_20z, celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_16z, celloutsig_0_16z };
  assign celloutsig_0_30z = ^ { celloutsig_0_29z[20], celloutsig_0_4z, celloutsig_0_25z, celloutsig_0_12z };
  assign celloutsig_0_38z = in_data[73:68] ^ { celloutsig_0_27z[2:1], celloutsig_0_30z, celloutsig_0_27z };
  assign celloutsig_0_4z = celloutsig_0_3z[3:0] ^ { in_data[60:58], celloutsig_0_1z };
  assign celloutsig_0_46z = { celloutsig_0_31z, celloutsig_0_38z } ^ celloutsig_0_34z[9:3];
  assign celloutsig_0_52z = celloutsig_0_24z[17:8] ^ { in_data[28:20], celloutsig_0_32z };
  assign celloutsig_0_58z = { celloutsig_0_40z, celloutsig_0_12z, celloutsig_0_19z } ^ celloutsig_0_52z[3:1];
  assign celloutsig_0_59z = { celloutsig_0_41z[8:7], celloutsig_0_43z, celloutsig_0_12z, celloutsig_0_39z } ^ { celloutsig_0_46z[6:3], celloutsig_0_53z };
  assign celloutsig_1_6z = { celloutsig_1_5z[7:2], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z } ^ in_data[129:121];
  assign celloutsig_1_8z = celloutsig_1_5z[6:4] ^ { celloutsig_1_4z[2:1], celloutsig_1_1z };
  assign celloutsig_1_11z = { celloutsig_1_6z[5:3], celloutsig_1_1z } ^ { celloutsig_1_8z, celloutsig_1_10z };
  assign celloutsig_0_24z = { celloutsig_0_3z[14:2], celloutsig_0_18z, _00_[3:0] } ^ { _00_[3:1], celloutsig_0_21z, celloutsig_0_10z, celloutsig_0_19z, celloutsig_0_16z, celloutsig_0_10z, celloutsig_0_21z, celloutsig_0_8z, celloutsig_0_0z };
  assign celloutsig_0_34z = celloutsig_0_29z[18:8] ^ in_data[66:56];
  assign celloutsig_0_15z[0] = ~ celloutsig_0_12z;
  assign { celloutsig_0_15z[3], celloutsig_0_15z[1], celloutsig_0_15z[2] } = { celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_12z } ^ { celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_8z };
  assign { celloutsig_0_69z[4:2], celloutsig_0_69z[5], celloutsig_0_69z[1] } = { celloutsig_0_58z, celloutsig_0_43z, celloutsig_0_16z } ^ { celloutsig_0_63z, celloutsig_0_10z, celloutsig_0_64z, celloutsig_0_29z[15], celloutsig_0_18z };
  assign _00_[4] = celloutsig_0_44z;
  assign { out_data[128], out_data[96], out_data[50:32], out_data[0] } = { 1'h1, celloutsig_1_19z, celloutsig_0_82z, celloutsig_0_83z };
endmodule

/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire [5:0] _05_;
  wire [14:0] _06_;
  wire [25:0] _07_;
  wire [23:0] _08_;
  wire [9:0] _09_;
  wire [21:0] _10_;
  wire [13:0] _11_;
  wire celloutsig_0_0z;
  wire [25:0] celloutsig_0_12z;
  wire [23:0] celloutsig_0_13z;
  wire [3:0] celloutsig_0_14z;
  wire [10:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_20z;
  wire [7:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [6:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [9:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [6:0] celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire [15:0] celloutsig_0_47z;
  wire [16:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire [5:0] celloutsig_0_56z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire [11:0] celloutsig_0_63z;
  wire celloutsig_0_66z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [14:0] celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire [6:0] celloutsig_1_10z;
  wire [32:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire [28:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_4z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_12z = ~(celloutsig_1_0z[1] | celloutsig_1_2z);
  assign celloutsig_1_8z = ~(celloutsig_1_7z | celloutsig_1_6z);
  assign celloutsig_0_36z = ~celloutsig_0_5z;
  assign celloutsig_0_38z = ~celloutsig_0_8z;
  assign celloutsig_0_4z = ~celloutsig_0_2z;
  assign celloutsig_1_7z = ~celloutsig_1_12z;
  assign celloutsig_1_15z = ~celloutsig_1_10z[0];
  assign celloutsig_0_16z = ~celloutsig_0_15z[0];
  assign celloutsig_0_41z = ~((celloutsig_0_2z | celloutsig_0_28z) & (_00_ | celloutsig_0_34z));
  assign celloutsig_0_46z = celloutsig_0_44z | celloutsig_0_43z;
  assign celloutsig_0_60z = celloutsig_0_12z[4] | celloutsig_0_33z;
  assign celloutsig_0_6z = celloutsig_0_3z[0] | in_data[42];
  assign celloutsig_1_19z = celloutsig_1_14z | celloutsig_1_9z;
  assign celloutsig_0_8z = celloutsig_0_0z | celloutsig_0_7z;
  assign celloutsig_0_23z = celloutsig_0_18z | _01_;
  assign celloutsig_0_27z = celloutsig_0_24z | celloutsig_0_9z[14];
  assign celloutsig_0_30z = celloutsig_0_17z | celloutsig_0_6z;
  assign celloutsig_0_44z = ~(_03_ ^ celloutsig_0_8z);
  assign celloutsig_0_5z = ~(celloutsig_0_2z ^ _04_);
  assign celloutsig_1_17z = ~(celloutsig_1_2z ^ celloutsig_1_4z);
  assign celloutsig_0_2z = ~(in_data[26] ^ _02_);
  assign celloutsig_0_56z = { celloutsig_0_3z[3:2], celloutsig_0_43z, celloutsig_0_52z, celloutsig_0_52z, celloutsig_0_23z } + { _05_[5:4], celloutsig_0_46z, celloutsig_0_39z, celloutsig_0_38z, celloutsig_0_36z };
  assign celloutsig_1_11z = { in_data[129:116], celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_12z, celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_12z, celloutsig_1_12z } + { in_data[136:109], celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_7z };
  assign celloutsig_1_18z = { in_data[160:153], celloutsig_1_0z, celloutsig_1_10z, celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_12z, celloutsig_1_15z } + { in_data[173:146], celloutsig_1_17z };
  assign celloutsig_0_9z = { in_data[67:54], celloutsig_0_6z } + { _06_[14:13], _02_, _04_, _06_[10:4], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_6z };
  assign celloutsig_0_12z = { in_data[47:36], celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_0z, _06_[14:13], _02_, _04_, _06_[10:4] } + { _04_, _06_[10:6], celloutsig_0_7z, _07_[18:0] };
  assign celloutsig_0_13z = { _08_[23], _03_, _08_[21:3], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_5z } + in_data[44:21];
  assign celloutsig_0_31z = { in_data[36:32], celloutsig_0_14z, celloutsig_0_5z } + { _09_[9:7], _05_[5:4], _01_, _09_[3:1], celloutsig_0_29z };
  reg [10:0] _40_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _40_ <= 11'h000;
    else _40_ <= in_data[16:6];
  assign { _06_[14:13], _02_, _04_, _06_[10:4] } = _40_;
  reg [18:0] _41_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _41_ <= 19'h00000;
    else _41_ <= { celloutsig_0_9z[8:0], celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_4z };
  assign _07_[18:0] = _41_;
  reg [21:0] _42_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _42_ <= 22'h000000;
    else _42_ <= { in_data[89:72], celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_2z };
  assign { _08_[23], _03_, _08_[21:3], _10_[0] } = _42_;
  reg [13:0] _43_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _43_ <= 14'h0000;
    else _43_ <= { celloutsig_0_12z[7:4], celloutsig_0_18z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_7z };
  assign { _11_[13], _00_, _09_[9:7], _05_[5:4], _01_, _09_[3:1], _11_[2:0] } = _43_;
  assign celloutsig_0_3z = { _06_[9:6], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z } / { 1'h1, _06_[10:5] };
  assign celloutsig_0_47z = { celloutsig_0_3z[1], _11_[13], _00_, _09_[9:7], _05_[5:4], _01_, _09_[3:1], _11_[2:0], celloutsig_0_26z } / { 1'h1, celloutsig_0_12z[7:1], celloutsig_0_24z, celloutsig_0_7z, celloutsig_0_34z, celloutsig_0_19z, celloutsig_0_46z, celloutsig_0_35z, celloutsig_0_20z, celloutsig_0_20z };
  assign celloutsig_0_49z = { _07_[14:2], celloutsig_0_45z, celloutsig_0_42z, celloutsig_0_32z, celloutsig_0_20z } / { 1'h1, celloutsig_0_13z[14:7], celloutsig_0_22z };
  assign celloutsig_0_63z = { celloutsig_0_18z, celloutsig_0_51z, celloutsig_0_59z, celloutsig_0_42z, celloutsig_0_50z, celloutsig_0_27z, celloutsig_0_42z, celloutsig_0_51z, celloutsig_0_27z, celloutsig_0_20z, celloutsig_0_20z, celloutsig_0_17z } / { 1'h1, celloutsig_0_53z, celloutsig_0_60z, celloutsig_0_26z, celloutsig_0_23z, celloutsig_0_41z, celloutsig_0_56z };
  assign celloutsig_0_14z = { celloutsig_0_13z[8:6], celloutsig_0_7z } / { 1'h1, in_data[17:15] };
  assign celloutsig_0_25z = celloutsig_0_12z[21:15] / { 1'h1, _06_[13], _02_, _04_, _06_[10:8] };
  assign celloutsig_0_42z = ! { celloutsig_0_17z, celloutsig_0_7z, celloutsig_0_35z, celloutsig_0_6z };
  assign celloutsig_0_51z = ! celloutsig_0_49z[4:1];
  assign celloutsig_0_20z = ! { _06_[9:5], celloutsig_0_14z, _06_[14:13], _02_, _04_, _06_[10:4], celloutsig_0_0z };
  assign celloutsig_0_24z = ! celloutsig_0_13z[22:15];
  assign celloutsig_0_26z = ! { celloutsig_0_22z[6:4], celloutsig_0_25z, celloutsig_0_22z, celloutsig_0_24z };
  assign celloutsig_1_9z = { celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z } < in_data[143:139];
  assign celloutsig_1_0z = in_data[131:128] % { 1'h1, in_data[175:173] };
  assign celloutsig_1_10z = in_data[153:147] % { 1'h1, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_12z };
  assign celloutsig_0_22z = { celloutsig_0_3z, celloutsig_0_2z } % { 1'h1, in_data[19:14], celloutsig_0_6z };
  assign celloutsig_0_34z = | { _11_[13], _00_, _09_[9:7], _05_[5:4], _01_, _09_[3:1], _11_[2:1], celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_31z, celloutsig_0_28z, celloutsig_0_8z, celloutsig_0_4z };
  assign celloutsig_0_52z = | { celloutsig_0_49z[12:4], _11_[13], _00_, _09_[9:7], _05_[5:4], _01_, _09_[3:1], _11_[2:0], celloutsig_0_27z };
  assign celloutsig_0_66z = | { celloutsig_0_63z[5:1], celloutsig_0_2z, celloutsig_0_14z, celloutsig_0_5z, _06_[14:13], _02_, _04_, _06_[10:4] };
  assign celloutsig_0_29z = | { celloutsig_0_13z[6:2], celloutsig_0_14z, celloutsig_0_22z, celloutsig_0_8z, celloutsig_0_0z };
  assign celloutsig_0_32z = | { celloutsig_0_14z[3:1], celloutsig_0_5z, celloutsig_0_15z };
  assign celloutsig_0_35z = ~^ { celloutsig_0_27z, celloutsig_0_24z, celloutsig_0_24z };
  assign celloutsig_1_4z = ~^ { celloutsig_1_0z[3:1], celloutsig_1_1z };
  assign celloutsig_0_17z = ~^ { celloutsig_0_14z[0], celloutsig_0_6z, celloutsig_0_6z };
  assign celloutsig_0_33z = ~^ { celloutsig_0_14z, celloutsig_0_32z, celloutsig_0_16z, celloutsig_0_30z, celloutsig_0_29z, celloutsig_0_16z, celloutsig_0_26z };
  assign celloutsig_0_0z = ^ in_data[41:26];
  assign celloutsig_0_39z = ^ { _08_[23], _03_, _08_[21:3], _10_[0] };
  assign celloutsig_0_43z = ^ { celloutsig_0_19z, celloutsig_0_27z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_45z = ^ { celloutsig_0_5z, celloutsig_0_41z, celloutsig_0_34z, celloutsig_0_27z, celloutsig_0_33z };
  assign celloutsig_0_53z = ^ celloutsig_0_47z[8:4];
  assign celloutsig_1_6z = ^ { in_data[124:123], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_12z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_0_19z = ^ celloutsig_0_13z[7:2];
  assign celloutsig_0_28z = ^ celloutsig_0_22z[3:0];
  assign celloutsig_0_15z = { _06_[14:13], _02_, _04_, _06_[10:5], celloutsig_0_6z } >>> { celloutsig_0_13z[19:11], celloutsig_0_4z, celloutsig_0_7z };
  assign celloutsig_0_50z = ~((celloutsig_0_17z & celloutsig_0_38z) | celloutsig_0_3z[4]);
  assign celloutsig_0_59z = ~((_11_[0] & celloutsig_0_30z) | celloutsig_0_36z);
  assign celloutsig_1_1z = ~((in_data[162] & in_data[163]) | in_data[123]);
  assign celloutsig_1_2z = ~((celloutsig_1_0z[3] & celloutsig_1_1z) | celloutsig_1_0z[2]);
  assign celloutsig_0_7z = ~((celloutsig_0_4z & celloutsig_0_4z) | celloutsig_0_4z);
  assign celloutsig_1_14z = ~((celloutsig_1_1z & celloutsig_1_11z[8]) | celloutsig_1_11z[29]);
  assign celloutsig_0_18z = ~((_07_[11] & _06_[5]) | celloutsig_0_3z[6]);
  assign _05_[3:0] = { celloutsig_0_46z, celloutsig_0_39z, celloutsig_0_38z, celloutsig_0_36z };
  assign { _06_[12:11], _06_[3:0] } = { _02_, _04_, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_6z };
  assign _07_[25:19] = { _04_, _06_[10:6], celloutsig_0_7z };
  assign { _08_[22], _08_[2:0] } = { _03_, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_5z };
  assign { _09_[6:4], _09_[0] } = { _05_[5:4], _01_, celloutsig_0_29z };
  assign _10_[21:1] = { _08_[23], _03_, _08_[21:3] };
  assign _11_[12:3] = { _00_, _09_[9:7], _05_[5:4], _01_, _09_[3:1] };
  assign { out_data[156:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_66z, celloutsig_0_15z[0] };
endmodule

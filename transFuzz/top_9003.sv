/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire [3:0] _06_;
  reg [3:0] _07_;
  wire [3:0] _08_;
  wire [4:0] _09_;
  wire [14:0] _10_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [2:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [7:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire [3:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [10:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [5:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [9:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire [7:0] celloutsig_0_45z;
  wire [5:0] celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire [12:0] celloutsig_0_50z;
  wire [8:0] celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire [3:0] celloutsig_0_54z;
  wire celloutsig_0_55z;
  wire [9:0] celloutsig_0_56z;
  wire celloutsig_0_5z;
  wire [29:0] celloutsig_0_60z;
  wire [6:0] celloutsig_0_61z;
  wire [17:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [8:0] celloutsig_0_8z;
  wire [2:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [12:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [11:0] celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire [10:0] celloutsig_1_19z;
  wire [25:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_55z = !(celloutsig_0_31z ? celloutsig_0_8z[1] : _00_);
  assign celloutsig_1_2z = !(celloutsig_1_1z[7] ? celloutsig_1_1z[21] : celloutsig_1_1z[18]);
  assign celloutsig_1_10z = !(celloutsig_1_7z ? celloutsig_1_3z[2] : celloutsig_1_6z);
  assign celloutsig_0_7z = !(celloutsig_0_3z ? _02_ : _01_);
  assign celloutsig_1_18z = !(celloutsig_1_15z[0] ? celloutsig_1_12z[12] : celloutsig_1_10z);
  assign celloutsig_0_11z = !(_03_ ? in_data[23] : celloutsig_0_1z);
  assign celloutsig_1_6z = ~celloutsig_1_0z;
  assign celloutsig_1_13z = ~celloutsig_1_2z;
  assign celloutsig_0_24z = ~celloutsig_0_5z;
  assign celloutsig_0_29z = ~((_00_ | celloutsig_0_27z) & (celloutsig_0_9z[1] | celloutsig_0_9z[1]));
  assign celloutsig_1_8z = ~((_04_ | celloutsig_1_2z) & (_04_ | celloutsig_1_0z));
  assign celloutsig_0_26z = ~((celloutsig_0_12z[0] | celloutsig_0_15z) & (celloutsig_0_24z | celloutsig_0_21z));
  assign celloutsig_0_32z = celloutsig_0_29z | celloutsig_0_10z;
  always_ff @(negedge celloutsig_1_19z[0], posedge clkin_data[64])
    if (clkin_data[64]) _07_ <= 4'h0;
    else _07_ <= { celloutsig_0_17z[7], celloutsig_0_25z, celloutsig_0_15z, celloutsig_0_27z };
  reg [3:0] _25_;
  always_ff @(posedge celloutsig_1_19z[0], posedge clkin_data[32])
    if (clkin_data[32]) _25_ <= 4'h0;
    else _25_ <= { _02_, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z };
  assign { _00_, _08_[2], _01_, _08_[0] } = _25_;
  reg [4:0] _26_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _26_ <= 5'h00;
    else _26_ <= { celloutsig_1_4z[2:1], celloutsig_1_3z };
  assign { _09_[4:1], _04_ } = _26_;
  reg [14:0] _27_;
  always_ff @(posedge celloutsig_1_19z[0], negedge clkin_data[32])
    if (!clkin_data[32]) _27_ <= 15'h0000;
    else _27_ <= { celloutsig_0_18z, celloutsig_0_13z, celloutsig_0_13z, _06_[3], _03_, _02_, _06_[0], celloutsig_0_9z[2:1], celloutsig_0_3z, celloutsig_0_9z[2:1], celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_15z };
  assign { _10_[14:12], _05_, _10_[10:0] } = _27_;
  reg [3:0] _28_;
  always_ff @(posedge celloutsig_1_19z[0], posedge clkin_data[64])
    if (clkin_data[64]) _28_ <= 4'h0;
    else _28_ <= { in_data[10:8], celloutsig_0_1z };
  assign { _06_[3], _03_, _02_, _06_[0] } = _28_;
  assign celloutsig_0_51z = { celloutsig_0_42z[8:1], celloutsig_0_26z } & { celloutsig_0_22z, celloutsig_0_31z, celloutsig_0_10z, celloutsig_0_27z, celloutsig_0_9z[2:1], celloutsig_0_3z, celloutsig_0_32z, celloutsig_0_23z };
  assign celloutsig_0_60z = { celloutsig_0_8z[3:1], celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_26z, celloutsig_0_49z, celloutsig_0_43z, celloutsig_0_28z, celloutsig_0_45z, celloutsig_0_18z } & { celloutsig_0_26z, celloutsig_0_54z, celloutsig_0_51z, celloutsig_0_41z, celloutsig_0_47z, celloutsig_0_51z };
  assign celloutsig_1_1z = { in_data[189:168], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } & in_data[130:105];
  assign celloutsig_1_3z = { celloutsig_1_1z[18:17], celloutsig_1_2z } & { in_data[155], celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_0_12z = { in_data[20:19], celloutsig_0_1z } & { celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_11z };
  assign celloutsig_0_56z = { celloutsig_0_6z[7:1], celloutsig_0_36z, celloutsig_0_48z, celloutsig_0_11z } / { 1'h1, celloutsig_0_30z[4:0], celloutsig_0_9z[2:1], celloutsig_0_3z, celloutsig_0_15z };
  assign celloutsig_1_12z = { in_data[182:175], _09_[4:1], _04_ } / { 1'h1, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_8z, _09_[4:1], _04_, celloutsig_1_3z, celloutsig_1_7z };
  assign celloutsig_0_35z = celloutsig_0_28z[9:2] === celloutsig_0_8z[7:0];
  assign celloutsig_0_16z = { celloutsig_0_8z[6:4], _00_, _08_[2], _01_, _08_[0] } === { celloutsig_0_8z[8:5], celloutsig_0_12z };
  assign celloutsig_0_0z = in_data[30:26] <= in_data[95:91];
  assign celloutsig_0_31z = { celloutsig_0_24z, celloutsig_0_1z, _00_, _08_[2], _01_, _08_[0], celloutsig_0_24z, celloutsig_0_29z } <= { celloutsig_0_22z, celloutsig_0_22z, celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_20z };
  assign celloutsig_0_33z = { celloutsig_0_24z, celloutsig_0_15z, celloutsig_0_29z, celloutsig_0_3z, celloutsig_0_11z, celloutsig_0_26z } <= { celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_23z, celloutsig_0_12z };
  assign celloutsig_0_39z = { _08_[0], celloutsig_0_32z, celloutsig_0_20z, celloutsig_0_8z, celloutsig_0_23z, celloutsig_0_20z, celloutsig_0_5z, celloutsig_0_33z, celloutsig_0_15z, celloutsig_0_25z } <= { celloutsig_0_28z[4:0], celloutsig_0_0z, celloutsig_0_33z, celloutsig_0_18z, celloutsig_0_11z, _10_[14:12], _05_, _10_[10:0] };
  assign celloutsig_1_7z = { _09_[4:1], _04_, celloutsig_1_4z } <= { in_data[147:141], celloutsig_1_2z, celloutsig_1_6z };
  assign celloutsig_0_10z = { in_data[20:14], _00_, _08_[2], _01_, _08_[0], celloutsig_0_5z, _06_[3], _03_, _02_, _06_[0] } <= { _00_, _08_[2], celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_7z };
  assign celloutsig_0_1z = { in_data[52:50], celloutsig_0_0z } <= { in_data[39:37], celloutsig_0_0z };
  assign celloutsig_0_22z = celloutsig_0_17z[4:1] <= { _06_[0], celloutsig_0_5z, celloutsig_0_14z, celloutsig_0_5z };
  assign celloutsig_0_25z = celloutsig_0_6z[4:2] <= { celloutsig_0_16z, celloutsig_0_7z, celloutsig_0_21z };
  assign celloutsig_0_27z = { celloutsig_0_24z, celloutsig_0_9z[2:1], celloutsig_0_3z, celloutsig_0_24z } <= { _00_, _08_[2], _01_, _08_[0], celloutsig_0_10z };
  assign celloutsig_0_38z = celloutsig_0_28z || { celloutsig_0_6z[10:1], celloutsig_0_7z };
  assign celloutsig_0_34z = { _05_, _10_[10:4], celloutsig_0_32z, celloutsig_0_26z, celloutsig_0_17z, celloutsig_0_21z, celloutsig_0_9z[2:1], celloutsig_0_3z } < { celloutsig_0_1z, celloutsig_0_23z, _00_, _08_[2], _01_, _08_[0], _06_[3], _03_, _02_, _06_[0], celloutsig_0_24z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_24z, celloutsig_0_20z, celloutsig_0_20z };
  assign celloutsig_0_3z = { _06_[3], _03_, _02_ } < { _03_, _02_, _06_[0] };
  assign celloutsig_0_48z = { _08_[2], _01_, celloutsig_0_35z, celloutsig_0_7z, celloutsig_0_43z, celloutsig_0_21z } < _10_[5:0];
  assign celloutsig_0_13z = { _08_[2], _01_, _06_[3], _03_, _02_, _06_[0] } < { in_data[60:57], celloutsig_0_10z, celloutsig_0_11z };
  assign celloutsig_0_14z = in_data[75:73] < in_data[65:63];
  assign celloutsig_0_15z = { celloutsig_0_5z, celloutsig_0_10z, _06_[3], _03_, _02_, _06_[0], celloutsig_0_3z } < { celloutsig_0_6z[11:6], celloutsig_0_10z };
  assign celloutsig_0_6z = celloutsig_0_5z ? { in_data[67:58], _06_[3], _03_, _02_, _06_[0], _06_[3], _03_, _02_, _06_[0] } : { in_data[77:67], 1'h0, celloutsig_0_0z, _06_[3], _03_, _02_, _06_[0], 1'h0 };
  assign celloutsig_0_9z[2:1] = celloutsig_0_1z ? celloutsig_0_6z[13:12] : { _03_, _02_ };
  assign celloutsig_0_17z = _02_ ? { celloutsig_0_9z[2:1], celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_14z, celloutsig_0_0z } : { celloutsig_0_8z[4:1], celloutsig_0_12z, celloutsig_0_3z };
  assign celloutsig_0_20z = _10_[1] ? celloutsig_0_17z[4:1] : { celloutsig_0_12z, celloutsig_0_16z };
  assign celloutsig_0_28z = _06_[0] ? { _08_[0], celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_20z, celloutsig_0_12z, celloutsig_0_15z } : { celloutsig_0_8z[4:3], celloutsig_0_8z };
  assign celloutsig_0_18z = { celloutsig_0_10z, celloutsig_0_12z } != { in_data[49:47], celloutsig_0_15z };
  assign celloutsig_0_44z = { _03_, celloutsig_0_33z, celloutsig_0_5z, _07_, celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_3z, celloutsig_0_18z, celloutsig_0_35z, celloutsig_0_11z, celloutsig_0_9z[2:1], celloutsig_0_3z, celloutsig_0_29z, celloutsig_0_10z, celloutsig_0_27z, celloutsig_0_36z, celloutsig_0_23z } !== { celloutsig_0_41z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_35z, celloutsig_0_25z, celloutsig_0_31z, celloutsig_0_6z };
  assign celloutsig_0_49z = { _10_[8:2], celloutsig_0_14z, celloutsig_0_27z, celloutsig_0_1z, celloutsig_0_9z[2:1], celloutsig_0_3z } !== { _02_, celloutsig_0_28z, celloutsig_0_26z };
  assign celloutsig_0_52z = in_data[46:30] !== { celloutsig_0_29z, celloutsig_0_32z, celloutsig_0_14z, celloutsig_0_11z, celloutsig_0_39z, celloutsig_0_45z, celloutsig_0_9z[2:1], celloutsig_0_3z, celloutsig_0_27z };
  assign celloutsig_0_5z = { _06_[3], _03_, _02_, _06_[0] } !== { _00_, _08_[2], _01_, _08_[0] };
  assign celloutsig_1_0z = in_data[154:150] !== in_data[112:108];
  assign celloutsig_0_21z = { _01_, _08_[0], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_15z } !== { celloutsig_0_18z, _00_, _08_[2], _01_, _08_[0], celloutsig_0_3z };
  assign celloutsig_0_43z = celloutsig_0_8z[6] & celloutsig_0_40z;
  assign celloutsig_0_23z = celloutsig_0_22z & celloutsig_0_13z;
  assign celloutsig_0_36z = | { _00_, celloutsig_0_17z[4:1], _01_, _08_[2], _08_[0] };
  assign celloutsig_1_14z = | { _04_, _09_[4:1] };
  assign celloutsig_0_42z = { celloutsig_0_17z, celloutsig_0_11z, celloutsig_0_10z } >> { _02_, _06_[0], celloutsig_0_10z, celloutsig_0_34z, celloutsig_0_35z, celloutsig_0_21z, celloutsig_0_31z, celloutsig_0_24z, celloutsig_0_24z, celloutsig_0_0z };
  assign celloutsig_0_61z = { celloutsig_0_56z[8:5], celloutsig_0_55z, celloutsig_0_25z, celloutsig_0_14z } >> celloutsig_0_50z[8:2];
  assign celloutsig_1_15z = celloutsig_1_1z[23:12] >> celloutsig_1_12z[11:0];
  assign celloutsig_0_54z = { _00_, _08_[2], _01_, _08_[0] } <<< { _06_[0], celloutsig_0_0z, celloutsig_0_52z, celloutsig_0_44z };
  assign celloutsig_0_30z = { celloutsig_0_6z[9:5], celloutsig_0_13z } >>> { in_data[76:75], celloutsig_0_10z, celloutsig_0_22z, celloutsig_0_18z, celloutsig_0_26z };
  assign celloutsig_0_50z = { celloutsig_0_31z, celloutsig_0_26z, celloutsig_0_9z[2:1], celloutsig_0_3z, celloutsig_0_49z, celloutsig_0_9z[2:1], celloutsig_0_3z, _00_, _08_[2], _01_, _08_[0] } >>> { celloutsig_0_47z[4:2], celloutsig_0_5z, celloutsig_0_31z, celloutsig_0_48z, celloutsig_0_40z, celloutsig_0_11z, celloutsig_0_14z, celloutsig_0_49z, celloutsig_0_9z[2:1], celloutsig_0_3z };
  assign celloutsig_1_4z = { celloutsig_1_1z[22:21], celloutsig_1_0z, celloutsig_1_2z } >>> celloutsig_1_1z[7:4];
  assign celloutsig_1_19z = { celloutsig_1_13z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_14z, celloutsig_1_7z } >>> { in_data[137:128], celloutsig_1_2z };
  assign celloutsig_0_45z = { celloutsig_0_36z, celloutsig_0_27z, celloutsig_0_7z, _00_, _08_[2], _01_, _08_[0], celloutsig_0_3z } ~^ { celloutsig_0_8z[2:0], celloutsig_0_22z, celloutsig_0_18z, celloutsig_0_1z, celloutsig_0_36z, celloutsig_0_16z };
  assign celloutsig_0_47z = { in_data[9], _06_[3], _03_, _02_, _06_[0], celloutsig_0_44z } ~^ { celloutsig_0_30z[5:1], celloutsig_0_16z };
  assign celloutsig_0_8z = { celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_1z, _00_, _08_[2], _01_, _08_[0], celloutsig_0_7z } ~^ { _00_, _08_[2], celloutsig_0_1z, celloutsig_0_0z, _06_[3], _03_, _02_, _06_[0], celloutsig_0_5z };
  assign celloutsig_0_40z = ~((celloutsig_0_22z & _10_[9]) | celloutsig_0_38z);
  assign celloutsig_0_41z = ~((celloutsig_0_13z & celloutsig_0_26z) | celloutsig_0_12z[1]);
  assign _06_[2:1] = { _03_, _02_ };
  assign { _08_[3], _08_[1] } = { _00_, _01_ };
  assign _09_[0] = _04_;
  assign _10_[11] = _05_;
  assign celloutsig_0_9z[0] = celloutsig_0_3z;
  assign { out_data[128], out_data[106:96], out_data[61:32], out_data[6:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_60z, celloutsig_0_61z };
endmodule

/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [2:0] _03_;
  reg [2:0] _04_;
  wire [6:0] _05_;
  wire [13:0] _06_;
  wire [24:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [4:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [5:0] celloutsig_0_15z;
  wire [17:0] celloutsig_0_16z;
  wire [15:0] celloutsig_0_17z;
  wire [25:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [3:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [6:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [16:0] celloutsig_0_28z;
  wire [8:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [2:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_44z;
  wire [5:0] celloutsig_0_45z;
  wire [5:0] celloutsig_0_48z;
  wire [7:0] celloutsig_0_49z;
  wire [10:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire [2:0] celloutsig_0_59z;
  wire [12:0] celloutsig_0_61z;
  wire [7:0] celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_68z;
  wire celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire celloutsig_0_70z;
  wire celloutsig_0_71z;
  wire [19:0] celloutsig_0_78z;
  wire [3:0] celloutsig_0_82z;
  wire [2:0] celloutsig_0_89z;
  wire celloutsig_0_8z;
  wire [4:0] celloutsig_0_94z;
  wire celloutsig_0_95z;
  wire celloutsig_0_97z;
  wire [3:0] celloutsig_0_9z;
  wire [9:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [8:0] celloutsig_1_16z;
  wire [4:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [4:0] celloutsig_1_1z;
  wire [5:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [2:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_56z = celloutsig_0_49z[0] ? _00_ : celloutsig_0_9z[0];
  assign celloutsig_0_41z = !(celloutsig_0_11z[4] ? celloutsig_0_30z : celloutsig_0_36z);
  assign celloutsig_0_95z = !(celloutsig_0_70z ? celloutsig_0_31z[2] : celloutsig_0_24z);
  assign celloutsig_0_32z = ~(celloutsig_0_25z | celloutsig_0_14z);
  assign celloutsig_0_10z = ~(celloutsig_0_1z | _01_);
  assign celloutsig_0_27z = ~(celloutsig_0_12z | celloutsig_0_0z[10]);
  assign celloutsig_0_44z = ~celloutsig_0_18z[8];
  assign celloutsig_1_10z = ~celloutsig_1_9z[0];
  assign celloutsig_0_2z = ~celloutsig_0_1z;
  assign celloutsig_0_37z = celloutsig_0_10z | ~(celloutsig_0_18z[17]);
  assign celloutsig_0_58z = celloutsig_0_8z | ~(celloutsig_0_28z[2]);
  assign celloutsig_0_1z = in_data[78] | ~(celloutsig_0_0z[24]);
  assign celloutsig_0_70z = _02_ | celloutsig_0_62z[1];
  assign celloutsig_0_71z = celloutsig_0_63z | celloutsig_0_40z;
  assign celloutsig_1_11z = celloutsig_1_8z | in_data[168];
  assign celloutsig_1_15z = celloutsig_1_1z[2] | celloutsig_1_0z[6];
  assign celloutsig_1_9z = in_data[124:122] + in_data[133:131];
  always_ff @(posedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _04_ <= 3'h0;
    else _04_ <= { _03_[2:1], celloutsig_0_20z };
  reg [6:0] _25_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _25_ <= 7'h00;
    else _25_ <= celloutsig_0_0z[9:3];
  assign { _01_, _05_[5:0] } = _25_;
  reg [13:0] _26_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _26_ <= 14'h0000;
    else _26_ <= { in_data[38:28], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z };
  assign { _02_, _06_[12:7], _03_[2:1], _06_[4:2], _00_, _06_[0] } = _26_;
  reg [10:0] _27_;
  always_ff @(negedge clkin_data[32], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _27_ <= 11'h000;
    else _27_ <= { celloutsig_0_56z, celloutsig_0_59z, celloutsig_0_58z, celloutsig_0_94z, celloutsig_0_71z };
  assign out_data[10:0] = _27_;
  assign celloutsig_0_22z = { celloutsig_0_18z[11:9], celloutsig_0_3z } & celloutsig_0_16z[10:7];
  assign celloutsig_0_94z = { celloutsig_0_62z[6:3], celloutsig_0_35z } / { 1'h1, celloutsig_0_18z[6], celloutsig_0_89z };
  assign celloutsig_0_45z = { _06_[3], celloutsig_0_19z, celloutsig_0_27z, celloutsig_0_38z, celloutsig_0_38z, celloutsig_0_36z } / { 1'h1, celloutsig_0_10z, celloutsig_0_24z, celloutsig_0_41z, celloutsig_0_13z, celloutsig_0_30z };
  assign celloutsig_0_48z = { celloutsig_0_17z[15:13], celloutsig_0_31z } / { 1'h1, celloutsig_0_45z[4:0] };
  assign celloutsig_0_68z = { celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_51z, _04_ } === celloutsig_0_17z[10:5];
  assign celloutsig_1_8z = { 1'h0, celloutsig_1_1z, celloutsig_1_0z[6], celloutsig_1_7z, celloutsig_1_0z } === { in_data[141:126], 1'h0, celloutsig_1_0z[1] };
  assign celloutsig_0_19z = { _06_[12:7], _03_[2:1], _06_[4], celloutsig_0_14z, celloutsig_0_10z } === { celloutsig_0_18z[8:6], celloutsig_0_15z, celloutsig_0_12z, celloutsig_0_1z };
  assign celloutsig_0_30z = { celloutsig_0_22z[3:1], celloutsig_0_16z, celloutsig_0_19z, celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_20z, celloutsig_0_6z, celloutsig_0_25z, celloutsig_0_20z, celloutsig_0_8z } >= { in_data[85:58], celloutsig_0_6z };
  assign celloutsig_0_39z = celloutsig_0_15z >= { celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_19z };
  assign celloutsig_0_40z = { celloutsig_0_26z[4:1], celloutsig_0_33z, celloutsig_0_39z, celloutsig_0_31z, celloutsig_0_32z, celloutsig_0_15z, celloutsig_0_3z } >= { celloutsig_0_16z[15:3], celloutsig_0_3z, celloutsig_0_19z, celloutsig_0_14z, celloutsig_0_27z };
  assign celloutsig_1_13z = in_data[161:157] >= { celloutsig_1_0z[6], celloutsig_1_9z, 1'h0 };
  assign celloutsig_0_20z = { celloutsig_0_4z[8:6], celloutsig_0_11z } >= { celloutsig_0_18z[10:9], celloutsig_0_11z, celloutsig_0_8z };
  assign celloutsig_0_36z = { in_data[43], celloutsig_0_27z, celloutsig_0_22z } <= { celloutsig_0_22z[2], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_30z, celloutsig_0_10z, celloutsig_0_23z };
  assign celloutsig_0_12z = { _00_, _06_[0], celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_10z } <= celloutsig_0_0z[18:2];
  assign celloutsig_0_21z = { celloutsig_0_0z[21:6], celloutsig_0_14z, celloutsig_0_4z } <= { celloutsig_0_17z[14:1], celloutsig_0_15z, celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_1z };
  assign celloutsig_0_42z = celloutsig_0_15z[5:3] && { celloutsig_0_18z[12], celloutsig_0_13z, celloutsig_0_8z };
  assign celloutsig_0_50z = { celloutsig_0_48z[4:3], celloutsig_0_41z } && celloutsig_0_9z[3:1];
  assign celloutsig_0_59z = celloutsig_0_45z[2:0] * celloutsig_0_22z[2:0];
  assign celloutsig_0_61z = { in_data[65:56], _04_ } * celloutsig_0_16z[12:0];
  assign celloutsig_0_78z = { celloutsig_0_28z[16:6], _04_, celloutsig_0_50z, celloutsig_0_38z, celloutsig_0_71z, celloutsig_0_63z, celloutsig_0_57z, celloutsig_0_68z } * { _06_[9:7], _03_[2:1], _06_[4], celloutsig_0_21z, celloutsig_0_44z, celloutsig_0_29z, celloutsig_0_13z, celloutsig_0_69z, celloutsig_0_37z };
  assign celloutsig_0_9z = celloutsig_0_4z[9:6] * { celloutsig_0_4z[1], celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_6z };
  assign celloutsig_1_6z = { celloutsig_1_0z[6:3], 1'h0, celloutsig_1_0z[6] } * { celloutsig_1_0z[1], celloutsig_1_1z };
  assign celloutsig_1_16z = { celloutsig_1_0z[0], celloutsig_1_13z, celloutsig_1_11z, celloutsig_1_6z } * { celloutsig_1_11z, celloutsig_1_1z, celloutsig_1_0z[1], celloutsig_1_15z, celloutsig_1_8z };
  assign celloutsig_0_15z = { celloutsig_0_9z[0], celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_3z } * celloutsig_0_0z[11:6];
  assign celloutsig_0_16z = { celloutsig_0_0z[14:4], celloutsig_0_10z, celloutsig_0_15z } * { in_data[88:87], celloutsig_0_6z, _02_, _06_[12:7], _03_[2:1], _06_[4:2], _00_, _06_[0], celloutsig_0_3z };
  assign celloutsig_0_29z = celloutsig_0_4z[9:1] * { celloutsig_0_28z[6:0], celloutsig_0_25z, celloutsig_0_27z };
  assign celloutsig_0_63z = { _05_[2:0], celloutsig_0_44z } !== { celloutsig_0_61z[8:6], celloutsig_0_35z };
  assign celloutsig_1_14z = { celloutsig_1_0z[8:6], celloutsig_1_13z } !== { in_data[140:138], celloutsig_1_7z };
  assign celloutsig_0_24z = { celloutsig_0_16z[8:7], celloutsig_0_20z } !== { celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_10z };
  assign celloutsig_0_82z = ~ celloutsig_0_78z[3:0];
  assign celloutsig_0_28z = ~ { _06_[9:7], _03_[2:1], _06_[4:2], _00_, _06_[0], celloutsig_0_6z, celloutsig_0_15z };
  assign celloutsig_0_4z = celloutsig_0_0z[23:13] | { in_data[34:25], celloutsig_0_1z };
  assign celloutsig_0_11z = { _06_[3:2], _00_, celloutsig_0_3z, celloutsig_0_6z } | { _05_[3:0], celloutsig_0_10z };
  assign celloutsig_0_34z = | { celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_15z };
  assign celloutsig_0_35z = | { celloutsig_0_16z[16:0], celloutsig_0_34z };
  assign celloutsig_0_38z = | { celloutsig_0_25z, celloutsig_0_30z, celloutsig_0_14z };
  assign celloutsig_0_51z = | in_data[76:58];
  assign celloutsig_0_33z = ~^ { celloutsig_0_26z[5:1], celloutsig_0_21z, celloutsig_0_29z, celloutsig_0_3z };
  assign celloutsig_0_97z = ~^ { celloutsig_0_82z[1:0], celloutsig_0_68z, celloutsig_0_95z };
  assign celloutsig_1_7z = ~^ { celloutsig_1_1z[2:1], celloutsig_1_0z, 1'h0 };
  assign celloutsig_0_14z = ~^ { celloutsig_0_9z[2:1], celloutsig_0_13z, celloutsig_0_12z };
  assign celloutsig_0_3z = ~^ celloutsig_0_0z[23:5];
  assign celloutsig_0_49z = { celloutsig_0_15z[4], _01_, _05_[5:0] } >> { celloutsig_0_9z[2:1], celloutsig_0_15z };
  assign celloutsig_1_0z = in_data[148:139] >> in_data[158:149];
  assign celloutsig_1_18z = celloutsig_1_0z[7:3] >> { celloutsig_1_6z[3], 1'h0, celloutsig_1_13z, celloutsig_1_10z, celloutsig_1_14z };
  assign celloutsig_0_31z = { _06_[11:10], celloutsig_0_3z } >> { celloutsig_0_9z[2:1], celloutsig_0_19z };
  assign celloutsig_0_89z = celloutsig_0_45z[5:3] >> { celloutsig_0_24z, celloutsig_0_56z, celloutsig_0_21z };
  assign celloutsig_0_17z = celloutsig_0_0z[21:6] >> { celloutsig_0_0z[19:5], celloutsig_0_10z };
  assign celloutsig_0_26z = celloutsig_0_18z[12:6] >> celloutsig_0_4z[9:3];
  assign celloutsig_0_0z = in_data[90:66] <<< in_data[78:54];
  assign celloutsig_0_62z = { celloutsig_0_21z, celloutsig_0_11z, celloutsig_0_14z, celloutsig_0_3z } <<< { celloutsig_0_11z, celloutsig_0_14z, celloutsig_0_58z, celloutsig_0_30z };
  assign celloutsig_1_1z = in_data[136:132] <<< celloutsig_1_0z[9:5];
  assign celloutsig_0_18z = { celloutsig_0_17z[11:5], celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_13z } <<< { celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_10z, _02_, _06_[12:7], _03_[2:1], _06_[4:2], _00_, _06_[0] };
  assign celloutsig_0_52z = ~((celloutsig_0_31z[2] & celloutsig_0_45z[2]) | (celloutsig_0_14z & celloutsig_0_0z[7]));
  assign celloutsig_0_57z = ~((_05_[2] & celloutsig_0_52z) | (celloutsig_0_8z & celloutsig_0_40z));
  assign celloutsig_0_6z = ~((in_data[64] & celloutsig_0_1z) | (in_data[5] & celloutsig_0_1z));
  assign celloutsig_0_69z = ~((celloutsig_0_58z & celloutsig_0_33z) | (celloutsig_0_42z & celloutsig_0_16z[14]));
  assign celloutsig_0_8z = ~((_05_[0] & celloutsig_0_6z) | (celloutsig_0_1z & in_data[61]));
  assign celloutsig_1_19z = ~((celloutsig_1_11z & celloutsig_1_1z[1]) | (celloutsig_1_8z & celloutsig_1_16z[3]));
  assign celloutsig_0_13z = ~((celloutsig_0_2z & celloutsig_0_4z[4]) | (celloutsig_0_8z & celloutsig_0_8z));
  assign celloutsig_0_23z = ~((_01_ & celloutsig_0_11z[1]) | (celloutsig_0_1z & celloutsig_0_4z[8]));
  assign celloutsig_0_25z = ~((celloutsig_0_3z & _05_[4]) | (celloutsig_0_18z[6] & celloutsig_0_0z[2]));
  assign _03_[0] = celloutsig_0_20z;
  assign _05_[6] = _01_;
  assign { _06_[13], _06_[6:5], _06_[1] } = { _02_, _03_[2:1], _00_ };
  assign { out_data[132:128], out_data[96], out_data[32] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_97z };
endmodule

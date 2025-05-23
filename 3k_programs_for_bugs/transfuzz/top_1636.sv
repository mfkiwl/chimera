/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [8:0] _02_;
  wire [14:0] _03_;
  wire [2:0] _04_;
  wire [9:0] _05_;
  wire [6:0] _06_;
  wire celloutsig_0_0z;
  wire [5:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [3:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [16:0] celloutsig_0_18z;
  wire [2:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [2:0] celloutsig_0_25z;
  wire [4:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [3:0] celloutsig_0_29z;
  wire [2:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [8:0] celloutsig_0_32z;
  wire [15:0] celloutsig_0_33z;
  wire [11:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [18:0] celloutsig_0_38z;
  wire [28:0] celloutsig_0_3z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire [2:0] celloutsig_0_44z;
  wire [7:0] celloutsig_0_45z;
  wire [8:0] celloutsig_0_46z;
  wire celloutsig_0_48z;
  wire [2:0] celloutsig_0_49z;
  wire [2:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire [3:0] celloutsig_0_53z;
  wire [2:0] celloutsig_0_54z;
  wire celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire [4:0] celloutsig_0_58z;
  wire [13:0] celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire [10:0] celloutsig_0_63z;
  wire [13:0] celloutsig_0_64z;
  wire [4:0] celloutsig_0_69z;
  wire [4:0] celloutsig_0_6z;
  wire celloutsig_0_72z;
  wire [4:0] celloutsig_0_73z;
  wire celloutsig_0_78z;
  wire celloutsig_0_7z;
  wire [5:0] celloutsig_0_8z;
  wire [9:0] celloutsig_0_91z;
  wire celloutsig_0_92z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [14:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [2:0] celloutsig_1_16z;
  wire [16:0] celloutsig_1_17z;
  wire [5:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [8:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [10:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [8:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [10:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_6z = celloutsig_1_4z ? celloutsig_1_5z[6] : celloutsig_1_1z[0];
  assign celloutsig_0_31z = celloutsig_0_5z ? celloutsig_0_9z : celloutsig_0_28z;
  assign celloutsig_0_56z = ~(celloutsig_0_31z & celloutsig_0_51z);
  assign celloutsig_0_11z = ~(celloutsig_0_0z & celloutsig_0_7z);
  assign celloutsig_0_15z = ~(celloutsig_0_5z & celloutsig_0_0z);
  assign celloutsig_0_5z = !(celloutsig_0_2z[2] ? celloutsig_0_2z[0] : celloutsig_0_4z[2]);
  assign celloutsig_1_3z = !(in_data[191] ? celloutsig_1_2z : in_data[153]);
  assign celloutsig_0_50z = ~(celloutsig_0_44z[2] | celloutsig_0_36z);
  assign celloutsig_0_92z = ~(celloutsig_0_73z[2] | celloutsig_0_1z);
  assign celloutsig_1_2z = ~(celloutsig_1_1z[1] | in_data[156]);
  assign celloutsig_0_23z = ~(celloutsig_0_7z | celloutsig_0_13z);
  assign celloutsig_0_57z = ~((celloutsig_0_27z | celloutsig_0_5z) & celloutsig_0_56z);
  assign celloutsig_1_19z = ~((celloutsig_1_17z[10] | celloutsig_1_13z) & _00_);
  assign celloutsig_0_20z = ~((celloutsig_0_7z | celloutsig_0_8z[1]) & celloutsig_0_11z);
  assign celloutsig_0_27z = ~((_01_ | celloutsig_0_20z) & celloutsig_0_0z);
  assign celloutsig_0_37z = ~((celloutsig_0_20z | celloutsig_0_5z) & (celloutsig_0_7z | celloutsig_0_36z));
  assign celloutsig_0_43z = ~((celloutsig_0_9z | celloutsig_0_27z) & (celloutsig_0_17z | celloutsig_0_7z));
  assign celloutsig_0_60z = ~((celloutsig_0_45z[5] | celloutsig_0_52z) & (celloutsig_0_49z[0] | celloutsig_0_7z));
  assign celloutsig_0_46z = { celloutsig_0_44z[2], celloutsig_0_36z, celloutsig_0_25z, celloutsig_0_30z, _02_[2:0] } + { celloutsig_0_8z[1:0], celloutsig_0_8z, celloutsig_0_27z };
  assign celloutsig_0_8z = { celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_5z } + { celloutsig_0_0z, celloutsig_0_6z };
  assign celloutsig_1_1z = { in_data[118:111], celloutsig_1_0z } + in_data[109:101];
  assign celloutsig_1_5z = in_data[178:168] + { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_0_10z = { celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_0z } + { celloutsig_0_4z[2], celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_1_12z = { in_data[130:127], celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_1z } + { _03_[14:11], celloutsig_1_5z };
  assign celloutsig_1_18z = celloutsig_1_12z[5:0] + { celloutsig_1_12z[9:5], celloutsig_1_0z };
  assign celloutsig_0_19z = { celloutsig_0_12z[0], celloutsig_0_7z, celloutsig_0_1z } + celloutsig_0_6z[2:0];
  reg [2:0] _33_;
  always_ff @(negedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _33_ <= 3'h0;
    else _33_ <= { _01_, _04_[1:0] };
  assign _02_[2:0] = _33_;
  reg [6:0] _34_;
  always_ff @(posedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _34_ <= 7'h00;
    else _34_ <= celloutsig_1_9z[9:3];
  assign { _06_[6], _03_[14:11], _00_, _06_[0] } = _34_;
  reg [2:0] _35_;
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _35_ <= 3'h0;
    else _35_ <= { celloutsig_0_6z[3:2], celloutsig_0_7z };
  assign { _01_, _04_[1:0] } = _35_;
  reg [4:0] _36_;
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _36_ <= 5'h00;
    else _36_ <= { celloutsig_0_6z[2:0], celloutsig_0_23z, celloutsig_0_15z };
  assign _05_[5:1] = _36_;
  assign celloutsig_0_9z = { celloutsig_0_3z[5], celloutsig_0_2z } == { celloutsig_0_8z[2:0], celloutsig_0_0z };
  assign celloutsig_1_8z = { in_data[166:149], celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_0z } == { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_48z = celloutsig_0_10z[4:2] === { celloutsig_0_19z[2:1], celloutsig_0_43z };
  assign celloutsig_0_7z = { celloutsig_0_6z[4:3], celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_2z } === { in_data[56:52], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_1_0z = in_data[189:178] === in_data[171:160];
  assign celloutsig_1_4z = { celloutsig_1_1z[4:1], celloutsig_1_2z, celloutsig_1_2z } === celloutsig_1_1z[5:0];
  assign celloutsig_1_14z = { in_data[111:105], celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_6z } === { celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_13z, _06_[6], _03_[14:11], _00_, _06_[0] };
  assign celloutsig_0_1z = in_data[23:17] === { in_data[15:10], celloutsig_0_0z };
  assign celloutsig_0_78z = { celloutsig_0_44z, celloutsig_0_51z } > celloutsig_0_64z[5:2];
  assign celloutsig_1_15z = { in_data[120:116], celloutsig_1_9z, celloutsig_1_0z } > { celloutsig_1_5z[7:4], celloutsig_1_14z, celloutsig_1_13z, celloutsig_1_9z };
  assign celloutsig_0_30z = celloutsig_0_26z > { celloutsig_0_21z, celloutsig_0_11z, celloutsig_0_4z };
  assign celloutsig_0_21z = ! in_data[82:77];
  assign celloutsig_0_28z = ! { celloutsig_0_3z[9:8], celloutsig_0_19z, celloutsig_0_5z };
  assign celloutsig_0_35z = celloutsig_0_32z[8:3] < celloutsig_0_8z;
  assign celloutsig_0_52z = { celloutsig_0_38z[7:4], celloutsig_0_35z } < celloutsig_0_33z[12:8];
  assign celloutsig_1_13z = { celloutsig_1_12z[7:3], _06_[6], _03_[14:11], _00_, _06_[0] } < in_data[146:135];
  assign celloutsig_0_36z = celloutsig_0_3z[1] & ~(celloutsig_0_8z[0]);
  assign celloutsig_0_58z = { celloutsig_0_26z[2:1], celloutsig_0_13z, celloutsig_0_42z, celloutsig_0_11z } * { celloutsig_0_7z, celloutsig_0_44z, celloutsig_0_31z };
  assign celloutsig_0_64z = { celloutsig_0_9z, celloutsig_0_34z, celloutsig_0_43z } * { celloutsig_0_13z, celloutsig_0_34z, celloutsig_0_60z };
  assign celloutsig_0_18z = { celloutsig_0_3z[9], celloutsig_0_8z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_7z } * { in_data[75:64], celloutsig_0_12z, celloutsig_0_15z };
  assign celloutsig_0_26z = { celloutsig_0_10z[4:3], celloutsig_0_25z } * { celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_13z, celloutsig_0_17z, celloutsig_0_21z };
  assign celloutsig_0_29z = { celloutsig_0_2z, celloutsig_0_9z } * _05_[4:1];
  assign { celloutsig_0_38z[18:11], celloutsig_0_38z[9:0] } = celloutsig_0_20z ? { celloutsig_0_18z[5:4], celloutsig_0_2z, _01_, _04_[1:0], celloutsig_0_23z, celloutsig_0_15z, celloutsig_0_30z, celloutsig_0_16z, celloutsig_0_7z, celloutsig_0_26z } : { celloutsig_0_18z[13:10], celloutsig_0_16z, celloutsig_0_23z, celloutsig_0_22z, celloutsig_0_22z, celloutsig_0_10z, celloutsig_0_29z };
  assign celloutsig_0_91z = celloutsig_0_15z ? { celloutsig_0_45z[4:0], celloutsig_0_31z, celloutsig_0_12z } : { celloutsig_0_46z[4:2], celloutsig_0_69z, celloutsig_0_72z, celloutsig_0_78z };
  assign celloutsig_1_16z = celloutsig_1_13z ? { _03_[12:11], celloutsig_1_0z } : { celloutsig_1_9z[8], celloutsig_1_4z, 1'h0 };
  assign celloutsig_0_42z = { celloutsig_0_12z[2:0], celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_0z } != celloutsig_0_18z[16:2];
  assign celloutsig_1_9z = - { celloutsig_1_5z[1], celloutsig_1_6z, celloutsig_1_7z };
  assign celloutsig_0_53z = { celloutsig_0_36z, celloutsig_0_44z } | { celloutsig_0_44z[0], celloutsig_0_48z, celloutsig_0_52z, celloutsig_0_36z };
  assign celloutsig_0_12z = { celloutsig_0_2z, celloutsig_0_1z } | celloutsig_0_10z[5:2];
  assign celloutsig_0_0z = in_data[49] & in_data[25];
  assign celloutsig_0_51z = _05_[5] & celloutsig_0_11z;
  assign celloutsig_0_17z = celloutsig_0_3z[18] & _04_[1];
  assign celloutsig_0_72z = ~^ celloutsig_0_34z[11:3];
  assign celloutsig_0_13z = ~^ { in_data[20:10], celloutsig_0_12z };
  assign celloutsig_0_16z = ~^ in_data[95:85];
  assign celloutsig_0_22z = ~^ { celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_7z };
  assign celloutsig_0_59z = { celloutsig_0_33z[2], celloutsig_0_13z, celloutsig_0_58z, celloutsig_0_51z, celloutsig_0_43z, celloutsig_0_19z, celloutsig_0_13z, celloutsig_0_21z } >> { celloutsig_0_46z[7:3], celloutsig_0_50z, celloutsig_0_31z, celloutsig_0_8z, celloutsig_0_43z };
  assign celloutsig_0_3z = { in_data[59:37], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z } << { in_data[84:58], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_33z = { celloutsig_0_32z[4:1], celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_10z } << { celloutsig_0_18z[10:9], celloutsig_0_28z, celloutsig_0_25z, celloutsig_0_26z, celloutsig_0_26z };
  assign celloutsig_0_45z = { celloutsig_0_25z[2:1], celloutsig_0_42z, celloutsig_0_6z } << { celloutsig_0_38z[13:11], celloutsig_0_27z, celloutsig_0_38z[9], celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_30z };
  assign celloutsig_0_49z = celloutsig_0_6z[3:1] << { celloutsig_0_13z, celloutsig_0_22z, celloutsig_0_13z };
  assign celloutsig_0_63z = { celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_42z, celloutsig_0_28z, celloutsig_0_23z, celloutsig_0_7z, celloutsig_0_27z, celloutsig_0_36z, celloutsig_0_44z } << { celloutsig_0_53z, celloutsig_0_54z, celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_57z, celloutsig_0_60z };
  assign celloutsig_0_69z = celloutsig_0_63z[4:0] << { celloutsig_0_59z[13:10], celloutsig_0_5z };
  assign celloutsig_1_17z = { in_data[177:165], celloutsig_1_3z, celloutsig_1_15z, celloutsig_1_4z, celloutsig_1_6z } << { celloutsig_1_12z[14:5], celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_16z, celloutsig_1_3z };
  assign celloutsig_0_32z = { celloutsig_0_26z, celloutsig_0_30z, celloutsig_0_30z, celloutsig_0_9z, celloutsig_0_22z } >> { celloutsig_0_23z, celloutsig_0_29z, celloutsig_0_0z, celloutsig_0_19z };
  assign celloutsig_0_44z = celloutsig_0_10z[3:1] >> celloutsig_0_18z[6:4];
  assign celloutsig_0_54z = { celloutsig_0_21z, celloutsig_0_37z, celloutsig_0_27z } >> celloutsig_0_10z[2:0];
  assign celloutsig_0_73z = celloutsig_0_63z[4:0] >> celloutsig_0_6z;
  assign celloutsig_0_2z = { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z } >> { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_1_7z = { celloutsig_1_1z[8:1], celloutsig_1_2z } <<< { celloutsig_1_1z[6:0], celloutsig_1_2z, celloutsig_1_6z };
  assign celloutsig_0_25z = { celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_20z } <<< { celloutsig_0_19z[0], celloutsig_0_20z, celloutsig_0_0z };
  assign celloutsig_0_34z = { celloutsig_0_25z, celloutsig_0_32z } >>> { celloutsig_0_21z, _01_, _04_[1:0], celloutsig_0_26z, celloutsig_0_19z };
  assign celloutsig_0_4z = in_data[85:83] >>> { celloutsig_0_2z[2:1], celloutsig_0_1z };
  assign celloutsig_0_6z = { celloutsig_0_4z[1:0], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_0z } ^ { in_data[78:77], celloutsig_0_2z };
  assign _02_[8:3] = { celloutsig_0_44z[2], celloutsig_0_36z, celloutsig_0_25z, celloutsig_0_30z };
  assign _03_[10:0] = celloutsig_1_5z;
  assign _04_[2] = _01_;
  assign { _05_[7], _05_[0] } = { celloutsig_0_20z, celloutsig_0_27z };
  assign _06_[5:1] = { _03_[14:11], _00_ };
  assign celloutsig_0_38z[10] = celloutsig_0_27z;
  assign { out_data[133:128], out_data[96], out_data[41:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_91z, celloutsig_0_92z };
endmodule

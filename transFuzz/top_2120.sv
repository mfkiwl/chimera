/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  reg [2:0] _01_;
  wire [9:0] _02_;
  wire [14:0] _03_;
  reg [28:0] _04_;
  reg [6:0] _05_;
  wire celloutsig_0_0z;
  wire [28:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [3:0] celloutsig_0_14z;
  wire [3:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [11:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [19:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [5:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [8:0] celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [19:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [8:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire celloutsig_0_54z;
  wire celloutsig_0_56z;
  wire celloutsig_0_58z;
  wire celloutsig_0_5z;
  wire [12:0] celloutsig_0_60z;
  wire celloutsig_0_62z;
  wire [4:0] celloutsig_0_65z;
  wire celloutsig_0_66z;
  wire [8:0] celloutsig_0_7z;
  wire [5:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [2:0] celloutsig_1_15z;
  wire [3:0] celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_1z;
  wire [6:0] celloutsig_1_2z;
  wire [29:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  reg [12:0] _06_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_16z[3])
    if (celloutsig_1_16z[3]) _06_ <= 13'h0000;
    else _06_ <= { celloutsig_0_40z[13:7], celloutsig_0_9z, celloutsig_0_15z, celloutsig_0_27z };
  assign _03_[12:0] = _06_;
  assign celloutsig_0_58z = ~celloutsig_0_56z;
  assign celloutsig_1_18z = ~celloutsig_1_16z[3];
  assign celloutsig_0_41z = celloutsig_0_26z[0] | celloutsig_0_11z;
  assign celloutsig_1_4z = in_data[181] | in_data[139];
  assign celloutsig_1_14z = celloutsig_1_6z | celloutsig_1_3z[10];
  assign celloutsig_0_9z = celloutsig_0_3z | celloutsig_0_4z;
  assign celloutsig_0_3z = celloutsig_0_1z ^ in_data[16];
  assign celloutsig_0_34z = celloutsig_0_27z ^ celloutsig_0_20z[18];
  assign celloutsig_0_5z = celloutsig_0_1z ^ in_data[21];
  assign celloutsig_0_1z = celloutsig_0_0z ^ in_data[57];
  assign celloutsig_0_28z = celloutsig_0_0z ^ celloutsig_0_24z;
  reg [9:0] _18_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_16z[3])
    if (celloutsig_1_16z[3]) _18_ <= 10'h000;
    else _18_ <= { celloutsig_0_10z[24:18], celloutsig_0_29z, celloutsig_0_29z, celloutsig_0_34z };
  assign { _02_[9:6], _00_, _02_[4:0] } = _18_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_16z[3])
    if (celloutsig_1_16z[3]) _05_ <= 7'h00;
    else _05_ <= { in_data[75:74], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_1z };
  always_ff @(negedge clkin_data[32], posedge clkin_data[64])
    if (clkin_data[64]) _04_ <= 29'h00000000;
    else _04_ <= in_data[182:154];
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_16z[3])
    if (!celloutsig_1_16z[3]) _01_ <= 3'h0;
    else _01_ <= { in_data[59:58], celloutsig_0_31z };
  assign celloutsig_0_4z = in_data[56:38] === in_data[72:54];
  assign celloutsig_0_47z = { celloutsig_0_38z, celloutsig_0_21z, celloutsig_0_24z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_16z, celloutsig_0_27z, celloutsig_0_30z, celloutsig_0_8z, celloutsig_0_35z } === { celloutsig_0_10z[27:9], celloutsig_0_12z };
  assign celloutsig_0_56z = celloutsig_0_14z[2:0] === { celloutsig_0_27z, celloutsig_0_3z, celloutsig_0_23z };
  assign celloutsig_1_9z = celloutsig_1_3z[24:16] === _04_[8:0];
  assign celloutsig_0_12z = _05_[6:1] === celloutsig_0_10z[23:18];
  assign celloutsig_0_17z = { in_data[62:50], celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_12z, _05_ } === { celloutsig_0_10z[28:13], celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_15z };
  assign celloutsig_0_19z = celloutsig_0_8z === { celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_0z };
  assign celloutsig_0_22z = { celloutsig_0_18z[10:0], celloutsig_0_17z } === { celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_0z, _05_, celloutsig_0_21z, celloutsig_0_12z };
  assign celloutsig_0_25z = celloutsig_0_18z === { celloutsig_0_18z[4:0], celloutsig_0_12z, celloutsig_0_17z, celloutsig_0_17z, celloutsig_0_15z };
  assign celloutsig_0_30z = { celloutsig_0_10z[16], celloutsig_0_5z } === { _05_[2], celloutsig_0_29z };
  assign celloutsig_0_27z = { _05_[1], celloutsig_0_18z, celloutsig_0_8z, celloutsig_0_22z, celloutsig_0_23z } > { celloutsig_0_20z, celloutsig_0_12z };
  assign celloutsig_0_35z = ! _05_[4:2];
  assign celloutsig_0_38z = ! { in_data[17:8], celloutsig_0_22z, celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_11z, celloutsig_0_28z, celloutsig_0_7z };
  assign celloutsig_0_62z = ! { _01_, celloutsig_0_54z, celloutsig_0_47z };
  assign celloutsig_1_7z = ! { celloutsig_1_3z[18:16], celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_1_10z = ! _04_[25:1];
  assign celloutsig_0_11z = ! { in_data[57:56], celloutsig_0_0z, celloutsig_0_1z, _05_, celloutsig_0_3z };
  assign celloutsig_0_23z = ! { _05_[6:3], celloutsig_0_16z, celloutsig_0_19z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_15z };
  assign celloutsig_0_29z = ! { celloutsig_0_1z, celloutsig_0_25z, celloutsig_0_24z, celloutsig_0_17z, celloutsig_0_16z, celloutsig_0_7z, celloutsig_0_18z };
  assign celloutsig_0_31z = ! { celloutsig_0_8z[4], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_28z, celloutsig_0_14z };
  assign celloutsig_1_1z = _04_[4:0] != in_data[169:165];
  assign celloutsig_1_11z = { in_data[125], celloutsig_1_6z, celloutsig_1_10z, celloutsig_1_8z, 1'h1, celloutsig_1_2z } != { celloutsig_1_3z[23:19], 1'h1, celloutsig_1_6z, 4'hf, celloutsig_1_10z };
  assign celloutsig_0_21z = { celloutsig_0_10z[23:11], celloutsig_0_4z } != { _05_[6], celloutsig_0_17z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_16z, celloutsig_0_15z };
  assign celloutsig_0_46z = { celloutsig_0_18z[8:6], celloutsig_0_16z, celloutsig_0_29z, celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_28z } | { celloutsig_0_17z, celloutsig_0_41z, celloutsig_0_1z, celloutsig_0_39z, celloutsig_0_15z, celloutsig_0_12z };
  assign celloutsig_0_65z = { celloutsig_0_26z[4:1], celloutsig_0_62z } | { celloutsig_0_46z[6:5], celloutsig_0_1z, celloutsig_0_25z, celloutsig_0_62z };
  assign celloutsig_1_2z = _04_[13:7] | { in_data[125:120], celloutsig_1_1z };
  assign celloutsig_0_7z = { in_data[23], celloutsig_0_0z, _05_ } | { celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_0_20z = { in_data[48:34], celloutsig_0_3z, celloutsig_0_15z } | { celloutsig_0_10z[16:3], celloutsig_0_13z, celloutsig_0_15z, celloutsig_0_3z };
  assign celloutsig_0_26z = { celloutsig_0_25z, celloutsig_0_23z, celloutsig_0_14z } | { celloutsig_0_15z, celloutsig_0_24z, celloutsig_0_23z };
  assign celloutsig_0_54z = & { _03_[3:2], celloutsig_0_34z, celloutsig_0_3z };
  assign celloutsig_1_8z = & { celloutsig_1_6z, celloutsig_1_2z, _04_[15:13] };
  assign celloutsig_0_13z = & { celloutsig_0_4z, in_data[27:19] };
  assign celloutsig_0_16z = & { celloutsig_0_11z, celloutsig_0_7z[8:3] };
  assign celloutsig_0_0z = in_data[0] & in_data[2];
  assign celloutsig_0_39z = _02_[8] & celloutsig_0_31z;
  assign celloutsig_0_66z = celloutsig_0_9z & celloutsig_0_60z[12];
  assign celloutsig_1_13z = celloutsig_1_4z & celloutsig_1_1z;
  assign celloutsig_0_24z = celloutsig_0_0z & celloutsig_0_11z;
  assign celloutsig_0_60z = { celloutsig_0_15z[0], celloutsig_0_18z } ~^ { in_data[85:76], celloutsig_0_30z, celloutsig_0_22z, celloutsig_0_58z };
  assign celloutsig_1_16z = { celloutsig_1_15z[2:1], celloutsig_1_11z, celloutsig_1_14z } ~^ { celloutsig_1_3z[23:22], celloutsig_1_9z, celloutsig_1_7z };
  assign celloutsig_0_8z = in_data[83:78] ~^ { _05_[3:0], celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_0_10z = { in_data[55:28], celloutsig_0_0z } ~^ in_data[28:0];
  assign celloutsig_0_15z = celloutsig_0_14z ~^ { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_32z = { celloutsig_0_7z[4:3], celloutsig_0_8z, celloutsig_0_9z } ~^ { celloutsig_0_15z[1], celloutsig_0_23z, celloutsig_0_26z, celloutsig_0_28z };
  assign celloutsig_1_15z = { celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_9z } ^ { celloutsig_1_13z, celloutsig_1_9z, celloutsig_1_6z };
  assign celloutsig_0_14z = { celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_11z } ^ { celloutsig_0_10z[24:22], celloutsig_0_0z };
  assign celloutsig_0_18z = { celloutsig_0_14z[2], celloutsig_0_16z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_13z } ^ { celloutsig_0_10z[22:19], celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_5z };
  assign { celloutsig_0_40z[13:8], celloutsig_0_40z[17], celloutsig_0_40z[19:18], celloutsig_0_40z[7:0] } = { celloutsig_0_26z, celloutsig_0_21z, celloutsig_0_20z[17:16], celloutsig_0_9z, _05_ } ^ { celloutsig_0_31z, celloutsig_0_1z, celloutsig_0_21z, celloutsig_0_32z[8:6], in_data[73], in_data[75:74], celloutsig_0_32z[5:0], celloutsig_0_13z, celloutsig_0_24z };
  assign celloutsig_1_3z[29:7] = in_data[131:109] ~^ in_data[143:121];
  assign celloutsig_1_6z = ~celloutsig_1_4z;
  assign _02_[5] = _00_;
  assign _03_[14:13] = 2'h0;
  assign celloutsig_0_40z[16:14] = 3'h0;
  assign celloutsig_1_3z[6:0] = 7'h7f;
  assign { out_data[128], out_data[96], out_data[36:32], out_data[0] } = { celloutsig_1_18z, 1'h0, celloutsig_0_65z, celloutsig_0_66z };
endmodule

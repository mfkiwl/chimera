/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [2:0] _00_;
  reg [16:0] _01_;
  reg [6:0] _02_;
  reg [3:0] _03_;
  wire [5:0] _04_;
  reg [2:0] _05_;
  wire celloutsig_0_0z;
  wire [7:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [11:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [9:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [4:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [2:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_20z;
  wire [3:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [8:0] celloutsig_0_25z;
  wire [6:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [12:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [12:0] celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire [5:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire [7:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_55z;
  wire celloutsig_0_57z;
  wire celloutsig_0_5z;
  wire celloutsig_0_63z;
  wire [2:0] celloutsig_0_65z;
  wire celloutsig_0_66z;
  wire celloutsig_0_6z;
  wire [19:0] celloutsig_0_70z;
  wire [2:0] celloutsig_0_72z;
  wire celloutsig_0_78z;
  wire [2:0] celloutsig_0_79z;
  wire [14:0] celloutsig_0_7z;
  wire [2:0] celloutsig_0_8z;
  wire [7:0] celloutsig_0_9z;
  wire [18:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [2:0] celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire [3:0] celloutsig_1_18z;
  wire [23:0] celloutsig_1_19z;
  wire [12:0] celloutsig_1_1z;
  wire [12:0] celloutsig_1_2z;
  wire [3:0] celloutsig_1_3z;
  wire [7:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [7:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [25:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_57z = ~(celloutsig_0_35z | celloutsig_0_20z);
  assign celloutsig_1_12z = ~(celloutsig_1_10z | celloutsig_1_9z);
  assign celloutsig_0_36z = celloutsig_0_0z | celloutsig_0_18z[0];
  assign celloutsig_0_66z = celloutsig_0_25z[8] | celloutsig_0_47z;
  assign celloutsig_0_13z = celloutsig_0_11z | celloutsig_0_0z;
  assign celloutsig_0_63z = ~(celloutsig_0_13z ^ celloutsig_0_46z[0]);
  assign celloutsig_0_20z = ~(celloutsig_0_9z[7] ^ celloutsig_0_0z);
  assign celloutsig_0_37z = { celloutsig_0_10z[0], celloutsig_0_12z } + { celloutsig_0_32z[11], celloutsig_0_12z };
  assign celloutsig_0_65z = { celloutsig_0_30z, celloutsig_0_3z, celloutsig_0_55z } + _00_;
  assign celloutsig_0_9z = { celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_4z } + { celloutsig_0_7z[13:9], celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_2z };
  assign celloutsig_1_1z = celloutsig_1_0z[14:2] + in_data[110:98];
  assign celloutsig_1_8z = { in_data[116:112], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_0z } + { celloutsig_1_2z[12:3], celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_1z };
  assign celloutsig_0_14z = { in_data[89:82], celloutsig_0_3z, celloutsig_0_5z } + { in_data[12:7], celloutsig_0_6z, celloutsig_0_8z };
  assign celloutsig_0_18z = celloutsig_0_8z + { celloutsig_0_8z[2], celloutsig_0_13z, celloutsig_0_5z };
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _01_ <= 17'h00000;
    else _01_ <= { celloutsig_0_12z[4:3], celloutsig_0_17z, celloutsig_0_12z, celloutsig_0_38z, celloutsig_0_19z };
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _02_ <= 7'h00;
    else _02_ <= { celloutsig_0_30z, celloutsig_0_24z, celloutsig_0_30z, celloutsig_0_30z, celloutsig_0_5z, celloutsig_0_30z, celloutsig_0_38z };
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z[0])
    if (!celloutsig_1_18z[0]) _03_ <= 4'h0;
    else _03_ <= { celloutsig_0_9z[3], celloutsig_0_51z, celloutsig_0_2z, celloutsig_0_47z };
  reg [5:0] _23_;
  always_ff @(posedge clkin_data[32], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _23_ <= 6'h00;
    else _23_ <= { celloutsig_0_20z, celloutsig_0_52z, celloutsig_0_0z, celloutsig_0_18z };
  assign { _04_[5], _00_, _04_[1:0] } = _23_;
  always_ff @(posedge clkin_data[32], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _05_ <= 3'h0;
    else _05_ <= celloutsig_0_10z[3:1];
  assign celloutsig_0_7z = { in_data[95:86], celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_0z } / { 1'h1, in_data[76:68], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_0z, in_data[0] };
  assign celloutsig_0_21z = celloutsig_0_14z[3:0] / { 1'h1, celloutsig_0_12z[0], celloutsig_0_15z, celloutsig_0_19z };
  assign celloutsig_0_5z = { celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_0z } == { celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_1_9z = { in_data[117:110], celloutsig_1_4z } == { celloutsig_1_0z[10:3], celloutsig_1_6z };
  assign celloutsig_1_10z = { celloutsig_1_6z[6:1], celloutsig_1_6z } == { celloutsig_1_8z[11:0], celloutsig_1_5z, celloutsig_1_5z };
  assign celloutsig_0_15z = { celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_6z } == { celloutsig_0_7z[7], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_11z };
  assign celloutsig_0_0z = in_data[24:22] === in_data[58:56];
  assign celloutsig_0_33z = in_data[92:84] === { celloutsig_0_12z[0], celloutsig_0_10z };
  assign celloutsig_0_51z = { in_data[45:16], celloutsig_0_33z, celloutsig_0_47z, celloutsig_0_41z, celloutsig_0_37z, celloutsig_0_8z } === { celloutsig_0_32z[10:1], celloutsig_0_27z, celloutsig_0_49z, _05_, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_43z, celloutsig_0_22z, celloutsig_0_27z, celloutsig_0_35z, celloutsig_0_38z, _02_, celloutsig_0_18z, celloutsig_0_39z, celloutsig_0_33z };
  assign celloutsig_0_27z = { celloutsig_0_14z[6:4], celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_8z } === celloutsig_0_25z;
  assign celloutsig_0_4z = { celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_3z } > { in_data[93:92], celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_35z = { celloutsig_0_13z, celloutsig_0_6z, celloutsig_0_24z, celloutsig_0_13z, celloutsig_0_30z } > celloutsig_0_16z;
  assign celloutsig_0_6z = { in_data[7:3], celloutsig_0_0z } > in_data[16:11];
  assign celloutsig_0_40z = celloutsig_0_12z[11:2] < { celloutsig_0_25z[1:0], celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_4z, celloutsig_0_21z, celloutsig_0_19z };
  assign celloutsig_1_5z = celloutsig_1_0z[15:2] < { in_data[181], celloutsig_1_1z };
  assign celloutsig_0_22z = { celloutsig_0_10z[1], celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_13z } < { celloutsig_0_0z, celloutsig_0_16z };
  assign celloutsig_0_32z = { celloutsig_0_9z[4:1], celloutsig_0_22z, celloutsig_0_26z, celloutsig_0_30z } * { in_data[19:14], _05_, celloutsig_0_17z, celloutsig_0_17z, celloutsig_0_6z, celloutsig_0_24z };
  assign celloutsig_1_2z = celloutsig_1_0z[18:6] * celloutsig_1_0z[12:0];
  assign celloutsig_0_12z = { in_data[91:82], celloutsig_0_3z, celloutsig_0_2z } * { in_data[71], celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_0z };
  assign celloutsig_0_72z = celloutsig_0_21z[1] ? { celloutsig_0_70z[4:3], celloutsig_0_13z } : { _01_[1], celloutsig_0_47z, celloutsig_0_63z };
  assign celloutsig_0_10z = celloutsig_0_4z ? { in_data[73:71], celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_3z } : celloutsig_0_7z[14:7];
  assign celloutsig_0_16z = celloutsig_0_5z ? celloutsig_0_14z[7:3] : celloutsig_0_7z[9:5];
  assign celloutsig_0_25z = celloutsig_0_24z ? { celloutsig_0_3z, celloutsig_0_9z } : { celloutsig_0_18z[1:0], celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_17z, celloutsig_0_17z, celloutsig_0_11z, 1'h0 };
  assign celloutsig_0_24z = { celloutsig_0_18z, celloutsig_0_22z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_17z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_23z, celloutsig_0_4z } != { in_data[47:44], celloutsig_0_20z, celloutsig_0_16z, celloutsig_0_0z };
  assign celloutsig_0_43z = & { celloutsig_0_41z, celloutsig_0_36z, celloutsig_0_31z, celloutsig_0_21z[2:0], celloutsig_0_4z };
  assign celloutsig_0_44z = & { celloutsig_0_32z[11:0], celloutsig_0_24z, celloutsig_0_23z };
  assign celloutsig_1_17z = & { celloutsig_1_14z, celloutsig_1_10z, celloutsig_1_3z, celloutsig_1_2z };
  assign celloutsig_0_17z = & { celloutsig_0_7z[11:8], celloutsig_0_5z };
  assign celloutsig_0_3z = & { celloutsig_0_2z, in_data[18:13], celloutsig_0_0z };
  assign celloutsig_0_38z = celloutsig_0_20z & in_data[28];
  assign celloutsig_0_47z = _01_[15] & _02_[5];
  assign celloutsig_1_13z = celloutsig_1_0z[12] & celloutsig_1_10z;
  assign celloutsig_0_31z = ^ { in_data[48:33], celloutsig_0_13z, celloutsig_0_12z };
  assign celloutsig_0_39z = ^ { celloutsig_0_3z, celloutsig_0_30z, celloutsig_0_18z };
  assign celloutsig_0_41z = ^ { _05_[0], celloutsig_0_36z, celloutsig_0_5z, celloutsig_0_6z };
  assign celloutsig_0_52z = ^ { celloutsig_0_14z[6:4], celloutsig_0_9z, celloutsig_0_40z, celloutsig_0_40z, celloutsig_0_31z };
  assign celloutsig_0_78z = ^ { _02_[4:1], celloutsig_0_43z, celloutsig_0_44z, celloutsig_0_66z, celloutsig_0_33z };
  assign celloutsig_1_7z = ^ celloutsig_1_6z[5:0];
  assign celloutsig_1_14z = ^ { in_data[184:181], celloutsig_1_9z, celloutsig_1_12z, celloutsig_1_5z, celloutsig_1_12z, celloutsig_1_10z };
  assign celloutsig_0_2z = ^ in_data[44:42];
  assign celloutsig_0_46z = celloutsig_0_25z[8:3] <<< { celloutsig_0_12z[8:4], celloutsig_0_24z };
  assign celloutsig_0_8z = { celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_4z } <<< { celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_70z = { celloutsig_0_49z[2:1], _01_, celloutsig_0_35z } <<< { celloutsig_0_46z[3:0], celloutsig_0_57z, celloutsig_0_12z, celloutsig_0_65z };
  assign celloutsig_1_3z = in_data[114:111] <<< celloutsig_1_2z[11:8];
  assign celloutsig_1_4z = in_data[179:172] <<< celloutsig_1_1z[7:0];
  assign celloutsig_1_15z = celloutsig_1_6z[3:1] <<< celloutsig_1_0z[15:13];
  assign celloutsig_1_18z = { celloutsig_1_13z, celloutsig_1_15z } <<< celloutsig_1_4z[6:3];
  assign celloutsig_0_49z = { celloutsig_0_37z[11:7], celloutsig_0_3z, celloutsig_0_34z, celloutsig_0_31z } ^ { celloutsig_0_16z[4:1], celloutsig_0_8z, celloutsig_0_6z };
  assign celloutsig_0_79z = { celloutsig_0_10z[6], celloutsig_0_31z, celloutsig_0_66z } ^ celloutsig_0_72z;
  assign celloutsig_1_0z = in_data[142:124] ^ in_data[146:128];
  assign celloutsig_1_6z = celloutsig_1_1z[7:0] ^ celloutsig_1_1z[10:3];
  assign celloutsig_1_19z = { in_data[119:97], celloutsig_1_13z } ^ { celloutsig_1_2z[7:5], celloutsig_1_12z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_13z, celloutsig_1_17z, celloutsig_1_4z, celloutsig_1_12z };
  assign celloutsig_0_26z = { celloutsig_0_25z[6:2], celloutsig_0_3z, celloutsig_0_13z } ^ { celloutsig_0_12z[8:7], celloutsig_0_16z };
  assign celloutsig_0_34z = ~((celloutsig_0_4z & celloutsig_0_25z[7]) | (celloutsig_0_32z[3] & celloutsig_0_5z));
  assign celloutsig_0_55z = ~((celloutsig_0_47z & celloutsig_0_5z) | (celloutsig_0_23z & _03_[3]));
  assign celloutsig_0_11z = ~((celloutsig_0_3z & celloutsig_0_2z) | (celloutsig_0_5z & celloutsig_0_4z));
  assign celloutsig_0_19z = ~((celloutsig_0_13z & celloutsig_0_17z) | (celloutsig_0_2z & celloutsig_0_11z));
  assign celloutsig_0_23z = ~((celloutsig_0_16z[2] & celloutsig_0_3z) | (in_data[90] & celloutsig_0_12z[7]));
  assign celloutsig_0_30z = ~((celloutsig_0_11z & celloutsig_0_24z) | (celloutsig_0_9z[6] & celloutsig_0_22z));
  assign _04_[4:2] = _00_;
  assign { out_data[131:128], out_data[119:96], out_data[32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_78z, celloutsig_0_79z };
endmodule

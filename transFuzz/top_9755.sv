/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire [4:0] _04_;
  wire [5:0] _05_;
  reg [10:0] _06_;
  wire [16:0] celloutsig_0_0z;
  wire [10:0] celloutsig_0_10z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  wire [18:0] celloutsig_0_19z;
  wire [5:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [10:0] celloutsig_0_25z;
  wire [7:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [10:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_30z;
  wire [5:0] celloutsig_0_31z;
  wire [6:0] celloutsig_0_32z;
  wire [14:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [3:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [6:0] celloutsig_0_40z;
  wire celloutsig_0_45z;
  wire [3:0] celloutsig_0_47z;
  wire [8:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [3:0] celloutsig_0_52z;
  wire celloutsig_0_54z;
  wire [7:0] celloutsig_0_55z;
  wire [2:0] celloutsig_0_58z;
  wire [7:0] celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire celloutsig_0_6z;
  wire [9:0] celloutsig_0_7z;
  wire celloutsig_0_89z;
  wire [12:0] celloutsig_0_8z;
  wire celloutsig_0_90z;
  wire [65:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [22:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [2:0] celloutsig_1_19z;
  wire [7:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [19:0] celloutsig_1_4z;
  wire [29:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [3:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_34z = celloutsig_0_29z ? celloutsig_0_33z[2] : celloutsig_0_0z[5];
  assign celloutsig_1_2z = ~(celloutsig_1_1z[4] | celloutsig_1_1z[4]);
  assign celloutsig_1_3z = ~celloutsig_1_0z;
  assign celloutsig_0_5z = ~((celloutsig_0_4z | in_data[42]) & in_data[72]);
  assign celloutsig_1_18z = ~((celloutsig_1_17z[18] | celloutsig_1_5z[11]) & celloutsig_1_9z[1]);
  assign celloutsig_0_20z = celloutsig_0_14z ^ _00_;
  assign celloutsig_0_23z = _01_ ^ _02_;
  assign celloutsig_0_3z = ~(celloutsig_0_0z[12] ^ celloutsig_0_0z[5]);
  assign celloutsig_0_61z = ~(celloutsig_0_58z[2] ^ celloutsig_0_19z[2]);
  assign celloutsig_1_7z = ~(celloutsig_1_6z ^ celloutsig_1_2z);
  assign celloutsig_0_24z = ~(_03_ ^ celloutsig_0_13z);
  assign celloutsig_0_27z = ~(celloutsig_0_17z[2] ^ celloutsig_0_20z);
  reg [5:0] _19_;
  always_ff @(negedge celloutsig_1_19z[0], posedge clkin_data[0])
    if (clkin_data[0]) _19_ <= 6'h00;
    else _19_ <= celloutsig_0_7z[7:2];
  assign { _05_[5], _01_, _05_[3:1], _02_ } = _19_;
  always_ff @(negedge celloutsig_1_19z[0], negedge clkin_data[0])
    if (!clkin_data[0]) _06_ <= 11'h000;
    else _06_ <= { celloutsig_0_10z[5], celloutsig_0_17z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_13z, celloutsig_0_15z, celloutsig_0_12z, celloutsig_0_15z };
  reg [4:0] _21_;
  always_ff @(posedge celloutsig_1_19z[0], posedge clkin_data[0])
    if (clkin_data[0]) _21_ <= 5'h00;
    else _21_ <= celloutsig_0_1z[5:1];
  assign { _03_, _00_, _04_[2:0] } = _21_;
  assign celloutsig_0_0z = in_data[51:35] & in_data[24:8];
  assign celloutsig_0_38z = celloutsig_0_7z[4:1] & { _00_, _04_[2:0] };
  assign celloutsig_0_47z = _06_[3:0] & { celloutsig_0_21z, celloutsig_0_14z };
  assign celloutsig_0_58z = celloutsig_0_25z[6:4] & { celloutsig_0_26z[6], celloutsig_0_15z, celloutsig_0_4z };
  assign celloutsig_0_10z = in_data[37:27] & { in_data[14:5], celloutsig_0_4z };
  assign celloutsig_1_17z = { celloutsig_1_5z[25:5], celloutsig_1_2z, celloutsig_1_7z } & { in_data[148:127], celloutsig_1_2z };
  assign celloutsig_0_21z = { celloutsig_0_0z[14], celloutsig_0_5z, celloutsig_0_12z } & { _04_[2], celloutsig_0_6z, celloutsig_0_6z };
  assign celloutsig_0_40z = celloutsig_0_0z[6:0] / { 1'h1, celloutsig_0_31z };
  assign celloutsig_1_9z = { celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_2z } / { 1'h1, celloutsig_1_1z[5:3] };
  assign celloutsig_1_19z = in_data[103:101] / { 1'h1, celloutsig_1_5z[21:20] };
  assign celloutsig_0_6z = { _03_, _00_, _04_[2:0] } == in_data[16:12];
  assign celloutsig_0_29z = celloutsig_0_9z[65:62] == { _05_[2:1], celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_30z = celloutsig_0_1z[4:0] == { in_data[6:4], celloutsig_0_24z, celloutsig_0_5z };
  assign celloutsig_0_54z = _06_[8:3] === { celloutsig_0_21z[1:0], celloutsig_0_52z };
  assign celloutsig_0_13z = { in_data[21:11], celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_3z, _03_, _00_, _04_[2:0] } <= { in_data[61:37], celloutsig_0_3z };
  assign celloutsig_0_49z = { celloutsig_0_16z, celloutsig_0_45z, celloutsig_0_12z, celloutsig_0_14z, celloutsig_0_35z, celloutsig_0_47z } % { 1'h1, celloutsig_0_0z[13:8], celloutsig_0_34z, celloutsig_0_45z };
  assign celloutsig_0_8z = { celloutsig_0_0z[13:2], celloutsig_0_5z } % { 1'h1, celloutsig_0_0z[12:1] };
  assign celloutsig_0_19z = { celloutsig_0_8z[7:2], celloutsig_0_4z, celloutsig_0_17z, celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_1z } % { 1'h1, _05_[1], celloutsig_0_0z };
  assign celloutsig_0_33z = { celloutsig_0_10z[4:0], celloutsig_0_32z, celloutsig_0_16z, celloutsig_0_23z, celloutsig_0_27z } * { celloutsig_0_0z[13:1], celloutsig_0_14z, celloutsig_0_16z };
  assign celloutsig_0_52z = celloutsig_0_40z[4:1] * { celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_22z, celloutsig_0_6z };
  assign celloutsig_0_55z = celloutsig_0_49z[8:1] * celloutsig_0_25z[7:0];
  assign celloutsig_0_1z = in_data[63:58] * celloutsig_0_0z[6:1];
  assign celloutsig_0_31z = celloutsig_0_28z[6:1] * celloutsig_0_1z;
  assign celloutsig_0_35z = { celloutsig_0_33z[11:3], celloutsig_0_14z } !== { in_data[47:44], celloutsig_0_30z, _03_, _00_, _04_[2:0] };
  assign celloutsig_0_45z = { celloutsig_0_7z[7:5], celloutsig_0_23z } !== celloutsig_0_25z[5:2];
  assign celloutsig_0_89z = { celloutsig_0_26z[7:5], celloutsig_0_35z } !== celloutsig_0_59z[6:3];
  assign celloutsig_0_14z = celloutsig_0_8z[8:3] !== celloutsig_0_9z[18:13];
  assign celloutsig_0_15z = in_data[72:53] !== { celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_4z };
  assign celloutsig_0_22z = in_data[89:81] !== in_data[73:65];
  assign celloutsig_0_90z = & { celloutsig_0_61z, celloutsig_0_59z[7:1], celloutsig_0_38z, celloutsig_0_3z };
  assign celloutsig_1_6z = & celloutsig_1_4z[15:12];
  assign celloutsig_0_4z = | { in_data[77:74], celloutsig_0_1z };
  assign celloutsig_0_12z = | celloutsig_0_7z[6:4];
  assign celloutsig_0_16z = celloutsig_0_4z & celloutsig_0_6z;
  assign celloutsig_0_32z = { _06_[0], celloutsig_0_1z } >> celloutsig_0_26z[7:1];
  assign celloutsig_0_59z = { in_data[8:5], celloutsig_0_27z, celloutsig_0_4z, celloutsig_0_24z, celloutsig_0_54z } >> { celloutsig_0_55z[6:0], celloutsig_0_6z };
  assign celloutsig_1_4z = { celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_1z } >> { in_data[109:99], celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_0_17z = { _04_[2:0], celloutsig_0_15z } >> { celloutsig_0_7z[9:7], celloutsig_0_3z };
  assign celloutsig_0_25z = celloutsig_0_8z[11:1] >> { celloutsig_0_9z[21:12], celloutsig_0_14z };
  assign celloutsig_0_7z = { in_data[55:47], celloutsig_0_5z } >>> celloutsig_0_0z[15:6];
  assign celloutsig_0_9z = { in_data[58:21], celloutsig_0_4z, _03_, _00_, _04_[2:0], _03_, _00_, _04_[2:0], _03_, _00_, _04_[2:0], celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_7z } >>> { celloutsig_0_8z[10:1], celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_26z = { celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_21z, celloutsig_0_23z, celloutsig_0_3z, celloutsig_0_5z } >>> celloutsig_0_8z[12:5];
  assign celloutsig_0_28z = { celloutsig_0_0z[12:3], celloutsig_0_6z } >>> { celloutsig_0_8z[8:2], celloutsig_0_17z };
  assign celloutsig_1_1z = in_data[177:170] - in_data[141:134];
  assign celloutsig_1_5z = in_data[189:160] - { celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_1_0z = ~((in_data[184] & in_data[130]) | in_data[96]);
  assign _04_[4:3] = { _03_, _00_ };
  assign { _05_[4], _05_[0] } = { _01_, _02_ };
  assign { out_data[128], out_data[98:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_89z, celloutsig_0_90z };
endmodule

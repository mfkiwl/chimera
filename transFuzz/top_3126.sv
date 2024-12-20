/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  reg [11:0] _02_;
  wire [17:0] _03_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [20:0] celloutsig_0_11z;
  wire [3:0] celloutsig_0_12z;
  wire [37:0] celloutsig_0_14z;
  wire [12:0] celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [27:0] celloutsig_0_19z;
  wire [4:0] celloutsig_0_1z;
  wire [2:0] celloutsig_0_21z;
  wire [8:0] celloutsig_0_22z;
  wire [15:0] celloutsig_0_23z;
  wire [4:0] celloutsig_0_24z;
  wire [5:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [14:0] celloutsig_0_31z;
  wire [10:0] celloutsig_0_34z;
  wire [2:0] celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_40z;
  wire [2:0] celloutsig_0_43z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire [7:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [5:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [14:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire [4:0] celloutsig_1_16z;
  wire [2:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [2:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire [2:0] celloutsig_1_6z;
  wire celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_40z = celloutsig_0_22z[4] ? celloutsig_0_31z[10] : celloutsig_0_17z[2];
  assign celloutsig_0_6z = celloutsig_0_5z ? celloutsig_0_4z : celloutsig_0_0z;
  assign celloutsig_1_8z = ~(celloutsig_1_5z[3] & celloutsig_1_4z);
  assign celloutsig_0_56z = ~(celloutsig_0_14z[36] | celloutsig_0_2z);
  assign celloutsig_0_7z = ~(celloutsig_0_5z | celloutsig_0_6z);
  assign celloutsig_1_0z = ~((in_data[145] | in_data[104]) & (in_data[149] | in_data[164]));
  assign celloutsig_0_18z = 1'h1 | ~(celloutsig_0_2z);
  assign celloutsig_0_5z = ~(in_data[29] ^ celloutsig_0_2z);
  assign celloutsig_0_10z = ~(celloutsig_0_7z ^ celloutsig_0_0z);
  always_ff @(posedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _02_ <= 12'h000;
    else _02_ <= { celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_5z };
  reg [17:0] _14_;
  always_ff @(posedge celloutsig_1_19z, negedge clkin_data[64])
    if (!clkin_data[64]) _14_ <= 18'h00000;
    else _14_ <= { in_data[31:15], celloutsig_0_10z };
  assign { _03_[17], _00_, _03_[15:13], _01_, _03_[11:0] } = _14_;
  assign celloutsig_1_5z = in_data[166:163] & { in_data[190:188], celloutsig_1_0z };
  assign celloutsig_0_23z = { celloutsig_0_14z[17:15], celloutsig_0_16z } & { in_data[54:40], celloutsig_0_10z };
  assign celloutsig_0_57z = { celloutsig_0_49z[3:0], celloutsig_0_38z, celloutsig_0_47z, celloutsig_0_4z } == { celloutsig_0_34z[8:5], celloutsig_0_2z, celloutsig_0_45z, 1'h1 };
  assign celloutsig_0_47z = celloutsig_0_36z >= { celloutsig_0_17z[3:2], celloutsig_0_38z };
  assign celloutsig_1_2z = { in_data[174:169], celloutsig_1_0z, celloutsig_1_0z } >= in_data[179:172];
  assign celloutsig_1_4z = { in_data[177:148], celloutsig_1_1z } >= { in_data[173:144], celloutsig_1_1z };
  assign celloutsig_1_19z = { in_data[131:125], celloutsig_1_16z } >= celloutsig_1_10z[11:0];
  assign celloutsig_0_38z = { _03_[17], _00_, _03_[15:13], _01_, _03_[11:8] } <= { celloutsig_0_9z[3], celloutsig_0_21z, celloutsig_0_24z, celloutsig_0_6z };
  assign celloutsig_0_27z = celloutsig_0_19z[5:3] <= { celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_0z };
  assign celloutsig_0_46z = { celloutsig_0_11z[11:2], celloutsig_0_45z, celloutsig_0_5z } && 1'h1;
  assign celloutsig_1_11z = celloutsig_1_3z && { in_data[98:96], celloutsig_1_0z };
  assign celloutsig_1_13z = in_data[149:144] && { celloutsig_1_1z[2:1], celloutsig_1_11z, celloutsig_1_6z };
  assign celloutsig_1_6z = { celloutsig_1_1z[2:1], celloutsig_1_4z } % { 1'h1, celloutsig_1_1z[1:0] };
  assign celloutsig_0_36z = celloutsig_0_22z[4:2] * { celloutsig_0_31z[9], celloutsig_0_9z[4], celloutsig_0_2z };
  assign celloutsig_0_14z = { _03_[17], _00_, _03_[15:13], _01_, _03_[11:4], celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_7z } * { celloutsig_0_11z[18:6], _03_[17], _00_, _03_[15:13], _01_, _03_[11:0], celloutsig_0_0z, celloutsig_0_1z[4:1], 1'h1, celloutsig_0_10z };
  assign celloutsig_0_17z = { 1'h1, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_0z } * { celloutsig_0_11z[14], celloutsig_0_8z, celloutsig_0_0z, 1'h1 };
  assign celloutsig_0_21z = { celloutsig_0_19z[0], 1'h1, celloutsig_0_5z } * celloutsig_0_16z[11:9];
  assign celloutsig_0_31z = { celloutsig_0_16z[10:1], celloutsig_0_21z, celloutsig_0_0z, celloutsig_0_8z } * celloutsig_0_23z[15:1];
  assign celloutsig_0_45z = { celloutsig_0_22z[7:1], celloutsig_0_9z } !== { celloutsig_0_8z, celloutsig_0_26z, 1'h1, celloutsig_0_40z, celloutsig_0_17z };
  assign celloutsig_0_4z = & { celloutsig_0_1z[4:1], in_data[86:81], in_data[29:13], celloutsig_0_0z };
  assign celloutsig_0_2z = & { in_data[29:13], celloutsig_0_0z };
  assign celloutsig_0_29z = & { celloutsig_0_26z, celloutsig_0_12z, celloutsig_0_9z[4], celloutsig_0_7z, in_data[29:13], celloutsig_0_0z };
  assign celloutsig_0_0z = in_data[27] & in_data[55];
  assign celloutsig_0_8z = celloutsig_0_2z & celloutsig_0_0z;
  assign celloutsig_0_49z = { celloutsig_0_22z[8], celloutsig_0_27z, celloutsig_0_46z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_43z } >> celloutsig_0_14z[36:29];
  assign celloutsig_0_12z = { celloutsig_0_1z[1], 1'h1, celloutsig_0_10z, 1'h1 } >> celloutsig_0_9z[5:2];
  assign celloutsig_0_9z = { 1'h1, celloutsig_0_0z, 1'h1, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_2z } >> { celloutsig_0_2z, celloutsig_0_1z[4:1], 1'h1 };
  assign celloutsig_0_11z = { in_data[22:12], celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_1z[4:1], 1'h1, celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_7z } >> { in_data[42], celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_2z, 1'h1, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_9z };
  assign celloutsig_0_34z = celloutsig_0_23z[13:3] <<< celloutsig_0_19z[27:17];
  assign celloutsig_1_1z = { in_data[118], celloutsig_1_0z, celloutsig_1_0z } <<< in_data[172:170];
  assign celloutsig_1_10z = { _02_[2:1], celloutsig_1_3z, 1'h0, celloutsig_1_2z, 1'h0, celloutsig_1_3z } <<< { in_data[158:146], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_16z = { celloutsig_0_14z[14:5], celloutsig_0_4z, 1'h1, celloutsig_0_7z } >>> { _03_[3:0], celloutsig_0_12z, celloutsig_0_1z[4:1], 1'h1 };
  assign celloutsig_0_26z = celloutsig_0_14z[15:10] >>> { in_data[62:58], celloutsig_0_18z };
  assign celloutsig_0_43z = celloutsig_0_21z - { celloutsig_0_9z[1:0], celloutsig_0_29z };
  assign celloutsig_1_3z = { celloutsig_1_1z[2], celloutsig_1_0z, celloutsig_1_1z } - { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_18z = { in_data[157], celloutsig_1_13z, celloutsig_1_0z } - _02_[10:8];
  assign celloutsig_0_19z = { in_data[76:50], celloutsig_0_6z } - { celloutsig_0_14z[23:0], celloutsig_0_12z };
  assign celloutsig_1_16z = in_data[183:179] ~^ { celloutsig_1_3z[4:1], celloutsig_1_8z };
  assign celloutsig_0_22z = in_data[52:44] ~^ { celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_4z };
  assign celloutsig_0_24z = { celloutsig_0_21z[2], celloutsig_0_12z } ^ celloutsig_0_19z[17:13];
  assign celloutsig_0_1z[4:1] = in_data[20:17] ~^ in_data[83:80];
  assign { _03_[16], _03_[12] } = { _00_, _01_ };
  assign celloutsig_0_1z[0] = 1'h1;
  assign { out_data[130:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_56z, celloutsig_0_57z };
endmodule

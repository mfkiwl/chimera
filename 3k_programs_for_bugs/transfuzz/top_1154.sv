/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [5:0] _02_;
  wire [16:0] _03_;
  wire [10:0] _04_;
  reg [3:0] _05_;
  wire [7:0] _06_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [6:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_16z;
  wire [2:0] celloutsig_0_18z;
  wire [15:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [4:0] celloutsig_0_20z;
  wire [9:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [9:0] celloutsig_0_29z;
  wire [7:0] celloutsig_0_2z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [3:0] celloutsig_0_34z;
  wire [31:0] celloutsig_0_35z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire [29:0] celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [5:0] celloutsig_0_62z;
  wire [4:0] celloutsig_0_68z;
  wire [4:0] celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire [7:0] celloutsig_0_7z;
  wire [3:0] celloutsig_0_8z;
  wire [3:0] celloutsig_0_9z;
  wire [10:0] celloutsig_1_0z;
  wire celloutsig_1_12z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_2z;
  wire [8:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [12:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [8:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = ~(in_data[62] | in_data[83]);
  assign celloutsig_0_3z = ~(celloutsig_0_2z[1] | celloutsig_0_0z);
  assign celloutsig_0_33z = ~(celloutsig_0_28z | celloutsig_0_11z);
  assign celloutsig_0_4z = ~(celloutsig_0_0z | in_data[41]);
  assign celloutsig_0_41z = ~(1'h1 | celloutsig_0_18z[0]);
  assign celloutsig_0_6z = ~(celloutsig_0_3z | in_data[34]);
  assign celloutsig_0_25z = ~(celloutsig_0_7z[2] | celloutsig_0_20z[2]);
  assign celloutsig_0_26z = ~(in_data[83] | celloutsig_0_10z);
  assign celloutsig_1_4z = ~celloutsig_1_0z[1];
  assign celloutsig_0_43z = ~((celloutsig_0_8z[0] | celloutsig_0_38z) & (celloutsig_0_37z | celloutsig_0_27z));
  assign celloutsig_1_2z = ~((in_data[149] | _00_) & (celloutsig_1_0z[3] | in_data[104]));
  assign celloutsig_0_10z = ~((celloutsig_0_9z[2] | celloutsig_0_1z) & (celloutsig_0_4z | celloutsig_0_5z));
  assign celloutsig_0_22z = ~((celloutsig_0_8z[1] | celloutsig_0_6z) & (celloutsig_0_19z[3] | celloutsig_0_0z));
  assign celloutsig_0_23z = ~((_01_ | _01_) & (celloutsig_0_11z | celloutsig_0_13z));
  assign celloutsig_1_19z = ~(celloutsig_1_5z[5] ^ celloutsig_1_18z);
  assign celloutsig_0_62z = { celloutsig_0_41z, celloutsig_0_31z, 1'h1, celloutsig_0_26z, celloutsig_0_46z, celloutsig_0_23z } + { _02_[5:1], celloutsig_0_0z };
  reg [10:0] _23_;
  always_ff @(negedge clkin_data[32], posedge clkin_data[96])
    if (clkin_data[96]) _23_ <= 11'h000;
    else _23_ <= in_data[123:113];
  assign { _04_[10:7], _00_, _04_[5:0] } = _23_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _05_ <= 4'h0;
    else _05_ <= celloutsig_0_7z[4:1];
  reg [7:0] _25_;
  always_ff @(negedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _25_ <= 8'h00;
    else _25_ <= { in_data[34:28], celloutsig_0_11z };
  assign { _06_[7], _01_, _06_[5:0] } = _25_;
  reg [6:0] _26_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _26_ <= 7'h00;
    else _26_ <= { celloutsig_0_19z[14:10], celloutsig_0_11z, celloutsig_0_13z };
  assign { _03_[13:12], _02_[5:1] } = _26_;
  assign celloutsig_0_38z = { celloutsig_0_19z[9:0], celloutsig_0_21z, _05_, celloutsig_0_10z, celloutsig_0_13z } >= { celloutsig_0_12z[5:1], celloutsig_0_22z, celloutsig_0_29z, celloutsig_0_26z, _03_[13:12], _02_[5:1], celloutsig_0_16z, celloutsig_0_22z };
  assign celloutsig_0_46z = { celloutsig_0_45z[22:17], celloutsig_0_3z, celloutsig_0_26z, celloutsig_0_18z } >= { celloutsig_0_45z[16:7], celloutsig_0_14z };
  assign celloutsig_1_6z = celloutsig_1_5z[8:3] >= { celloutsig_1_5z[10:7], celloutsig_1_4z, celloutsig_1_4z };
  assign celloutsig_1_12z = in_data[191:167] >= { in_data[176:165], celloutsig_1_5z };
  assign celloutsig_0_14z = { celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_7z[7:1], 1'h1, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_13z, celloutsig_0_1z, celloutsig_0_3z } >= { celloutsig_0_7z[3], celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_6z };
  assign celloutsig_0_28z = { _01_, _06_[5:2], celloutsig_0_20z, celloutsig_0_18z, celloutsig_0_6z } < { celloutsig_0_19z[13:8], celloutsig_0_18z, _05_, celloutsig_0_3z };
  assign celloutsig_0_32z = { celloutsig_0_5z, celloutsig_0_25z, celloutsig_0_31z, celloutsig_0_8z } < in_data[80:74];
  assign celloutsig_0_34z = { celloutsig_0_20z[3:1], celloutsig_0_25z } % { 1'h1, _05_[2:0] };
  assign celloutsig_0_68z = { celloutsig_0_62z[5:3], celloutsig_0_32z, celloutsig_0_43z } % { 1'h1, celloutsig_0_12z[5:2] };
  assign celloutsig_0_69z = celloutsig_0_2z[4:0] % { 1'h1, in_data[22:19] };
  assign celloutsig_0_18z = _05_[3:1] % { 1'h1, in_data[43:42] };
  assign celloutsig_0_21z = { _05_[3:1], celloutsig_0_3z, celloutsig_0_18z, celloutsig_0_11z, celloutsig_0_3z, celloutsig_0_0z } % { 1'h1, in_data[89:81] };
  assign celloutsig_0_2z = { in_data[26:20], celloutsig_0_0z } % { 1'h1, in_data[43:40], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_1_5z = { celloutsig_1_3z[8:5], celloutsig_1_3z } * { in_data[135:134], _04_[10:7], _00_, _04_[5:0] };
  assign celloutsig_0_12z = { celloutsig_0_8z[0], celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_11z } * { celloutsig_0_7z[6:1], celloutsig_0_0z };
  assign celloutsig_0_20z = { _05_, celloutsig_0_6z } * celloutsig_0_19z[12:8];
  assign celloutsig_0_16z = celloutsig_0_11z & celloutsig_0_1z;
  assign celloutsig_0_13z = | { celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_45z = { celloutsig_0_8z[2:0], celloutsig_0_31z, celloutsig_0_27z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_11z, 1'h1, celloutsig_0_22z, celloutsig_0_25z, celloutsig_0_26z, celloutsig_0_12z, _06_[7], _01_, _06_[5:0], celloutsig_0_31z, celloutsig_0_42z, celloutsig_0_16z } <<< celloutsig_0_35z[30:1];
  assign celloutsig_1_0z = in_data[155:145] <<< in_data[168:158];
  assign celloutsig_1_3z = { _04_[9:7], _00_, _04_[5:2], celloutsig_1_2z } <<< { _04_[8:7], _00_, _04_[5:0] };
  assign celloutsig_0_35z = { celloutsig_0_34z[1:0], celloutsig_0_21z, celloutsig_0_3z, celloutsig_0_33z, celloutsig_0_31z, celloutsig_0_10z, celloutsig_0_19z } >>> { in_data[43:28], celloutsig_0_14z, _03_[13:12], _02_[5:1], celloutsig_0_34z, celloutsig_0_9z };
  assign celloutsig_0_8z = { celloutsig_0_7z[6:5], celloutsig_0_3z, celloutsig_0_3z } >>> celloutsig_0_2z[6:3];
  assign celloutsig_0_9z = { celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_3z } >>> { celloutsig_0_2z[7:6], celloutsig_0_6z, celloutsig_0_6z };
  assign celloutsig_0_19z = { celloutsig_0_1z, celloutsig_0_13z, _06_[7], _01_, _06_[5:0], celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_4z } >>> { celloutsig_0_2z, celloutsig_0_16z, celloutsig_0_14z, celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_3z };
  assign celloutsig_1_7z = { _04_[10:7], _00_, _04_[5:3], celloutsig_1_6z } ~^ celloutsig_1_0z[10:2];
  assign celloutsig_0_29z = { celloutsig_0_2z[6:3], celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_0z } ^ { celloutsig_0_21z[4:2], celloutsig_0_14z, celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_9z };
  assign celloutsig_0_31z = ~((in_data[42] & celloutsig_0_8z[2]) | in_data[64]);
  assign celloutsig_0_37z = ~((_06_[3] & in_data[80]) | celloutsig_0_12z[0]);
  assign celloutsig_0_42z = ~((celloutsig_0_34z[2] & celloutsig_0_31z) | celloutsig_0_31z);
  assign celloutsig_0_5z = ~((celloutsig_0_1z & celloutsig_0_1z) | celloutsig_0_4z);
  assign celloutsig_1_8z = ~((celloutsig_1_2z & celloutsig_1_3z[7]) | celloutsig_1_6z);
  assign celloutsig_1_18z = ~((celloutsig_1_7z[3] & celloutsig_1_12z) | celloutsig_1_8z);
  assign celloutsig_0_11z = ~((celloutsig_0_2z[7] & celloutsig_0_3z) | celloutsig_0_2z[5]);
  assign celloutsig_0_1z = ~((in_data[51] & celloutsig_0_0z) | celloutsig_0_0z);
  assign celloutsig_0_27z = ~((celloutsig_0_5z & celloutsig_0_3z) | celloutsig_0_3z);
  assign { celloutsig_0_7z[1], celloutsig_0_7z[7:2] } = { celloutsig_0_4z, in_data[9:4] } ~^ { celloutsig_0_1z, in_data[49:45], celloutsig_0_0z };
  assign _02_[0] = celloutsig_0_0z;
  assign { _03_[11:7], _03_[2], _03_[0] } = { _02_[5:1], 1'h1, celloutsig_0_28z };
  assign _04_[6] = _00_;
  assign _06_[6] = _01_;
  assign celloutsig_0_7z[0] = 1'h1;
  assign { out_data[128], out_data[96], out_data[36:32], out_data[4:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_68z, celloutsig_0_69z };
endmodule

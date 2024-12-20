/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire [3:0] _09_;
  wire [6:0] _10_;
  wire [17:0] _11_;
  wire [25:0] _12_;
  wire [3:0] _13_;
  wire [18:0] _14_;
  wire [16:0] _15_;
  wire [7:0] _16_;
  wire [5:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_20z;
  wire [3:0] celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire [3:0] celloutsig_0_25z;
  wire [4:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [3:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [4:0] celloutsig_0_34z;
  wire [8:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [25:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [4:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [9:0] celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [6:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [17:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_4z = !(celloutsig_0_0z[4] ? celloutsig_0_3z : _00_);
  assign celloutsig_1_0z = !(in_data[138] ? in_data[145] : in_data[176]);
  assign celloutsig_0_5z = !(celloutsig_0_3z ? _02_ : _01_);
  assign celloutsig_0_6z = !(_03_ ? celloutsig_0_4z : in_data[10]);
  assign celloutsig_0_8z = !(celloutsig_0_5z ? celloutsig_0_2z[0] : celloutsig_0_0z[0]);
  assign celloutsig_0_11z = !(celloutsig_0_6z ? celloutsig_0_6z : in_data[39]);
  assign celloutsig_0_18z = !(celloutsig_0_14z ? in_data[64] : celloutsig_0_15z);
  assign celloutsig_1_9z = ~((celloutsig_1_5z[4] | celloutsig_1_2z) & in_data[137]);
  assign celloutsig_0_14z = ~((celloutsig_0_6z | celloutsig_0_4z) & celloutsig_0_4z);
  assign celloutsig_0_23z = ~((celloutsig_0_16z | celloutsig_0_17z[1]) & _03_);
  assign celloutsig_1_18z = ~((celloutsig_1_7z | in_data[151]) & (celloutsig_1_12z | celloutsig_1_14z));
  assign celloutsig_0_27z = ~((_07_ | _08_) & (celloutsig_0_12z | celloutsig_0_8z));
  assign celloutsig_0_0z = in_data[30:25] + in_data[59:54];
  assign celloutsig_0_38z = { celloutsig_0_34z[4:1], celloutsig_0_16z, celloutsig_0_2z } + { celloutsig_0_25z[3:2], celloutsig_0_27z, celloutsig_0_25z, celloutsig_0_27z, celloutsig_0_18z };
  assign celloutsig_1_5z = { _10_[6:4], celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_2z } + in_data[102:96];
  assign celloutsig_1_8z = { _11_[17:9], _10_[6:4], _11_[5:0] } + { _11_[12:9], _10_[6:4], _11_[5:3], celloutsig_1_5z, celloutsig_1_7z };
  assign celloutsig_1_15z = { in_data[176:173], celloutsig_1_14z, celloutsig_1_12z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_9z } + { in_data[109:101], celloutsig_1_13z };
  assign celloutsig_0_7z = { _09_[1:0], _12_[23], celloutsig_0_0z, _02_, _12_[15], _03_, _00_, _09_[2:0], _12_[23], _01_, _12_[7:6], celloutsig_0_0z } + in_data[93:68];
  assign celloutsig_0_17z = { celloutsig_0_7z[14:12], celloutsig_0_5z } + { _03_, _00_, _09_[2:1] };
  assign celloutsig_0_25z = celloutsig_0_21z + { celloutsig_0_17z[2], celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_23z };
  assign celloutsig_0_26z = { _00_, _09_[2:0], _12_[23] } + { celloutsig_0_18z, celloutsig_0_21z };
  assign celloutsig_0_2z = { _00_, _09_[2:0] } + celloutsig_0_0z[5:2];
  reg [18:0] _39_;
  always_ff @(negedge clkin_data[32], posedge clkin_data[64])
    if (clkin_data[64]) _39_ <= 19'h00000;
    else _39_ <= { in_data[190:174], celloutsig_1_0z, celloutsig_1_0z };
  assign { _14_[18], _11_[17:9], _10_[6:4], _11_[5:0] } = _39_;
  reg [16:0] _40_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _40_ <= 17'h00000;
    else _40_ <= celloutsig_0_7z[22:6];
  assign { _06_, _15_[15:10], _08_, _15_[8:5], _13_[3:2], _15_[2:0] } = _40_;
  reg [10:0] _41_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _41_ <= 11'h000;
    else _41_ <= in_data[69:59];
  assign { _02_, _12_[15], _03_, _00_, _09_[2:0], _12_[23], _01_, _12_[7:6] } = _41_;
  reg [7:0] _42_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _42_ <= 8'h00;
    else _42_ <= { _12_[15], _03_, _00_, _09_[2], celloutsig_0_17z };
  assign { _05_, _16_[6:4], _04_, _16_[2], _07_, _16_[0] } = _42_;
  assign celloutsig_0_30z = { celloutsig_0_26z, celloutsig_0_10z, celloutsig_0_25z } >= { in_data[95:92], celloutsig_0_11z, celloutsig_0_25z, celloutsig_0_20z };
  assign celloutsig_0_49z = { _09_[0], _12_[23], celloutsig_0_4z, celloutsig_0_34z, celloutsig_0_27z } >= { celloutsig_0_38z[8:1], celloutsig_0_16z };
  assign celloutsig_1_7z = { _11_[16:12], celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_3z } >= { celloutsig_1_5z[5:0], celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_0z };
  assign celloutsig_1_12z = { celloutsig_1_11z[3:2], celloutsig_1_7z } >= _11_[11:9];
  assign celloutsig_0_10z = { celloutsig_0_0z[4:0], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_5z } >= { _02_, _12_[15], _03_, _00_, _09_[2:0], _12_[23], _01_, _12_[7] };
  assign celloutsig_0_12z = { celloutsig_0_2z[3:2], celloutsig_0_2z, celloutsig_0_3z } >= { celloutsig_0_0z[5], celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_6z };
  assign celloutsig_0_34z = ~ { _09_[0], _12_[23], _01_, _12_[7], celloutsig_0_30z };
  assign celloutsig_1_11z = ~ celloutsig_1_8z[17:13];
  assign celloutsig_0_21z = ~ { celloutsig_0_17z[3:1], celloutsig_0_14z };
  assign celloutsig_1_4z = | in_data[111:106];
  assign celloutsig_1_6z = | { _11_[11:9], _10_[6:4], _11_[5:1] };
  assign celloutsig_1_13z = | { celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_7z };
  assign celloutsig_1_14z = | celloutsig_1_8z[13:4];
  assign celloutsig_1_19z = | { celloutsig_1_17z, celloutsig_1_10z, celloutsig_1_15z };
  assign celloutsig_0_20z = | { celloutsig_0_14z, celloutsig_0_16z, celloutsig_0_8z };
  assign celloutsig_0_3z = | { _12_[23], _12_[15], _12_[7:6], _03_, _02_, _01_, _00_, _09_[2:0], in_data[21:12] };
  assign celloutsig_0_13z = | { celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_8z, _12_[23], _12_[15], _12_[7:6], celloutsig_0_7z[6:0], _03_, _02_, _01_, celloutsig_0_5z, _00_, celloutsig_0_4z, _09_[2:0], in_data[21:12] };
  assign celloutsig_0_50z = ^ { celloutsig_0_7z[18:6], celloutsig_0_11z };
  assign celloutsig_1_2z = ^ in_data[139:126];
  assign celloutsig_1_3z = ^ { _11_[13:12], celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_10z = ^ { _11_[4:0], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_7z };
  assign celloutsig_1_17z = ^ { in_data[141:130], celloutsig_1_9z, celloutsig_1_14z, celloutsig_1_12z };
  assign celloutsig_0_15z = ^ { celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_6z };
  assign celloutsig_0_16z = ^ celloutsig_0_0z;
  assign _09_[3] = _00_;
  assign _10_[3:0] = { celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_2z };
  assign _11_[8:6] = _10_[6:4];
  assign { _12_[25:24], _12_[22:16], _12_[14:8], _12_[5:0] } = { _09_[1:0], celloutsig_0_0z, _02_, _03_, _00_, _09_[2:0], _12_[23], _01_, celloutsig_0_0z };
  assign _13_[1:0] = { celloutsig_0_15z, celloutsig_0_27z };
  assign _14_[17:0] = { _11_[17:9], _10_[6:4], _11_[5:0] };
  assign { _15_[16], _15_[9], _15_[4:3] } = { _06_, _08_, _13_[3:2] };
  assign { _16_[7], _16_[3], _16_[1] } = { _05_, _04_, _07_ };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_49z, celloutsig_0_50z };
endmodule

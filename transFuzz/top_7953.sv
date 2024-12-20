/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire [4:0] _06_;
  wire [6:0] _07_;
  wire [7:0] _08_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [21:0] celloutsig_0_19z;
  wire [8:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [20:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [12:0] celloutsig_0_42z;
  wire celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire [5:0] celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_5z;
  wire celloutsig_0_7z;
  wire [10:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [5:0] celloutsig_1_10z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [2:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_3z = ~((celloutsig_0_2z | celloutsig_0_0z) & (in_data[4] | celloutsig_0_1z[1]));
  assign celloutsig_0_38z = ~((celloutsig_0_13z | celloutsig_0_17z) & (celloutsig_0_26z | celloutsig_0_30z));
  assign celloutsig_0_4z = ~((celloutsig_0_3z | celloutsig_0_3z) & (celloutsig_0_2z | in_data[7]));
  assign celloutsig_0_46z = ~((celloutsig_0_2z | celloutsig_0_38z) & (celloutsig_0_19z[12] | celloutsig_0_15z));
  assign celloutsig_0_57z = ~((celloutsig_0_19z[0] | _01_) & (in_data[83] | celloutsig_0_48z[3]));
  assign celloutsig_0_58z = ~((celloutsig_0_47z | celloutsig_0_9z) & (celloutsig_0_42z[1] | celloutsig_0_12z));
  assign celloutsig_1_0z = ~((in_data[183] | in_data[108]) & (in_data[148] | in_data[173]));
  assign celloutsig_1_3z = ~((in_data[148] | celloutsig_1_2z) & (celloutsig_1_0z | celloutsig_1_1z));
  assign celloutsig_1_9z = ~((celloutsig_1_7z | _02_) & (celloutsig_1_7z | celloutsig_1_0z));
  assign celloutsig_1_16z = ~((1'h0 | celloutsig_1_0z) & (celloutsig_1_14z | celloutsig_1_9z));
  assign celloutsig_1_18z = ~((celloutsig_1_14z | celloutsig_1_7z) & (celloutsig_1_3z | celloutsig_1_10z[2]));
  assign celloutsig_0_12z = ~((celloutsig_0_11z | celloutsig_0_2z) & (celloutsig_0_9z | celloutsig_0_10z));
  assign celloutsig_0_14z = ~((celloutsig_0_2z | celloutsig_0_3z) & (celloutsig_0_4z | celloutsig_0_5z));
  assign celloutsig_0_2z = ~((celloutsig_0_0z | in_data[9]) & (celloutsig_0_1z[5] | celloutsig_0_0z));
  assign celloutsig_0_24z = ~((celloutsig_0_0z | celloutsig_0_16z) & (celloutsig_0_16z | _05_));
  assign celloutsig_0_26z = ~((celloutsig_0_3z | celloutsig_0_11z) & (_00_ | celloutsig_0_13z));
  reg [4:0] _25_;
  always_ff @(negedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _25_ <= 5'h00;
    else _25_ <= { in_data[107:106], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_2z };
  assign { _02_, _06_[3:1], _03_ } = _25_;
  reg [6:0] _26_;
  always_ff @(posedge out_data[96], posedge clkin_data[32])
    if (clkin_data[32]) _26_ <= 7'h00;
    else _26_ <= { in_data[21:17], celloutsig_0_3z, celloutsig_0_4z };
  assign { _07_[6:4], _01_, _07_[2:0] } = _26_;
  reg [7:0] _27_;
  always_ff @(posedge out_data[96], posedge clkin_data[32])
    if (clkin_data[32]) _27_ <= 8'h00;
    else _27_ <= { _07_[6:4], _01_, _07_[2], celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_15z };
  assign { _08_[7], _04_, _08_[5:4], _00_, _08_[2], _05_, _08_[0] } = _27_;
  assign celloutsig_0_0z = ~^ in_data[86:56];
  assign celloutsig_0_28z = ~^ { _07_[1:0], celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_25z, celloutsig_0_24z, celloutsig_0_27z };
  assign celloutsig_0_30z = ~^ { celloutsig_0_8z[9:5], celloutsig_0_16z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_20z };
  assign celloutsig_0_33z = ~^ { celloutsig_0_1z[3:2], celloutsig_0_28z, celloutsig_0_27z, celloutsig_0_25z, celloutsig_0_25z, celloutsig_0_7z, celloutsig_0_17z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_15z };
  assign celloutsig_0_36z = ~^ { celloutsig_0_19z[6:0], celloutsig_0_14z };
  assign celloutsig_1_2z = ~^ in_data[181:176];
  assign celloutsig_1_6z = ~^ { _06_[3:1], celloutsig_1_3z };
  assign celloutsig_1_7z = ~^ { _06_[3:1], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_2z };
  assign celloutsig_1_13z = ~^ { celloutsig_1_7z, celloutsig_1_9z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_9z };
  assign celloutsig_1_17z = ~^ { celloutsig_1_5z[2:1], 1'h0 };
  assign celloutsig_0_7z = ~^ celloutsig_0_1z[8:1];
  assign celloutsig_0_9z = ~^ { celloutsig_0_1z[7:1], celloutsig_0_1z };
  assign celloutsig_0_13z = ~^ { celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_7z };
  assign celloutsig_0_16z = ~^ { celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_14z, celloutsig_0_12z, _07_[6:4], _01_, _07_[2:0], celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_9z };
  assign celloutsig_0_17z = ~^ { celloutsig_0_8z[7], celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_0_20z = ~^ { celloutsig_0_10z, celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_5z };
  assign celloutsig_0_32z = { celloutsig_0_19z[20:3], celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_0z } ^ in_data[70:50];
  assign celloutsig_0_42z = { celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_25z, celloutsig_0_31z } ^ { celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_33z, celloutsig_0_27z, celloutsig_0_33z, celloutsig_0_31z, celloutsig_0_28z, celloutsig_0_36z, celloutsig_0_36z, celloutsig_0_2z, celloutsig_0_33z };
  assign celloutsig_0_48z = celloutsig_0_32z[10:5] ^ { _04_, _08_[5:4], _00_, _08_[2], celloutsig_0_46z };
  assign celloutsig_1_10z = { _06_[3:1], _03_, celloutsig_1_6z, celloutsig_1_2z } ^ { celloutsig_1_9z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_0_1z = in_data[80:72] ^ in_data[93:85];
  assign celloutsig_0_8z = { celloutsig_0_1z[8:5], _07_[6:4], _01_, _07_[2:0] } ^ { in_data[21:12], celloutsig_0_2z };
  assign celloutsig_0_19z = { celloutsig_0_10z, _08_[7], _04_, _08_[5:4], _00_, _08_[2], _05_, _08_[0], celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_17z } ^ { _08_[5:4], celloutsig_0_1z, celloutsig_0_7z, _08_[7], _04_, _08_[5:4], _00_, _08_[2], _05_, _08_[0], celloutsig_0_2z, celloutsig_0_11z };
  assign celloutsig_0_27z = ~((celloutsig_0_21z & celloutsig_0_10z) | celloutsig_0_17z);
  assign celloutsig_0_31z = ~((celloutsig_0_15z & celloutsig_0_28z) | celloutsig_0_19z[2]);
  assign celloutsig_0_47z = ~((celloutsig_0_12z & celloutsig_0_36z) | celloutsig_0_30z);
  assign celloutsig_0_5z = ~((celloutsig_0_1z[7] & celloutsig_0_0z) | celloutsig_0_4z);
  assign celloutsig_1_1z = ~((in_data[178] & celloutsig_1_0z) | celloutsig_1_0z);
  assign celloutsig_1_14z = ~((celloutsig_1_2z & celloutsig_1_7z) | celloutsig_1_1z);
  assign celloutsig_0_10z = ~((celloutsig_0_5z & celloutsig_0_3z) | celloutsig_0_3z);
  assign celloutsig_0_11z = ~((in_data[35] & celloutsig_0_4z) | celloutsig_0_3z);
  assign celloutsig_0_15z = ~((celloutsig_0_5z & celloutsig_0_9z) | celloutsig_0_14z);
  assign celloutsig_0_21z = ~((celloutsig_0_9z & celloutsig_0_9z) | celloutsig_0_9z);
  assign celloutsig_0_25z = ~((celloutsig_0_24z & celloutsig_0_13z) | celloutsig_0_11z);
  assign celloutsig_1_5z[2:1] = in_data[162:161] ^ { _06_[1], celloutsig_1_3z };
  assign { out_data[104:102], out_data[99], out_data[97:96] } = { celloutsig_1_10z[3:1], celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_1z } ^ { celloutsig_1_14z, celloutsig_1_5z[2:1], celloutsig_1_17z, celloutsig_1_13z, celloutsig_1_18z };
  assign { _06_[4], _06_[0] } = { _02_, _03_ };
  assign _07_[3] = _01_;
  assign { _08_[6], _08_[3], _08_[1] } = { _04_, _00_, _05_ };
  assign celloutsig_1_5z[0] = 1'h0;
  assign { out_data[128], out_data[101:100], out_data[98], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_16z, 2'h0, celloutsig_0_57z, celloutsig_0_58z };
endmodule

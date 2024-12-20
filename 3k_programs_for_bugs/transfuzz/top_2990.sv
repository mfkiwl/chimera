/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [8:0] _01_;
  wire [8:0] _02_;
  wire [11:0] _03_;
  wire [16:0] celloutsig_0_0z;
  reg [2:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  reg [22:0] celloutsig_0_14z;
  wire [12:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [21:0] celloutsig_0_19z;
  wire [8:0] celloutsig_0_1z;
  wire [3:0] celloutsig_0_20z;
  wire [8:0] celloutsig_0_21z;
  wire [20:0] celloutsig_0_23z;
  wire [35:0] celloutsig_0_25z;
  wire [7:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [3:0] celloutsig_0_29z;
  wire [11:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_34z;
  reg [4:0] celloutsig_0_35z;
  wire [13:0] celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [6:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [3:0] celloutsig_0_44z;
  wire [4:0] celloutsig_0_49z;
  wire [8:0] celloutsig_0_4z;
  wire celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire celloutsig_0_5z;
  wire celloutsig_0_68z;
  wire [8:0] celloutsig_0_69z;
  wire [2:0] celloutsig_0_6z;
  wire [5:0] celloutsig_0_70z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [7:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [4:0] celloutsig_1_10z;
  wire [7:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_16z;
  wire [10:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  reg [5:0] celloutsig_1_1z;
  wire [14:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [5:0] celloutsig_1_4z;
  wire [3:0] celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_34z = celloutsig_0_26z[1] ? celloutsig_0_19z[3] : celloutsig_0_20z[3];
  assign celloutsig_0_68z = celloutsig_0_30z ? celloutsig_0_56z : celloutsig_0_41z;
  assign celloutsig_0_31z = !(celloutsig_0_27z ? celloutsig_0_13z : celloutsig_0_21z[8]);
  assign celloutsig_0_56z = ~celloutsig_0_40z;
  assign celloutsig_0_8z = ~celloutsig_0_0z[4];
  assign celloutsig_1_3z = ~celloutsig_1_1z[2];
  assign celloutsig_0_30z = ~((celloutsig_0_16z[4] | celloutsig_0_4z[5]) & in_data[27]);
  assign celloutsig_0_40z = ~((celloutsig_0_35z[2] | celloutsig_0_39z) & celloutsig_0_20z[3]);
  assign celloutsig_0_55z = ~((celloutsig_0_10z[0] | celloutsig_0_34z) & celloutsig_0_35z[1]);
  assign celloutsig_0_12z = ~((celloutsig_0_4z[5] | celloutsig_0_5z) & celloutsig_0_10z[1]);
  assign celloutsig_0_7z = in_data[91] | celloutsig_0_4z[3];
  assign celloutsig_1_12z = celloutsig_1_11z[4] | celloutsig_1_4z[2];
  assign celloutsig_1_16z = celloutsig_1_9z[2] | celloutsig_1_11z[7];
  assign celloutsig_0_69z = { celloutsig_0_9z[7:1], celloutsig_0_57z, celloutsig_0_11z } + { _01_[8:7], celloutsig_0_35z, celloutsig_0_31z, celloutsig_0_68z };
  assign celloutsig_1_2z = in_data[154:140] + { in_data[124:111], celloutsig_1_0z };
  assign celloutsig_1_4z = celloutsig_1_1z + { in_data[180:176], celloutsig_1_3z };
  reg [8:0] _20_;
  always_ff @(posedge clkin_data[96], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _20_ <= 9'h000;
    else _20_ <= { celloutsig_0_44z[1], celloutsig_0_13z, celloutsig_0_40z, celloutsig_0_6z, celloutsig_0_10z };
  assign { _02_[8], _01_[8:7], _02_[5:0] } = _20_;
  reg [11:0] _21_;
  always_ff @(negedge clkin_data[96], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _21_ <= 12'h000;
    else _21_ <= { celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_12z };
  assign { _03_[11:1], _00_ } = _21_;
  assign celloutsig_0_0z = in_data[49:33] & in_data[50:34];
  assign celloutsig_0_37z = celloutsig_0_14z[18:5] & { celloutsig_0_9z[4:1], celloutsig_0_17z, celloutsig_0_21z };
  assign celloutsig_0_44z = { celloutsig_0_25z[5:3], celloutsig_0_40z } & celloutsig_0_25z[32:29];
  assign celloutsig_0_70z = { celloutsig_0_49z, celloutsig_0_30z } & { celloutsig_0_55z, celloutsig_0_8z, celloutsig_0_40z, celloutsig_0_6z };
  assign celloutsig_0_9z = celloutsig_0_4z[8:1] & { celloutsig_0_1z[7:1], celloutsig_0_5z };
  assign celloutsig_0_49z = { celloutsig_0_37z[11:9], celloutsig_0_7z, celloutsig_0_13z } / { 1'h1, celloutsig_0_1z[7:4] };
  assign celloutsig_0_27z = { _03_[10:8], celloutsig_0_8z } >= celloutsig_0_4z[8:5];
  assign celloutsig_1_18z = celloutsig_1_0z ? in_data[161:151] : { celloutsig_1_2z[9:2], 1'h0, celloutsig_1_16z, 1'h0 };
  assign celloutsig_0_20z = celloutsig_0_17z ? { _03_[7:5], celloutsig_0_7z } : celloutsig_0_0z[6:3];
  assign celloutsig_1_0z = in_data[139:135] !== in_data[106:102];
  assign celloutsig_0_11z = { celloutsig_0_4z[6:2], celloutsig_0_4z } !== celloutsig_0_0z[15:2];
  assign celloutsig_0_1z = celloutsig_0_0z[11:3] | celloutsig_0_0z[14:6];
  assign celloutsig_0_16z = { celloutsig_0_14z[10:0], celloutsig_0_8z, celloutsig_0_5z } | celloutsig_0_0z[16:4];
  assign celloutsig_0_38z = celloutsig_0_27z & celloutsig_0_34z;
  assign celloutsig_0_13z = celloutsig_0_8z & celloutsig_0_12z;
  assign celloutsig_0_39z = ~^ { celloutsig_0_26z[1], celloutsig_0_38z, celloutsig_0_34z, celloutsig_0_34z };
  assign celloutsig_0_41z = ~^ celloutsig_0_2z[9:1];
  assign celloutsig_0_5z = ~^ celloutsig_0_3z[6:4];
  assign celloutsig_0_57z = ~^ { celloutsig_0_39z, celloutsig_0_29z };
  assign celloutsig_0_23z = { _03_[5:2], celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_20z, celloutsig_0_20z, celloutsig_0_3z } >> { celloutsig_0_17z, celloutsig_0_0z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_5z };
  assign celloutsig_0_6z = celloutsig_0_3z[3:1] << in_data[9:7];
  assign celloutsig_0_3z = celloutsig_0_2z[8:2] >> celloutsig_0_0z[14:8];
  assign celloutsig_1_10z = celloutsig_1_1z[4:0] >> celloutsig_1_1z[5:1];
  assign celloutsig_0_4z = celloutsig_0_0z[14:6] <<< { celloutsig_0_3z[5:4], celloutsig_0_3z };
  assign celloutsig_0_19z = { in_data[67:59], celloutsig_0_16z } <<< { celloutsig_0_2z[9:0], celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_26z = { celloutsig_0_25z[8:2], celloutsig_0_11z } <<< in_data[7:0];
  assign celloutsig_1_9z = celloutsig_1_4z[5:2] ~^ celloutsig_1_2z[6:3];
  assign celloutsig_0_2z = { in_data[27:25], celloutsig_0_1z } ~^ in_data[26:15];
  assign celloutsig_0_21z = { celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_3z } ~^ { celloutsig_0_14z[20:16], celloutsig_0_20z };
  assign celloutsig_1_11z = { celloutsig_1_2z[11:5], celloutsig_1_3z } ^ { celloutsig_1_10z[4:2], celloutsig_1_10z };
  assign celloutsig_0_25z = { _03_[1], _03_[11:1], _00_, celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_18z, celloutsig_0_20z } ^ { celloutsig_0_23z[18:4], celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_18z, celloutsig_0_0z };
  assign celloutsig_0_29z = in_data[61:58] ^ celloutsig_0_4z[4:1];
  assign celloutsig_1_19z = ~((celloutsig_1_12z & celloutsig_1_0z) | celloutsig_1_3z);
  assign celloutsig_0_18z = ~((celloutsig_0_17z & celloutsig_0_16z[2]) | celloutsig_0_13z);
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_35z = 5'h00;
    else if (clkin_data[0]) celloutsig_0_35z = celloutsig_0_25z[6:2];
  always_latch
    if (!clkin_data[64]) celloutsig_1_1z = 6'h00;
    else if (!clkin_data[32]) celloutsig_1_1z = { in_data[115:113], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_10z = 3'h0;
    else if (clkin_data[0]) celloutsig_0_10z = celloutsig_0_2z[3:1];
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_14z = 23'h000000;
    else if (clkin_data[0]) celloutsig_0_14z = { in_data[32:26], celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_0_17z = ~((celloutsig_0_12z & celloutsig_0_1z[0]) | (celloutsig_0_12z & celloutsig_0_2z[6]));
  assign _01_[6:0] = { celloutsig_0_35z, celloutsig_0_31z, celloutsig_0_68z };
  assign _02_[7:6] = _01_[8:7];
  assign _03_[0] = _00_;
  assign { out_data[138:128], out_data[96], out_data[40:32], out_data[5:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_69z, celloutsig_0_70z };
endmodule

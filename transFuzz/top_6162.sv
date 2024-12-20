/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [14:0] _01_;
  wire [5:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [16:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [5:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [3:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [4:0] celloutsig_0_21z;
  wire [7:0] celloutsig_0_23z;
  wire [7:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [5:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [9:0] celloutsig_0_30z;
  wire celloutsig_0_32z;
  wire [7:0] celloutsig_0_34z;
  wire celloutsig_0_36z;
  wire [19:0] celloutsig_0_37z;
  wire [4:0] celloutsig_0_3z;
  reg [9:0] celloutsig_0_44z;
  wire [12:0] celloutsig_0_47z;
  wire [15:0] celloutsig_0_49z;
  wire [5:0] celloutsig_0_4z;
  wire [3:0] celloutsig_0_50z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [5:0] celloutsig_0_7z;
  wire [2:0] celloutsig_0_8z;
  wire [8:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [7:0] celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire celloutsig_1_6z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_6z = celloutsig_1_3z[0] ? celloutsig_1_2z[4] : celloutsig_1_1z;
  assign celloutsig_0_6z = celloutsig_0_5z ? celloutsig_0_4z[0] : celloutsig_0_1z;
  assign celloutsig_1_19z = celloutsig_1_11z ? celloutsig_1_18z : celloutsig_1_15z;
  assign celloutsig_0_10z = celloutsig_0_0z[3] ? celloutsig_0_1z : in_data[87];
  assign celloutsig_0_2z = in_data[56] ? in_data[24] : celloutsig_0_1z;
  assign celloutsig_1_11z = !(celloutsig_1_6z ? celloutsig_1_15z : celloutsig_1_6z);
  assign celloutsig_0_17z = !(celloutsig_0_4z[0] ? celloutsig_0_1z : celloutsig_0_3z[4]);
  assign celloutsig_0_28z = !(in_data[19] ? celloutsig_0_21z[2] : celloutsig_0_5z);
  assign celloutsig_0_36z = ~(_00_ | celloutsig_0_15z);
  assign celloutsig_0_32z = ~(celloutsig_0_25z | celloutsig_0_29z);
  assign celloutsig_1_15z = ~celloutsig_1_6z;
  assign celloutsig_0_1z = ~in_data[56];
  assign celloutsig_0_14z = ~in_data[80];
  assign celloutsig_1_0z = ~((in_data[110] | in_data[145]) & in_data[159]);
  assign celloutsig_0_25z = ~((celloutsig_0_11z[4] | celloutsig_0_1z) & celloutsig_0_2z);
  assign celloutsig_0_12z = celloutsig_0_9z[2] | celloutsig_0_5z;
  reg [4:0] _18_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[0])
    if (clkin_data[0]) _18_ <= 5'h00;
    else _18_ <= celloutsig_0_7z[5:1];
  assign { _01_[4:1], _00_ } = _18_;
  assign celloutsig_0_49z = { celloutsig_0_44z[6:3], celloutsig_0_32z, celloutsig_0_26z, celloutsig_0_21z } & { celloutsig_0_47z[10:1], celloutsig_0_1z, _01_[4:1], _00_ };
  assign celloutsig_0_7z = celloutsig_0_0z & { celloutsig_0_4z[4:0], celloutsig_0_1z };
  assign celloutsig_0_9z = { celloutsig_0_4z[5:4], celloutsig_0_4z, celloutsig_0_5z } & { celloutsig_0_4z[5:4], celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_0_18z = { celloutsig_0_0z[2:0], celloutsig_0_16z } & { celloutsig_0_7z[3:1], celloutsig_0_1z };
  assign celloutsig_1_1z = { in_data[102:97], celloutsig_1_0z } > { in_data[120:116], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_20z = celloutsig_0_9z[7:1] > { in_data[69:67], celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_17z };
  assign celloutsig_1_18z = celloutsig_1_6z & ~(celloutsig_1_15z);
  assign celloutsig_0_29z = celloutsig_0_27z & ~(celloutsig_0_25z);
  assign celloutsig_0_5z = & { celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_0_15z = & celloutsig_0_9z[8:6];
  assign celloutsig_0_16z = & celloutsig_0_4z[5:1];
  assign celloutsig_0_19z = & celloutsig_0_4z;
  assign celloutsig_0_27z = ^ { celloutsig_0_23z[6:1], celloutsig_0_1z };
  assign celloutsig_0_34z = { celloutsig_0_30z[7:1], celloutsig_0_29z } << celloutsig_0_24z;
  assign celloutsig_1_2z = in_data[140:133] << { in_data[125], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_3z = { in_data[139:136], celloutsig_1_1z } << celloutsig_1_2z[6:2];
  assign celloutsig_0_26z = { celloutsig_0_21z[1], celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_17z, celloutsig_0_19z } << celloutsig_0_24z[5:0];
  assign celloutsig_0_0z = in_data[5:0] <<< in_data[26:21];
  assign celloutsig_0_3z = celloutsig_0_0z[4:0] <<< celloutsig_0_0z[4:0];
  assign celloutsig_0_37z = { celloutsig_0_24z[3:2], celloutsig_0_17z, celloutsig_0_25z, celloutsig_0_23z, celloutsig_0_23z } <<< { celloutsig_0_28z, celloutsig_0_20z, celloutsig_0_9z, celloutsig_0_24z, celloutsig_0_19z };
  assign celloutsig_0_13z = { celloutsig_0_7z[3:1], celloutsig_0_8z } <<< { celloutsig_0_4z[3:0], celloutsig_0_12z, celloutsig_0_6z };
  assign celloutsig_0_23z = { celloutsig_0_4z[1], celloutsig_0_10z, celloutsig_0_19z, celloutsig_0_21z } <<< { in_data[44:38], celloutsig_0_5z };
  assign celloutsig_0_30z = { celloutsig_0_14z, celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_28z, celloutsig_0_25z } >>> { celloutsig_0_24z[7:4], celloutsig_0_0z };
  assign celloutsig_0_4z = { celloutsig_0_3z[4:3], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z } ~^ { celloutsig_0_0z[5:1], celloutsig_0_1z };
  assign celloutsig_0_47z = { celloutsig_0_37z[19:12], celloutsig_0_36z, celloutsig_0_18z } ~^ { in_data[32:25], _01_[4:1], _00_ };
  assign celloutsig_0_50z = celloutsig_0_11z[7:4] ~^ celloutsig_0_34z[4:1];
  assign celloutsig_0_8z = in_data[2:0] ~^ celloutsig_0_4z[5:3];
  assign celloutsig_0_11z = { in_data[93:80], celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_2z } ~^ in_data[46:30];
  assign celloutsig_0_21z = celloutsig_0_0z[4:0] ~^ celloutsig_0_3z;
  assign celloutsig_0_24z = { celloutsig_0_19z, celloutsig_0_14z, celloutsig_0_13z } ~^ { celloutsig_0_23z[7:6], celloutsig_0_4z };
  always_latch
    if (clkin_data[32]) celloutsig_0_44z = 10'h000;
    else if (!clkin_data[64]) celloutsig_0_44z = { celloutsig_0_4z[5:3], celloutsig_0_0z, celloutsig_0_6z };
  assign { _01_[14:5], _01_[0] } = { celloutsig_0_0z[2], celloutsig_0_13z, celloutsig_0_8z, _00_ };
  assign { out_data[128], out_data[96], out_data[47:32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_49z, celloutsig_0_50z };
endmodule

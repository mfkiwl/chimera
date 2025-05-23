/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [3:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [22:0] celloutsig_0_14z;
  wire [2:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [25:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [10:0] celloutsig_0_19z;
  wire [9:0] celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire [16:0] celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire [2:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [13:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [10:0] celloutsig_0_2z;
  wire [5:0] celloutsig_0_30z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  reg [4:0] celloutsig_0_35z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  reg [8:0] celloutsig_0_41z;
  wire [2:0] celloutsig_0_43z;
  wire celloutsig_0_45z;
  wire [12:0] celloutsig_0_46z;
  wire [10:0] celloutsig_0_4z;
  wire [7:0] celloutsig_0_54z;
  wire celloutsig_0_57z;
  wire [2:0] celloutsig_0_5z;
  wire celloutsig_0_67z;
  wire [4:0] celloutsig_0_6z;
  wire celloutsig_0_78z;
  wire celloutsig_0_79z;
  wire [3:0] celloutsig_0_7z;
  reg [2:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire [2:0] celloutsig_1_12z;
  wire [4:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [12:0] celloutsig_1_16z;
  wire [15:0] celloutsig_1_17z;
  wire [26:0] celloutsig_1_18z;
  wire [14:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  reg [13:0] celloutsig_1_2z;
  wire [3:0] celloutsig_1_3z;
  wire [4:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [7:0] celloutsig_1_6z;
  wire [3:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [20:0] celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_45z = ~((celloutsig_0_33z | celloutsig_0_15z[0]) & celloutsig_0_19z[4]);
  assign celloutsig_0_57z = ~((celloutsig_0_54z[6] | celloutsig_0_43z[1]) & celloutsig_0_26z);
  assign celloutsig_0_78z = ~((celloutsig_0_57z | celloutsig_0_35z[4]) & celloutsig_0_41z[3]);
  assign celloutsig_1_0z = ~((in_data[100] | in_data[163]) & in_data[166]);
  assign celloutsig_1_11z = ~((celloutsig_1_7z[0] | celloutsig_1_0z) & celloutsig_1_0z);
  assign celloutsig_0_9z = ~((celloutsig_0_5z[1] | celloutsig_0_8z[0]) & celloutsig_0_8z[1]);
  assign celloutsig_0_32z = ~((celloutsig_0_19z[5] | celloutsig_0_4z[8]) & celloutsig_0_0z);
  assign celloutsig_0_0z = in_data[72] ^ in_data[29];
  assign celloutsig_0_67z = celloutsig_0_15z[2] ^ celloutsig_0_27z;
  assign celloutsig_0_79z = celloutsig_0_67z ^ celloutsig_0_6z[0];
  assign celloutsig_1_1z = in_data[110] ^ celloutsig_1_0z;
  assign celloutsig_0_21z = celloutsig_0_3z ^ celloutsig_0_0z;
  assign celloutsig_0_33z = celloutsig_0_9z ^ celloutsig_0_28z[8];
  assign celloutsig_0_4z = celloutsig_0_2z & celloutsig_0_2z;
  assign celloutsig_0_5z = { in_data[54], celloutsig_0_3z, celloutsig_0_0z } & { celloutsig_0_2z[2:1], celloutsig_0_0z };
  assign celloutsig_1_3z = celloutsig_1_2z[11:8] & { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_1_4z = in_data[140:136] & celloutsig_1_2z[11:7];
  assign celloutsig_1_12z = { celloutsig_1_2z[1:0], celloutsig_1_5z } & celloutsig_1_6z[2:0];
  assign celloutsig_1_14z = { celloutsig_1_12z[2:1], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_8z } & { celloutsig_1_2z[9:8], celloutsig_1_12z };
  assign celloutsig_1_16z = { celloutsig_1_9z[9:3], celloutsig_1_12z, celloutsig_1_15z, celloutsig_1_15z, celloutsig_1_11z } & { celloutsig_1_2z[6:4], celloutsig_1_11z, celloutsig_1_3z, celloutsig_1_12z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_17z = { celloutsig_1_6z[6], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_0z } & { celloutsig_1_9z[20:14], celloutsig_1_1z, celloutsig_1_6z };
  assign celloutsig_0_17z = { celloutsig_0_6z[4:2], celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_13z } & { celloutsig_0_4z[9:3], celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_7z };
  assign celloutsig_0_22z = celloutsig_0_17z[24:8] & in_data[24:8];
  assign celloutsig_0_2z = in_data[48:38] & in_data[18:8];
  assign celloutsig_0_25z = { celloutsig_0_8z[2], celloutsig_0_9z, celloutsig_0_9z } & celloutsig_0_8z;
  assign celloutsig_0_30z = { celloutsig_0_1z[1:0], celloutsig_0_25z, celloutsig_0_21z } & celloutsig_0_14z[15:10];
  assign celloutsig_0_40z = { celloutsig_0_28z[10:6], celloutsig_0_33z, celloutsig_0_24z, celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_8z } > { celloutsig_0_22z[12:3], celloutsig_0_26z, celloutsig_0_15z };
  assign celloutsig_0_24z = celloutsig_0_10z > { celloutsig_0_2z[9:8], celloutsig_0_16z, celloutsig_0_16z };
  assign celloutsig_0_26z = celloutsig_0_22z[12:7] > { celloutsig_0_19z[7], celloutsig_0_11z, celloutsig_0_7z };
  assign celloutsig_1_5z = ! { celloutsig_1_2z[8:6], celloutsig_1_3z };
  assign celloutsig_1_8z = ! { in_data[106:101], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_3z };
  assign celloutsig_0_12z = ! { celloutsig_0_4z[10:7], celloutsig_0_8z };
  assign celloutsig_0_13z = ! { in_data[91:89], celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_0z };
  assign celloutsig_0_18z = ! in_data[86:62];
  assign celloutsig_0_3z = celloutsig_0_1z[3] & ~(celloutsig_0_0z);
  assign celloutsig_0_11z = celloutsig_0_10z[0] & ~(celloutsig_0_0z);
  assign celloutsig_0_16z = celloutsig_0_2z[8] & ~(celloutsig_0_12z);
  assign celloutsig_0_27z = celloutsig_0_26z & ~(celloutsig_0_15z[1]);
  assign celloutsig_0_29z = celloutsig_0_18z & ~(celloutsig_0_4z[3]);
  assign celloutsig_0_43z = { celloutsig_0_26z, celloutsig_0_24z, celloutsig_0_40z } % { 1'h1, celloutsig_0_4z[9:8] };
  assign celloutsig_0_54z = { celloutsig_0_46z[4:3], celloutsig_0_15z, celloutsig_0_15z } % { 1'h1, celloutsig_0_19z[7:3], celloutsig_0_45z, celloutsig_0_12z };
  assign celloutsig_1_18z = { celloutsig_1_17z[13:1], celloutsig_1_3z, celloutsig_1_15z, celloutsig_1_6z, celloutsig_1_0z } % { 1'h1, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_12z, celloutsig_1_3z, celloutsig_1_16z, celloutsig_1_15z };
  assign celloutsig_0_14z = { celloutsig_0_2z[8:1], celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_1z } % { 1'h1, in_data[36:15] };
  assign celloutsig_1_7z = { celloutsig_1_2z[9:7], celloutsig_1_1z } % { 1'h1, celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_0z };
  assign celloutsig_1_19z = { celloutsig_1_2z[12:5], celloutsig_1_3z, celloutsig_1_12z } % { 1'h1, celloutsig_1_9z[13:5], celloutsig_1_14z };
  assign celloutsig_0_10z = in_data[44:41] % { 1'h1, celloutsig_0_7z[2:0] };
  assign celloutsig_0_15z = { celloutsig_0_1z[8:7], celloutsig_0_0z } % { 1'h1, celloutsig_0_5z[0], celloutsig_0_3z };
  assign celloutsig_0_46z = { celloutsig_0_4z[4:1], celloutsig_0_10z, celloutsig_0_24z, celloutsig_0_8z, celloutsig_0_3z } | { celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_30z, celloutsig_0_21z, celloutsig_0_24z };
  assign celloutsig_1_6z = { celloutsig_1_2z[7:2], celloutsig_1_5z, celloutsig_1_1z } | { in_data[101:99], celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_0_1z = in_data[69:60] | { in_data[28:20], celloutsig_0_0z };
  assign celloutsig_1_15z = ~^ { celloutsig_1_14z, celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_5z, celloutsig_1_14z };
  assign celloutsig_0_6z = celloutsig_0_1z[5:1] ^ celloutsig_0_1z[9:5];
  assign celloutsig_0_7z = celloutsig_0_2z[5:2] ^ in_data[53:50];
  assign celloutsig_1_9z = { in_data[133:124], celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_3z } ^ { celloutsig_1_6z[7], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_4z };
  assign celloutsig_0_19z = { celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_13z } ^ { celloutsig_0_5z[2:1], celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_18z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_0_28z = in_data[78:65] ^ { celloutsig_0_16z, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_25z, celloutsig_0_7z };
  always_latch
    if (clkin_data[32]) celloutsig_0_35z = 5'h00;
    else if (celloutsig_1_19z[0]) celloutsig_0_35z = celloutsig_0_17z[23:19];
  always_latch
    if (!clkin_data[64]) celloutsig_0_41z = 9'h000;
    else if (!celloutsig_1_19z[0]) celloutsig_0_41z = { in_data[12:10], celloutsig_0_32z, celloutsig_0_29z, celloutsig_0_5z, celloutsig_0_11z };
  always_latch
    if (clkin_data[64]) celloutsig_0_8z = 3'h0;
    else if (!celloutsig_1_19z[0]) celloutsig_0_8z = celloutsig_0_6z[3:1];
  always_latch
    if (clkin_data[96]) celloutsig_1_2z = 14'h0000;
    else if (clkin_data[0]) celloutsig_1_2z = in_data[180:167];
  assign { out_data[154:128], out_data[110:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_78z, celloutsig_0_79z };
endmodule

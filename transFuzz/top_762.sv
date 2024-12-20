/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [3:0] celloutsig_0_0z;
  wire [33:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  reg [6:0] celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire [4:0] celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire celloutsig_0_26z;
  wire [7:0] celloutsig_0_27z;
  wire celloutsig_0_2z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [5:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [6:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [11:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [5:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [7:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  reg [6:0] celloutsig_1_8z;
  wire [4:0] celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  reg [32:0] _00_;
  always_latch
    if (clkin_data[64]) _00_ = 33'h000000000;
    else if (celloutsig_1_18z) _00_ = { in_data[58:33], celloutsig_0_5z[6:1], celloutsig_0_7z };
  assign { celloutsig_0_10z[33:2], celloutsig_0_10z[0] } = _00_;
  assign celloutsig_1_0z = ~(in_data[98] & in_data[134]);
  assign celloutsig_1_12z = ~(celloutsig_1_2z[0] & celloutsig_1_5z[3]);
  assign celloutsig_0_24z = ~(celloutsig_0_16z & celloutsig_0_9z[10]);
  assign celloutsig_0_4z = in_data[64:61] == { celloutsig_0_0z[2:1], celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_16z = in_data[4:1] == { celloutsig_0_0z[2:0], celloutsig_0_13z };
  assign celloutsig_0_21z = in_data[65:43] === { celloutsig_0_5z[6:1], celloutsig_0_18z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_12z };
  assign celloutsig_1_19z = { in_data[130:124], celloutsig_1_0z, celloutsig_1_13z } >= { celloutsig_1_5z[5:1], celloutsig_1_1z, celloutsig_1_14z, celloutsig_1_18z, celloutsig_1_14z };
  assign celloutsig_0_1z = in_data[25:21] >= in_data[48:44];
  assign celloutsig_0_2z = { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z } >= { in_data[89:87], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_11z = { celloutsig_0_3z[3:0], celloutsig_0_4z } > celloutsig_0_10z[17:13];
  assign celloutsig_1_11z = celloutsig_1_2z || { in_data[101:98], celloutsig_1_1z };
  assign celloutsig_1_13z = celloutsig_1_9z[3:0] || celloutsig_1_9z[3:0];
  assign celloutsig_1_15z = { celloutsig_1_5z[7:5], celloutsig_1_13z, celloutsig_1_11z, celloutsig_1_4z } || { celloutsig_1_8z[6:2], celloutsig_1_4z };
  assign celloutsig_1_16z = { celloutsig_1_9z[4], celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_10z, celloutsig_1_8z } || { in_data[116:108], celloutsig_1_0z, celloutsig_1_10z };
  assign celloutsig_1_17z = { celloutsig_1_5z[6:3], celloutsig_1_13z } || { celloutsig_1_10z[4], celloutsig_1_6z, celloutsig_1_12z, celloutsig_1_15z, celloutsig_1_1z };
  assign celloutsig_0_13z = { celloutsig_0_3z[5:2], celloutsig_0_2z, celloutsig_0_7z } || celloutsig_0_5z[6:1];
  assign celloutsig_0_14z = { celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_12z } || { celloutsig_0_5z[3:1], celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_11z };
  assign celloutsig_0_15z = { celloutsig_0_9z[8], celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_13z } || celloutsig_0_10z[30:12];
  assign celloutsig_0_0z = in_data[34:31] % { 1'h1, in_data[84:82] };
  assign celloutsig_1_9z = in_data[187:183] % { 1'h1, celloutsig_1_5z[4:2], celloutsig_1_4z };
  assign celloutsig_0_22z = { celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_15z } % { 1'h1, celloutsig_0_18z[4:1] };
  assign celloutsig_0_9z = { celloutsig_0_5z[6:1], 1'h0, celloutsig_0_7z, celloutsig_0_0z } % { 1'h1, in_data[50:44], celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_2z };
  assign celloutsig_1_5z[7:1] = celloutsig_1_2z[3] ? { in_data[159:154], celloutsig_1_0z } : { in_data[114:109], celloutsig_1_3z };
  assign celloutsig_0_27z = celloutsig_0_8z ? { celloutsig_0_21z, celloutsig_0_5z[6:1], 1'h0 } : { celloutsig_0_9z[6:3], celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_24z };
  assign celloutsig_0_6z = { in_data[42:41], celloutsig_0_1z } != { celloutsig_0_5z[1], 1'h0, celloutsig_0_4z };
  assign celloutsig_1_1z = in_data[105:103] !== in_data[118:116];
  assign celloutsig_0_26z = in_data[34] & celloutsig_0_22z[2];
  assign celloutsig_1_6z = ~^ in_data[136:131];
  assign celloutsig_1_18z = ~^ { in_data[110], celloutsig_1_13z, celloutsig_1_16z, celloutsig_1_17z, celloutsig_1_6z };
  assign celloutsig_0_12z = ~^ { in_data[59], celloutsig_0_0z };
  assign celloutsig_0_17z = ~^ { in_data[79:77], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_16z, celloutsig_0_16z };
  assign celloutsig_0_38z = ^ { celloutsig_0_26z, celloutsig_0_16z, celloutsig_0_11z };
  assign celloutsig_0_39z = ^ { celloutsig_0_27z, celloutsig_0_17z, celloutsig_0_5z[6:1], 1'h0 };
  assign celloutsig_0_7z = ^ celloutsig_0_5z[3:1];
  assign celloutsig_0_3z = { celloutsig_0_0z[3:1], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z } >>> { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_1_2z = in_data[183:179] >>> in_data[116:112];
  assign celloutsig_1_10z = { celloutsig_1_2z[4:1], celloutsig_1_0z, celloutsig_1_3z } >>> celloutsig_1_5z[7:2];
  assign celloutsig_1_3z = ~((celloutsig_1_2z[3] & celloutsig_1_2z[3]) | celloutsig_1_0z);
  assign celloutsig_1_4z = ~((in_data[139] & celloutsig_1_0z) | celloutsig_1_3z);
  assign celloutsig_1_14z = ~((celloutsig_1_13z & celloutsig_1_8z[5]) | celloutsig_1_1z);
  assign celloutsig_0_8z = ~((celloutsig_0_3z[1] & in_data[33]) | celloutsig_0_6z);
  always_latch
    if (!clkin_data[96]) celloutsig_1_8z = 7'h00;
    else if (clkin_data[0]) celloutsig_1_8z = { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_6z };
  always_latch
    if (clkin_data[64]) celloutsig_0_18z = 7'h00;
    else if (!celloutsig_1_18z) celloutsig_0_18z = { celloutsig_0_3z[4:0], celloutsig_0_6z, celloutsig_0_1z };
  assign { celloutsig_0_5z[2:1], celloutsig_0_5z[6:3] } = { celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_3z[4:1] } ^ { in_data[25:24], in_data[29:26] };
  assign celloutsig_0_10z[1] = 1'h0;
  assign celloutsig_0_5z[0] = 1'h0;
  assign celloutsig_1_5z[0] = celloutsig_1_1z;
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_38z, celloutsig_0_39z };
endmodule

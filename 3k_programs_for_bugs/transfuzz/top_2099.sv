/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [7:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  reg [6:0] celloutsig_0_11z;
  wire [13:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [8:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire [18:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [18:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [4:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [17:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [4:0] celloutsig_0_27z;
  wire [5:0] celloutsig_0_28z;
  wire [4:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [7:0] celloutsig_0_30z;
  wire [4:0] celloutsig_0_31z;
  wire [6:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_43z;
  wire celloutsig_0_47z;
  wire [38:0] celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  reg [16:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [11:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [2:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [17:0] celloutsig_1_1z;
  wire [3:0] celloutsig_1_2z;
  reg [31:0] celloutsig_1_5z;
  wire [4:0] celloutsig_1_6z;
  reg [8:0] celloutsig_1_7z;
  wire [19:0] celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_37z = ~(celloutsig_0_26z & celloutsig_0_7z);
  assign celloutsig_0_41z = ~(celloutsig_0_0z[7] & celloutsig_0_4z);
  assign celloutsig_1_13z = ~(in_data[102] & celloutsig_1_6z[1]);
  assign celloutsig_0_24z = ~(celloutsig_0_10z & celloutsig_0_6z);
  assign celloutsig_0_4z = ~(celloutsig_0_3z | in_data[2]);
  assign celloutsig_0_10z = ~(celloutsig_0_3z | celloutsig_0_9z);
  assign celloutsig_0_47z = ~celloutsig_0_5z;
  assign celloutsig_0_33z = ~((1'h1 | celloutsig_0_19z[0]) & in_data[15]);
  assign celloutsig_1_19z = ~((celloutsig_1_15z | celloutsig_1_15z) & celloutsig_1_8z[11]);
  assign celloutsig_0_7z = ~((celloutsig_0_0z[2] | in_data[86]) & celloutsig_0_3z);
  assign celloutsig_1_16z = in_data[157] | ~(1'h1);
  assign celloutsig_0_6z = celloutsig_0_4z | ~(celloutsig_0_0z[4]);
  assign celloutsig_0_15z = 1'h1 | ~(celloutsig_0_11z[2]);
  assign celloutsig_0_3z = celloutsig_0_1z | in_data[69];
  assign celloutsig_0_2z = celloutsig_0_0z[2] | celloutsig_0_0z[4];
  assign celloutsig_0_5z = ~(celloutsig_0_2z ^ in_data[77]);
  assign celloutsig_0_1z = ~(celloutsig_0_0z[1] ^ in_data[10]);
  assign celloutsig_0_22z = ~(celloutsig_0_16z[1] ^ celloutsig_0_11z[2]);
  assign celloutsig_0_23z = ~(celloutsig_0_13z ^ in_data[8]);
  assign celloutsig_0_19z = { celloutsig_0_8z[15:1], celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_18z, celloutsig_0_10z } + { celloutsig_0_0z[4], celloutsig_0_5z, celloutsig_0_8z };
  assign celloutsig_0_35z = { celloutsig_0_7z, celloutsig_0_31z, celloutsig_0_5z, celloutsig_0_33z, celloutsig_0_18z, celloutsig_0_28z } == { celloutsig_0_17z[17:15], celloutsig_0_14z, celloutsig_0_16z };
  assign celloutsig_0_26z = { celloutsig_0_20z[3:1], celloutsig_0_5z, celloutsig_0_20z, celloutsig_0_23z, celloutsig_0_21z, celloutsig_0_9z } == celloutsig_0_17z[13:2];
  assign celloutsig_0_40z = { celloutsig_0_11z[5:0], celloutsig_0_13z } === { celloutsig_0_37z, celloutsig_0_31z, celloutsig_0_37z };
  assign celloutsig_1_10z = celloutsig_1_2z[2:0] === celloutsig_1_1z[14:12];
  assign celloutsig_0_9z = { celloutsig_0_0z[7:2], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_7z } === { in_data[79:76], celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_1z };
  assign celloutsig_0_34z = { celloutsig_0_26z, celloutsig_0_1z, celloutsig_0_22z } <= { celloutsig_0_0z[0], celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_1_15z = celloutsig_1_6z[0] & ~(celloutsig_1_5z[15]);
  assign celloutsig_0_13z = celloutsig_0_6z & ~(celloutsig_0_3z);
  assign celloutsig_0_32z = { celloutsig_0_0z[4:0], celloutsig_0_2z, celloutsig_0_22z } % { 1'h1, celloutsig_0_7z, celloutsig_0_27z };
  assign celloutsig_1_8z = celloutsig_1_5z[19:0] % { 1'h1, in_data[173:159], celloutsig_1_2z };
  assign celloutsig_0_31z = { celloutsig_0_8z[13:10], celloutsig_0_24z } % { 1'h1, in_data[17:15], celloutsig_0_18z };
  assign celloutsig_0_29z = celloutsig_0_17z[7:3] % { 1'h1, celloutsig_0_25z[13:11], celloutsig_0_24z };
  assign celloutsig_0_14z = { celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_11z } * { celloutsig_0_0z, celloutsig_0_4z };
  assign celloutsig_0_27z = celloutsig_0_8z[11:7] * { 1'h1, celloutsig_0_15z, celloutsig_0_18z, celloutsig_0_9z, celloutsig_0_26z };
  assign celloutsig_0_28z = { celloutsig_0_11z[6:3], celloutsig_0_13z, celloutsig_0_7z } * { celloutsig_0_24z, celloutsig_0_27z };
  assign celloutsig_0_0z = in_data[85] ? { in_data[86], 1'h1, in_data[84:79] } : in_data[8:1];
  assign celloutsig_0_48z = celloutsig_0_34z ? { celloutsig_0_8z[10:6], celloutsig_0_41z, celloutsig_0_12z[13:8], 7'h7f, celloutsig_0_12z[0], celloutsig_0_19z } : { celloutsig_0_20z[4:1], celloutsig_0_43z, celloutsig_0_28z, celloutsig_0_35z, celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_40z, celloutsig_0_8z, celloutsig_0_32z };
  assign celloutsig_1_6z = in_data[143] ? { celloutsig_1_5z[13:10], 1'h1 } : celloutsig_1_1z[17:13];
  assign celloutsig_0_16z = celloutsig_0_14z[0] ? { celloutsig_0_11z[0], celloutsig_0_4z, celloutsig_0_3z } : { celloutsig_0_14z[8], celloutsig_0_10z, celloutsig_0_2z };
  assign celloutsig_0_43z = { celloutsig_0_30z[6:0], celloutsig_0_5z } != { celloutsig_0_30z[7:2], celloutsig_0_33z, celloutsig_0_26z };
  assign celloutsig_0_21z = { celloutsig_0_8z[9:1], celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_13z, celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_16z } != { in_data[79:77], celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_20z };
  assign celloutsig_0_18z = ^ { celloutsig_0_0z[2:0], celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_25z = celloutsig_0_19z[17:0] >> { celloutsig_0_19z[18:6], celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_16z };
  assign celloutsig_1_2z = 4'hf <<< celloutsig_1_0z[9:6];
  assign celloutsig_1_18z = { celloutsig_1_7z[4:3], celloutsig_1_13z } <<< { 1'h1, celloutsig_1_10z, celloutsig_1_13z };
  assign celloutsig_1_0z = in_data[123:112] ~^ in_data[181:170];
  assign celloutsig_0_17z = { celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_16z, celloutsig_0_11z } ~^ { in_data[25:19], celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_9z };
  assign celloutsig_0_20z = { celloutsig_0_19z[8:5], celloutsig_0_9z } ~^ { celloutsig_0_12z[13:10], celloutsig_0_18z };
  assign celloutsig_0_30z = { in_data[28:24], celloutsig_0_15z, celloutsig_0_26z, celloutsig_0_24z } ~^ { celloutsig_0_28z[4:3], celloutsig_0_29z, celloutsig_0_9z };
  always_latch
    if (!clkin_data[96]) celloutsig_1_5z = 32'd0;
    else if (!clkin_data[64]) celloutsig_1_5z = { celloutsig_1_0z[5:3], celloutsig_1_2z, celloutsig_1_1z[17:12], 12'hfff, celloutsig_1_2z, 2'h3, celloutsig_1_16z };
  always_latch
    if (clkin_data[96]) celloutsig_1_7z = 9'h000;
    else if (!clkin_data[64]) celloutsig_1_7z = { celloutsig_1_1z[17:12], 3'h7 };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_8z = 17'h00000;
    else if (!clkin_data[32]) celloutsig_0_8z = { in_data[31:26], celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_1z };
  always_latch
    if (celloutsig_1_19z) celloutsig_0_11z = 7'h00;
    else if (!clkin_data[0]) celloutsig_0_11z = { celloutsig_0_0z[5:0], celloutsig_0_2z };
  assign { celloutsig_0_12z[13:9], celloutsig_0_12z[0], celloutsig_0_12z[8] } = { celloutsig_0_11z[5:1], celloutsig_0_7z, celloutsig_0_1z } ~^ { celloutsig_0_0z[6:2], celloutsig_0_6z, celloutsig_0_0z[1] };
  assign celloutsig_1_1z[17:12] = celloutsig_1_0z[11:6] ~^ in_data[133:128];
  assign celloutsig_0_12z[7:1] = 7'h7f;
  assign celloutsig_1_1z[11:0] = 12'hfff;
  assign { out_data[130:128], out_data[96], out_data[32:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_47z, celloutsig_0_48z[37:6] };
endmodule

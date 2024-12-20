/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [9:0] celloutsig_0_0z;
  wire [13:0] celloutsig_0_10z;
  reg [3:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [4:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [7:0] celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [10:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [18:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [17:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire [10:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_5z = !(celloutsig_0_3z ? celloutsig_0_0z[1] : celloutsig_0_1z);
  assign celloutsig_1_6z = !(celloutsig_1_3z ? celloutsig_1_0z : celloutsig_1_5z);
  assign celloutsig_1_11z = ~celloutsig_1_10z;
  assign celloutsig_1_0z = in_data[130] | in_data[143];
  assign celloutsig_1_12z = celloutsig_1_2z[0] ^ celloutsig_1_3z;
  assign celloutsig_1_7z = ~(celloutsig_1_3z ^ celloutsig_1_4z);
  assign celloutsig_1_15z = { celloutsig_1_13z[6:3], celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_9z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_8z } + { celloutsig_1_13z[14:3], celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_11z, celloutsig_1_5z };
  assign celloutsig_0_10z = in_data[74:61] + { celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_7z };
  assign celloutsig_1_2z = { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z } + in_data[116:112];
  assign celloutsig_0_0z = in_data[59:50] & in_data[71:62];
  assign celloutsig_0_8z = { celloutsig_0_0z, celloutsig_0_1z } & { celloutsig_0_2z[6:0], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_0_2z = celloutsig_0_0z[7:0] & celloutsig_0_0z[8:1];
  assign celloutsig_1_13z = { celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_9z, celloutsig_1_5z, celloutsig_1_12z, celloutsig_1_8z, celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_11z, celloutsig_1_3z, celloutsig_1_4z } / { 1'h1, in_data[151:147], celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_11z, celloutsig_1_10z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_0z, in_data[96] };
  assign celloutsig_1_8z = { celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_3z } === { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_2z[4], celloutsig_1_2z[2], celloutsig_1_2z[0] };
  assign celloutsig_1_18z = { celloutsig_1_14z, celloutsig_1_9z, celloutsig_1_16z, celloutsig_1_9z } > celloutsig_1_15z[3:0];
  assign celloutsig_0_18z = { celloutsig_0_14z[2:1], celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_2z } > { celloutsig_0_0z[6:5], 1'h0, celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_17z, 1'h0, celloutsig_0_17z, 1'h0 };
  assign celloutsig_1_4z = { in_data[116], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_1z } > { celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_1_3z = { celloutsig_1_2z[1], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z } <= { celloutsig_1_2z[3:0], celloutsig_1_0z };
  assign celloutsig_1_5z = { in_data[180:170], celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_4z } <= { in_data[171:156], celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_1_16z = { in_data[171:168], celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_9z, celloutsig_1_9z, celloutsig_1_11z, celloutsig_1_14z } && in_data[165:156];
  assign celloutsig_0_19z = ! { in_data[23:9], celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_14z, celloutsig_0_2z };
  assign celloutsig_0_3z = celloutsig_0_1z & ~(celloutsig_0_1z);
  assign celloutsig_1_14z = celloutsig_1_10z & ~(celloutsig_1_5z);
  assign celloutsig_0_9z = celloutsig_0_5z & ~(celloutsig_0_3z);
  assign celloutsig_0_1z = celloutsig_0_0z[4] & ~(in_data[11]);
  assign celloutsig_1_10z = celloutsig_1_0z & ~(celloutsig_1_0z);
  assign celloutsig_0_16z = { celloutsig_0_8z[3:0], celloutsig_0_6z } % { 1'h1, celloutsig_0_8z[7:6], celloutsig_0_7z, 1'h0 };
  assign celloutsig_1_19z = { celloutsig_1_2z[3:0], celloutsig_1_5z, celloutsig_1_11z, celloutsig_1_2z } % { 1'h1, in_data[145:138], celloutsig_1_3z, celloutsig_1_11z };
  assign celloutsig_0_7z = { celloutsig_0_2z[3:0], celloutsig_0_6z } !== { celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_0_4z = ~^ { celloutsig_0_0z[9:3], celloutsig_0_0z };
  assign celloutsig_0_15z = ~^ in_data[63:59];
  assign celloutsig_0_17z = ~^ { celloutsig_0_10z[8], celloutsig_0_16z, 1'h0 };
  assign celloutsig_0_6z = ^ { celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_4z };
  assign celloutsig_1_1z = ~((celloutsig_1_0z & in_data[158]) | in_data[164]);
  always_latch
    if (!clkin_data[32]) celloutsig_0_14z = 4'h0;
    else if (!celloutsig_1_18z) celloutsig_0_14z = { celloutsig_0_0z[5:4], celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_1_9z = ~((celloutsig_1_7z & celloutsig_1_0z) | (celloutsig_1_7z & in_data[188]));
  assign { out_data[128], out_data[106:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_18z, celloutsig_0_19z };
endmodule

/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [23:0] celloutsig_0_10z;
  wire [18:0] celloutsig_0_15z;
  wire [6:0] celloutsig_0_1z;
  reg [9:0] celloutsig_0_22z;
  wire celloutsig_0_25z;
  wire celloutsig_0_2z;
  reg [5:0] celloutsig_0_32z;
  reg [13:0] celloutsig_0_3z;
  wire [12:0] celloutsig_0_41z;
  wire [2:0] celloutsig_0_42z;
  wire [17:0] celloutsig_0_4z;
  wire [3:0] celloutsig_0_6z;
  reg [3:0] celloutsig_0_7z;
  wire [6:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire [5:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [7:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [30:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_0z = ~((in_data[183] | in_data[150]) & in_data[140]);
  assign celloutsig_1_3z = ~((celloutsig_1_2z[5] | celloutsig_1_1z) & in_data[109]);
  assign celloutsig_1_13z = ~((celloutsig_1_7z | in_data[189]) & celloutsig_1_10z);
  assign celloutsig_0_2z = ~((celloutsig_0_0z | in_data[70]) & celloutsig_0_0z);
  assign celloutsig_0_0z = ~((in_data[21] | in_data[3]) & (in_data[82] | in_data[45]));
  assign celloutsig_1_5z = ~((celloutsig_1_3z | celloutsig_1_2z[3]) & (celloutsig_1_1z | celloutsig_1_2z[0]));
  assign celloutsig_1_7z = ~((in_data[110] | celloutsig_1_5z) & (celloutsig_1_4z | celloutsig_1_6z));
  assign celloutsig_1_10z = ~((celloutsig_1_1z | celloutsig_1_6z) & (celloutsig_1_3z | celloutsig_1_4z));
  assign celloutsig_1_6z = { in_data[171], celloutsig_1_0z, celloutsig_1_5z } > in_data[184:182];
  assign celloutsig_1_9z = ! { celloutsig_1_8z[20:14], celloutsig_1_7z };
  assign celloutsig_0_25z = ! celloutsig_0_1z[6:2];
  assign celloutsig_1_1z = { in_data[151:148], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } < in_data[112:106];
  assign celloutsig_1_4z = { in_data[146:145], celloutsig_1_3z, celloutsig_1_3z } < in_data[131:128];
  assign celloutsig_1_12z = celloutsig_1_8z[24:0] < { in_data[98], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_4z };
  assign celloutsig_1_18z = { celloutsig_1_8z[30:29], celloutsig_1_13z } < { celloutsig_1_14z, celloutsig_1_7z, celloutsig_1_4z };
  assign celloutsig_1_14z = celloutsig_1_5z & ~(celloutsig_1_13z);
  assign celloutsig_1_8z = { in_data[184:155], celloutsig_1_3z } * { in_data[181:152], celloutsig_1_5z };
  assign celloutsig_0_4z = { in_data[23:7], celloutsig_0_0z } * { celloutsig_0_3z[9:6], celloutsig_0_3z };
  assign celloutsig_0_10z = { celloutsig_0_1z[6:3], celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_7z } * { in_data[94:73], celloutsig_0_0z, celloutsig_0_9z };
  assign celloutsig_1_19z = - { in_data[176:175], celloutsig_1_12z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_12z };
  assign celloutsig_0_6z = - { celloutsig_0_1z[5], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_8z = - { in_data[71:70], celloutsig_0_7z, celloutsig_0_2z };
  assign celloutsig_0_15z = - { celloutsig_0_4z, celloutsig_0_9z };
  assign celloutsig_0_1z = - { in_data[80:77], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_9z = & { celloutsig_0_7z, celloutsig_0_6z[3] };
  assign celloutsig_0_41z = celloutsig_0_15z[18:6] <<< { celloutsig_0_22z[5:1], celloutsig_0_32z, celloutsig_0_9z, celloutsig_0_25z };
  assign celloutsig_0_42z = celloutsig_0_22z[3:1] <<< celloutsig_0_8z[3:1];
  assign celloutsig_1_2z = in_data[177:170] <<< { in_data[182:179], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z };
  always_latch
    if (clkin_data[32]) celloutsig_0_3z = 14'h0000;
    else if (!celloutsig_1_19z[0]) celloutsig_0_3z = { in_data[42:36], celloutsig_0_1z };
  always_latch
    if (clkin_data[32]) celloutsig_0_7z = 4'h0;
    else if (celloutsig_1_19z[0]) celloutsig_0_7z = celloutsig_0_3z[4:1];
  always_latch
    if (!clkin_data[32]) celloutsig_0_22z = 10'h000;
    else if (celloutsig_1_19z[0]) celloutsig_0_22z = celloutsig_0_15z[16:7];
  always_latch
    if (clkin_data[32]) celloutsig_0_32z = 6'h00;
    else if (celloutsig_1_19z[0]) celloutsig_0_32z = celloutsig_0_10z[8:3];
  assign { out_data[128], out_data[101:96], out_data[44:32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_41z, celloutsig_0_42z };
endmodule

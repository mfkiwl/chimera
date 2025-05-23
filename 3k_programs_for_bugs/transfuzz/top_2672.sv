/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [16:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [6:0] celloutsig_0_11z;
  wire [24:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_17z;
  wire [6:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [5:0] celloutsig_0_20z;
  wire celloutsig_0_24z;
  reg [18:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  reg [28:0] celloutsig_0_30z;
  wire [15:0] celloutsig_0_3z;
  wire [5:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [14:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [9:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_7z = celloutsig_0_2z ? celloutsig_0_4z[5] : celloutsig_0_6z;
  assign celloutsig_0_13z = celloutsig_0_6z ? celloutsig_0_3z[3] : celloutsig_0_7z;
  assign celloutsig_1_0z = in_data[106] ? in_data[137] : in_data[162];
  assign celloutsig_1_3z = ~(1'h1 & celloutsig_1_1z);
  assign celloutsig_1_11z = ~(celloutsig_1_0z & celloutsig_1_10z);
  assign celloutsig_0_5z = ~(celloutsig_0_0z[13] & celloutsig_0_1z);
  assign celloutsig_0_1z = ~(in_data[47] & in_data[21]);
  assign celloutsig_0_14z = ~(celloutsig_0_4z[0] & in_data[67]);
  assign celloutsig_0_29z = ~(celloutsig_0_12z[9] & celloutsig_0_19z[3]);
  assign celloutsig_1_9z = ~celloutsig_1_5z;
  assign celloutsig_1_1z = in_data[181] ^ in_data[112];
  assign celloutsig_1_13z = celloutsig_1_12z ^ celloutsig_1_0z;
  assign celloutsig_1_18z = celloutsig_1_0z ^ celloutsig_1_10z;
  assign celloutsig_0_24z = celloutsig_0_4z[1] ^ celloutsig_0_4z[3];
  assign celloutsig_1_7z = ~(in_data[147] ^ celloutsig_1_1z);
  assign celloutsig_0_10z = ~(celloutsig_0_5z ^ in_data[52]);
  assign celloutsig_0_26z = ~(celloutsig_0_13z ^ celloutsig_0_7z);
  assign celloutsig_1_4z = { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z } >= in_data[167:164];
  assign celloutsig_1_5z = { in_data[185:167], celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_1z, 1'h1, celloutsig_1_3z, 1'h1, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_4z, 1'h1 } >= { in_data[184:160], celloutsig_1_3z, 1'h1, celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_1_6z = { in_data[108:106], 1'h1, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_1z } >= { celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_5z, 2'h3, celloutsig_1_3z };
  assign celloutsig_1_10z = { celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_3z } >= { celloutsig_1_8z[5:2], 1'h0 };
  assign celloutsig_1_12z = { in_data[138:137], celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_11z } >= { in_data[160], celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_7z };
  assign celloutsig_1_14z = celloutsig_1_8z[6:2] >= { celloutsig_1_8z[5:2], 1'h0 };
  assign celloutsig_0_6z = { celloutsig_0_3z[7:1], celloutsig_0_0z } >= { celloutsig_0_3z[15:9], celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_0_8z = { in_data[39:34], celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_5z } >= { celloutsig_0_3z[3:2], celloutsig_0_4z, celloutsig_0_4z };
  assign celloutsig_0_17z = { in_data[94:92], celloutsig_0_8z, celloutsig_0_1z } >= celloutsig_0_4z[5:1];
  assign celloutsig_1_15z = ^ { in_data[187:179], celloutsig_1_7z, celloutsig_1_14z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_13z };
  assign celloutsig_1_19z = ^ { in_data[112:110], celloutsig_1_0z, celloutsig_1_10z, celloutsig_1_7z, celloutsig_1_9z, celloutsig_1_9z, celloutsig_1_15z, 1'h1, celloutsig_1_3z, celloutsig_1_13z, celloutsig_1_9z };
  assign celloutsig_0_2z = ^ celloutsig_0_0z[9:5];
  assign celloutsig_0_12z = { in_data[53:46], celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_7z } >>> { celloutsig_0_0z[7:3], celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_3z };
  assign celloutsig_0_19z = { celloutsig_0_4z[2:0], celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_14z } >>> { celloutsig_0_12z[22:18], celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_0_20z = { celloutsig_0_4z[5:1], celloutsig_0_8z } >>> { celloutsig_0_12z[13:9], celloutsig_0_1z };
  assign celloutsig_0_0z = in_data[87:71] ^ in_data[91:75];
  assign celloutsig_0_4z = { celloutsig_0_3z[12:8], celloutsig_0_2z } ^ celloutsig_0_0z[5:0];
  assign celloutsig_0_9z = { celloutsig_0_3z[7:0], celloutsig_0_4z, celloutsig_0_8z } ^ { celloutsig_0_0z[6:1], celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_11z = in_data[87:81] ^ celloutsig_0_9z[12:6];
  assign celloutsig_0_3z = in_data[80:65] ^ in_data[55:40];
  always_latch
    if (clkin_data[0]) celloutsig_0_25z = 19'h00000;
    else if (!celloutsig_1_19z) celloutsig_0_25z = { celloutsig_0_19z[3:1], celloutsig_0_24z, celloutsig_0_17z, celloutsig_0_11z, celloutsig_0_19z };
  always_latch
    if (!clkin_data[0]) celloutsig_0_30z = 29'h00000000;
    else if (celloutsig_1_19z) celloutsig_0_30z = { celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_20z, celloutsig_0_8z, celloutsig_0_25z, celloutsig_0_26z };
  assign { celloutsig_1_8z[0], celloutsig_1_8z[9:2] } = { celloutsig_1_6z, in_data[119:112] } ^ { celloutsig_1_5z, in_data[167:161], celloutsig_1_4z };
  assign celloutsig_1_8z[1] = 1'h0;
  assign { out_data[128], out_data[96], out_data[32], out_data[28:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_29z, celloutsig_0_30z };
endmodule

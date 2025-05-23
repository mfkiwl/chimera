/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [31:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_12z;
  wire [8:0] celloutsig_0_13z;
  wire [3:0] celloutsig_0_14z;
  wire celloutsig_0_1z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [10:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [2:0] celloutsig_0_7z;
  wire [7:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [3:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_3z = celloutsig_0_1z ? celloutsig_0_1z : in_data[15];
  assign celloutsig_1_17z = celloutsig_1_2z ^ celloutsig_1_11z;
  assign celloutsig_1_0z = in_data[181] ^ in_data[135];
  assign celloutsig_1_18z = { celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_12z, celloutsig_1_3z, celloutsig_1_11z } === { celloutsig_1_3z[3], celloutsig_1_5z, celloutsig_1_9z, celloutsig_1_13z, celloutsig_1_1z, celloutsig_1_17z };
  assign celloutsig_0_4z = { celloutsig_0_0z[16:12], celloutsig_0_3z, celloutsig_0_1z } === celloutsig_0_0z[6:0];
  assign celloutsig_0_9z = { celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_6z } === celloutsig_0_7z;
  assign celloutsig_1_1z = in_data[177:175] === in_data[171:169];
  assign celloutsig_1_4z = { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z } === { celloutsig_1_3z[3:0], celloutsig_1_3z[4], celloutsig_1_3z[2] };
  assign celloutsig_1_6z = { in_data[188:187], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z } === { celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_1_8z = in_data[107:102] === { celloutsig_1_3z[2:1], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_0z };
  assign celloutsig_1_11z = celloutsig_1_3z[1:0] === { celloutsig_1_8z, celloutsig_1_4z };
  assign celloutsig_1_13z = celloutsig_1_3z[4:2] === { celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_4z };
  assign celloutsig_0_10z = { celloutsig_0_5z[8:1], celloutsig_0_9z } >= { celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_4z };
  assign celloutsig_0_2z = in_data[11:2] >= celloutsig_0_0z[29:20];
  assign celloutsig_1_12z = { celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_9z, celloutsig_1_4z } >= { celloutsig_1_3z[4:3], celloutsig_1_10z, celloutsig_1_9z };
  assign celloutsig_0_12z = { celloutsig_0_0z[10:8], celloutsig_0_9z } > celloutsig_0_5z[6:3];
  assign celloutsig_0_1z = celloutsig_0_0z[8:3] > celloutsig_0_0z[27:22];
  assign celloutsig_1_2z = { in_data[156:97], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z } > in_data[165:98];
  assign celloutsig_1_7z = { in_data[131:121], celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_6z } > { in_data[132:127], celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_6z = { celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_4z } < { in_data[53:50], celloutsig_0_5z };
  assign celloutsig_1_9z = { celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_8z } < { celloutsig_1_3z[3:1], celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_4z };
  assign celloutsig_0_7z = celloutsig_0_3z ? celloutsig_0_5z[7:5] : in_data[77:75];
  assign celloutsig_0_8z = { celloutsig_0_0z[26:22], celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_3z } >> { celloutsig_0_5z[4], celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_6z };
  assign celloutsig_0_13z = { celloutsig_0_5z[7:4], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_9z } >> { in_data[41:35], celloutsig_0_12z, celloutsig_0_1z };
  assign celloutsig_0_14z = celloutsig_0_13z[4:1] >> celloutsig_0_8z[4:1];
  assign celloutsig_1_3z = { celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z } >> in_data[104:100];
  assign celloutsig_1_10z = { in_data[122:121], celloutsig_1_4z, celloutsig_1_2z } >> { celloutsig_1_5z[2:0], celloutsig_1_2z };
  assign celloutsig_0_5z = { celloutsig_0_0z[23:14], celloutsig_0_4z } - celloutsig_0_0z[10:0];
  assign celloutsig_1_5z = in_data[183:180] - { in_data[164:163], celloutsig_1_4z, celloutsig_1_1z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_0z = 32'd0;
    else if (!clkin_data[0]) celloutsig_0_0z = in_data[86:55];
  assign { out_data[128], out_data[96], out_data[40:32], out_data[3:0] } = { celloutsig_1_18z, 1'h0, celloutsig_0_13z, celloutsig_0_14z };
endmodule

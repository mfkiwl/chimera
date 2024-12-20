/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [2:0] _00_;
  wire celloutsig_0_0z;
  wire celloutsig_0_1z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  reg [5:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  reg [6:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  always_ff @(negedge clkin_data[96], posedge clkin_data[64])
    if (clkin_data[64]) _00_ <= 3'h0;
    else _00_ <= { in_data[138:137], celloutsig_1_3z };
  assign celloutsig_0_0z = ^ in_data[71:60];
  assign celloutsig_0_6z = ^ in_data[62:57];
  assign celloutsig_0_7z = ^ { celloutsig_0_5z[5:1], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_1_0z = ^ in_data[133:129];
  assign celloutsig_1_1z = ^ { in_data[190:180], celloutsig_1_0z };
  assign celloutsig_1_3z = ^ { celloutsig_1_2z[5:1], celloutsig_1_0z };
  assign celloutsig_1_4z = ^ { in_data[142:139], celloutsig_1_0z };
  assign celloutsig_0_1z = ^ { in_data[70:48], celloutsig_0_0z };
  assign celloutsig_1_5z = ^ { in_data[183:174], celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_1_8z = ^ { celloutsig_1_2z[6:1], celloutsig_1_5z, _00_ };
  assign celloutsig_1_10z = ^ { celloutsig_1_2z[1:0], celloutsig_1_4z };
  assign celloutsig_1_11z = ^ { celloutsig_1_2z[5:0], celloutsig_1_10z };
  assign celloutsig_0_2z = ^ in_data[64:62];
  assign celloutsig_1_13z = ^ { celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_8z, celloutsig_1_10z };
  assign celloutsig_1_15z = ^ { in_data[172:164], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_10z, celloutsig_1_5z };
  assign celloutsig_1_16z = ^ { celloutsig_1_2z[6:1], celloutsig_1_5z };
  assign celloutsig_1_17z = ^ in_data[114:111];
  assign celloutsig_1_18z = ^ { celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_15z, celloutsig_1_17z, celloutsig_1_13z, celloutsig_1_11z, celloutsig_1_16z, celloutsig_1_10z };
  assign celloutsig_1_19z = ^ { _00_[2:1], celloutsig_1_17z };
  assign celloutsig_0_3z = ^ { in_data[13:12], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_4z = ^ { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_2z };
  always_latch
    if (clkin_data[32]) celloutsig_0_5z = 6'h00;
    else if (celloutsig_1_18z) celloutsig_0_5z = { in_data[83:80], celloutsig_0_4z, celloutsig_0_0z };
  always_latch
    if (clkin_data[64]) celloutsig_1_2z = 7'h00;
    else if (clkin_data[0]) celloutsig_1_2z = { in_data[110:107], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_6z, celloutsig_0_7z };
endmodule

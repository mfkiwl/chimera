/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [3:0] celloutsig_0_0z;
  wire celloutsig_0_1z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_7z;
  wire [2:0] celloutsig_1_0z;
  wire [4:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [2:0] celloutsig_1_5z;
  wire [13:0] celloutsig_1_6z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_1z = ~(in_data[42] & in_data[7]);
  assign celloutsig_1_3z = ~(celloutsig_1_0z[1] & in_data[102]);
  assign celloutsig_1_19z = ~(in_data[171] & celloutsig_1_6z[3]);
  assign celloutsig_0_3z = ~(celloutsig_0_1z & celloutsig_0_2z);
  assign celloutsig_0_4z = ~celloutsig_0_0z[1];
  reg [9:0] _05_;
  always_ff @(posedge celloutsig_1_18z[0], posedge clkin_data[0])
    if (clkin_data[0]) _05_ <= 10'h000;
    else _05_ <= { celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_0z[1], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_4z };
  assign out_data[41:32] = _05_;
  assign celloutsig_1_0z = in_data[116:114] / { 1'h1, in_data[161:160] };
  assign celloutsig_1_5z = { celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z } / { 1'h1, celloutsig_1_0z[1:0] };
  assign celloutsig_1_4z = { in_data[157:152], celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z } <= { in_data[138:130], celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_0_2z = in_data[13:7] <= { in_data[78:73], celloutsig_0_1z };
  assign celloutsig_0_0z = ~ in_data[61:58];
  assign celloutsig_1_18z = ~ celloutsig_1_6z[8:4];
  assign celloutsig_1_1z = | { celloutsig_1_0z, in_data[113:110] };
  assign celloutsig_0_7z = ~^ { in_data[71:62], celloutsig_0_2z };
  assign celloutsig_1_6z = { celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_5z } >> { in_data[164:157], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_5z };
  assign celloutsig_1_2z = ~((celloutsig_1_1z & celloutsig_1_1z) | (celloutsig_1_0z[1] & celloutsig_1_0z[1]));
  assign { out_data[132:128], out_data[96], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_7z };
endmodule

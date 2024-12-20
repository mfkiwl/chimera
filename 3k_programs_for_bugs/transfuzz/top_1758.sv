/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire [17:0] _04_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [6:0] celloutsig_0_11z;
  wire [5:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [3:0] celloutsig_0_14z;
  wire [2:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [3:0] celloutsig_0_30z;
  wire [3:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [4:0] celloutsig_0_43z;
  wire [5:0] celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [8:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_1z = ~(in_data[141] & in_data[169]);
  assign celloutsig_1_8z = ~(celloutsig_1_1z & celloutsig_1_2z);
  assign celloutsig_1_15z = ~(celloutsig_1_1z & celloutsig_1_14z);
  assign celloutsig_0_16z = ~(celloutsig_0_0z & in_data[12]);
  assign celloutsig_0_36z = ~(celloutsig_0_29z | celloutsig_0_19z);
  assign celloutsig_1_10z = ~(celloutsig_1_2z | celloutsig_1_4z);
  assign celloutsig_0_26z = ~(celloutsig_0_14z[1] | celloutsig_0_7z);
  assign celloutsig_1_0z = ~in_data[163];
  assign celloutsig_0_7z = ~celloutsig_0_5z;
  assign celloutsig_0_1z = ~in_data[61];
  assign celloutsig_0_22z = ~celloutsig_0_0z;
  assign celloutsig_0_24z = ~celloutsig_0_19z;
  assign celloutsig_0_52z = ~((_01_ | celloutsig_0_7z) & celloutsig_0_9z);
  assign celloutsig_0_5z = ~((celloutsig_0_0z | in_data[20]) & celloutsig_0_0z);
  assign celloutsig_1_2z = ~((celloutsig_1_1z | celloutsig_1_0z) & in_data[136]);
  assign celloutsig_1_4z = ~((in_data[105] | celloutsig_1_1z) & celloutsig_1_2z);
  assign celloutsig_0_9z = ~((celloutsig_0_7z | in_data[63]) & celloutsig_0_3z);
  assign celloutsig_0_29z = ~((celloutsig_0_24z | celloutsig_0_28z) & celloutsig_0_4z[3]);
  assign celloutsig_0_51z = ~((celloutsig_0_11z[0] | celloutsig_0_43z[4]) & (celloutsig_0_0z | celloutsig_0_36z));
  assign celloutsig_1_5z = ~((in_data[157] | celloutsig_1_0z) & (celloutsig_1_2z | in_data[115]));
  assign celloutsig_1_16z = ~((celloutsig_1_15z | celloutsig_1_12z) & (celloutsig_1_7z | celloutsig_1_8z));
  assign celloutsig_0_17z = ~((celloutsig_0_10z | celloutsig_0_9z) & (celloutsig_0_14z[3] | in_data[15]));
  assign celloutsig_0_21z = ~((celloutsig_0_14z[0] | celloutsig_0_5z) & (in_data[66] | celloutsig_0_9z));
  assign celloutsig_0_3z = ~((celloutsig_0_1z | celloutsig_0_1z) & (celloutsig_0_0z | celloutsig_0_1z));
  assign celloutsig_1_11z = in_data[169] | celloutsig_1_2z;
  assign celloutsig_0_6z = celloutsig_0_4z[5] | celloutsig_0_3z;
  reg [17:0] _31_;
  always_ff @(posedge celloutsig_1_18z, negedge clkin_data[0])
    if (!clkin_data[0]) _31_ <= 18'h00000;
    else _31_ <= { in_data[24:8], celloutsig_0_5z };
  assign { _04_[17:6], _03_, _04_[4:0] } = _31_;
  reg [2:0] _32_;
  always_ff @(posedge celloutsig_1_18z, negedge clkin_data[0])
    if (!clkin_data[0]) _32_ <= 3'h0;
    else _32_ <= { celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_6z };
  assign { _02_, _00_, _01_ } = _32_;
  assign celloutsig_0_11z = { celloutsig_0_4z[3:2], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_2z } & { celloutsig_0_4z[2:0], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_9z };
  assign celloutsig_0_12z = in_data[88:83] & { _00_, _01_, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_0_14z = celloutsig_0_11z[6:3] & { celloutsig_0_4z[4:3], celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_18z = { celloutsig_0_12z[3:2], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_16z } & { celloutsig_0_12z[3:1], celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_13z };
  assign celloutsig_0_30z = { celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_13z, celloutsig_0_25z } & { celloutsig_0_16z, celloutsig_0_5z, celloutsig_0_27z, celloutsig_0_22z };
  assign celloutsig_0_40z = { celloutsig_0_11z, celloutsig_0_13z } == { celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_30z, celloutsig_0_36z, celloutsig_0_27z };
  assign celloutsig_0_28z = { celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_26z, celloutsig_0_22z, celloutsig_0_6z, celloutsig_0_18z } == { celloutsig_0_11z[4:2], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_15z };
  assign celloutsig_0_0z = in_data[16:10] < in_data[45:39];
  assign celloutsig_1_7z = { celloutsig_1_3z[7:6], celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z } < { celloutsig_1_3z[8], celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_0z };
  assign celloutsig_1_12z = { celloutsig_1_11z, celloutsig_1_1z, celloutsig_1_11z } < { celloutsig_1_11z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_0_10z = { in_data[87:78], celloutsig_0_2z } < in_data[66:56];
  assign celloutsig_0_2z = { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z } < in_data[54:52];
  assign celloutsig_0_35z = celloutsig_0_21z ? { celloutsig_0_25z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_9z } : { celloutsig_0_7z, celloutsig_0_24z, celloutsig_0_27z, celloutsig_0_16z };
  assign celloutsig_0_4z = celloutsig_0_2z ? in_data[9:4] : { 2'h0, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z, 1'h0 };
  assign celloutsig_0_43z = { celloutsig_0_35z[0], celloutsig_0_13z, celloutsig_0_21z, celloutsig_0_16z, celloutsig_0_40z } | { _03_, _04_[4:2], celloutsig_0_1z };
  assign celloutsig_1_19z = { celloutsig_1_7z, celloutsig_1_18z, celloutsig_1_1z, celloutsig_1_16z, celloutsig_1_14z } | celloutsig_1_3z[4:0];
  assign celloutsig_1_18z = celloutsig_1_4z & in_data[175];
  assign celloutsig_0_25z = _02_ & celloutsig_0_6z;
  assign celloutsig_0_13z = ^ { celloutsig_0_12z[4], celloutsig_0_11z, celloutsig_0_6z };
  assign celloutsig_0_19z = ^ { in_data[63:43], celloutsig_0_3z };
  assign celloutsig_0_27z = ^ { celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_17z };
  assign celloutsig_1_3z = { in_data[177:173], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z } >> { in_data[126:120], celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_15z = celloutsig_0_14z[3:1] >> { celloutsig_0_12z[5:4], celloutsig_0_13z };
  assign celloutsig_1_14z = ~((celloutsig_1_5z & celloutsig_1_12z) | (celloutsig_1_10z & celloutsig_1_12z));
  assign _04_[5] = _03_;
  assign { out_data[128], out_data[100:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_51z, celloutsig_0_52z };
endmodule

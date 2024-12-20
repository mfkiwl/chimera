/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [11:0] celloutsig_0_0z;
  wire [18:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [10:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire [13:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [6:0] celloutsig_0_20z;
  wire [17:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [8:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  reg [7:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_34z;
  wire celloutsig_0_36z;
  wire [10:0] celloutsig_0_38z;
  wire [12:0] celloutsig_0_3z;
  wire [5:0] celloutsig_0_40z;
  wire [20:0] celloutsig_0_46z;
  wire celloutsig_0_48z;
  reg [14:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [9:0] celloutsig_0_76z;
  wire celloutsig_0_77z;
  wire celloutsig_0_7z;
  wire [8:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [6:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [12:0] celloutsig_1_15z;
  wire [4:0] celloutsig_1_18z;
  wire [14:0] celloutsig_1_19z;
  wire [7:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [9:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_0z = in_data[167] ? in_data[121] : in_data[171];
  assign celloutsig_1_6z = celloutsig_1_2z ? celloutsig_1_5z : celloutsig_1_4z[8];
  assign celloutsig_0_2z = in_data[70] ? in_data[83] : celloutsig_0_1z;
  assign celloutsig_1_11z = ~(celloutsig_1_10z & celloutsig_1_6z);
  assign celloutsig_1_18z = { celloutsig_1_15z[3:1], celloutsig_1_2z, celloutsig_1_11z } / { 1'h1, celloutsig_1_4z[4:1] };
  assign celloutsig_1_19z = { in_data[159:155], celloutsig_1_1z, celloutsig_1_7z, celloutsig_1_6z } / { 1'h1, celloutsig_1_9z, celloutsig_1_15z };
  assign celloutsig_0_5z = celloutsig_0_4z[8:1] === { celloutsig_0_3z[10:4], celloutsig_0_2z };
  assign celloutsig_1_10z = in_data[146:137] === { celloutsig_1_4z[9:2], celloutsig_1_0z, celloutsig_1_6z };
  assign celloutsig_0_17z = { celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_12z } === celloutsig_0_3z[12:5];
  assign celloutsig_0_1z = in_data[54:52] <= in_data[29:27];
  assign celloutsig_0_14z = celloutsig_0_4z[13:3] <= { in_data[87:78], celloutsig_0_9z };
  assign celloutsig_0_28z = { celloutsig_0_4z[9:7], celloutsig_0_11z, celloutsig_0_15z } <= { celloutsig_0_5z, celloutsig_0_20z, celloutsig_0_11z };
  assign celloutsig_1_2z = in_data[145:101] && { in_data[166:131], celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_1_8z = { celloutsig_1_4z[5:3], celloutsig_1_6z } && in_data[119:116];
  assign celloutsig_0_36z = ! celloutsig_0_25z[6:2];
  assign celloutsig_0_22z = celloutsig_0_8z[7:1] || { celloutsig_0_16z[1], celloutsig_0_6z, celloutsig_0_15z };
  assign celloutsig_0_30z = { celloutsig_0_21z[17], celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_11z } || celloutsig_0_16z;
  assign celloutsig_0_23z = celloutsig_0_4z[11:9] < { celloutsig_0_4z[7:6], celloutsig_0_22z };
  assign celloutsig_0_24z = { celloutsig_0_21z[11:8], celloutsig_0_5z } < { celloutsig_0_20z[4:1], celloutsig_0_19z };
  assign celloutsig_0_34z = celloutsig_0_19z & ~(celloutsig_0_23z);
  assign celloutsig_0_48z = celloutsig_0_17z & ~(celloutsig_0_21z[2]);
  assign celloutsig_0_12z = celloutsig_0_7z & ~(celloutsig_0_4z[14]);
  assign celloutsig_1_1z = { in_data[164:158], celloutsig_1_0z } % { 1'h1, in_data[159:156], celloutsig_1_0z, celloutsig_1_0z, in_data[96] };
  assign celloutsig_1_4z = { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z } % { 1'h1, in_data[139:131] };
  assign celloutsig_0_38z = celloutsig_0_16z[11:1] * { celloutsig_0_21z[3:1], celloutsig_0_29z };
  assign celloutsig_0_10z = { celloutsig_0_4z[7:6], celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_4z } * { in_data[23:6], celloutsig_0_6z };
  assign celloutsig_0_16z = celloutsig_0_8z[8] ? { in_data[95:88], celloutsig_0_15z, celloutsig_0_14z } : { celloutsig_0_15z, 1'h0, celloutsig_0_8z[7:0] };
  assign celloutsig_0_25z = celloutsig_0_0z[3] ? { celloutsig_0_10z[14:7], celloutsig_0_24z } : in_data[87:79];
  assign celloutsig_1_9z = { in_data[188:177], celloutsig_1_8z } !== { celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_5z };
  assign celloutsig_1_14z = { celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_11z } !== celloutsig_1_4z[7:1];
  assign celloutsig_0_11z = in_data[68:66] !== celloutsig_0_8z[2:0];
  assign celloutsig_1_13z = { celloutsig_1_4z[9], celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_0z } | { celloutsig_1_1z[6:2], celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_0_77z = & celloutsig_0_46z[17:4];
  assign celloutsig_1_3z = & celloutsig_1_1z[5:3];
  assign celloutsig_0_9z = & in_data[21:12];
  assign celloutsig_0_27z = & { celloutsig_0_26z, celloutsig_0_24z, celloutsig_0_19z, celloutsig_0_8z[8:2], celloutsig_0_2z, in_data[21:12] };
  assign celloutsig_1_5z = | { celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_19z = | { celloutsig_0_10z[6:0], celloutsig_0_1z };
  assign celloutsig_0_6z = | in_data[30:15];
  assign celloutsig_0_7z = | celloutsig_0_4z[9:0];
  assign celloutsig_1_7z = | in_data[175:160];
  assign celloutsig_0_40z = { celloutsig_0_23z, celloutsig_0_11z, celloutsig_0_34z, celloutsig_0_23z, celloutsig_0_6z, celloutsig_0_22z } << { celloutsig_0_5z, celloutsig_0_28z, celloutsig_0_6z, celloutsig_0_27z, celloutsig_0_11z, celloutsig_0_12z };
  assign celloutsig_0_46z = { celloutsig_0_7z, celloutsig_0_20z, celloutsig_0_30z, celloutsig_0_15z, celloutsig_0_20z } << { celloutsig_0_0z[11:2], celloutsig_0_40z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_36z, celloutsig_0_9z, celloutsig_0_26z };
  assign celloutsig_0_21z = { celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_19z, celloutsig_0_14z, celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_17z, celloutsig_0_7z } << { celloutsig_0_3z[11:6], celloutsig_0_19z, celloutsig_0_19z, 2'h3, celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_15z };
  assign celloutsig_0_0z = in_data[61:50] - in_data[43:32];
  assign celloutsig_0_3z = { in_data[89], celloutsig_0_0z } - in_data[67:55];
  assign celloutsig_1_15z = { celloutsig_1_4z[1:0], celloutsig_1_14z, celloutsig_1_3z, celloutsig_1_14z, celloutsig_1_3z, celloutsig_1_13z } - { celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_0_20z = celloutsig_0_4z[12:6] - { celloutsig_0_8z[3:1], celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_19z, celloutsig_0_6z };
  assign celloutsig_0_76z = celloutsig_0_38z[10:1] ~^ { celloutsig_0_4z[8:0], celloutsig_0_48z };
  assign celloutsig_0_8z = celloutsig_0_4z[14:6] ~^ { celloutsig_0_3z[7:0], celloutsig_0_6z };
  assign celloutsig_0_13z = { celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_12z } ~^ { celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_8z };
  assign celloutsig_0_15z = { celloutsig_0_3z[9:6], celloutsig_0_1z } ~^ celloutsig_0_4z[10:6];
  assign celloutsig_0_26z = ~((celloutsig_0_24z & celloutsig_0_8z[7]) | celloutsig_0_3z[11]);
  always_latch
    if (!clkin_data[32]) celloutsig_0_4z = 15'h0000;
    else if (!celloutsig_1_18z[0]) celloutsig_0_4z = { in_data[73:72], celloutsig_0_2z, celloutsig_0_0z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_29z = 8'h00;
    else if (!clkin_data[0]) celloutsig_0_29z = { celloutsig_0_4z[3], celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_26z };
  assign { out_data[132:128], out_data[110:96], out_data[41:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_76z, celloutsig_0_77z };
endmodule

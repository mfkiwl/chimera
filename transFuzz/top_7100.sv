/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [2:0] _00_;
  reg [27:0] _01_;
  reg [21:0] _02_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire celloutsig_0_54z;
  wire celloutsig_0_55z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_64z;
  wire celloutsig_0_65z;
  wire celloutsig_0_66z;
  wire celloutsig_0_67z;
  wire celloutsig_0_68z;
  wire celloutsig_0_6z;
  wire celloutsig_0_71z;
  wire celloutsig_0_73z;
  wire celloutsig_0_75z;
  wire celloutsig_0_76z;
  wire celloutsig_0_7z;
  wire celloutsig_0_83z;
  wire celloutsig_0_85z;
  wire celloutsig_0_8z;
  wire celloutsig_0_91z;
  wire celloutsig_0_92z;
  wire celloutsig_0_9z;
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
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
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
  always_ff @(negedge clkin_data[0], negedge clkin_data[32])
    if (!clkin_data[32]) _00_ <= 3'h0;
    else _00_ <= { celloutsig_0_27z, celloutsig_0_55z, celloutsig_0_34z };
  always_ff @(posedge celloutsig_1_18z, posedge clkin_data[32])
    if (clkin_data[32]) _01_ <= 28'h0000000;
    else _01_ <= { in_data[77:60], celloutsig_0_36z, celloutsig_0_58z, celloutsig_0_38z, celloutsig_0_8z, celloutsig_0_29z, celloutsig_0_2z, celloutsig_0_30z, celloutsig_0_48z, celloutsig_0_33z, celloutsig_0_16z };
  always_ff @(negedge clkin_data[0], posedge clkin_data[32])
    if (clkin_data[32]) _02_ <= 22'h000000;
    else _02_ <= { celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_22z, celloutsig_0_24z, celloutsig_0_0z, celloutsig_0_13z, celloutsig_0_4z, celloutsig_0_21z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_22z, celloutsig_0_20z, celloutsig_0_24z, celloutsig_0_18z, celloutsig_0_25z, celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_21z };
  assign celloutsig_0_0z = in_data[26:23] > in_data[88:85];
  assign celloutsig_0_3z = in_data[89:70] > { in_data[47:38], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_33z = { _02_[14:1], celloutsig_0_10z, celloutsig_0_8z } > { celloutsig_0_7z, celloutsig_0_16z, celloutsig_0_23z, celloutsig_0_4z, celloutsig_0_22z, celloutsig_0_16z, celloutsig_0_16z, celloutsig_0_31z, celloutsig_0_22z, celloutsig_0_1z, celloutsig_0_12z, celloutsig_0_28z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_31z, celloutsig_0_29z };
  assign celloutsig_0_34z = { celloutsig_0_24z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_9z } > { _02_[5:3], celloutsig_0_7z };
  assign celloutsig_0_35z = { in_data[22:20], celloutsig_0_21z, celloutsig_0_22z, celloutsig_0_21z, celloutsig_0_31z, celloutsig_0_32z, celloutsig_0_13z } > { celloutsig_0_9z, celloutsig_0_21z, celloutsig_0_23z, celloutsig_0_24z, celloutsig_0_4z, celloutsig_0_32z, celloutsig_0_25z, celloutsig_0_18z, celloutsig_0_20z };
  assign celloutsig_0_36z = { in_data[13:9], celloutsig_0_9z, celloutsig_0_23z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_35z, celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_24z, celloutsig_0_10z, celloutsig_0_30z } > { celloutsig_0_5z, celloutsig_0_22z, celloutsig_0_23z, celloutsig_0_30z, celloutsig_0_22z, celloutsig_0_29z, celloutsig_0_13z, celloutsig_0_32z, celloutsig_0_6z, celloutsig_0_21z, celloutsig_0_21z, celloutsig_0_4z, celloutsig_0_17z, celloutsig_0_10z, celloutsig_0_15z, celloutsig_0_35z };
  assign celloutsig_0_37z = { _02_[16:14], celloutsig_0_16z, celloutsig_0_36z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_23z, celloutsig_0_12z, celloutsig_0_7z } > { in_data[14:9], celloutsig_0_16z, celloutsig_0_23z, celloutsig_0_15z, celloutsig_0_36z, celloutsig_0_25z };
  assign celloutsig_0_38z = { _02_[17:1], celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_11z, celloutsig_0_3z, celloutsig_0_30z, celloutsig_0_22z, celloutsig_0_29z, celloutsig_0_6z } > { celloutsig_0_19z, celloutsig_0_24z, celloutsig_0_1z, celloutsig_0_28z, celloutsig_0_15z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_22z, celloutsig_0_30z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_35z, celloutsig_0_29z, celloutsig_0_37z, celloutsig_0_32z, celloutsig_0_29z, celloutsig_0_27z, celloutsig_0_22z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_34z, celloutsig_0_24z, celloutsig_0_14z, celloutsig_0_17z };
  assign celloutsig_0_39z = { _02_[10:8], celloutsig_0_23z, celloutsig_0_8z, celloutsig_0_16z, celloutsig_0_37z, celloutsig_0_10z } > { _02_[21:20], celloutsig_0_38z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_28z, celloutsig_0_13z };
  assign celloutsig_0_40z = { celloutsig_0_25z, celloutsig_0_23z, celloutsig_0_22z, celloutsig_0_7z, celloutsig_0_28z, celloutsig_0_0z, celloutsig_0_33z, celloutsig_0_20z, celloutsig_0_0z, celloutsig_0_16z, celloutsig_0_33z, celloutsig_0_6z, celloutsig_0_25z, celloutsig_0_23z, celloutsig_0_33z, celloutsig_0_20z, celloutsig_0_14z } > { celloutsig_0_1z, celloutsig_0_28z, celloutsig_0_35z, celloutsig_0_14z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_23z, celloutsig_0_39z, celloutsig_0_15z, celloutsig_0_19z, celloutsig_0_31z, celloutsig_0_34z, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_22z, celloutsig_0_15z, celloutsig_0_8z };
  assign celloutsig_0_41z = { celloutsig_0_33z, celloutsig_0_31z, celloutsig_0_0z, celloutsig_0_27z, celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_25z, celloutsig_0_34z, celloutsig_0_28z, celloutsig_0_23z, celloutsig_0_20z, celloutsig_0_0z, celloutsig_0_34z } > { celloutsig_0_2z, celloutsig_0_32z, celloutsig_0_40z, celloutsig_0_38z, celloutsig_0_28z, celloutsig_0_11z, celloutsig_0_29z, celloutsig_0_20z, celloutsig_0_40z, celloutsig_0_39z, celloutsig_0_17z, celloutsig_0_0z, celloutsig_0_28z };
  assign celloutsig_0_42z = { _02_[17], celloutsig_0_13z, celloutsig_0_37z } > { celloutsig_0_36z, celloutsig_0_16z, celloutsig_0_11z };
  assign celloutsig_0_4z = { in_data[64:54], celloutsig_0_0z } > { in_data[30:21], celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_43z = { celloutsig_0_40z, celloutsig_0_11z, celloutsig_0_37z, celloutsig_0_5z, celloutsig_0_20z } > { celloutsig_0_39z, celloutsig_0_38z, celloutsig_0_16z, celloutsig_0_2z, celloutsig_0_13z };
  assign celloutsig_0_44z = in_data[7:2] > { celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_24z, celloutsig_0_34z, celloutsig_0_20z };
  assign celloutsig_0_45z = { celloutsig_0_5z, celloutsig_0_25z, celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_36z, celloutsig_0_9z, celloutsig_0_21z, celloutsig_0_14z, celloutsig_0_43z } > { celloutsig_0_20z, celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_20z, celloutsig_0_1z, celloutsig_0_24z, celloutsig_0_14z, celloutsig_0_33z, celloutsig_0_34z };
  assign celloutsig_0_46z = { celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_35z } > { celloutsig_0_27z, celloutsig_0_5z, celloutsig_0_45z, celloutsig_0_14z };
  assign celloutsig_0_47z = { _02_[16:15], celloutsig_0_42z } > { celloutsig_0_31z, celloutsig_0_18z, celloutsig_0_14z };
  assign celloutsig_0_48z = { _02_[7:2], celloutsig_0_35z, celloutsig_0_22z, celloutsig_0_29z, celloutsig_0_29z, celloutsig_0_20z, celloutsig_0_17z, celloutsig_0_44z, celloutsig_0_27z, celloutsig_0_29z, celloutsig_0_20z, celloutsig_0_46z } > { _02_[19:11], celloutsig_0_8z, celloutsig_0_34z, celloutsig_0_15z, celloutsig_0_20z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_37z, celloutsig_0_4z };
  assign celloutsig_0_49z = { celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_25z, celloutsig_0_31z, celloutsig_0_8z } > { celloutsig_0_25z, celloutsig_0_22z, celloutsig_0_18z, celloutsig_0_25z, celloutsig_0_8z };
  assign celloutsig_0_50z = { celloutsig_0_32z, celloutsig_0_21z, celloutsig_0_30z, celloutsig_0_47z, celloutsig_0_16z, celloutsig_0_14z, celloutsig_0_44z, celloutsig_0_20z } > { in_data[87:81], celloutsig_0_46z };
  assign celloutsig_0_51z = { celloutsig_0_29z, celloutsig_0_22z, celloutsig_0_34z, celloutsig_0_31z, celloutsig_0_37z, celloutsig_0_24z, celloutsig_0_28z } > { _02_[14:12], celloutsig_0_32z, celloutsig_0_21z, celloutsig_0_35z, celloutsig_0_6z };
  assign celloutsig_0_52z = { celloutsig_0_44z, celloutsig_0_19z, celloutsig_0_44z, celloutsig_0_0z, celloutsig_0_36z, celloutsig_0_4z, celloutsig_0_20z, celloutsig_0_6z, celloutsig_0_22z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_40z, celloutsig_0_46z, celloutsig_0_31z, celloutsig_0_23z, celloutsig_0_0z, celloutsig_0_25z } > { _02_[20:10], celloutsig_0_21z, celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_50z, celloutsig_0_14z, celloutsig_0_47z };
  assign celloutsig_0_5z = { in_data[79:74], celloutsig_0_0z, celloutsig_0_3z } > { celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_0_53z = { celloutsig_0_45z, celloutsig_0_37z, celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_29z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_18z, celloutsig_0_44z, celloutsig_0_7z } > { _02_[3:0], celloutsig_0_45z, celloutsig_0_52z, celloutsig_0_49z, celloutsig_0_38z, celloutsig_0_21z, celloutsig_0_19z };
  assign celloutsig_0_54z = { celloutsig_0_48z, celloutsig_0_37z, celloutsig_0_41z, celloutsig_0_38z, celloutsig_0_42z } > { celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_43z, celloutsig_0_25z, celloutsig_0_30z };
  assign celloutsig_0_55z = { celloutsig_0_42z, celloutsig_0_49z, celloutsig_0_36z, celloutsig_0_11z, celloutsig_0_51z, celloutsig_0_27z, celloutsig_0_23z, celloutsig_0_47z, celloutsig_0_16z, celloutsig_0_30z } > { celloutsig_0_20z, celloutsig_0_8z, celloutsig_0_39z, celloutsig_0_16z, celloutsig_0_31z, celloutsig_0_50z, celloutsig_0_35z, celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_51z };
  assign celloutsig_0_57z = { celloutsig_0_42z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_31z, celloutsig_0_23z, celloutsig_0_35z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_31z, celloutsig_0_15z } > { celloutsig_0_24z, celloutsig_0_17z, celloutsig_0_46z, celloutsig_0_47z, celloutsig_0_13z, celloutsig_0_27z, celloutsig_0_22z, celloutsig_0_16z, celloutsig_0_55z, celloutsig_0_9z, celloutsig_0_6z };
  assign celloutsig_0_58z = { celloutsig_0_52z, celloutsig_0_19z, celloutsig_0_27z } > { celloutsig_0_8z, celloutsig_0_57z, celloutsig_0_7z };
  assign celloutsig_0_60z = { celloutsig_0_25z, celloutsig_0_36z, celloutsig_0_41z, celloutsig_0_57z, celloutsig_0_32z, celloutsig_0_36z } > { celloutsig_0_44z, celloutsig_0_33z, celloutsig_0_0z, celloutsig_0_33z, celloutsig_0_2z, celloutsig_0_57z };
  assign celloutsig_0_6z = { celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z } > { celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_61z = { celloutsig_0_41z, celloutsig_0_23z, celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_42z, celloutsig_0_1z, celloutsig_0_0z } > { celloutsig_0_53z, celloutsig_0_24z, celloutsig_0_50z, celloutsig_0_9z, celloutsig_0_55z, celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_27z, celloutsig_0_41z };
  assign celloutsig_0_62z = { celloutsig_0_19z, celloutsig_0_33z, celloutsig_0_51z, celloutsig_0_45z, celloutsig_0_34z, celloutsig_0_52z, celloutsig_0_52z, celloutsig_0_47z, celloutsig_0_32z } > { celloutsig_0_52z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_18z, celloutsig_0_23z, celloutsig_0_30z, celloutsig_0_44z, celloutsig_0_21z, celloutsig_0_20z };
  assign celloutsig_0_63z = { celloutsig_0_37z, celloutsig_0_37z, celloutsig_0_23z, celloutsig_0_49z, celloutsig_0_5z, celloutsig_0_54z } > { _01_[21:18], celloutsig_0_14z, celloutsig_0_4z };
  assign celloutsig_0_64z = { _01_[26:7], celloutsig_0_62z, celloutsig_0_17z, celloutsig_0_52z, celloutsig_0_27z } > { _02_[20:1], celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_32z, celloutsig_0_36z };
  assign celloutsig_0_65z = { _01_[19:4], celloutsig_0_4z, celloutsig_0_24z } > { _01_[25:23], celloutsig_0_33z, celloutsig_0_17z, celloutsig_0_9z, celloutsig_0_57z, celloutsig_0_51z, celloutsig_0_44z, celloutsig_0_30z, celloutsig_0_0z, celloutsig_0_55z, _00_, celloutsig_0_4z, celloutsig_0_60z, celloutsig_0_11z };
  assign celloutsig_0_66z = { celloutsig_0_15z, celloutsig_0_18z, celloutsig_0_3z } > { celloutsig_0_22z, celloutsig_0_53z, celloutsig_0_18z };
  assign celloutsig_0_67z = { celloutsig_0_41z, celloutsig_0_50z, celloutsig_0_23z, celloutsig_0_28z, celloutsig_0_33z, celloutsig_0_54z, celloutsig_0_17z, celloutsig_0_32z, celloutsig_0_42z, celloutsig_0_29z, celloutsig_0_29z, celloutsig_0_28z, celloutsig_0_45z, celloutsig_0_21z, celloutsig_0_5z, celloutsig_0_35z, celloutsig_0_65z, celloutsig_0_23z } > { celloutsig_0_11z, celloutsig_0_35z, celloutsig_0_10z, celloutsig_0_52z, celloutsig_0_18z, celloutsig_0_12z, celloutsig_0_66z, celloutsig_0_60z, celloutsig_0_2z, celloutsig_0_51z, celloutsig_0_58z, celloutsig_0_29z, celloutsig_0_36z, celloutsig_0_27z, celloutsig_0_66z, celloutsig_0_31z, celloutsig_0_7z, celloutsig_0_53z };
  assign celloutsig_0_68z = { celloutsig_0_4z, celloutsig_0_33z, celloutsig_0_0z } > { celloutsig_0_34z, celloutsig_0_38z, celloutsig_0_28z };
  assign celloutsig_0_7z = { celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_3z } > { in_data[81:76], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_71z = { _01_[8:7], celloutsig_0_48z, celloutsig_0_5z, celloutsig_0_55z, celloutsig_0_46z } > { celloutsig_0_46z, celloutsig_0_2z, celloutsig_0_64z, celloutsig_0_23z, celloutsig_0_17z, celloutsig_0_3z };
  assign celloutsig_0_73z = _02_[8:4] > { celloutsig_0_19z, celloutsig_0_39z, celloutsig_0_58z, celloutsig_0_68z, celloutsig_0_47z };
  assign celloutsig_0_75z = { _01_[10:1], celloutsig_0_60z, celloutsig_0_55z, celloutsig_0_63z, celloutsig_0_53z, celloutsig_0_49z, _00_, celloutsig_0_60z, celloutsig_0_57z, celloutsig_0_68z, celloutsig_0_22z, celloutsig_0_22z, celloutsig_0_1z, celloutsig_0_52z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_31z, celloutsig_0_73z } > { _01_[20:7], celloutsig_0_71z, celloutsig_0_15z, celloutsig_0_62z, celloutsig_0_30z, celloutsig_0_42z, celloutsig_0_42z, celloutsig_0_14z, celloutsig_0_52z, celloutsig_0_13z, celloutsig_0_52z, celloutsig_0_47z, celloutsig_0_73z, celloutsig_0_48z, celloutsig_0_4z, celloutsig_0_36z };
  assign celloutsig_0_76z = { celloutsig_0_47z, celloutsig_0_21z, celloutsig_0_30z, celloutsig_0_19z, celloutsig_0_38z, celloutsig_0_19z, celloutsig_0_61z } > { in_data[56:51], celloutsig_0_4z };
  assign celloutsig_0_8z = { celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_0z } > in_data[47:43];
  assign celloutsig_0_83z = { celloutsig_0_35z, celloutsig_0_7z, celloutsig_0_53z } > { celloutsig_0_57z, celloutsig_0_50z, celloutsig_0_75z };
  assign celloutsig_0_85z = { celloutsig_0_58z, celloutsig_0_0z, celloutsig_0_9z } > { celloutsig_0_19z, celloutsig_0_48z, celloutsig_0_37z };
  assign celloutsig_0_9z = { celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_4z } > in_data[79:69];
  assign celloutsig_0_91z = { celloutsig_0_83z, celloutsig_0_33z, celloutsig_0_76z } > { celloutsig_0_27z, celloutsig_0_63z, celloutsig_0_65z };
  assign celloutsig_0_92z = { celloutsig_0_67z, celloutsig_0_68z, celloutsig_0_85z, celloutsig_0_43z, celloutsig_0_75z, celloutsig_0_40z, celloutsig_0_31z, celloutsig_0_52z } > { in_data[33:27], celloutsig_0_67z };
  assign celloutsig_1_0z = in_data[191:185] > in_data[174:168];
  assign celloutsig_1_1z = in_data[114:98] > in_data[171:155];
  assign celloutsig_1_2z = in_data[177:168] > { in_data[180:172], celloutsig_1_1z };
  assign celloutsig_1_3z = { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z } > { in_data[155:154], celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_4z = { in_data[179:169], celloutsig_1_0z, celloutsig_1_0z } > { in_data[123:120], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_1_5z = { in_data[159:152], celloutsig_1_0z } > { celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_2z };
  assign celloutsig_1_6z = { in_data[110:102], celloutsig_1_1z, celloutsig_1_1z } > { in_data[183:175], celloutsig_1_5z, celloutsig_1_5z };
  assign celloutsig_1_7z = { in_data[124:120], celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_3z } > { in_data[115:111], celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_6z };
  assign celloutsig_0_10z = { celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_8z } > { celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_4z };
  assign celloutsig_1_8z = { in_data[114:99], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_0z } > { in_data[142:125], celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_1_9z = { in_data[141:138], celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_6z } > { celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_4z };
  assign celloutsig_1_10z = { celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_7z } > { celloutsig_1_9z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_1_11z = { celloutsig_1_5z, celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_4z } > in_data[174:171];
  assign celloutsig_1_12z = { in_data[122:113], celloutsig_1_4z } > in_data[179:169];
  assign celloutsig_1_13z = { in_data[120:113], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_12z } > { in_data[161:149], celloutsig_1_8z };
  assign celloutsig_1_14z = { in_data[165:158], celloutsig_1_10z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_10z, celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_7z } > { celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_10z, celloutsig_1_4z, celloutsig_1_13z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_1z };
  assign celloutsig_1_15z = { in_data[115:102], celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_12z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_14z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_13z, celloutsig_1_6z, celloutsig_1_5z } > { in_data[181:163], celloutsig_1_6z, celloutsig_1_12z, celloutsig_1_4z, celloutsig_1_10z, celloutsig_1_12z, celloutsig_1_7z, celloutsig_1_14z };
  assign celloutsig_0_11z = { celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_5z } > { celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_8z };
  assign celloutsig_1_18z = { in_data[115:101], celloutsig_1_5z, celloutsig_1_12z, celloutsig_1_12z, celloutsig_1_0z, celloutsig_1_8z } > { in_data[129:113], celloutsig_1_14z, celloutsig_1_9z, celloutsig_1_8z };
  assign celloutsig_1_19z = { in_data[128:120], celloutsig_1_1z, celloutsig_1_15z, celloutsig_1_18z } > in_data[176:165];
  assign celloutsig_0_12z = { celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_10z } > { celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_1z = { in_data[77:75], celloutsig_0_0z } > { in_data[63:61], celloutsig_0_0z };
  assign celloutsig_0_13z = { celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_5z } > { celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_0_14z = { celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_5z } > { in_data[6:5], celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_15z = { celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_3z } > { in_data[73:71], celloutsig_0_13z, celloutsig_0_4z, celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_3z };
  assign celloutsig_0_16z = { in_data[32:24], celloutsig_0_15z, celloutsig_0_1z } > { in_data[41:39], celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_15z };
  assign celloutsig_0_17z = { celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_16z, celloutsig_0_1z } > { in_data[34:29], celloutsig_0_0z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_14z };
  assign celloutsig_0_18z = { celloutsig_0_16z, celloutsig_0_7z, celloutsig_0_17z, celloutsig_0_16z } > { celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_0_19z = { in_data[92:89], celloutsig_0_10z } > { celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_9z };
  assign celloutsig_0_20z = { celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_16z } > { celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_9z };
  assign celloutsig_0_21z = { celloutsig_0_1z, celloutsig_0_16z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_15z } > { celloutsig_0_17z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_19z, celloutsig_0_6z, celloutsig_0_20z, celloutsig_0_7z };
  assign celloutsig_0_22z = { celloutsig_0_9z, celloutsig_0_18z, celloutsig_0_17z, celloutsig_0_6z, celloutsig_0_20z, celloutsig_0_4z, celloutsig_0_18z, celloutsig_0_11z, celloutsig_0_18z, celloutsig_0_18z, celloutsig_0_19z, celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_15z, celloutsig_0_20z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_11z } > { in_data[18:9], celloutsig_0_15z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_13z, celloutsig_0_18z, celloutsig_0_3z, celloutsig_0_21z, celloutsig_0_17z, celloutsig_0_20z, celloutsig_0_19z, celloutsig_0_18z };
  assign celloutsig_0_2z = in_data[62:57] > { in_data[69:68], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_23z = { in_data[29:28], celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_20z, celloutsig_0_7z } > { celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_22z, celloutsig_0_8z, celloutsig_0_21z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_11z };
  assign celloutsig_0_24z = { celloutsig_0_1z, celloutsig_0_23z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_7z } > { celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_14z };
  assign celloutsig_0_25z = { celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_12z } > { celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_23z, celloutsig_0_22z };
  assign celloutsig_0_27z = { celloutsig_0_24z, celloutsig_0_15z, celloutsig_0_10z } > { celloutsig_0_6z, celloutsig_0_22z, celloutsig_0_21z };
  assign celloutsig_0_28z = { _02_[2:1], celloutsig_0_19z, celloutsig_0_18z, celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_14z, celloutsig_0_20z, celloutsig_0_22z, celloutsig_0_6z, celloutsig_0_15z } > { celloutsig_0_11z, celloutsig_0_23z, celloutsig_0_24z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_19z };
  assign celloutsig_0_29z = { _02_[11:4], celloutsig_0_15z, celloutsig_0_19z, celloutsig_0_25z, celloutsig_0_16z, celloutsig_0_18z, celloutsig_0_7z, celloutsig_0_19z } > { celloutsig_0_11z, celloutsig_0_28z, celloutsig_0_28z, celloutsig_0_20z, celloutsig_0_12z, celloutsig_0_25z, celloutsig_0_21z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_20z, celloutsig_0_27z, celloutsig_0_1z };
  assign celloutsig_0_30z = { _02_[10:6], celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_24z } > _02_[21:12];
  assign celloutsig_0_31z = { celloutsig_0_6z, celloutsig_0_17z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_15z } > { in_data[10:9], celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_19z, celloutsig_0_9z, celloutsig_0_16z };
  assign celloutsig_0_32z = { celloutsig_0_30z, celloutsig_0_31z, celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_17z, celloutsig_0_2z, celloutsig_0_27z, celloutsig_0_23z, celloutsig_0_30z, celloutsig_0_8z } > { _02_[2:1], celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_30z, celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_5z };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_91z, celloutsig_0_92z };
endmodule

// This program was cloned from: https://github.com/NYU-MLDA/OpenABC
// License: BSD 3-Clause "New" or "Revised" License

module rvecc_encode
(
  din,
  ecc_out
);

  input [31:0] din;
  output [6:0] ecc_out;
  wire [6:0] ecc_out;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113;
  assign ecc_out[0] = N15 ^ din[30];
  assign N15 = N14 ^ din[28];
  assign N14 = N13 ^ din[26];
  assign N13 = N12 ^ din[25];
  assign N12 = N11 ^ din[23];
  assign N11 = N10 ^ din[21];
  assign N10 = N9 ^ din[19];
  assign N9 = N8 ^ din[17];
  assign N8 = N7 ^ din[15];
  assign N7 = N6 ^ din[13];
  assign N6 = N5 ^ din[11];
  assign N5 = N4 ^ din[10];
  assign N4 = N3 ^ din[8];
  assign N3 = N2 ^ din[6];
  assign N2 = N1 ^ din[4];
  assign N1 = N0 ^ din[3];
  assign N0 = din[0] ^ din[1];
  assign ecc_out[1] = N31 ^ din[31];
  assign N31 = N30 ^ din[28];
  assign N30 = N29 ^ din[27];
  assign N29 = N28 ^ din[25];
  assign N28 = N27 ^ din[24];
  assign N27 = N26 ^ din[21];
  assign N26 = N25 ^ din[20];
  assign N25 = N24 ^ din[17];
  assign N24 = N23 ^ din[16];
  assign N23 = N22 ^ din[13];
  assign N22 = N21 ^ din[12];
  assign N21 = N20 ^ din[10];
  assign N20 = N19 ^ din[9];
  assign N19 = N18 ^ din[6];
  assign N18 = N17 ^ din[5];
  assign N17 = N16 ^ din[3];
  assign N16 = din[0] ^ din[2];
  assign ecc_out[2] = N47 ^ din[31];
  assign N47 = N46 ^ din[30];
  assign N46 = N45 ^ din[29];
  assign N45 = N44 ^ din[25];
  assign N44 = N43 ^ din[24];
  assign N43 = N42 ^ din[23];
  assign N42 = N41 ^ din[22];
  assign N41 = N40 ^ din[17];
  assign N40 = N39 ^ din[16];
  assign N39 = N38 ^ din[15];
  assign N38 = N37 ^ din[14];
  assign N37 = N36 ^ din[10];
  assign N36 = N35 ^ din[9];
  assign N35 = N34 ^ din[8];
  assign N34 = N33 ^ din[7];
  assign N33 = N32 ^ din[3];
  assign N32 = din[1] ^ din[2];
  assign ecc_out[3] = N60 ^ din[25];
  assign N60 = N59 ^ din[24];
  assign N59 = N58 ^ din[23];
  assign N58 = N57 ^ din[22];
  assign N57 = N56 ^ din[21];
  assign N56 = N55 ^ din[20];
  assign N55 = N54 ^ din[19];
  assign N54 = N53 ^ din[18];
  assign N53 = N52 ^ din[10];
  assign N52 = N51 ^ din[9];
  assign N51 = N50 ^ din[8];
  assign N50 = N49 ^ din[7];
  assign N49 = N48 ^ din[6];
  assign N48 = din[4] ^ din[5];
  assign ecc_out[4] = N73 ^ din[25];
  assign N73 = N72 ^ din[24];
  assign N72 = N71 ^ din[23];
  assign N71 = N70 ^ din[22];
  assign N70 = N69 ^ din[21];
  assign N69 = N68 ^ din[20];
  assign N68 = N67 ^ din[19];
  assign N67 = N66 ^ din[18];
  assign N66 = N65 ^ din[17];
  assign N65 = N64 ^ din[16];
  assign N64 = N63 ^ din[15];
  assign N63 = N62 ^ din[14];
  assign N62 = N61 ^ din[13];
  assign N61 = din[11] ^ din[12];
  assign ecc_out[5] = N77 ^ din[31];
  assign N77 = N76 ^ din[30];
  assign N76 = N75 ^ din[29];
  assign N75 = N74 ^ din[28];
  assign N74 = din[26] ^ din[27];
  assign ecc_out[6] = N108 ^ N113;
  assign N108 = N107 ^ din[0];
  assign N107 = N106 ^ din[1];
  assign N106 = N105 ^ din[2];
  assign N105 = N104 ^ din[3];
  assign N104 = N103 ^ din[4];
  assign N103 = N102 ^ din[5];
  assign N102 = N101 ^ din[6];
  assign N101 = N100 ^ din[7];
  assign N100 = N99 ^ din[8];
  assign N99 = N98 ^ din[9];
  assign N98 = N97 ^ din[10];
  assign N97 = N96 ^ din[11];
  assign N96 = N95 ^ din[12];
  assign N95 = N94 ^ din[13];
  assign N94 = N93 ^ din[14];
  assign N93 = N92 ^ din[15];
  assign N92 = N91 ^ din[16];
  assign N91 = N90 ^ din[17];
  assign N90 = N89 ^ din[18];
  assign N89 = N88 ^ din[19];
  assign N88 = N87 ^ din[20];
  assign N87 = N86 ^ din[21];
  assign N86 = N85 ^ din[22];
  assign N85 = N84 ^ din[23];
  assign N84 = N83 ^ din[24];
  assign N83 = N82 ^ din[25];
  assign N82 = N81 ^ din[26];
  assign N81 = N80 ^ din[27];
  assign N80 = N79 ^ din[28];
  assign N79 = N78 ^ din[29];
  assign N78 = din[31] ^ din[30];
  assign N113 = N112 ^ ecc_out[0];
  assign N112 = N111 ^ ecc_out[1];
  assign N111 = N110 ^ ecc_out[2];
  assign N110 = N109 ^ ecc_out[3];
  assign N109 = ecc_out[5] ^ ecc_out[4];

endmodule
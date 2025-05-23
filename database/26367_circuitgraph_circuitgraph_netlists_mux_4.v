// This program was cloned from: https://github.com/circuitgraph/circuitgraph
// License: MIT License

module MUX(in_0,in_1,in_2,in_3,out,key_0,key_1);
  input in_0,in_1,in_2,in_3;
  input key_0,key_1;
  output out;
  wire in_0,in_1,in_2,in_3;
  wire key_0,key_1,k_b_0,k_b_1;
  wire n_0,n_1,n_2,n_3;
  wire s_0,s_1,s_2,s_3;
  wire out;
  or OR (out, n_0, n_1, n_2, n_3);
  and AND0 (n_0, in_0, s_0);
  and AND1 (n_1, in_1, s_1);
  and AND2 (n_2, in_2, s_2);
  and AND3 (n_3, in_3, s_3);
  not NOT0 (k_b_0, key_0);
  not NOT1 (k_b_1, key_1);
  and sAND0 (s_0, k_b_1, k_b_0);
  and sAND1 (s_1, k_b_1, key_0);
  and sAND2 (s_2, key_1, k_b_0);
  and sAND3 (s_3, key_1, key_0);
endmodule

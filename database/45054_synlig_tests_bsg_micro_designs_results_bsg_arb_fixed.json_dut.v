// This program was cloned from: https://github.com/chipsalliance/synlig
// License: Apache License 2.0

/* Generated by Yosys 0.27+9 (git sha1 101d19bb6, gcc 11.2.0-7ubuntu2 -fPIC -Os) */


module \$paramod$7a9d64739613278badb8e490a8be43bba7234b0f\bsg_priority_encode_one_hot_out (i, o, v_o);
  
  input [15:0] i;
  wire [15:0] i;
  
  output [15:0] o;
  wire [15:0] o;
  
  wire [15:0] scan_lo;
  
  output v_o;
  wire v_o;
  assign o[0] = scan_lo[0] & ~(scan_lo[1]);
  assign o[1] = scan_lo[1] & ~(scan_lo[2]);
  assign o[2] = scan_lo[2] & ~(scan_lo[3]);
  assign o[3] = scan_lo[3] & ~(scan_lo[4]);
  assign o[4] = scan_lo[4] & ~(scan_lo[5]);
  assign o[5] = scan_lo[5] & ~(scan_lo[6]);
  assign o[6] = scan_lo[6] & ~(scan_lo[7]);
  assign o[7] = scan_lo[7] & ~(scan_lo[8]);
  assign o[8] = scan_lo[8] & ~(scan_lo[9]);
  assign o[9] = scan_lo[9] & ~(scan_lo[10]);
  assign o[10] = scan_lo[10] & ~(scan_lo[11]);
  assign o[11] = scan_lo[11] & ~(scan_lo[12]);
  assign o[12] = scan_lo[12] & ~(scan_lo[13]);
  assign o[13] = scan_lo[13] & ~(scan_lo[14]);
  assign o[14] = scan_lo[14] & ~(scan_lo[15]);
  (* module_not_derived = 32'd1 *)
  
  \$paramod$d4c93baa0dfca9d5e01c8e7ffd0f86ab93f4323a\bsg_scan  \nw1.scan  (
    .i(i),
    .o(scan_lo)
  );
  assign o[15] = scan_lo[15];
  assign v_o = scan_lo[0];
endmodule


module \$paramod$d4c93baa0dfca9d5e01c8e7ffd0f86ab93f4323a\bsg_scan (i, o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  
  input [15:0] i;
  wire [15:0] i;
  
  output [15:0] o;
  wire [15:0] o;
  
  wire [15:0] \scanN.row[0].fill ;
  wire [14:0] \scanN.row[0].shifted ;
  
  wire [15:0] \scanN.row[1].fill ;
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11" *)
  wire [13:0] \scanN.row[1].shifted ;
  
  wire [15:0] \scanN.row[2].fill ;
  (* unused_bits = "0 1 2 3 4 5 6 7" *)
  wire [11:0] \scanN.row[2].shifted ;
  
  wire [15:0] \scanN.row[3].fill ;
  
  wire [15:0] \scanN.row[3].shifted ;
  
  (* unused_bits = "16 17 18 19 20 21 22 23 24 25 26 27 28 29 32 33 34 35 36 37 38 39 40 41 42 43 48 49 50 51 52 53 54 55" *)
  wire [79:0] t;
  assign _00_ = i[13] | i[12];
  assign o[14] = i[14] | i[15];
  assign o[12] = o[14] | _00_;
  assign _01_ = i[9] | i[8];
  assign _02_ = i[11] | i[10];
  assign _03_ = _02_ | _01_;
  assign o[8] = _03_ | o[12];
  assign _04_ = i[14] | i[13];
  assign o[13] = _04_ | i[15];
  assign _05_ = i[10] | i[9];
  assign _06_ = i[12] | i[11];
  assign _07_ = _06_ | _05_;
  assign o[9] = _07_ | o[13];
  assign _08_ = _02_ | _00_;
  assign o[10] = _08_ | o[14];
  assign _09_ = _06_ | _04_;
  assign o[11] = _09_ | i[15];
  assign _10_ = i[1] | i[0];
  assign _11_ = i[3] | i[2];
  assign _12_ = _11_ | _10_;
  assign _13_ = i[5] | i[4];
  assign _14_ = i[7] | i[6];
  assign _15_ = _14_ | _13_;
  assign _16_ = _15_ | _12_;
  assign o[0] = _16_ | o[8];
  assign _17_ = i[2] | i[1];
  assign _18_ = i[4] | i[3];
  assign _19_ = _18_ | _17_;
  assign _20_ = i[6] | i[5];
  assign _21_ = i[8] | i[7];
  assign _22_ = _21_ | _20_;
  assign _23_ = _22_ | _19_;
  assign o[1] = _23_ | o[9];
  assign _24_ = _13_ | _11_;
  assign _25_ = _14_ | _01_;
  assign _26_ = _25_ | _24_;
  assign o[2] = _26_ | o[10];
  assign _27_ = _20_ | _18_;
  assign _28_ = _21_ | _05_;
  assign _29_ = _28_ | _27_;
  assign o[3] = _29_ | o[11];
  assign _30_ = _15_ | _03_;
  assign o[4] = _30_ | o[12];
  assign _31_ = _22_ | _07_;
  assign o[5] = _31_ | o[13];
  assign _32_ = _25_ | _08_;
  assign o[6] = _32_ | o[14];
  assign _33_ = _28_ | _09_;
  assign o[7] = _33_ | i[15];
  assign o[15] = i[15];
  assign \scanN.row[0].fill  = 16'h0000;
  assign \scanN.row[0].shifted  = i[15:1];
  assign \scanN.row[1].fill  = 16'h0000;
  assign \scanN.row[1].shifted [13:12] = { i[15], o[14] };
  assign \scanN.row[2].fill  = 16'h0000;
  assign \scanN.row[2].shifted [11:8] = { i[15], o[14:12] };
  assign \scanN.row[3].fill  = 16'h0000;
  assign \scanN.row[3].shifted  = { 8'h00, i[15], o[14:8] };
  assign { t[79:56], t[47:36], t[31:18], t[15:0] } = { i[15], o[14:0], i[15], o[14:8], i[15], o[14:12], \scanN.row[2].shifted [7:0], i[15], o[14], \scanN.row[1].shifted [11:0], i };
endmodule

(* top =  1  *)

module bsg_arb_fixed(ready_i, reqs_i, grants_o);
  
  output [15:0] grants_o;
  wire [15:0] grants_o;
  
  wire [15:0] grants_unmasked_lo;
  
  input ready_i;
  wire ready_i;
  
  input [15:0] reqs_i;
  wire [15:0] reqs_i;
  assign grants_o[0] = ready_i & grants_unmasked_lo[0];
  assign grants_o[1] = grants_unmasked_lo[1] & ready_i;
  assign grants_o[2] = grants_unmasked_lo[2] & ready_i;
  assign grants_o[3] = grants_unmasked_lo[3] & ready_i;
  assign grants_o[4] = grants_unmasked_lo[4] & ready_i;
  assign grants_o[5] = grants_unmasked_lo[5] & ready_i;
  assign grants_o[6] = grants_unmasked_lo[6] & ready_i;
  assign grants_o[7] = grants_unmasked_lo[7] & ready_i;
  assign grants_o[8] = grants_unmasked_lo[8] & ready_i;
  assign grants_o[9] = grants_unmasked_lo[9] & ready_i;
  assign grants_o[10] = grants_unmasked_lo[10] & ready_i;
  assign grants_o[11] = grants_unmasked_lo[11] & ready_i;
  assign grants_o[12] = grants_unmasked_lo[12] & ready_i;
  assign grants_o[13] = grants_unmasked_lo[13] & ready_i;
  assign grants_o[14] = grants_unmasked_lo[14] & ready_i;
  assign grants_o[15] = grants_unmasked_lo[15] & ready_i;
  (* module_not_derived = 32'd1 *)
  
  \$paramod$7a9d64739613278badb8e490a8be43bba7234b0f\bsg_priority_encode_one_hot_out  enc (
    .i(reqs_i),
    .o(grants_unmasked_lo)
  );
endmodule


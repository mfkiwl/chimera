// This program was cloned from: https://github.com/uwsampl/lakeroad-evaluation
// License: MIT License

/* Generated by Yosys 0.19 (git sha1 a45c131b37c, clang 13.1.6 -fPIC -Os) */

module lakeroad_lattice_ecp5_not8_2(a, out0);
  input [7:0] a;
  wire [7:0] a;
  output [7:0] out0;
  wire [7:0] out0;
  LUT4 #(
    .INIT(16'h7fff)
  ) A_LUT_0 (
    .A(a[0]),
    .B(1'h1),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[0])
  );
  LUT4 #(
    .INIT(16'h7fff)
  ) B_LUT_1 (
    .A(a[1]),
    .B(1'h1),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[1])
  );
  LUT4 #(
    .INIT(16'h7fff)
  ) C_LUT_2 (
    .A(a[2]),
    .B(1'h1),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[2])
  );
  LUT4 #(
    .INIT(16'h7fff)
  ) D_LUT_3 (
    .A(a[3]),
    .B(1'h1),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[3])
  );
  LUT4 #(
    .INIT(16'h7fff)
  ) E_LUT_4 (
    .A(a[4]),
    .B(1'h1),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[4])
  );
  LUT4 #(
    .INIT(16'h7fff)
  ) F_LUT_5 (
    .A(a[5]),
    .B(1'h1),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[5])
  );
  LUT4 #(
    .INIT(16'h7fff)
  ) G_LUT_6 (
    .A(a[6]),
    .B(1'h1),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[6])
  );
  LUT4 #(
    .INIT(16'h7fff)
  ) H_LUT_7 (
    .A(a[7]),
    .B(1'h1),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[7])
  );
endmodule


// Seed: 1762964722
module module_0 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6,
    id_7,
    id_8,
    id_9,
    id_10,
    id_11,
    id_12,
    id_13
);
  inout wire id_13;
  inout wire id_12;
  output wire id_11;
  inout wire id_10;
  input wire id_9;
  output wire id_8;
  inout wire id_7;
  output wire id_6;
  output wire id_5;
  inout wire id_4;
  inout wire id_3;
  input wire id_2;
  output wire id_1;
  assign id_11 = 1'b0;
  wire id_14;
  wire id_15;
endmodule
module module_1 #(
    parameter id_16 = 32'd0,
    parameter id_17 = 32'd6
) (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6,
    id_7,
    id_8,
    id_9,
    id_10,
    id_11,
    id_12,
    id_13
);
  output wire id_13;
  output wire id_12;
  input wire id_11;
  input wire id_10;
  input wire id_9;
  input wire id_8;
  output wire id_7;
  inout wire id_6;
  input wire id_5;
  output wire id_4;
  inout wire id_3;
  output wire id_2;
  input wire id_1;
  id_14(
      .id_0(id_7),
      .id_1(1),
      .id_2(id_11 ? id_3[1] : id_5),
      .id_3((1 & id_1 == id_8 & 1)),
      .id_4(id_11 + 1)
  ); module_0(
      id_6, id_11, id_6, id_6, id_6, id_12, id_6, id_13, id_9, id_6, id_13, id_6, id_6
  );
  wire id_15;
  defparam id_16.id_17 = 1;
  wire id_18;
endmodule

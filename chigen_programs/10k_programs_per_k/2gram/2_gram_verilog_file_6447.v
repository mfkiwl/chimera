// Seed: 1245080073
module module_0 (
    id_1
);
  input wire id_1;
  wire id_2 = id_1;
endmodule
module module_1 (
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
    id_13,
    id_14,
    id_15,
    id_16,
    id_17
);
  output wire id_17;
  output wire id_16;
  input wire id_15;
  inout wire id_14;
  output wire id_13;
  inout wire id_12;
  output wire id_11;
  inout wire id_10;
  input wire id_9;
  input wire id_8;
  input wire id_7;
  inout wire id_6;
  output wire id_5;
  output wire id_4;
  inout wire id_3;
  inout wire id_2;
  output wire id_1;
  wire id_18;
  assign id_3 = 1;
  module_0(
      id_7
  );
  wire id_19;
  wire id_20;
  wire id_21;
  always
    if (1) id_14 = ((!id_14));
    else begin
      fork
        id_6 <= 1'b0;
      join_none
    end
  id_22 :
  assert property (@((id_14 + 1) or posedge id_8) id_6)
  else;
endmodule

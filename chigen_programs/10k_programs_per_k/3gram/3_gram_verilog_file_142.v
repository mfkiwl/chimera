// Seed: 972668999
module module_0 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6,
    id_7,
    id_8
);
  inout wire id_8;
  input wire id_7;
  inout wire id_6;
  inout wire id_5;
  input wire id_4;
  input wire id_3;
  inout wire id_2;
  output wire id_1;
endmodule
module module_1 (
    id_1,
    id_2
);
  output wire id_2;
  output wire id_1;
  wire id_4;
  module_0(
      id_4, id_4, id_4, id_4, id_4, id_4, id_4, id_4
  );
  assign id_1 = 1;
endmodule
module module_2 (
    id_1,
    id_2,
    id_3
);
  output wire id_3;
  inout wire id_2;
  inout wire id_1;
  always_ff @(1 or posedge 1) begin
    `define pp_4 0
  end
  module_0(
      id_3, id_2, id_2, id_1, id_2, id_2, id_2, id_1
  );
endmodule

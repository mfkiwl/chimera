// Seed: 907380525
module module_0 ();
  assign id_1[1'b0!=?1] = 1'b0;
endmodule
module module_1 (
    id_1,
    id_2,
    id_3
);
  input wire id_3;
  output wire id_2;
  input wire id_1;
  assign id_2 = 1;
  module_0();
endmodule
module module_2 (
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
    id_17,
    id_18,
    id_19,
    id_20,
    id_21,
    id_22,
    id_23,
    id_24,
    id_25,
    id_26,
    id_27,
    id_28
);
  output wire id_28;
  inout wire id_27;
  inout wire id_26;
  inout wire id_25;
  input wire id_24;
  inout wire id_23;
  output wire id_22;
  inout wire id_21;
  output wire id_20;
  output wire id_19;
  inout wire id_18;
  input wire id_17;
  inout wire id_16;
  input wire id_15;
  inout wire id_14;
  input wire id_13;
  inout wire id_12;
  inout wire id_11;
  input wire id_10;
  input wire id_9;
  inout wire id_8;
  inout wire id_7;
  input wire id_6;
  input wire id_5;
  inout wire id_4;
  output wire id_3;
  output wire id_2;
  inout wire id_1;
  assign id_28 = id_5;
  tri1 id_29;
  module_0();
  wire id_30;
  always @(posedge !id_25) begin
    $display(1'd0, 1);
    id_19 <= id_15;
  end
  initial begin
    id_19 <= id_21;
    assert (id_8[1]);
    if (1 == 1'h0)
      if (id_17) begin
        $display(id_11, 1 <= 1);
        id_22 <= 1'b0;
      end
    begin
      if (!id_29) begin
        disable id_31;
      end else begin
        id_21 = 1;
      end
      fork
        id_32();
        #1 id_19 = !id_17;
      join
    end
    if (id_1) begin
      id_7 = "";
    end
  end
endmodule

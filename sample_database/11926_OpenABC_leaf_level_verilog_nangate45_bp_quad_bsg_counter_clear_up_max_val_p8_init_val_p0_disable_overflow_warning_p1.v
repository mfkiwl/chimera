// This program was cloned from: https://github.com/NYU-MLDA/OpenABC
// License: BSD 3-Clause "New" or "Revised" License

module bsg_counter_clear_up_max_val_p8_init_val_p0_disable_overflow_warning_p1
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [3:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire [3:0] count_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17;
  reg count_o_3_sv2v_reg,count_o_2_sv2v_reg,count_o_1_sv2v_reg,count_o_0_sv2v_reg;
  assign count_o[3] = count_o_3_sv2v_reg;
  assign count_o[2] = count_o_2_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o_3_sv2v_reg <= N13;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o_2_sv2v_reg <= N12;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o_1_sv2v_reg <= N11;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o_0_sv2v_reg <= N10;
    end 
  end

  assign { N9, N8, N7, N6 } = { N17, N16, N15, N14 } + up_i;
  assign { N13, N12, N11, N10 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N1)? { N9, N8, N7, N6 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign { N17, N16, N15, N14 } = count_o * N4;
  assign N2 = ~reset_i;
  assign N3 = N2;
  assign N4 = ~clear_i;
  assign N5 = N3 & N4;

endmodule
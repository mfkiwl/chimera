// This program was cloned from: https://github.com/NYU-MLDA/OpenABC
// License: BSD 3-Clause "New" or "Revised" License

module rvdff_WIDTH8
(
  din,
  clk,
  rst_l,
  dout
);

  input [7:0] din;
  output [7:0] dout;
  input clk;
  input rst_l;
  wire N0;
  reg [7:0] dout;

  always @(posedge clk or posedge N0) begin
    if(N0) begin
      dout[7] <= 1'b0;
    end else if(1'b1) begin
      dout[7] <= din[7];
    end
  end


  always @(posedge clk or posedge N0) begin
    if(N0) begin
      dout[6] <= 1'b0;
    end else if(1'b1) begin
      dout[6] <= din[6];
    end
  end


  always @(posedge clk or posedge N0) begin
    if(N0) begin
      dout[5] <= 1'b0;
    end else if(1'b1) begin
      dout[5] <= din[5];
    end
  end


  always @(posedge clk or posedge N0) begin
    if(N0) begin
      dout[4] <= 1'b0;
    end else if(1'b1) begin
      dout[4] <= din[4];
    end
  end


  always @(posedge clk or posedge N0) begin
    if(N0) begin
      dout[3] <= 1'b0;
    end else if(1'b1) begin
      dout[3] <= din[3];
    end
  end


  always @(posedge clk or posedge N0) begin
    if(N0) begin
      dout[2] <= 1'b0;
    end else if(1'b1) begin
      dout[2] <= din[2];
    end
  end


  always @(posedge clk or posedge N0) begin
    if(N0) begin
      dout[1] <= 1'b0;
    end else if(1'b1) begin
      dout[1] <= din[1];
    end
  end


  always @(posedge clk or posedge N0) begin
    if(N0) begin
      dout[0] <= 1'b0;
    end else if(1'b1) begin
      dout[0] <= din[0];
    end
  end

  assign N0 = ~rst_l;

endmodule
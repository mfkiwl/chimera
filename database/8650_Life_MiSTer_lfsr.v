// This program was cloned from: https://github.com/hrvach/Life_MiSTer
// License: MIT License

module random (
   input clock,
   output reg [30:0] lfsr
); 
  
always @(posedge clock) begin
  lfsr <= {lfsr[29:0], lfsr[30] ^~ lfsr[27]}; 
end
   
endmodule

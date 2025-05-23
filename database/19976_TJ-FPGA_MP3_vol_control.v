// This program was cloned from: https://github.com/DinoMax00/TJ-FPGA_MP3
// License: MIT License

//---------- detect and show volume change -----------------
// ------------- author : Dino ----------------------------
module vol_control(
	input CLK,
	input [15: 0] vol,
	output reg [15: 0] led
);

	always @ (posedge CLK) begin 
		case(vol)
			16'h0000: led <= 16'b1111111111111111;
			16'h1010: led <= 16'b0111111111111111;
			16'h2020: led <= 16'b0011111111111111;
			16'h3030: led <= 16'b0001111111111111;
			16'h4040: led <= 16'b0000111111111111;
			16'h5050: led <= 16'b0000011111111111;
			16'h6060: led <= 16'b0000001111111111;
			16'h7070: led <= 16'b0000000111111111;
			16'h8080: led <= 16'b0000000011111111;
			16'h9090: led <= 16'b0000000001111111;
			16'hA0A0: led <= 16'b0000000000111111;
			16'hB0B0: led <= 16'b0000000000011111;
			16'hC0C0: led <= 16'b0000000000001111;
			16'hD0D0: led <= 16'b0000000000000111;
			16'hE0E0: led <= 16'b0000000000000011;
			16'hF0F0: led <= 16'b0000000000000001;
		endcase 
	end
	
endmodule

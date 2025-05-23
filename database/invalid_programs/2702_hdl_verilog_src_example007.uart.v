// This program was cloned from: https://github.com/mzandrew/hdl
// License: GNU General Public License v3.0

// written 2018-08-03 by mza
// sudo stty -F /dev/ttyUSB1 115200
// minicom --device=/dev/ttyUSB2 -baudrate 115200
// last updated 2020-06-01 by mza

`define icestick
`include "lib/uart.v"

module mytop (
	input clock,
	output [5:1] LED,
	output [7:0] J1, J2, J3,
	input RX,
	output TX
);
	assign J1 = 0;
	assign J2 = data;
	assign J3[0] = TX;
	assign J3[7:1] = 0;
	reg [31:0] counter = 0;
	reg resetb = 0;
	wire busy;
	reg was_busy = 0;
	reg go = 0;
	assign LED[5] = go;
	assign LED[4] = ~TX;
	assign LED[3] = ~resetb;
	assign LED[2] = 0;//was_busy;
	assign LED[1] = busy;
	reg [7:0] data = 8'h0a;
	reg [7:0] character_counter = 63;
	localparam timing_pickoff = 15;
	always @(posedge clock) begin
		counter++;
		if (counter[31:15]==0) begin
			resetb <= 0;
		end else begin
			resetb <= 1;
		end
		if (counter[timing_pickoff]==1) begin
			if (busy) begin
				was_busy <= 1;
				go <= 0;
			end else begin
				if (counter[timing_pickoff-1:0]==0) begin
					go <= 1;
					if (character_counter<65) begin
						character_counter++;
					end else begin
						character_counter = 0;
					end
				end else begin
					go <= 0;
					if (character_counter==64) begin
						data <= 8'h0d; // cr
					end else if (character_counter==65) begin
						data <= 8'h0a; // nl
					end else begin
						// http://home.fnal.gov/~lauri/ascii-table.html
						if (character_counter[3:0]<10) begin
							data <= { 4'h3, character_counter[3:0] }; // 0-9
						end else begin
							//data <= 55 + character_counter[3:0]; // A-F
							data <= 87 + character_counter[3:0]; // a-f
						end
					end
				end
			end
		end else begin
			go <= 0;
			was_busy <= 0;
		end
	end
	uart my_uart_instance (.clk(clock), .resetq(resetb), .uart_busy(busy), .uart_tx(TX), .uart_wr_i(go), .uart_dat_i(data));
endmodule // mytop

module top (
	input CLK,
	output LED1, LED2, LED3, LED4, LED5,
	output J1_3, J1_4, J1_5, J1_6, J1_7, J1_8, J1_9, J1_10,
	output J2_1, J2_2, J2_3, J2_4, J2_7, J2_8, J2_9, J2_10,
	output J3_3, J3_4, J3_5, J3_6, J3_7, J3_8, J3_9, J3_10,
	output DCDn, DSRn, CTSn, TX, IR_TX, IR_SD,
	input DTRn, RTSn, RX, IR_RX
);
	wire [7:0] J1 = { J1_10, J1_9, J1_8, J1_7, J1_6, J1_5, J1_4, J1_3 };
	wire [7:0] J2 = { J2_10, J2_9, J2_8, J2_7, J2_4, J2_3, J2_2, J2_1 };
	wire [7:0] J3 = { J3_10, J3_9, J3_8, J3_7, J3_6, J3_5, J3_4, J3_3 };
	wire [5:1] LED = { LED5, LED4, LED3, LED2, LED1 };
	assign { DCDn, DSRn, CTSn } = 0;
	assign { IR_TX, IR_SD } = 0;
	mytop mytop_instance (.clock(CLK), .LED(LED), .J1(J1), .J2(J2), .J3(J3), .TX(TX), .RX(RX));
endmodule // icestick


// This program was cloned from: https://github.com/viktor-prutyanov/drec-fpga-intro
// License: GNU General Public License v2.0

module top(
    input CLK,

    output DS_EN1, DS_EN2, DS_EN3, DS_EN4,
    output DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G
);

wire [3:0]anodes;
assign {DS_EN1, DS_EN2, DS_EN3, DS_EN4} = ~anodes;

wire [6:0]segments;
assign {DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G} = segments;

wire [15:0]hd_data;
cpu_top cpu_top(.clk(CLK), .data_out(hd_data));

wire clk1;
clk_div clk_div(.clk_in(CLK), .clk_out(clk1));

hex_display hex_display(
    .clk(clk1), .data(hd_data),
    .anodes(anodes), .segments(segments)
);

endmodule
// This program was cloned from: https://github.com/alexpaniman/drec-fpga-intro
// License: GNU General Public License v2.0

module top(
    input CLK,

    output DS_EN1, DS_EN2, DS_EN3, DS_EN4,
    output DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G
);

wire [3:0]anodes;
assign {DS_EN1, DS_EN2, DS_EN3, DS_EN4} = ~anodes;

wire [6:0]segments;
assign {DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G} = segments;

wire [15:0]hd_data;
cpu_top cpu_top(.clk(CLK), .data_out(hd_data));

wire clk1;
clk_div clk_div(.clk_in(CLK), .clk_out(clk1));

hex_display hex_display(
    .clk(clk1), .data(hd_data),
    .anodes(anodes), .segments(segments)
);

endmodule

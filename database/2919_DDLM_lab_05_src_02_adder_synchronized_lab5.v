// This program was cloned from: https://github.com/RomeoMe5/DDLM
// License: MIT License

module lab5
(
    input        MAX10_CLK1_50,
	input  [1:0] KEY,
    input  [9:0] SW,
    output [9:0] LEDR
);
    parameter WIDTH = 4;
    
    //wires
    wire [WIDTH - 1:0] x_bus, y_bus, z_bus;
    wire               load_x, load_y;
    wire               carry_in_wire;
    wire               carry_out_wire;
    wire               clock;
    wire               reset;
    
    assign clock = MAX10_CLK1_50;
    assign reset = KEY[1];
    
    //register for the arguments
    register #(.WIDTH(WIDTH)) x_register
    (
        .clock   (clock  ),
        .reset   (reset  ),
        .load    (load_x ),
        .data_in (SW[WIDTH:1]),
        .data_out(x_bus  )
    );

    register #(.WIDTH(WIDTH)) y_register
    (
        .clock   (clock  ),
        .reset   (reset  ),
        .load    (load_y ),
        .data_in (SW[WIDTH:1]),
        .data_out(y_bus  )
    );
    
    //carry_in synchronization
    unit_delay #(.WIDTH(1)) carry_in_register (
        .clock   ( clock         ),
        .data_in ( SW[ 0 ]       ),
        .data_out( carry_in_wire )
    );
    
    //argument selector
    assign load_x =  SW[0] & ~KEY[0] ? 1'b1 : 1'b0;
    assign load_y = ~SW[0] & ~KEY[0] ? 1'b1 : 1'b0;

    //adder
    adder #(.WIDTH(WIDTH)) i_adder
    (
        .carry_in (carry_in_wire ),
        .x        (x_bus         ),
        .y        (y_bus         ),
        .z        (z_bus         ),
        .carry_out(carry_out_wire)
    );
    
    //output synchronization
    unit_delay #(.WIDTH(WIDTH)) z_register (
        .clock   (clock            ),
        .data_in (z_bus            ),
        .data_out(LEDR[WIDTH - 1:0])
    );
    
    unit_delay #(.WIDTH(1)) carry_out_register (
        .clock   (clock         ),
        .data_in (carry_out_wire),
        .data_out(LEDR[9]       )
    );
    
    assign LEDR[8:WIDTH] = 0;
    
endmodule

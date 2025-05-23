// This program was cloned from: https://github.com/RomeoMe5/DDLM
// License: MIT License

`timescale 100 ps / 100 ps
// testbench is a module which only task is to test another module
// testbench is for simulation only, not for synthesis
module testbench;
	parameter DATA_WIDTH = 32;
	//parameter SEL_WIDTH = 3;	//2;
	//parameter INPUT_CHANNELS = 8;
    // input and output test signals
    wire  [DATA_WIDTH-1:0] y;
	//wire  [DATA_WIDTH-1:0] y2;
	reg   [/*SEL_WIDTH-1*/3:0] sel;
	//reg   [INPUT_CHANNELS-1:0] sel2;
	reg   [DATA_WIDTH-1:0] d0; 
	reg	  [DATA_WIDTH-1:0] d1;
	reg   [DATA_WIDTH-1:0] d2;
	reg   [DATA_WIDTH-1:0] d3;
	//reg   [DATA_WIDTH-1:0] d4; 
	//reg   [DATA_WIDTH-1:0] d5;
	//reg   [DATA_WIDTH-1:0] d6;
	//reg   [DATA_WIDTH-1:0] d7;
 
   // creating the instance of the module we want to test
	bn_selector_4_1_and_or #(DATA_WIDTH) bn_selector_4_1_and_or (.data({d3,d2,d1,d0}), .sel(sel), .y(y));
	//bn_mux_n_1_generate #(DATA_WIDTH,SEL_WIDTH) bn_mux_n_1_generate (.data({d3,d2,d1,d0}), .sel(sel), .y(y));
	
	//bn_selector_n_1_generate #(DATA_WIDTH,INPUT_CHANNELS) bn_selector_n_1_generate (.data({d7,d6,d5,d4,d3,d2,d1,d0}), .sel(sel2), .y(y2));
	
	initial 
        begin
			d0=0; d1=1; d2=2; d3=3; //d4=4; d5=5; d6=6; d7=7;
			#5;
            sel = 4'b0001;     
			//sel2 = 8'b00000001;
			#10;
			repeat (3)	
			begin
				sel=sel<<1;
				//sel2=sel2<<1;
				#10;
			end
			d3=123;
			#10;
			d3=77;
			#10;
        end
    // do at the beginning of the simulation
    //  print signal values on every change
    initial 
        //$monitor("sel=%b sel2=%b d0=%d d1=%d d2=%d d3=%d d4=%d d5=%d d6=%d d7=%d y=%d y2=%d", 
		$monitor("sel=%b d0=%d d1=%d d2=%d d3=%d y=%d", 
		         sel, /*sel2,*/ d0, d1, d2, d3,/* d4, d5, d6, d7,*/ y/*, y2*/);
    // do at the beginning of the simulation
    initial 
        $dumpvars;  //iverilog dump init
endmodule

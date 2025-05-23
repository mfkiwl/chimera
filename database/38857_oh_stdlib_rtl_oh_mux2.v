// This program was cloned from: https://github.com/aolofsson/oh
// License: MIT License

//#############################################################################
//# Function: 2:1 one hot mux                                                 #
//#############################################################################
//# Author:   Andreas Olofsson                                                #
//# License:  MIT (see LICENSE file in OH! repository)                        #
//#############################################################################

module oh_mux2 #(parameter N = 1 ) // width of mux
   (
    input 	    sel1,
    input 	    sel0,
    input [N-1:0]  in1,
    input [N-1:0]  in0,
    output [N-1:0] out  //selected data output
    );

   assign out[N-1:0] = ({(N){sel0}} & in0[N-1:0] |
			 {(N){sel1}} & in1[N-1:0]);


endmodule // oh_mux2

// This program was cloned from: https://github.com/esa-tu-darmstadt/tapasco
// License: GNU Lesser General Public License v3.0

//
// Generated by Bluespec Compiler, version 2017.07.A (build 1da80f1, 2017-07-21)
//
// On Fri Sep  7 15:31:51 CEST 2018
//
//
// Ports:
// Name                         I/O  size props
// axis_M_tvalid                  O     1
// axis_M_tdata                   O    64
// axis_M_tlast                   O     1
// axis_M_tuser                   O     1
// axis_M_tkeep                   O     8
// axis_M_tDest                   O     4
// axis_S_tready                  O     1
// CLK                            I     1 clock
// RST_N                          I     1 reset
// axis_M_tready                  I     1
// axis_S_tvalid                  I     1
// axis_S_tdata                   I    64
// axis_S_tuser                   I     1
// axis_S_tkeep                   I     8
// axis_S_tDest                   I     4
// axis_S_tlast                   I     1
// maxClients                     I     5
//
// Combinational paths from inputs to outputs:
//   axis_M_tready -> axis_S_tready
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkAXIS_Arbiter(CLK,
		      RST_N,

		      axis_M_tvalid,

		      axis_M_tready,

		      axis_M_tdata,

		      axis_M_tlast,

		      axis_M_tuser,

		      axis_M_tkeep,

		      axis_M_tDest,

		      axis_S_tready,

		      axis_S_tvalid,

		      axis_S_tdata,

		      axis_S_tuser,

		      axis_S_tkeep,

		      axis_S_tDest,

		      axis_S_tlast,

		      maxClients);
  input  CLK;
  input  RST_N;

  // value method axis_M_tvalid
  output axis_M_tvalid;

  // action method axis_M_ptready
  input  axis_M_tready;

  // value method axis_M_tdata
  output [63 : 0] axis_M_tdata;

  // value method axis_M_tlast
  output axis_M_tlast;

  // value method axis_M_tuser
  output axis_M_tuser;

  // value method axis_M_tkeep
  output [7 : 0] axis_M_tkeep;

  // value method axis_M_tDest
  output [3 : 0] axis_M_tDest;

  // value method axis_S_tready
  output axis_S_tready;

  // action method axis_S_ptvalid
  input  axis_S_tvalid;

  // action method axis_S_ptdata
  input  [63 : 0] axis_S_tdata;

  // action method axis_S_ptuser
  input  axis_S_tuser;

  // action method axis_S_ptkeep
  input  [7 : 0] axis_S_tkeep;

  // action method axis_S_ptDest
  input  [3 : 0] axis_S_tDest;

  // action method axis_S_ptlast
  input  axis_S_tlast;

  // action method arbiter_turnover
  input  [4 : 0] maxClients;

  // signals for module outputs
  wire [63 : 0] axis_M_tdata;
  wire [7 : 0] axis_M_tkeep;
  wire [3 : 0] axis_M_tDest;
  wire axis_M_tlast, axis_M_tuser, axis_M_tvalid, axis_S_tready;

  // inlined wires
  wire [78 : 0] streamIn_in_1_rv$port1__read,
		streamIn_in_1_rv$port1__write_1,
		streamIn_in_1_rv$port2__read,
		streamOut_out_1_rv$port1__read,
		streamOut_out_1_rv$port1__write_1,
		streamOut_out_1_rv$port2__read;
  wire streamIn_in_1_rv$EN_port0__write,
       streamIn_in_1_rv$EN_port1__write,
       streamOut_out_1_rv$EN_port0__write,
       streamOut_out_1_rv$EN_port1__write;

  // register arbiter
  reg [4 : 0] arbiter;
  wire [4 : 0] arbiter$D_IN;
  wire arbiter$EN;

  // register streamIn_in_1_rv
  reg [78 : 0] streamIn_in_1_rv;
  wire [78 : 0] streamIn_in_1_rv$D_IN;
  wire streamIn_in_1_rv$EN;

  // register streamOut_out_1_rv
  reg [78 : 0] streamOut_out_1_rv;
  wire [78 : 0] streamOut_out_1_rv$D_IN;
  wire streamOut_out_1_rv$EN;

  // ports of submodule streamIn_in
  wire [77 : 0] streamIn_in$D_IN;
  wire streamIn_in$CLR, streamIn_in$DEQ, streamIn_in$ENQ;

  // ports of submodule streamOut_out
  wire [77 : 0] streamOut_out$D_IN;
  wire streamOut_out$CLR, streamOut_out$DEQ, streamOut_out$ENQ;

  // remaining internal signals
  wire [4 : 0] arbiter_1_PLUS_1_6_REM_IF_turnover_whas__7_THE_ETC___d40,
	       x__h2285;

  // value method axis_M_tvalid
  assign axis_M_tvalid = streamOut_out_1_rv[78] ;

  // value method axis_M_tdata
  assign axis_M_tdata =
	     streamOut_out_1_rv[78] ? streamOut_out_1_rv[77:14] : 64'd0 ;

  // value method axis_M_tlast
  assign axis_M_tlast = streamOut_out_1_rv[78] && streamOut_out_1_rv[0] ;

  // value method axis_M_tuser
  assign axis_M_tuser = streamOut_out_1_rv[78] && streamOut_out_1_rv[13] ;

  // value method axis_M_tkeep
  assign axis_M_tkeep =
	     streamOut_out_1_rv[78] ? streamOut_out_1_rv[12:5] : 8'd0 ;

  // value method axis_M_tDest
  assign axis_M_tDest =
	     streamOut_out_1_rv[78] ? streamOut_out_1_rv[4:1] : 4'd0 ;

  // value method axis_S_tready
  assign axis_S_tready = !streamIn_in_1_rv$port1__read[78] ;

  // submodule streamIn_in
  FIFO1 #(.width(32'd78), .guarded(32'd1)) streamIn_in(.RST(RST_N),
						       .CLK(CLK),
						       .D_IN(streamIn_in$D_IN),
						       .ENQ(streamIn_in$ENQ),
						       .DEQ(streamIn_in$DEQ),
						       .CLR(streamIn_in$CLR),
						       .D_OUT(),
						       .FULL_N(),
						       .EMPTY_N());

  // submodule streamOut_out
  FIFO1 #(.width(32'd78), .guarded(32'd1)) streamOut_out(.RST(RST_N),
							 .CLK(CLK),
							 .D_IN(streamOut_out$D_IN),
							 .ENQ(streamOut_out$ENQ),
							 .DEQ(streamOut_out$DEQ),
							 .CLR(streamOut_out$CLR),
							 .D_OUT(),
							 .FULL_N(),
							 .EMPTY_N());

  // inlined wires
  assign streamOut_out_1_rv$EN_port0__write =
	     streamOut_out_1_rv[78] && axis_M_tready ;
  assign streamOut_out_1_rv$port1__read =
	     streamOut_out_1_rv$EN_port0__write ?
	       79'h2AAAAAAAAAAAAAAAAAAA :
	       streamOut_out_1_rv ;
  assign streamOut_out_1_rv$EN_port1__write =
	     streamIn_in_1_rv[78] && !streamOut_out_1_rv$port1__read[78] ;
  assign streamOut_out_1_rv$port1__write_1 =
	     { 1'd1,
	       streamIn_in_1_rv[77:5],
	       arbiter[3:0],
	       streamIn_in_1_rv[0] } ;
  assign streamOut_out_1_rv$port2__read =
	     streamOut_out_1_rv$EN_port1__write ?
	       streamOut_out_1_rv$port1__write_1 :
	       streamOut_out_1_rv$port1__read ;
  assign streamIn_in_1_rv$EN_port0__write =
	     streamIn_in_1_rv[78] && !streamOut_out_1_rv$port1__read[78] ;
  assign streamIn_in_1_rv$port1__read =
	     streamIn_in_1_rv$EN_port0__write ?
	       79'h2AAAAAAAAAAAAAAAAAAA :
	       streamIn_in_1_rv ;
  assign streamIn_in_1_rv$EN_port1__write =
	     !streamIn_in_1_rv$port1__read[78] && axis_S_tvalid ;
  assign streamIn_in_1_rv$port1__write_1 =
	     { 1'd1,
	       axis_S_tdata,
	       axis_S_tuser,
	       axis_S_tkeep,
	       axis_S_tDest,
	       axis_S_tlast } ;
  assign streamIn_in_1_rv$port2__read =
	     streamIn_in_1_rv$EN_port1__write ?
	       streamIn_in_1_rv$port1__write_1 :
	       streamIn_in_1_rv$port1__read ;

  // register arbiter
  assign arbiter$D_IN =
	     streamIn_in_1_rv[0] ?
	       arbiter_1_PLUS_1_6_REM_IF_turnover_whas__7_THE_ETC___d40 :
	       arbiter ;
  assign arbiter$EN =
	     streamIn_in_1_rv[78] && !streamOut_out_1_rv$port1__read[78] ;

  // register streamIn_in_1_rv
  assign streamIn_in_1_rv$D_IN = streamIn_in_1_rv$port2__read ;
  assign streamIn_in_1_rv$EN = 1'b1 ;

  // register streamOut_out_1_rv
  assign streamOut_out_1_rv$D_IN = streamOut_out_1_rv$port2__read ;
  assign streamOut_out_1_rv$EN = 1'b1 ;

  // submodule streamIn_in
  assign streamIn_in$D_IN = 78'h0 ;
  assign streamIn_in$ENQ = 1'b0 ;
  assign streamIn_in$DEQ = 1'b0 ;
  assign streamIn_in$CLR = 1'b0 ;

  // submodule streamOut_out
  assign streamOut_out$D_IN = 78'h0 ;
  assign streamOut_out$ENQ = 1'b0 ;
  assign streamOut_out$DEQ = 1'b0 ;
  assign streamOut_out$CLR = 1'b0 ;

  // remaining internal signals
  assign arbiter_1_PLUS_1_6_REM_IF_turnover_whas__7_THE_ETC___d40 =
	     x__h2285 % maxClients ;
  assign x__h2285 = arbiter + 5'd1 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        arbiter <= `BSV_ASSIGNMENT_DELAY 5'd0;
	streamIn_in_1_rv <= `BSV_ASSIGNMENT_DELAY 79'h2AAAAAAAAAAAAAAAAAAA;
	streamOut_out_1_rv <= `BSV_ASSIGNMENT_DELAY 79'h2AAAAAAAAAAAAAAAAAAA;
      end
    else
      begin
        if (arbiter$EN) arbiter <= `BSV_ASSIGNMENT_DELAY arbiter$D_IN;
	if (streamIn_in_1_rv$EN)
	  streamIn_in_1_rv <= `BSV_ASSIGNMENT_DELAY streamIn_in_1_rv$D_IN;
	if (streamOut_out_1_rv$EN)
	  streamOut_out_1_rv <= `BSV_ASSIGNMENT_DELAY streamOut_out_1_rv$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    arbiter = 5'h0A;
    streamIn_in_1_rv = 79'h2AAAAAAAAAAAAAAAAAAA;
    streamOut_out_1_rv = 79'h2AAAAAAAAAAAAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkAXIS_Arbiter


// This program was cloned from: https://github.com/ultraembedded/openlogicbit
// License: Apache License 2.0

//-----------------------------------------------------------------------------
//-- (c) Copyright 2010 Xilinx, Inc. All rights reserved.
//--
//-- This file contains confidential and proprietary information
//-- of Xilinx, Inc. and is protected under U.S. and
//-- international copyright and other intellectual property
//-- laws.
//--
//-- DISCLAIMER
//-- This disclaimer is not a license and does not grant any
//-- rights to the materials distributed herewith. Except as
//-- otherwise provided in a valid license issued to you by
//-- Xilinx, and to the maximum extent permitted by applicable
//-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//-- (2) Xilinx shall not be liable (whether in contract or tort,
//-- including negligence, or under any other theory of
//-- liability) for any loss or damage of any kind or nature
//-- related to, arising under or in connection with these
//-- materials, including for any direct, or any indirect,
//-- special, incidental, or consequential loss or damage
//-- (including loss of data, profits, goodwill, or any type of
//-- loss or damage suffered as a result of any action brought
//-- by a third party) even if such damage or loss was
//-- reasonably foreseeable or Xilinx had been advised of the
//-- possibility of the same.
//--
//-- CRITICAL APPLICATIONS
//-- Xilinx products are not designed or intended to be fail- 
//-- safe, or for use in any application requiring fail-safe
//-- performance, such as life-support or safety devices or
//-- systems, Class III medical devices, nuclear facilities,
//-- applications related to the deployment of airbags, or any
//-- other applications that could lead to death, personal
//-- injury, or severe property or environmental damage
//-- (individually and collectively, "Critical
//-- Applications"). Customer assumes the sole risk and
//-- liability of any use of Xilinx products in Critical
//-- Applications, subject only to applicable laws and
//-- regulations governing limitations on product liability.
//--
//-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//-- PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
//Purpose:
//    Synchronous, shallow FIFO that uses simple as a DP Memory.
//    This requires about 1/2 the resources as a Distributed RAM DPRAM 
//    implementation.
//
//    This FIFO will have the current data on the output when data is contained
//    in the FIFO.  When the FIFO is empty, the output data is invalid.
//
//Reference:
//Revision History:
//
//-----------------------------------------------
//
// MODULE:  axi_mcb_simple_fifo
//
// This is the simplest form of inferring the
// simple/SRL(16/32)CE in a Xilinx FPGA.
//
//-----------------------------------------------
`timescale 1ps / 1ps
`default_nettype none

module axi_mcb_simple_fifo #
(
  parameter C_WIDTH  = 8,
  parameter C_AWIDTH = 4,
  parameter C_DEPTH  = 16
)
(
  input  wire               clk,       // Main System Clock  (Sync FIFO)
  input  wire               rst,       // FIFO Counter Reset (Clk
  input  wire               wr_en,     // FIFO Write Enable  (Clk)
  input  wire               rd_en,     // FIFO Read Enable   (Clk)
  input  wire [C_WIDTH-1:0] din,       // FIFO Data Input    (Clk)
  output wire [C_WIDTH-1:0] dout,      // FIFO Data Output   (Clk)
  output wire               a_full,
  output wire               full,      // FIFO FULL Status   (Clk)
  output wire               a_empty,
  output wire               empty      // FIFO EMPTY Status  (Clk)
);

///////////////////////////////////////
// FIFO Local Parameters
///////////////////////////////////////
localparam [C_AWIDTH-1:0] C_EMPTY = ~(0);
localparam [C_AWIDTH-1:0] C_EMPTY_PRE =  (0);
localparam [C_AWIDTH-1:0] C_FULL  = C_EMPTY - 1'b1;
localparam [C_AWIDTH-1:0] C_FULL_PRE  = C_FULL - 1'b1;
 
///////////////////////////////////////
// FIFO Internal Signals
///////////////////////////////////////
reg [C_WIDTH-1:0]  memory [C_DEPTH-1:0];
reg [C_AWIDTH-1:0] cnt_read;
reg                full_r;
reg                empty_r;

///////////////////////////////////////
// Main simple FIFO Array
///////////////////////////////////////
always @(posedge clk) begin : BLKSRL
integer i;
  if (wr_en) begin
    for (i = 0; i < C_DEPTH-1; i = i + 1) begin
      memory[i+1] <= memory[i];
    end
    memory[0] <= din;
  end
end

///////////////////////////////////////
// Read Index Counter
// Up/Down Counter
//  *** Notice that there is no ***
//  *** OVERRUN protection.     ***
///////////////////////////////////////
always @(posedge clk) begin
  if (rst) cnt_read <= C_EMPTY;
  else if ( wr_en & !rd_en) cnt_read <= cnt_read + 1'b1;
  else if (!wr_en &  rd_en) cnt_read <= cnt_read - 1'b1;
end

///////////////////////////////////////
// Status Flags / Outputs
///////////////////////////////////////
always @(posedge clk) begin
  if (rst) begin
    full_r <= 1'b0;
  end
  else if ( wr_en & ~rd_en) begin
    full_r <= a_full;
  end
  else if ( ~wr_en & rd_en ) begin
    full_r <= 1'b0;
  end
end

always @(posedge clk) begin
  if (rst) begin
    empty_r <= 1'b1;
  end
  else if (~wr_en & rd_en) begin
    empty_r <= a_empty;
  end
  else if (wr_en & ~rd_en) begin
    empty_r <= 1'b0;
  end
end


assign full  = full_r;
assign empty = empty_r;
assign a_full  = (cnt_read == C_FULL);
assign a_empty = (cnt_read == C_EMPTY_PRE);

assign dout  = (C_DEPTH == 1) ? memory[0] : memory[cnt_read];

endmodule // axi_mcb_simple_fifo

`default_nettype wire

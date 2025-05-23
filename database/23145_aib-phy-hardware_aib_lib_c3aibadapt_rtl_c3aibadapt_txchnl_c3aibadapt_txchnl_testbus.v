// This program was cloned from: https://github.com/intel/aib-phy-hardware
// License: Apache License 2.0

// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2019 Intel Corporation. All rights reserved
//------------------------------------------------------------------------
// (C) 2009 Altera Corporation. All rights reserved.  
//
//------------------------------------------------------------------------
// File:        
// Revision:    
// Date:        
//------------------------------------------------------------------------
// Description: 
//
//------------------------------------------------------------------------

module c3aibadapt_txchnl_testbus 
    (
    input   wire  [2:0]           r_tx_datapath_tb_sel,  // testbus sel
    input   wire [19:0]           tx_fifo_testbus1, 		// RX FIFO
    input   wire [19:0]           tx_fifo_testbus2, 		// RX FIFO
    input   wire [19:0]           word_align_testbus,
    input   wire [19:0]           tx_cp_bond_testbus,
    input   wire [19:0]           tx_hrdrst_testbus,    
    
    output  reg [19:0]		  tx_chnl_testbus
     );
   
    always @* begin
      case (r_tx_datapath_tb_sel)
        3'b000: tx_chnl_testbus = word_align_testbus;
        3'b001: tx_chnl_testbus = tx_fifo_testbus1;
        3'b010: tx_chnl_testbus = tx_fifo_testbus2;
        3'b011: tx_chnl_testbus = tx_cp_bond_testbus;
        3'b100: tx_chnl_testbus = tx_hrdrst_testbus;
        default: tx_chnl_testbus = {20{1'b0}};
      endcase // case(r_rx_testbus_sel)
    end // always @ *
         
endmodule // c3aibadapt_tx_chnl_testbus

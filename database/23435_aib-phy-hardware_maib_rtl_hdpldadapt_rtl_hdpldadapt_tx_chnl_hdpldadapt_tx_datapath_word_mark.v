// This program was cloned from: https://github.com/intel/aib-phy-hardware
// License: Apache License 2.0

// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2019 Intel Corporation. All rights reserved
//------------------------------------------------------------------------
// (C) 2009 Altera Corporation. All rights reserved.  
//
//------------------------------------------------------------------------
// File:        $RCSfile: hdpldiadapt_tx_datapath_cp_bond.v.rca $
// Revision:    $Revision: #2 $
// Date:        $Date: 2014/08/29 $
//------------------------------------------------------------------------
// Description: 
//
//------------------------------------------------------------------------

module hdpldadapt_tx_datapath_word_mark
    (
      input  wire [79:0] data_in,         // Data In
      input  wire        r_wm_en,         // Word mark enable
      output wire [79:0] data_out         // Data Out
    );

//********************************************************************
// Define Parameters 
//********************************************************************


//********************************************************************
// Define variables 
//********************************************************************


//********************************************************************
// Main logic 
//********************************************************************

assign data_out = r_wm_en ? {1'b1, data_in[78:40], 1'b0, data_in[38:0]} : data_in;


endmodule

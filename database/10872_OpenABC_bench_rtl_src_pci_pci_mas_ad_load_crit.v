// This program was cloned from: https://github.com/NYU-MLDA/OpenABC
// License: BSD 3-Clause "New" or "Revised" License

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  File name "mas_ad_load_crit.v"                              ////
////                                                              ////
////  This file is part of the "PCI bridge" project               ////
////  http://www.opencores.org/cores/pci/                         ////
////                                                              ////
////  Author(s):                                                  ////
////      - Miha Dolenc (mihad@opencores.org)                     ////
////                                                              ////
////  All additional information is avaliable in the README       ////
////  file.                                                       ////
////                                                              ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2001 Miha Dolenc, mihad@opencores.org          ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: pci_mas_ad_load_crit.v,v $
// Revision 1.1  2003/01/27 16:49:31  mihad
// Changed module and file names. Updated scripts accordingly. FIFO synchronizations changed.
//
// Revision 1.1  2002/02/01 14:43:31  mihad
// *** empty log message ***
//

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on

// module is included for loading output flip - flops by monitoring timing critical GNT pci input
module pci_mas_ad_load_crit
(
    ad_load_out,
    ad_load_in,
    ad_load_on_grant_in,
    pci_gnt_in
);
output ad_load_out ;
input  ad_load_in,
       ad_load_on_grant_in,
       pci_gnt_in ;

assign ad_load_out = ad_load_in || ( ad_load_on_grant_in && !pci_gnt_in ) ;
endmodule

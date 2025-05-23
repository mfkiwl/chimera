// This program was cloned from: https://github.com/FAST-Switch/fast
// License: Apache License 2.0

//Legal Notice: (C)2011 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ps / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

// megafunction wizard: %DDR / DDR2 SDRAM High Performance Controller v10.0%
//GENERATION: XML
//Generated by DDR / DDR2 SDRAM High Performance Controller 10.0
//IPFS_FILES:
//RELATED_FILES:
//<< MEGAWIZARD PARSE FILE DDR10.0
//.
//<< START MEGAWIZARD INSERT MODULE

module ddr2_example_top (
                          // inputs:
                           clock_source,
                           global_reset_n,

                          // outputs:
                           mem_addr,
                           mem_ba,
                           mem_cas_n,
                           mem_cke,
                           mem_clk,
                           mem_clk_n,
                           mem_cs_n,
                           mem_dm,
                           mem_dq,
                           mem_dqs,
                           mem_dqsn,
                           mem_odt,
                           mem_ras_n,
                           mem_we_n,
                           pnf,
                           pnf_per_byte,
                           test_complete,
                           test_status
                        )
;

  output  [ 12: 0] mem_addr;
  output  [  1: 0] mem_ba;
  output           mem_cas_n;
  output  [  0: 0] mem_cke;
  inout   [  0: 0] mem_clk;
  inout   [  0: 0] mem_clk_n;
  output  [  0: 0] mem_cs_n;
  output  [  1: 0] mem_dm;
  inout   [ 15: 0] mem_dq;
  inout   [  1: 0] mem_dqs;
  inout   [  1: 0] mem_dqsn;
  output  [  0: 0] mem_odt;
  output           mem_ras_n;
  output           mem_we_n;
  output           pnf;
  output  [  3: 0] pnf_per_byte;
  output           test_complete;
  output  [  7: 0] test_status;
  input            clock_source;
  input            global_reset_n;

  wire    [  0: 0] cs_n;
  wire             dll_reference_clk_sig;
  wire    [  5: 0] dqs_delay_ctrl_export_sig;
  wire             local_burstbegin_sig;
  wire    [ 12: 0] mem_addr;
  wire             mem_aux_full_rate_clk;
  wire             mem_aux_half_rate_clk;
  wire    [  1: 0] mem_ba;
  wire             mem_cas_n;
  wire    [  0: 0] mem_cke;
  wire    [  0: 0] mem_clk;
  wire    [  0: 0] mem_clk_n;
  wire    [  0: 0] mem_cs_n;
  wire    [  1: 0] mem_dm;
  wire    [ 15: 0] mem_dq;
  wire    [  1: 0] mem_dqs;
  wire    [  1: 0] mem_dqsn;
  wire    [ 23: 0] mem_local_addr;
  wire    [  3: 0] mem_local_be;
  wire    [  9: 0] mem_local_col_addr;
  wire             mem_local_cs_addr;
  wire    [ 31: 0] mem_local_rdata;
  wire             mem_local_rdata_valid;
  wire             mem_local_read_req;
  wire             mem_local_ready;
  wire    [  3: 0] mem_local_size;
  wire    [ 31: 0] mem_local_wdata;
  wire             mem_local_write_req;
  wire    [  0: 0] mem_odt;
  wire             mem_ras_n;
  wire             mem_we_n;
  wire             phy_clk;
  wire             pnf;
  wire    [  3: 0] pnf_per_byte;
  wire             reset_phy_clk_n;
  wire             test_complete;
  wire    [  7: 0] test_status;
  wire             tie_high;
  wire             tie_low;
  //
 
  //
 
  assign mem_cs_n = cs_n;
  //<< END MEGAWIZARD INSERT MODULE

  assign tie_high = 1'b1;
  assign tie_low = 1'b0;
  //<< START MEGAWIZARD INSERT WRAPPER_NAME
  ddr2 ddr2_inst
    (
      .aux_full_rate_clk (mem_aux_full_rate_clk),
      .aux_half_rate_clk (mem_aux_half_rate_clk),
      .dll_reference_clk (dll_reference_clk_sig),
      .dqs_delay_ctrl_export (dqs_delay_ctrl_export_sig),
      .global_reset_n (global_reset_n),
      .local_address (mem_local_addr),
      .local_be (mem_local_be),
      .local_burstbegin (local_burstbegin_sig),
      .local_init_done (),
      .local_rdata (mem_local_rdata),
      .local_rdata_valid (mem_local_rdata_valid),
      .local_read_req (mem_local_read_req),
      .local_ready (mem_local_ready),
      .local_refresh_ack (),
      .local_size (mem_local_size),
      .local_wdata (mem_local_wdata),
      .local_wdata_req (),
      .local_write_req (mem_local_write_req),
      .mem_addr (mem_addr[12 : 0]),
      .mem_ba (mem_ba),
      .mem_cas_n (mem_cas_n),
      .mem_cke (mem_cke),
      .mem_clk (mem_clk),
      .mem_clk_n (mem_clk_n),
      .mem_cs_n (cs_n),
      .mem_dm (mem_dm[1 : 0]),
      .mem_dq (mem_dq),
      .mem_dqs (mem_dqs[1 : 0]),
      .mem_dqsn (mem_dqsn[1 : 0]),
      .mem_odt (mem_odt),
      .mem_ras_n (mem_ras_n),
      .mem_we_n (mem_we_n),
      .phy_clk (phy_clk),
      .pll_ref_clk (clock_source),
      .reset_phy_clk_n (reset_phy_clk_n),
      .reset_request_n (),
      .soft_reset_n (tie_high)
    );


  //<< END MEGAWIZARD INSERT WRAPPER_NAME

  //<< START MEGAWIZARD INSERT CS_ADDR_MAP
  //connect up the column address bits, dropping 1 bits from example driver output because of 2:1 data rate
  assign mem_local_addr[8 : 0] = mem_local_col_addr[9 : 1];

  //<< END MEGAWIZARD INSERT CS_ADDR_MAP

  //<< START MEGAWIZARD INSERT EXAMPLE_DRIVER
  //Self-test, synthesisable code to exercise the DDR SDRAM Controller
  ddr2_example_driver driver
    (
      .clk (phy_clk),
      .local_bank_addr (mem_local_addr[23 : 22]),
      .local_be (mem_local_be),
      .local_burstbegin (local_burstbegin_sig),
      .local_col_addr (mem_local_col_addr),
      .local_cs_addr (mem_local_cs_addr),
      .local_rdata (mem_local_rdata),
      .local_rdata_valid (mem_local_rdata_valid),
      .local_read_req (mem_local_read_req),
      .local_ready (mem_local_ready),
      .local_row_addr (mem_local_addr[21 : 9]),
      .local_size (mem_local_size),
      .local_wdata (mem_local_wdata),
      .local_write_req (mem_local_write_req),
      .pnf_per_byte (pnf_per_byte[3 : 0]),
      .pnf_persist (pnf),
      .reset_n (reset_phy_clk_n),
      .test_complete (test_complete),
      .test_status (test_status)
    );


  //<< END MEGAWIZARD INSERT EXAMPLE_DRIVER

  //<< START MEGAWIZARD INSERT DLL

  //<< END MEGAWIZARD INSERT DLL

  //<< START MEGAWIZARD INSERT BANK_INFORMATION_EXAMPLE

  //<< END MEGAWIZARD INSERT BANK_INFORMATION_EXAMPLE

  //<< start europa

endmodule


// This program was cloned from: https://github.com/Nitcloud/Digital-IDE
// License: GNU General Public License v3.0

// ***************************************************************************
// ***************************************************************************
// Copyright 2014 - 2017 (c) Analog Devices, Inc. All rights reserved.
//
// In this HDL repository, there are many different and unique modules, consisting
// of various HDL (Verilog or VHDL) components. The individual modules are
// developed independently, and may be accompanied by separate and unique license
// terms.
//
// The user should read each of these license terms, and understand the
// freedoms and responsibilities that he or she has by using this source/core.
//
// This core is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE.
//
// Redistribution and use of source or resulting binaries, with or without modification
// of this file, are permitted under one of the following two license terms:
//
//   1. The GNU General Public License version 2 as published by the
//      Free Software Foundation, which can be found in the top level directory
//      of this repository (LICENSE_GPL2), and also online at:
//      <https://www.gnu.org/licenses/old-licenses/gpl-2.0.html>
//
// OR
//
//   2. An ADI specific BSD license, which can be found in the top level directory
//      of this repository (LICENSE_ADIBSD), and also on-line at:
//      https://github.com/analogdevicesinc/hdl/blob/master/LICENSE_ADIBSD
//      This will allow to generate bit files and not release the source code,
//      as long as it attaches to an ADI device.
//
// ***************************************************************************
// ***************************************************************************

`timescale 1ns/100ps

module axi_ad9361_cmos_if #(

  parameter   FPGA_TECHNOLOGY = 0,
  parameter   DAC_IODELAY_ENABLE = 0,
  parameter   IO_DELAY_GROUP = "dev_if_delay_group",
  parameter   CLK_DESKEW = 0,
  parameter   USE_SSI_CLK = 1,
  parameter   DELAY_REFCLK_FREQUENCY = 200) (

  // physical interface (receive)

  input               rx_clk_in,
  input               rx_frame_in,
  input   [11:0]      rx_data_in,

  // physical interface (transmit)

  output              tx_clk_out,
  output              tx_frame_out,
  output  [11:0]      tx_data_out,

  // ensm control

  output              enable,
  output              txnrx,

  // clock (common to both receive and transmit)

  input               rst,
  input               clk,
  output              l_clk,

  // receive data path interface

  output              adc_valid,
  output  [47:0]      adc_data,
  output              adc_status,
  input               adc_r1_mode,
  input               adc_ddr_edgesel,

  // transmit data path interface

  input               dac_valid,
  input   [47:0]      dac_data,
  input               dac_clksel,
  input               dac_r1_mode,

  // tdd interface

  input               tdd_enable,
  input               tdd_txnrx,
  input               tdd_mode,

  // delay interface

  input               mmcm_rst,
  input               up_clk,
  input               up_rstn,
  input               up_enable,
  input               up_txnrx,
  input   [12:0]      up_adc_dld,
  input   [64:0]      up_adc_dwdata,
  output  [64:0]      up_adc_drdata,
  input   [15:0]      up_dac_dld,
  input   [79:0]      up_dac_dwdata,
  output  [79:0]      up_dac_drdata,
  input               delay_clk,
  input               delay_rst,
  output              delay_locked,

  // drp interface

  input               up_drp_sel,
  input               up_drp_wr,
  input   [11:0]      up_drp_addr,
  input   [31:0]      up_drp_wdata,
  output  [31:0]      up_drp_rdata,
  output              up_drp_ready,
  output              up_drp_locked);

  // internal registers

  reg                 adc_r1_mode_n = 'd0;
  reg                 rx_r1_mode = 'd0;
  reg                 rx_locked_m1 = 'd0;
  reg                 rx_locked = 'd0;
  reg     [ 1:0]      rx_frame = 'd0;
  reg     [11:0]      rx_data_1 = 'd0;
  reg                 adc_valid_p = 'd0;
  reg     [47:0]      adc_data_p = 'd0;
  reg                 adc_status_p = 'd0;
  reg                 adc_valid_n = 'd0;
  reg     [47:0]      adc_data_n = 'd0;
  reg                 adc_status_n = 'd0;
  reg                 adc_valid_int = 'd0;
  reg     [47:0]      adc_data_int = 'd0;
  reg                 adc_status_int = 'd0;
  reg     [ 1:0]      tx_clk_p = 'd0;
  reg     [ 1:0]      tx_frame_p = 'd0;
  reg     [11:0]      tx_data_0_p = 'd0;
  reg     [11:0]      tx_data_1_p = 'd0;
  reg     [ 1:0]      tx_clk_n = 'd0;
  reg     [ 1:0]      tx_frame_n = 'd0;
  reg     [11:0]      tx_data_0_n = 'd0;
  reg     [11:0]      tx_data_1_n = 'd0;
  reg     [ 1:0]      tx_clk = 'd0;
  reg     [ 1:0]      tx_frame = 'd0;
  reg     [11:0]      tx_data_0 = 'd0;
  reg     [11:0]      tx_data_1 = 'd0;
  reg                 up_enable_int = 'd0;
  reg                 up_txnrx_int = 'd0;
  reg                 enable_up_m1 = 'd0;
  reg                 txnrx_up_m1 = 'd0;
  reg                 enable_up = 'd0;
  reg                 txnrx_up = 'd0;
  reg                 enable_int = 'd0;
  reg                 txnrx_int = 'd0;
  reg                 enable_int_p = 'd0;
  reg                 txnrx_int_p = 'd0;

  // internal signals

  wire    [11:0]      rx_data_1_s;
  wire    [11:0]      rx_data_0_s;
  wire    [ 1:0]      rx_frame_s;
  wire                locked_s;

  // drp interface signals

  assign up_drp_rdata = 32'd0;
  assign up_drp_ready = 1'd0;
  assign up_drp_locked = 1'd1;

  // r1mode

  generate if (CLK_DESKEW) begin

    reg adc_r1_mode_n = 'd0;

    always @(negedge clk) begin
      adc_r1_mode_n <= adc_r1_mode;
    end

    always @(posedge l_clk) begin
      rx_r1_mode <= adc_r1_mode_n;
    end

  end else begin /* CLK_DESKEW == 0 */

    always @(posedge l_clk) begin
      rx_r1_mode <= adc_r1_mode;
    end

  end
  endgenerate

  // adc-status

  assign delay_locked = locked_s;

  always @(posedge l_clk) begin
    rx_locked_m1 <= locked_s;
    rx_locked <= rx_locked_m1;
  end

  // frame check

  always @(posedge l_clk) begin
    if (rx_r1_mode == 1'd1) begin
      rx_frame <= rx_frame_s;
    end else begin
      rx_frame <= ~rx_frame_s;
    end
  end

  // data hold

  always @(posedge l_clk) begin
    rx_data_1 <= rx_data_1_s;
  end

  // delineation

  always @(posedge l_clk) begin
    case ({rx_r1_mode, rx_frame_s})
      3'b011: begin
        adc_valid_p <= 1'b0;
        adc_data_p[47:24] <= 24'd0;
        adc_data_p[23: 0] <= {rx_data_1_s, rx_data_0_s};
      end
      3'b000: begin
        adc_valid_p <= 1'b1;
        adc_data_p[47:24] <= {rx_data_1_s, rx_data_0_s};
        adc_data_p[23: 0] <= adc_data_p[23:0];
      end
      3'b001: begin
        adc_valid_p <= 1'b0;
        adc_data_p[47:24] <= 24'd0;
        adc_data_p[23: 0] <= {rx_data_0_s, rx_data_1};
      end
      3'b010: begin
        adc_valid_p <= 1'b1;
        adc_data_p[47:24] <= {rx_data_0_s, rx_data_1};
        adc_data_p[23: 0] <= adc_data_p[23:0];
      end
      3'b110: begin
        adc_valid_p <= 1'b1;
        adc_data_p[47:24] <= 24'd0;
        adc_data_p[23: 0] <= {rx_data_0_s, rx_data_1};
      end
      3'b101: begin
        adc_valid_p <= 1'b1;
        adc_data_p[47:24] <= 24'd0;
        adc_data_p[23: 0] <= {rx_data_1_s, rx_data_0_s};
      end
      default: begin
        adc_valid_p <= 1'b0;
        adc_data_p <= 48'd0;
      end
    endcase
  end

  // adc-status

  always @(posedge l_clk) begin
    if (rx_frame == rx_frame_s) begin
      adc_status_p <= rx_locked;
    end else begin
      adc_status_p <= 1'b0;
    end
  end

  // transfer to common clock

  generate if (CLK_DESKEW) begin

    reg         adc_valid_n = 'd0;
    reg [47:0]  adc_data_n = 'd0;
    reg         adc_status_n = 'd0;

    always @(negedge l_clk) begin
      adc_valid_n <= adc_valid_p;
      adc_data_n <= adc_data_p;
      adc_status_n <= adc_status_p;
    end

    always @(posedge clk) begin
      adc_valid_int <= adc_valid_n;
      adc_data_int <= adc_data_n;
      adc_status_int <= adc_status_n;
    end

    assign adc_valid = adc_valid_int;
    assign adc_data = adc_data_int;
    assign adc_status = adc_status_int;

  end else begin /* CLK_DESKEW == 0 */

    always @(posedge clk) begin
      adc_valid_int <= adc_valid_p;
      adc_data_int <= adc_data_p;
      adc_status_int <= adc_status_p;
    end

    assign adc_valid = adc_valid_int;
    assign adc_data = adc_data_int;
    assign adc_status = adc_status_int;

  end
  endgenerate

  // dac-tx interface

  always @(posedge clk) begin
    tx_clk_p <= {~dac_clksel, dac_clksel};
  end

  always @(posedge clk) begin
    case ({dac_r1_mode, dac_valid})
      3'b00: begin
        tx_frame_p <= 2'b00;
        tx_data_0_p <= dac_data[35:24];
        tx_data_1_p <= dac_data[47:36];
      end
      2'b01: begin
        tx_frame_p <= 2'b11;
        tx_data_0_p <= dac_data[11:0];
        tx_data_1_p <= dac_data[23:12];
      end
      2'b11: begin
        tx_frame_p <= 2'b01;
        tx_data_0_p <= dac_data[11:0];
        tx_data_1_p <= dac_data[23:12];
      end
      default: begin
        tx_frame_p <= 2'd0;
        tx_data_0_p <= 12'd0;
        tx_data_1_p <= 12'd0;
      end
    endcase
  end

  // transfer to local clock

  generate if (CLK_DESKEW) begin

    reg [ 1:0]  tx_clk_n = 'd0;
    reg         tx_frame_n = 'd0;
    reg [ 5:0]  tx_data_0_n = 'd0;
    reg [ 5:0]  tx_data_1_n = 'd0;

    always @(negedge clk) begin
      tx_clk_n <= tx_clk_p;
      tx_frame_n <= tx_frame_p;
      tx_data_0_n <= tx_data_0_p;
      tx_data_1_n <= tx_data_1_p;
    end

    always @(posedge l_clk) begin
      tx_clk <= tx_clk_n;
      tx_frame <= tx_frame_n;
      tx_data_0 <= tx_data_0_n;
      tx_data_1 <= tx_data_1_n;
    end

  end else begin /* CLK_DESKEW == 0 */

    always @(posedge l_clk) begin
      tx_clk <= tx_clk_p;
      tx_frame <= tx_frame_p;
      tx_data_0 <= tx_data_0_p;
      tx_data_1 <= tx_data_1_p;
    end

  end
  endgenerate

  // tdd/ensm control

  always @(posedge up_clk) begin
    up_enable_int <= up_enable;
    up_txnrx_int <= up_txnrx;
  end

  always @(posedge clk or posedge rst) begin
    if (rst == 1'b1) begin
      enable_up_m1 <= 1'b0;
      txnrx_up_m1 <= 1'b0;
      enable_up <= 1'b0;
      txnrx_up <= 1'b0;
    end else begin
      enable_up_m1 <= up_enable_int;
      txnrx_up_m1 <= up_txnrx_int;
      enable_up <= enable_up_m1;
      txnrx_up <= txnrx_up_m1;
    end
  end

  always @(posedge clk) begin
    if (tdd_mode == 1'b1) begin
      enable_int <= tdd_enable;
      txnrx_int <= tdd_txnrx;
    end else begin
      enable_int <= enable_up;
      txnrx_int <= txnrx_up;
    end
  end

  generate if (CLK_DESKEW) begin

    reg enable_int_n = 'd0;
    reg txnrx_int_n = 'd0;

    always @(negedge clk) begin
      enable_int_n <= enable_int;
      txnrx_int_n <= txnrx_int;
    end

    always @(posedge l_clk) begin
      enable_int_p <= enable_int_n;
      txnrx_int_p <= txnrx_int_n;
    end

  end else begin /* CLK_DESKEW == 0 */

    always @(posedge l_clk) begin
      enable_int_p <= enable_int;
      txnrx_int_p <= txnrx_int;
    end

  end
  endgenerate

  // receive data interface, ibuf -> idelay -> iddr

  genvar i;
  generate
  for (i = 0; i < 12; i = i + 1) begin: g_rx_data
  ad_data_in #(
    .SINGLE_ENDED (1),
    .FPGA_TECHNOLOGY (FPGA_TECHNOLOGY),
    .IODELAY_CTRL (0),
    .IODELAY_GROUP (IO_DELAY_GROUP),
    .REFCLK_FREQUENCY (DELAY_REFCLK_FREQUENCY))
  i_rx_data (
    .rx_clk (l_clk),
    .rx_data_in_p (rx_data_in[i]),
    .rx_data_in_n (1'd0),
    .rx_data_p (rx_data_1_s[i]),
    .rx_data_n (rx_data_0_s[i]),
    .up_clk (up_clk),
    .up_dld (up_adc_dld[i]),
    .up_dwdata (up_adc_dwdata[((i*5)+4):(i*5)]),
    .up_drdata (up_adc_drdata[((i*5)+4):(i*5)]),
    .delay_clk (delay_clk),
    .delay_rst (delay_rst),
    .delay_locked ());
  end
  endgenerate

  // receive frame interface, ibuf -> idelay -> iddr

  ad_data_in #(
    .SINGLE_ENDED (1),
    .FPGA_TECHNOLOGY (FPGA_TECHNOLOGY),
    .IODELAY_CTRL (1),
    .IODELAY_GROUP (IO_DELAY_GROUP),
    .REFCLK_FREQUENCY (DELAY_REFCLK_FREQUENCY))
  i_rx_frame (
    .rx_clk (l_clk),
    .rx_data_in_p (rx_frame_in),
    .rx_data_in_n (1'd0),
    .rx_data_p (rx_frame_s[1]),
    .rx_data_n (rx_frame_s[0]),
    .up_clk (up_clk),
    .up_dld (up_adc_dld[12]),
    .up_dwdata (up_adc_dwdata[64:60]),
    .up_drdata (up_adc_drdata[64:60]),
    .delay_clk (delay_clk),
    .delay_rst (delay_rst),
    .delay_locked (locked_s));

  // transmit data interface, oddr -> obuf

  generate
  for (i = 0; i < 12; i = i + 1) begin: g_tx_data
  ad_data_out #(
    .SINGLE_ENDED (1),
    .FPGA_TECHNOLOGY (FPGA_TECHNOLOGY),
    .IODELAY_ENABLE (DAC_IODELAY_ENABLE),
    .IODELAY_CTRL (0),
    .IODELAY_GROUP (IO_DELAY_GROUP),
    .REFCLK_FREQUENCY (DELAY_REFCLK_FREQUENCY))
  i_tx_data (
    .tx_clk (l_clk),
    .tx_data_p (tx_data_1[i]),
    .tx_data_n (tx_data_0[i]),
    .tx_data_out_p (tx_data_out[i]),
    .tx_data_out_n (),
    .up_clk (up_clk),
    .up_dld (up_dac_dld[i]),
    .up_dwdata (up_dac_dwdata[((i*5)+4):(i*5)]),
    .up_drdata (up_dac_drdata[((i*5)+4):(i*5)]),
    .delay_clk (delay_clk),
    .delay_rst (delay_rst),
    .delay_locked ());
  end
  endgenerate

  // transmit frame interface, oddr -> obuf

  ad_data_out #(
    .SINGLE_ENDED (1),
    .FPGA_TECHNOLOGY (FPGA_TECHNOLOGY),
    .IODELAY_ENABLE (DAC_IODELAY_ENABLE),
    .IODELAY_CTRL (0),
    .IODELAY_GROUP (IO_DELAY_GROUP),
    .REFCLK_FREQUENCY (DELAY_REFCLK_FREQUENCY))
  i_tx_frame (
    .tx_clk (l_clk),
    .tx_data_p (tx_frame[1]),
    .tx_data_n (tx_frame[0]),
    .tx_data_out_p (tx_frame_out),
    .tx_data_out_n (),
    .up_clk (up_clk),
    .up_dld (up_dac_dld[12]),
    .up_dwdata (up_dac_dwdata[64:60]),
    .up_drdata (up_dac_drdata[64:60]),
    .delay_clk (delay_clk),
    .delay_rst (delay_rst),
    .delay_locked ());

  // transmit clock interface, oddr -> obuf

  ad_data_out #(
    .SINGLE_ENDED (1),
    .FPGA_TECHNOLOGY (FPGA_TECHNOLOGY),
    .IODELAY_ENABLE (DAC_IODELAY_ENABLE),
    .IODELAY_CTRL (0),
    .IODELAY_GROUP (IO_DELAY_GROUP),
    .REFCLK_FREQUENCY (DELAY_REFCLK_FREQUENCY))
  i_tx_clk (
    .tx_clk (l_clk),
    .tx_data_p (tx_clk[1]),
    .tx_data_n (tx_clk[0]),
    .tx_data_out_p (tx_clk_out),
    .tx_data_out_n (),
    .up_clk (up_clk),
    .up_dld (up_dac_dld[13]),
    .up_dwdata (up_dac_dwdata[69:65]),
    .up_drdata (up_dac_drdata[69:65]),
    .delay_clk (delay_clk),
    .delay_rst (delay_rst),
    .delay_locked ());

  // enable, oddr -> obuf

  ad_data_out #(
    .SINGLE_ENDED (1),
    .FPGA_TECHNOLOGY (FPGA_TECHNOLOGY),
    .IODELAY_ENABLE (DAC_IODELAY_ENABLE),
    .IODELAY_CTRL (0),
    .IODELAY_GROUP (IO_DELAY_GROUP),
    .REFCLK_FREQUENCY (DELAY_REFCLK_FREQUENCY))
  i_enable (
    .tx_clk (l_clk),
    .tx_data_p (enable_int_p),
    .tx_data_n (enable_int_p),
    .tx_data_out_p (enable),
    .tx_data_out_n (),
    .up_clk (up_clk),
    .up_dld (up_dac_dld[14]),
    .up_dwdata (up_dac_dwdata[74:70]),
    .up_drdata (up_dac_drdata[74:70]),
    .delay_clk (delay_clk),
    .delay_rst (delay_rst),
    .delay_locked ());

  // txnrx, oddr -> obuf

  ad_data_out #(
    .SINGLE_ENDED (1),
    .FPGA_TECHNOLOGY (FPGA_TECHNOLOGY),
    .IODELAY_ENABLE (DAC_IODELAY_ENABLE),
    .IODELAY_CTRL (0),
    .IODELAY_GROUP (IO_DELAY_GROUP),
    .REFCLK_FREQUENCY (DELAY_REFCLK_FREQUENCY))
  i_txnrx (
    .tx_clk (l_clk),
    .tx_data_p (txnrx_int_p),
    .tx_data_n (txnrx_int_p),
    .tx_data_out_p (txnrx),
    .tx_data_out_n (),
    .up_clk (up_clk),
    .up_dld (up_dac_dld[15]),
    .up_dwdata (up_dac_dwdata[79:75]),
    .up_drdata (up_dac_drdata[79:75]),
    .delay_clk (delay_clk),
    .delay_rst (delay_rst),
    .delay_locked ());

  // device clock interface (receive clock)

  generate if (USE_SSI_CLK == 1) begin
  ad_data_clk #(
    .SINGLE_ENDED (1))
  i_clk (
    .rst (1'd0),
    .locked (),
    .clk_in_p (rx_clk_in),
    .clk_in_n (1'd0),
    .clk (l_clk));
  end else begin
    assign l_clk = clk;
  end
  endgenerate

endmodule

// ***************************************************************************
// ***************************************************************************

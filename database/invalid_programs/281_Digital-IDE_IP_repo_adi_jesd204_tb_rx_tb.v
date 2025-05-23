// This program was cloned from: https://github.com/Nitcloud/Digital-IDE
// License: GNU General Public License v3.0

//
// The ADI JESD204 Core is released under the following license, which is
// different than all other HDL cores in this repository.
//
// Please read this, and understand the freedoms and responsibilities you have
// by using this source code/core.
//
// The JESD204 HDL, is copyright © 2016-2017 Analog Devices Inc.
//
// This core is free software, you can use run, copy, study, change, ask
// questions about and improve this core. Distribution of source, or resulting
// binaries (including those inside an FPGA or ASIC) require you to release the
// source of the entire project (excluding the system libraries provide by the
// tools/compiler/FPGA vendor). These are the terms of the GNU General Public
// License version 2 as published by the Free Software Foundation.
//
// This core  is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE. See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License version 2
// along with this source code, and binary.  If not, see
// <http://www.gnu.org/licenses/>.
//
// Commercial licenses (with commercial support) of this JESD204 core are also
// available under terms different than the General Public License. (e.g. they
// do not require you to accompany any image (FPGA or ASIC) using the JESD204
// core with any corresponding source code.) For these alternate terms you must
// purchase a license from Analog Devices Technology Licensing Office. Users
// interested in such a license should contact jesd204-licensing@analog.com for
// more information. This commercial license is sub-licensable (if you purchase
// chips from Analog Devices, incorporate them into your PCB level product, and
// purchase a JESD204 license, end users of your product will also have a
// license to use this core in a commercial setting without releasing their
// source code).
//
// In addition, we kindly ask you to acknowledge ADI in any program, application
// or publication in which you use this JESD204 HDL core. (You are not required
// to do so; it is up to your common sense to decide whether you want to comply
// with this request or not.) For general publications, we suggest referencing :
// “The design and implementation of the JESD204 HDL Core used in this project
// is copyright © 2016-2017, Analog Devices, Inc.”
//

`timescale 1ns/100ps

module rx_tb;
  parameter VCD_FILE = "rx_tb.vcd";
  parameter NUM_LANES = 1;
  parameter NUM_LINKS = 1;
  parameter OCTETS_PER_FRAME = 8;
  parameter FRAMES_PER_MULTIFRAME = 32;

  `include "tb_base.v"

  integer phy_reset_counter = 'h00;
  integer align_counter = 'h00;

  reg phy_ready = 1'b0;
  reg aligned = 1'b0;

  wire en_align;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      phy_reset_counter <= 'h00;
      phy_ready <= 1'b0;
    end else begin
      if (phy_reset_counter == 'h40) begin
        phy_ready <= 1'b1;
      end else begin
        phy_reset_counter <= phy_reset_counter + 1'b1;
      end
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      aligned <= 1'b0;
      align_counter <= 'h00;
    end else if (phy_ready == 1'b1) begin
      if (en_align == 1'b1) begin
        if (align_counter == 'h20) begin
          aligned <= 1'b1;
        end else begin
          align_counter <= align_counter + 1;
        end
      end
    end
  end

  localparam KCHAR_ILAS_START = {3'd0,5'd28};
  localparam KCHAR_LANE_ALIGN = {3'd3,5'd28};
  localparam KCHAR_ILAS_CONFIG = {3'd4,5'd28};
  localparam KCHAR_CGS = {3'd5,5'd28};
  localparam KCHAR_FRAME_ALIGN = {3'd7,5'd28};

  reg [31:0] data = KCHAR_CGS;
  reg [3:0] charisk = 4'b1111;
  reg [3:0] disperr = 4'b0000;
  reg [3:0] notintable = 4'b0000;
  wire [NUM_LINKS-1:0] sync;

  integer counter = 'h00;
  wire [31:0] counter2 = (counter - 'h10) * 4;

  always @(posedge clk) begin
    if ( &sync == 1'b0 ) begin
      counter <= 'h00;
      charisk <= 4'b1111;
      data <= {KCHAR_CGS,KCHAR_CGS,KCHAR_CGS,KCHAR_CGS};
    end else begin
      counter <= counter + 1;
      if (counter >= 'h8 && counter < 'h28) begin
        if (counter % 'h8 == 'h0) begin
          if (counter != 'h10) begin
            data <= {24'h00,KCHAR_ILAS_START};
            charisk <= 4'b0001;
          end else begin
            data <= {16'hffaa,KCHAR_ILAS_CONFIG,KCHAR_ILAS_START};
            charisk <= 4'b0011;
          end
        end else if (counter % 'h8 == 'h7) begin
          data <= {KCHAR_LANE_ALIGN,24'h00};
          charisk <= 4'b1000;
        end else begin
          data <= {32'h00};
          charisk <= 4'b0000;
        end
      end else if (counter > 'h10) begin
        data <= (counter2 + 'h2) << 24 |
            (counter2 + 'h1) << 16 |
            (counter2 + 'h0) << 8 |
            (counter2 - 'h1);
        charisk <= 4'b0000;
      end
    end
  end

  wire [NUM_LANES-1:0] cfg_lanes_disable;
  wire [NUM_LINKS-1:0] cfg_links_disable;
  wire [7:0] cfg_beats_per_multiframe;
  wire [7:0] cfg_octets_per_frame;
  wire [7:0] cfg_lmfc_offset;
  wire cfg_sysref_oneshot;
  wire cfg_sysref_disable;
  wire cfg_disable_scrambler;
  wire cfg_buffer_early_release;

  always @(posedge clk) begin
    if ($urandom % 400 == 0)
      disperr <= 4'b1111;
    else if ($urandom % 400 == 1)
      disperr <= 4'b0001;
    else if ($urandom % 400 == 2)
      disperr <= 4'b0011;
    else if ($urandom % 400 == 3)
      disperr <= 4'b0111;
    else
      disperr <= 4'b0000;
  end
  wire [NUM_LANES*32-1:0] status_err_statistics_cnt;

  jesd204_rx_static_config #(
    .NUM_LANES(NUM_LANES),
    .NUM_LINKS(NUM_LINKS),
    .OCTETS_PER_FRAME(OCTETS_PER_FRAME),
    .FRAMES_PER_MULTIFRAME(FRAMES_PER_MULTIFRAME)
  ) i_cfg (
    .clk(clk),

    .cfg_lanes_disable(cfg_lanes_disable),
    .cfg_links_disable(cfg_links_disable),
    .cfg_beats_per_multiframe(cfg_beats_per_multiframe),
    .cfg_octets_per_frame(cfg_octets_per_frame),
    .cfg_lmfc_offset(cfg_lmfc_offset),
    .cfg_sysref_oneshot(cfg_sysref_oneshot),
    .cfg_sysref_disable(cfg_sysref_disable),
    .cfg_disable_scrambler(cfg_disable_scrambler),
    .cfg_buffer_early_release(cfg_buffer_early_release)
  );

  jesd204_rx #(
    .NUM_LANES(NUM_LANES),
    .NUM_LINKS(NUM_LINKS)
  ) i_rx (
    .clk(clk),
    .reset(reset),

    .cfg_lanes_disable(cfg_lanes_disable),
    .cfg_links_disable(cfg_links_disable),
    .cfg_beats_per_multiframe(cfg_beats_per_multiframe),
    .cfg_octets_per_frame(cfg_octets_per_frame),
    .cfg_lmfc_offset(cfg_lmfc_offset),
    .cfg_sysref_oneshot(cfg_sysref_oneshot),
    .cfg_sysref_disable(cfg_sysref_disable),
    .cfg_disable_scrambler(cfg_disable_scrambler),
    .cfg_buffer_early_release(cfg_buffer_early_release),

    .ctrl_err_statistics_reset(1'b0),
    .ctrl_err_statistics_mask(3'h7),

    .status_err_statistics_cnt(status_err_statistics_cnt),

    .phy_en_char_align(en_align),

    .phy_data({NUM_LANES{data}}),
    .phy_charisk({NUM_LANES{charisk}}),
    .phy_notintable({NUM_LANES{notintable}}),
    .phy_disperr({NUM_LANES{disperr}}),
    .sync(sync),
    .sysref(sysref)
  );

endmodule

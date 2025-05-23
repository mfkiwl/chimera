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

module scrambler_tb;
  parameter VCD_FILE = "scrambler_tb.vcd";

  `include "tb_base.v"

  reg [31:0] data_in;
  reg [31:0] data_out_expected;
  wire [31:0] data_scrambled;
  wire [31:0] data_out;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      data_in <= 'h03020100;
    end else begin
      data_in <= data_in + {4{8'h04}};
    end
  end

  jesd204_scrambler #(
    .DESCRAMBLE(0)
  ) i_scrambler (
    .clk(clk),
    .reset(reset),
    .enable(1'b1),
    .data_in(data_in),
    .data_out(data_scrambled)
  );

  jesd204_scrambler #(
    .DESCRAMBLE(1)
  ) i_descrambler (
    .clk(clk),
    .reset(reset),
    .enable(1'b1),
    .data_in(data_scrambled),
    .data_out(data_out)
  );

  always @(posedge clk) begin
    if (data_in != data_out && failed == 1'b0) begin
      failed <= 1'b1;
    end
  end

endmodule

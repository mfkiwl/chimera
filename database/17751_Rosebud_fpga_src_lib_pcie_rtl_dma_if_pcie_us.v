// This program was cloned from: https://github.com/ucsdsysnet/Rosebud
// License: MIT License

/*

Copyright (c) 2019-2021 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * Ultrascale PCIe DMA interface
 */
module dma_if_pcie_us #
(
    // Width of PCIe AXI stream interfaces in bits
    parameter AXIS_PCIE_DATA_WIDTH = 256,
    // PCIe AXI stream tkeep signal width (words per cycle)
    parameter AXIS_PCIE_KEEP_WIDTH = (AXIS_PCIE_DATA_WIDTH/32),
    // PCIe AXI stream RC tuser signal width
    parameter AXIS_PCIE_RC_USER_WIDTH = AXIS_PCIE_DATA_WIDTH < 512 ? 75 : 161,
    // PCIe AXI stream RQ tuser signal width
    parameter AXIS_PCIE_RQ_USER_WIDTH = AXIS_PCIE_DATA_WIDTH < 512 ? 60 : 137,
    // RQ sequence number width
    parameter RQ_SEQ_NUM_WIDTH = AXIS_PCIE_RQ_USER_WIDTH == 60 ? 4 : 6,
    // RQ sequence number tracking enable
    parameter RQ_SEQ_NUM_ENABLE = 0,
    // RAM select width
    parameter RAM_SEL_WIDTH = 2,
    // RAM address width
    parameter RAM_ADDR_WIDTH = 16,
    // RAM segment count
    parameter SEG_COUNT = AXIS_PCIE_DATA_WIDTH > 64 ? AXIS_PCIE_DATA_WIDTH*2 / 128 : 2,
    // RAM segment data width
    parameter SEG_DATA_WIDTH = AXIS_PCIE_DATA_WIDTH*2/SEG_COUNT,
    // RAM segment byte enable width
    parameter SEG_BE_WIDTH = SEG_DATA_WIDTH/8,
    // RAM segment address width
    parameter SEG_ADDR_WIDTH = RAM_ADDR_WIDTH-$clog2(SEG_COUNT*SEG_BE_WIDTH),
    // PCIe address width
    parameter PCIE_ADDR_WIDTH = 64,
    // PCIe tag count
    parameter PCIE_TAG_COUNT = AXIS_PCIE_RQ_USER_WIDTH == 60 ? 64 : 256,
    // Length field width
    parameter LEN_WIDTH = 16,
    // Tag field width
    parameter TAG_WIDTH = 8,
    // Operation table size (read)
    parameter READ_OP_TABLE_SIZE = PCIE_TAG_COUNT,
    // In-flight transmit limit (read)
    parameter READ_TX_LIMIT = 2**(RQ_SEQ_NUM_WIDTH-1),
    // Transmit flow control (read)
    parameter READ_TX_FC_ENABLE = 0,
    // Operation table size (write)
    parameter WRITE_OP_TABLE_SIZE = 2**(RQ_SEQ_NUM_WIDTH-1),
    // In-flight transmit limit (write)
    parameter WRITE_TX_LIMIT = 2**(RQ_SEQ_NUM_WIDTH-1),
    // Transmit flow control (write)
    parameter WRITE_TX_FC_ENABLE = 0
)
(
    input  wire                                 clk,
    input  wire                                 rst,

    /*
     * AXI input (RC)
     */
    input  wire [AXIS_PCIE_DATA_WIDTH-1:0]      s_axis_rc_tdata,
    input  wire [AXIS_PCIE_KEEP_WIDTH-1:0]      s_axis_rc_tkeep,
    input  wire                                 s_axis_rc_tvalid,
    output wire                                 s_axis_rc_tready,
    input  wire                                 s_axis_rc_tlast,
    input  wire [AXIS_PCIE_RC_USER_WIDTH-1:0]   s_axis_rc_tuser,

    /*
     * AXI output (RQ)
     */
    output wire [AXIS_PCIE_DATA_WIDTH-1:0]      m_axis_rq_tdata,
    output wire [AXIS_PCIE_KEEP_WIDTH-1:0]      m_axis_rq_tkeep,
    output wire                                 m_axis_rq_tvalid,
    input  wire                                 m_axis_rq_tready,
    output wire                                 m_axis_rq_tlast,
    output wire [AXIS_PCIE_RQ_USER_WIDTH-1:0]   m_axis_rq_tuser,

    /*
     * Transmit sequence number input
     */
    input  wire [RQ_SEQ_NUM_WIDTH-1:0]          s_axis_rq_seq_num_0,
    input  wire                                 s_axis_rq_seq_num_valid_0,
    input  wire [RQ_SEQ_NUM_WIDTH-1:0]          s_axis_rq_seq_num_1,
    input  wire                                 s_axis_rq_seq_num_valid_1,

    /*
     * Transmit flow control
     */
    input  wire [7:0]                           pcie_tx_fc_nph_av,
    input  wire [7:0]                           pcie_tx_fc_ph_av,
    input  wire [11:0]                          pcie_tx_fc_pd_av,

    /*
     * AXI read descriptor input
     */
    input  wire [PCIE_ADDR_WIDTH-1:0]           s_axis_read_desc_pcie_addr,
    input  wire [RAM_SEL_WIDTH-1:0]             s_axis_read_desc_ram_sel,
    input  wire [RAM_ADDR_WIDTH-1:0]            s_axis_read_desc_ram_addr,
    input  wire [LEN_WIDTH-1:0]                 s_axis_read_desc_len,
    input  wire [TAG_WIDTH-1:0]                 s_axis_read_desc_tag,
    input  wire                                 s_axis_read_desc_valid,
    output wire                                 s_axis_read_desc_ready,

    /*
     * AXI read descriptor status output
     */
    output wire [TAG_WIDTH-1:0]                 m_axis_read_desc_status_tag,
    output wire [3:0]                           m_axis_read_desc_status_error,
    output wire                                 m_axis_read_desc_status_valid,

    /*
     * AXI write descriptor input
     */
    input  wire [PCIE_ADDR_WIDTH-1:0]           s_axis_write_desc_pcie_addr,
    input  wire [RAM_SEL_WIDTH-1:0]             s_axis_write_desc_ram_sel,
    input  wire [RAM_ADDR_WIDTH-1:0]            s_axis_write_desc_ram_addr,
    input  wire [LEN_WIDTH-1:0]                 s_axis_write_desc_len,
    input  wire [TAG_WIDTH-1:0]                 s_axis_write_desc_tag,
    input  wire                                 s_axis_write_desc_valid,
    output wire                                 s_axis_write_desc_ready,

    /*
     * AXI write descriptor status output
     */
    output wire [TAG_WIDTH-1:0]                 m_axis_write_desc_status_tag,
    output wire [3:0]                           m_axis_write_desc_status_error,
    output wire                                 m_axis_write_desc_status_valid,

    /*
     * RAM interface
     */
    output wire [SEG_COUNT*RAM_SEL_WIDTH-1:0]   ram_wr_cmd_sel,
    output wire [SEG_COUNT*SEG_BE_WIDTH-1:0]    ram_wr_cmd_be,
    output wire [SEG_COUNT*SEG_ADDR_WIDTH-1:0]  ram_wr_cmd_addr,
    output wire [SEG_COUNT*SEG_DATA_WIDTH-1:0]  ram_wr_cmd_data,
    output wire [SEG_COUNT-1:0]                 ram_wr_cmd_valid,
    input  wire [SEG_COUNT-1:0]                 ram_wr_cmd_ready,
    input  wire [SEG_COUNT-1:0]                 ram_wr_done,
    output wire [SEG_COUNT*RAM_SEL_WIDTH-1:0]   ram_rd_cmd_sel,
    output wire [SEG_COUNT*SEG_ADDR_WIDTH-1:0]  ram_rd_cmd_addr,
    output wire [SEG_COUNT-1:0]                 ram_rd_cmd_valid,
    input  wire [SEG_COUNT-1:0]                 ram_rd_cmd_ready,
    input  wire [SEG_COUNT*SEG_DATA_WIDTH-1:0]  ram_rd_resp_data,
    input  wire [SEG_COUNT-1:0]                 ram_rd_resp_valid,
    output wire [SEG_COUNT-1:0]                 ram_rd_resp_ready,

    /*
     * Configuration
     */
    input  wire                                 read_enable,
    input  wire                                 write_enable,
    input  wire                                 ext_tag_enable,
    input  wire [15:0]                          requester_id,
    input  wire                                 requester_id_enable,
    input  wire [2:0]                           max_read_request_size,
    input  wire [2:0]                           max_payload_size,

    /*
     * Status
     */
    output wire                                 status_error_cor,
    output wire                                 status_error_uncor
);

wire [AXIS_PCIE_DATA_WIDTH-1:0]    axis_rq_tdata_read;
wire [AXIS_PCIE_KEEP_WIDTH-1:0]    axis_rq_tkeep_read;
wire                               axis_rq_tvalid_read;
wire                               axis_rq_tready_read;
wire                               axis_rq_tlast_read;
wire [AXIS_PCIE_RQ_USER_WIDTH-1:0] axis_rq_tuser_read;

wire [RQ_SEQ_NUM_WIDTH-1:0]        axis_rq_seq_num_read_0;
wire                               axis_rq_seq_num_valid_read_0;
wire [RQ_SEQ_NUM_WIDTH-1:0]        axis_rq_seq_num_read_1;
wire                               axis_rq_seq_num_valid_read_1;

dma_if_pcie_us_rd #(
    .AXIS_PCIE_DATA_WIDTH(AXIS_PCIE_DATA_WIDTH),
    .AXIS_PCIE_KEEP_WIDTH(AXIS_PCIE_KEEP_WIDTH),
    .AXIS_PCIE_RC_USER_WIDTH(AXIS_PCIE_RC_USER_WIDTH),
    .AXIS_PCIE_RQ_USER_WIDTH(AXIS_PCIE_RQ_USER_WIDTH),
    .RQ_SEQ_NUM_WIDTH(RQ_SEQ_NUM_WIDTH),
    .RQ_SEQ_NUM_ENABLE(RQ_SEQ_NUM_ENABLE),
    .RAM_SEL_WIDTH(RAM_SEL_WIDTH),
    .RAM_ADDR_WIDTH(RAM_ADDR_WIDTH),
    .SEG_COUNT(SEG_COUNT),
    .SEG_DATA_WIDTH(SEG_DATA_WIDTH),
    .SEG_BE_WIDTH(SEG_BE_WIDTH),
    .SEG_ADDR_WIDTH(SEG_ADDR_WIDTH),
    .PCIE_ADDR_WIDTH(PCIE_ADDR_WIDTH),
    .PCIE_TAG_COUNT(PCIE_TAG_COUNT),
    .LEN_WIDTH(LEN_WIDTH),
    .TAG_WIDTH(TAG_WIDTH),
    .OP_TABLE_SIZE(READ_OP_TABLE_SIZE),
    .TX_LIMIT(READ_TX_LIMIT),
    .TX_FC_ENABLE(READ_TX_FC_ENABLE)
)
dma_if_pcie_us_rd_inst (
    .clk(clk),
    .rst(rst),

    /*
     * AXI input (RC)
     */
    .s_axis_rc_tdata(s_axis_rc_tdata),
    .s_axis_rc_tkeep(s_axis_rc_tkeep),
    .s_axis_rc_tvalid(s_axis_rc_tvalid),
    .s_axis_rc_tready(s_axis_rc_tready),
    .s_axis_rc_tlast(s_axis_rc_tlast),
    .s_axis_rc_tuser(s_axis_rc_tuser),

    /*
     * AXI output (RQ)
     */
    .m_axis_rq_tdata(axis_rq_tdata_read),
    .m_axis_rq_tkeep(axis_rq_tkeep_read),
    .m_axis_rq_tvalid(axis_rq_tvalid_read),
    .m_axis_rq_tready(axis_rq_tready_read),
    .m_axis_rq_tlast(axis_rq_tlast_read),
    .m_axis_rq_tuser(axis_rq_tuser_read),

    /*
     * Transmit sequence number input
     */
    .s_axis_rq_seq_num_0(axis_rq_seq_num_read_0),
    .s_axis_rq_seq_num_valid_0(axis_rq_seq_num_valid_read_0),
    .s_axis_rq_seq_num_1(axis_rq_seq_num_read_1),
    .s_axis_rq_seq_num_valid_1(axis_rq_seq_num_valid_read_1),

    /*
     * Transmit flow control
     */
    .pcie_tx_fc_nph_av(pcie_tx_fc_nph_av),

    /*
     * AXI read descriptor input
     */
    .s_axis_read_desc_pcie_addr(s_axis_read_desc_pcie_addr),
    .s_axis_read_desc_ram_sel(s_axis_read_desc_ram_sel),
    .s_axis_read_desc_ram_addr(s_axis_read_desc_ram_addr),
    .s_axis_read_desc_len(s_axis_read_desc_len),
    .s_axis_read_desc_tag(s_axis_read_desc_tag),
    .s_axis_read_desc_valid(s_axis_read_desc_valid),
    .s_axis_read_desc_ready(s_axis_read_desc_ready),

    /*
     * AXI read descriptor status output
     */
    .m_axis_read_desc_status_tag(m_axis_read_desc_status_tag),
    .m_axis_read_desc_status_error(m_axis_read_desc_status_error),
    .m_axis_read_desc_status_valid(m_axis_read_desc_status_valid),

    /*
     * RAM interface
     */
    .ram_wr_cmd_sel(ram_wr_cmd_sel),
    .ram_wr_cmd_be(ram_wr_cmd_be),
    .ram_wr_cmd_addr(ram_wr_cmd_addr),
    .ram_wr_cmd_data(ram_wr_cmd_data),
    .ram_wr_cmd_valid(ram_wr_cmd_valid),
    .ram_wr_cmd_ready(ram_wr_cmd_ready),
    .ram_wr_done(ram_wr_done),

    /*
     * Configuration
     */
    .enable(read_enable),
    .ext_tag_enable(ext_tag_enable),
    .requester_id(requester_id),
    .requester_id_enable(requester_id_enable),
    .max_read_request_size(max_read_request_size),

    /*
     * Status
     */
    .status_error_cor(status_error_cor),
    .status_error_uncor(status_error_uncor)
);

dma_if_pcie_us_wr #(
    .AXIS_PCIE_DATA_WIDTH(AXIS_PCIE_DATA_WIDTH),
    .AXIS_PCIE_KEEP_WIDTH(AXIS_PCIE_KEEP_WIDTH),
    .AXIS_PCIE_RQ_USER_WIDTH(AXIS_PCIE_RQ_USER_WIDTH),
    .RQ_SEQ_NUM_WIDTH(RQ_SEQ_NUM_WIDTH),
    .RQ_SEQ_NUM_ENABLE(RQ_SEQ_NUM_ENABLE),
    .RAM_SEL_WIDTH(RAM_SEL_WIDTH),
    .RAM_ADDR_WIDTH(RAM_ADDR_WIDTH),
    .SEG_COUNT(SEG_COUNT),
    .SEG_DATA_WIDTH(SEG_DATA_WIDTH),
    .SEG_BE_WIDTH(SEG_BE_WIDTH),
    .SEG_ADDR_WIDTH(SEG_ADDR_WIDTH),
    .PCIE_ADDR_WIDTH(PCIE_ADDR_WIDTH),
    .LEN_WIDTH(LEN_WIDTH),
    .TAG_WIDTH(TAG_WIDTH),
    .OP_TABLE_SIZE(WRITE_OP_TABLE_SIZE),
    .TX_LIMIT(WRITE_TX_LIMIT),
    .TX_FC_ENABLE(WRITE_TX_FC_ENABLE)
)
dma_if_pcie_us_wr_inst (
    .clk(clk),
    .rst(rst),

    /*
     * AXI input (RQ from read DMA IF)
     */
    .s_axis_rq_tdata(axis_rq_tdata_read),
    .s_axis_rq_tkeep(axis_rq_tkeep_read),
    .s_axis_rq_tvalid(axis_rq_tvalid_read),
    .s_axis_rq_tready(axis_rq_tready_read),
    .s_axis_rq_tlast(axis_rq_tlast_read),
    .s_axis_rq_tuser(axis_rq_tuser_read),

    /*
     * AXI output (RQ)
     */
    .m_axis_rq_tdata(m_axis_rq_tdata),
    .m_axis_rq_tkeep(m_axis_rq_tkeep),
    .m_axis_rq_tvalid(m_axis_rq_tvalid),
    .m_axis_rq_tready(m_axis_rq_tready),
    .m_axis_rq_tlast(m_axis_rq_tlast),
    .m_axis_rq_tuser(m_axis_rq_tuser),

    /*
     * Transmit sequence number input
     */
    .s_axis_rq_seq_num_0(s_axis_rq_seq_num_0),
    .s_axis_rq_seq_num_valid_0(s_axis_rq_seq_num_valid_0),
    .s_axis_rq_seq_num_1(s_axis_rq_seq_num_1),
    .s_axis_rq_seq_num_valid_1(s_axis_rq_seq_num_valid_1),

    /*
     * Transmit sequence number output (to read DMA IF)
     */
    .m_axis_rq_seq_num_0(axis_rq_seq_num_read_0),
    .m_axis_rq_seq_num_valid_0(axis_rq_seq_num_valid_read_0),
    .m_axis_rq_seq_num_1(axis_rq_seq_num_read_1),
    .m_axis_rq_seq_num_valid_1(axis_rq_seq_num_valid_read_1),

    /*
     * Transmit flow control
     */
    .pcie_tx_fc_ph_av(pcie_tx_fc_ph_av),
    .pcie_tx_fc_pd_av(pcie_tx_fc_pd_av),

    /*
     * AXI write descriptor input
     */
    .s_axis_write_desc_pcie_addr(s_axis_write_desc_pcie_addr),
    .s_axis_write_desc_ram_sel(s_axis_write_desc_ram_sel),
    .s_axis_write_desc_ram_addr(s_axis_write_desc_ram_addr),
    .s_axis_write_desc_len(s_axis_write_desc_len),
    .s_axis_write_desc_tag(s_axis_write_desc_tag),
    .s_axis_write_desc_valid(s_axis_write_desc_valid),
    .s_axis_write_desc_ready(s_axis_write_desc_ready),

    /*
     * AXI write descriptor status output
     */
    .m_axis_write_desc_status_tag(m_axis_write_desc_status_tag),
    .m_axis_write_desc_status_error(m_axis_write_desc_status_error),
    .m_axis_write_desc_status_valid(m_axis_write_desc_status_valid),

    /*
     * RAM interface
     */
    .ram_rd_cmd_sel(ram_rd_cmd_sel),
    .ram_rd_cmd_addr(ram_rd_cmd_addr),
    .ram_rd_cmd_valid(ram_rd_cmd_valid),
    .ram_rd_cmd_ready(ram_rd_cmd_ready),
    .ram_rd_resp_data(ram_rd_resp_data),
    .ram_rd_resp_valid(ram_rd_resp_valid),
    .ram_rd_resp_ready(ram_rd_resp_ready),

    /*
     * Configuration
     */
    .enable(write_enable),
    .requester_id(requester_id),
    .requester_id_enable(requester_id_enable),
    .max_payload_size(max_payload_size)
);

endmodule

`resetall

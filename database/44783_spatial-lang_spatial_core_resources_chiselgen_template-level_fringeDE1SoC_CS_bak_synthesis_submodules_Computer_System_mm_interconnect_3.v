// This program was cloned from: https://github.com/stanford-ppl/spatial-lang
// License: MIT License

// Computer_System_mm_interconnect_3.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 16.1 196

`timescale 1 ps / 1 ps
module Computer_System_mm_interconnect_3 (
		input  wire        System_PLL_sys_clk_clk,                                          //                                        System_PLL_sys_clk.clk
		input  wire        Video_In_DMA_Addr_Translation_reset_reset_bridge_in_reset_reset, // Video_In_DMA_Addr_Translation_reset_reset_bridge_in_reset.reset
		input  wire        Video_In_Subsystem_sys_reset_reset_bridge_in_reset_reset,        //        Video_In_Subsystem_sys_reset_reset_bridge_in_reset.reset
		input  wire [1:0]  Video_In_DMA_Addr_Translation_master_address,                    //                      Video_In_DMA_Addr_Translation_master.address
		output wire        Video_In_DMA_Addr_Translation_master_waitrequest,                //                                                          .waitrequest
		input  wire [3:0]  Video_In_DMA_Addr_Translation_master_byteenable,                 //                                                          .byteenable
		input  wire        Video_In_DMA_Addr_Translation_master_read,                       //                                                          .read
		output wire [31:0] Video_In_DMA_Addr_Translation_master_readdata,                   //                                                          .readdata
		input  wire        Video_In_DMA_Addr_Translation_master_write,                      //                                                          .write
		input  wire [31:0] Video_In_DMA_Addr_Translation_master_writedata,                  //                                                          .writedata
		output wire [1:0]  Video_In_Subsystem_video_in_dma_control_slave_address,           //             Video_In_Subsystem_video_in_dma_control_slave.address
		output wire        Video_In_Subsystem_video_in_dma_control_slave_write,             //                                                          .write
		output wire        Video_In_Subsystem_video_in_dma_control_slave_read,              //                                                          .read
		input  wire [31:0] Video_In_Subsystem_video_in_dma_control_slave_readdata,          //                                                          .readdata
		output wire [31:0] Video_In_Subsystem_video_in_dma_control_slave_writedata,         //                                                          .writedata
		output wire [3:0]  Video_In_Subsystem_video_in_dma_control_slave_byteenable         //                                                          .byteenable
	);

	wire         video_in_dma_addr_translation_master_translator_avalon_universal_master_0_waitrequest;   // Video_In_Subsystem_video_in_dma_control_slave_translator:uav_waitrequest -> Video_In_DMA_Addr_Translation_master_translator:uav_waitrequest
	wire  [31:0] video_in_dma_addr_translation_master_translator_avalon_universal_master_0_readdata;      // Video_In_Subsystem_video_in_dma_control_slave_translator:uav_readdata -> Video_In_DMA_Addr_Translation_master_translator:uav_readdata
	wire         video_in_dma_addr_translation_master_translator_avalon_universal_master_0_debugaccess;   // Video_In_DMA_Addr_Translation_master_translator:uav_debugaccess -> Video_In_Subsystem_video_in_dma_control_slave_translator:uav_debugaccess
	wire   [3:0] video_in_dma_addr_translation_master_translator_avalon_universal_master_0_address;       // Video_In_DMA_Addr_Translation_master_translator:uav_address -> Video_In_Subsystem_video_in_dma_control_slave_translator:uav_address
	wire         video_in_dma_addr_translation_master_translator_avalon_universal_master_0_read;          // Video_In_DMA_Addr_Translation_master_translator:uav_read -> Video_In_Subsystem_video_in_dma_control_slave_translator:uav_read
	wire   [3:0] video_in_dma_addr_translation_master_translator_avalon_universal_master_0_byteenable;    // Video_In_DMA_Addr_Translation_master_translator:uav_byteenable -> Video_In_Subsystem_video_in_dma_control_slave_translator:uav_byteenable
	wire         video_in_dma_addr_translation_master_translator_avalon_universal_master_0_readdatavalid; // Video_In_Subsystem_video_in_dma_control_slave_translator:uav_readdatavalid -> Video_In_DMA_Addr_Translation_master_translator:uav_readdatavalid
	wire         video_in_dma_addr_translation_master_translator_avalon_universal_master_0_lock;          // Video_In_DMA_Addr_Translation_master_translator:uav_lock -> Video_In_Subsystem_video_in_dma_control_slave_translator:uav_lock
	wire         video_in_dma_addr_translation_master_translator_avalon_universal_master_0_write;         // Video_In_DMA_Addr_Translation_master_translator:uav_write -> Video_In_Subsystem_video_in_dma_control_slave_translator:uav_write
	wire  [31:0] video_in_dma_addr_translation_master_translator_avalon_universal_master_0_writedata;     // Video_In_DMA_Addr_Translation_master_translator:uav_writedata -> Video_In_Subsystem_video_in_dma_control_slave_translator:uav_writedata
	wire   [2:0] video_in_dma_addr_translation_master_translator_avalon_universal_master_0_burstcount;    // Video_In_DMA_Addr_Translation_master_translator:uav_burstcount -> Video_In_Subsystem_video_in_dma_control_slave_translator:uav_burstcount

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (2),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (4),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (0),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (0),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) video_in_dma_addr_translation_master_translator (
		.clk                    (System_PLL_sys_clk_clk),                                                                  //                       clk.clk
		.reset                  (Video_In_DMA_Addr_Translation_reset_reset_bridge_in_reset_reset),                         //                     reset.reset
		.uav_address            (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount         (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read               (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write              (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest        (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid      (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable         (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata           (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata          (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock               (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess        (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address             (Video_In_DMA_Addr_Translation_master_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest         (Video_In_DMA_Addr_Translation_master_waitrequest),                                        //                          .waitrequest
		.av_byteenable          (Video_In_DMA_Addr_Translation_master_byteenable),                                         //                          .byteenable
		.av_read                (Video_In_DMA_Addr_Translation_master_read),                                               //                          .read
		.av_readdata            (Video_In_DMA_Addr_Translation_master_readdata),                                           //                          .readdata
		.av_write               (Video_In_DMA_Addr_Translation_master_write),                                              //                          .write
		.av_writedata           (Video_In_DMA_Addr_Translation_master_writedata),                                          //                          .writedata
		.av_burstcount          (1'b1),                                                                                    //               (terminated)
		.av_beginbursttransfer  (1'b0),                                                                                    //               (terminated)
		.av_begintransfer       (1'b0),                                                                                    //               (terminated)
		.av_chipselect          (1'b0),                                                                                    //               (terminated)
		.av_readdatavalid       (),                                                                                        //               (terminated)
		.av_lock                (1'b0),                                                                                    //               (terminated)
		.av_debugaccess         (1'b0),                                                                                    //               (terminated)
		.uav_clken              (),                                                                                        //               (terminated)
		.av_clken               (1'b1),                                                                                    //               (terminated)
		.uav_response           (2'b00),                                                                                   //               (terminated)
		.av_response            (),                                                                                        //               (terminated)
		.uav_writeresponsevalid (1'b0),                                                                                    //               (terminated)
		.av_writeresponsevalid  ()                                                                                         //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (2),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (4),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (1),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (0),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (0),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) video_in_subsystem_video_in_dma_control_slave_translator (
		.clk                    (System_PLL_sys_clk_clk),                                                                  //                      clk.clk
		.reset                  (Video_In_DMA_Addr_Translation_reset_reset_bridge_in_reset_reset),                         //                    reset.reset
		.uav_address            (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount         (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read               (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write              (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest        (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid      (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable         (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata           (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata          (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock               (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess        (video_in_dma_addr_translation_master_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_address             (Video_In_Subsystem_video_in_dma_control_slave_address),                                   //      avalon_anti_slave_0.address
		.av_write               (Video_In_Subsystem_video_in_dma_control_slave_write),                                     //                         .write
		.av_read                (Video_In_Subsystem_video_in_dma_control_slave_read),                                      //                         .read
		.av_readdata            (Video_In_Subsystem_video_in_dma_control_slave_readdata),                                  //                         .readdata
		.av_writedata           (Video_In_Subsystem_video_in_dma_control_slave_writedata),                                 //                         .writedata
		.av_byteenable          (Video_In_Subsystem_video_in_dma_control_slave_byteenable),                                //                         .byteenable
		.av_begintransfer       (),                                                                                        //              (terminated)
		.av_beginbursttransfer  (),                                                                                        //              (terminated)
		.av_burstcount          (),                                                                                        //              (terminated)
		.av_readdatavalid       (1'b0),                                                                                    //              (terminated)
		.av_waitrequest         (1'b0),                                                                                    //              (terminated)
		.av_writebyteenable     (),                                                                                        //              (terminated)
		.av_lock                (),                                                                                        //              (terminated)
		.av_chipselect          (),                                                                                        //              (terminated)
		.av_clken               (),                                                                                        //              (terminated)
		.uav_clken              (1'b0),                                                                                    //              (terminated)
		.av_debugaccess         (),                                                                                        //              (terminated)
		.av_outputenable        (),                                                                                        //              (terminated)
		.uav_response           (),                                                                                        //              (terminated)
		.av_response            (2'b00),                                                                                   //              (terminated)
		.uav_writeresponsevalid (),                                                                                        //              (terminated)
		.av_writeresponsevalid  (1'b0)                                                                                     //              (terminated)
	);

endmodule

// This program was cloned from: https://github.com/CospanDesign/nysa-verilog
// License: MIT License

`include "project_defines.v"

module seeed_tft #(
  parameter                       BUFFER_SIZE = 12
)(
  input                           rst,
  input                           clk,

  output      [31:0]              debug,

  input                           i_soft_tearing,
  input       [7:0]               i_tearing_reg,
  input       [31:0]              i_tearing_value,
  input       [31:0]              i_tearing_count,
  input       [7:0]               i_mem_write_cmd,
  input                           i_tearing_polarity,

  //Control Signals
  input                           i_enable,
  input                           i_reset_display,
  input                           i_data_command_mode,
  input                           i_enable_tearing,

  input                           i_cmd_rs,

  input                           i_cmd_write_stb,
  input                           i_cmd_read_stb,
  input       [7:0]               i_cmd_data,
  output      [7:0]               o_cmd_data,
  output                          o_cmd_finished,
  input                           i_backlight_enable,
  input                           i_chip_select,
  input       [31:0]              i_num_pixels,

  //FIFO Signals
  output      [1:0]               o_fifo_rdy,
  input       [1:0]               i_fifo_act,
  input                           i_fifo_stb,
  output      [23:0]              o_fifo_size,
  input       [31:0]              i_fifo_data,

  //Physical Signals
  output                          o_backlight_enable,
  output                          o_register_data_sel,
  output                          o_write_n,
  output                          o_read_n,
  inout       [7:0]               io_data,
  output                          o_cs_n,
  output                          o_reset_n,
  input                           i_tearing_effect,
  output                          o_display_on
);

//Local Parameters
//Registers/Wires
wire  [7:0]                       w_data_out;
wire  [7:0]                       w_data_in;

wire                              w_cmd_write;
wire                              w_cmd_read;
wire  [7:0]                       w_cmd_data;
wire                              w_cmd_cmd_mode;

wire                              w_cmd_data_out_en;

wire                              w_data_dir;

wire                              w_data_chip_select;
wire                              w_data_cmd_mode;
wire  [7:0]                       w_data_data;
wire                              w_data_write;
wire                              w_data_read;
wire                              w_data_data_out_en;

//Submodules
seeed_tft_command lcd_commander (

  .rst                            (rst                  ),
  .clk                            (clk                  ),

//  .debug                        (debug                ),
  .i_enable                       (i_enable             ),
  .i_cmd_rs                       (i_cmd_rs             ),
  .i_cmd_write_stb                (i_cmd_write_stb      ),
  .i_cmd_read_stb                 (i_cmd_read_stb       ),
  .i_cmd_data                     (i_cmd_data           ),
  .o_cmd_data                     (o_cmd_data           ),

  //Control Signals
  .o_data_out_en                  (w_cmd_data_out_en    ),
  .o_cmd_finished                 (o_cmd_finished       ),
  .o_cmd_mode                     (w_cmd_cmd_mode       ),
  .o_write                        (w_cmd_write          ),
  .o_read                         (w_cmd_read           ),
  .o_data_out                     (w_cmd_data           ),
  .i_data_in                      (w_data_in            )
);

seeed_tft_data_writer #(
  .BUFFER_SIZE                    (BUFFER_SIZE          )
)lcd_data_writer(
  .rst                            (rst                  ),
  .clk                            (clk                  ),

  .debug                          (debug                ),
  .i_soft_tearing                 (i_soft_tearing       ),
  .i_tearing_reg                  (i_tearing_reg        ),
  .i_tearing_value                (i_tearing_value      ),
  .i_tearing_count                (i_tearing_count      ),
  .i_mem_write_cmd                (i_mem_write_cmd      ),
  .i_tearing_polarity             (i_tearing_polarity   ),

  .i_enable                       (i_enable             ),
  .i_enable_tearing               (i_enable_tearing     ),
  .i_num_pixels                   (i_num_pixels         ),

  .o_fifo_rdy                     (o_fifo_rdy           ),
  .i_fifo_act                     (i_fifo_act           ),
  .i_fifo_stb                     (i_fifo_stb           ),
  .o_fifo_size                    (o_fifo_size          ),
  .i_fifo_data                    (i_fifo_data          ),

  .i_tearing_effect               (i_tearing_effect     ),
  .o_chip_select                  (w_data_chip_select   ),
  .o_cmd_mode                     (w_data_cmd_mode      ),
  .o_data_out                     (w_data_data          ),
  .i_data_in                      (w_data_in            ),
  .o_write                        (w_data_write         ),
  .o_read                         (w_data_read          ),
  .o_data_out_en                  (w_data_data_out_en   )
);

//Asynchronous Logic
assign  o_backlight_enable  = i_backlight_enable;
assign  o_display_on        = i_enable;
assign  o_reset_n           = ~i_reset_display;
assign  w_data_in           = io_data;

//Select control between the Command controller and the Data Controller
assign  o_cs_n              = (i_data_command_mode) ? ~w_data_chip_select : ~i_chip_select;
assign  o_register_data_sel = (i_data_command_mode) ? w_data_cmd_mode : w_cmd_cmd_mode;
assign  o_write_n           = (i_data_command_mode) ? ~w_data_write : ~w_cmd_write;
assign  o_read_n            = (i_data_command_mode) ? ~w_data_read : ~w_cmd_read;
assign  w_data_dir          = (i_data_command_mode) ? w_data_data_out_en : w_cmd_data_out_en;
assign  io_data             = (w_data_dir) ? (i_data_command_mode) ?
                                w_data_data : w_cmd_data :
                              8'hZZ;
//Synchronous Logic
endmodule
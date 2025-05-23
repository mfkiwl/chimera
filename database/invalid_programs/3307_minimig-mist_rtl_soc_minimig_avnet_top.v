// This program was cloned from: https://github.com/rkrajnc/minimig-mist
// License: GNU General Public License v3.0

/********************************************/
/* minimig_avnet_top.v                      */
/* AVNET Spartan3-1500 FPGA Top File        */
/*                                          */
/* 2012, rok.krajnc@gmail.com               */
/********************************************/


`define MINIMIG_AVNET
//`define SOC_SIM

`include "minimig_defines.vh"


module minimig_avnet_top (
  // clock inputs
  input  wire           CLOCK_66,     // 66.6 MHz
  input  wire           CLOCK_EXT,    // external clock
  // push button inputs
  input  wire [  2-1:0] KEY,          // Pushbutton[1:0]
  // switch inputs
  input  wire [  4-1:0] SW,           // Toggle Switch[3:0]
  // 7-seg display outputs
  output wire [  8-1:0] HEX0,         // Seven Segment Digit 0
  output wire [  8-1:0] HEX1,         // Seven Segment Digit 1
  // LED outputs
  output wire [  8-1:0] LEDR,         // LED Red[7:0]
  // UART
  output wire           UART_TXD,     // UART Transmitter
  input  wire           UART_RXD,     // UART Receiver
  // I2C
  inout  wire           SDA,          // I2C Data
  output wire           SCL,          // I2C Clock
  // PS2
  inout  wire           KB_DAT,       // PS2 Keyboard Data
  inout  wire           KB_CLK,       // PS2 Keyboard Clock
  inout  wire           MS_DAT,       // PS2 Mouse Data
  inout  wire           MS_CLK,       // PS2 Mouse Clock
  // VGA
  output wire           VGA_HSYNC,    // VGA H_SYNC
  output wire           VGA_VSYNC,    // VGA V_SYNC
  output wire           VGA_CSYNC,    // VGA C_SYNC
  output wire           VGA_BLANK,    // VGA blank
  output wire           VGA_CLK,      // VGA clock
  output wire [  8-1:0] VGA_R,        // VGA Red[3:0]
  output wire [  8-1:0] VGA_G,        // VGA Green[3:0]
  output wire [  8-1:0] VGA_B,        // VGA Blue[3:0]
  // SD card
  input  wire           SD_DAT,       // SD Card Data            - spi MISO
  output wire           SD_DAT3,      // SD Card Data 3          - spi CS
  output wire           SD_CMD,       // SD Card Command Signal  - spi MOSI
  output wire           SD_CLK,       // SD Card Clock           - spi CLK
  // SRAM
  inout  wire [ 32-1:0] SRAM_DQ,      // SRAM Data bus 16 Bits
  output wire [ 18-1:0] SRAM_ADDR,    // SRAM Address bus 18 Bits
  output wire [  4-1:0] SRAM_BE_N,    // SRAM byte select
  output wire           SRAM_WE_N,    // SRAM Write Enable
  output wire           SRAM_CE_N,    // SRAM Chip Enable
  output wire           SRAM_OE_N,    // SRAM Output Enable
  // SDRAM
  inout  wire [ 32-1:0] DRAM_DQ,      // SDRAM Data bus 32 Bits
  output wire [ 18-1:0] DRAM_ADDR,    // SDRAM Address bus 18 Bits
  output wire [  4-1:0] DRAM_BE_N,    // SDRAM byte select
  output wire           DRAM_WE_N,    // SDRAM Write Enable
  output wire           DRAM_OE_N,    // SDRAM output enable
  output wire           DRAM_CAS_N,   // SDRAM Column Address Strobe
  output wire           DRAM_RAS_N,   // SDRAM Row Address Strobe
  output wire           DRAM_CS_N,    // SDRAM Chip Select
  output wire           DRAM_BA_0,    // SDRAM Bank Address 0
  output wire           DRAM_BA_1,    // SDRAM Bank Address 1
  output wire           DRAM_BA_2,    // SDRAM Bank Address 2
  output wire           DRAM_BA_3,    // SDRAM Bank Address 3
  output wire           DRAM_CLK,     // SDRAM Clock
  output wire           DRAM_CKE,     // SDRAM Clock Enable
  // MINIMIG specific
  input  wire [  6-1:0] Joya,         // joystick port A
  input  wire [  6-1:0] Joyb,         // joystick port B
  output wire           AUDIOLEFT,    // sigma-delta DAC output left
  output wire           AUDIORIGHT    // sigma-delta DAC output right
);



////////////////////////////////////////
// internal signals                   //
////////////////////////////////////////

// clock
wire           pll_in_clk;
wire           clk_114;
wire           clk_28;
wire           clk_sdram;
wire           pll_locked;
wire           clk_7;
wire           c1;
wire           c3;
wire           cck;
wire [ 10-1:0] eclk;
wire           clk_50;

// reset
wire           pll_rst;
wire           sdctl_rst;
wire           rst_50;
wire           rst_minimig;

// ctrl
wire           rom_status;
wire           ram_status;
wire           reg_status;

// tg68
wire           tg68_rst;
wire [ 16-1:0] tg68_dat_in;
wire [ 16-1:0] tg68_dat_out;
wire [ 32-1:0] tg68_adr;
wire [  3-1:0] tg68_IPL;
wire           tg68_dtack;
wire           tg68_as;
wire           tg68_uds;
wire           tg68_lds;
wire           tg68_rw;
wire           tg68_ena7RD;
wire           tg68_ena7WR;
wire           tg68_enaWR;
wire [ 16-1:0] tg68_cout;
wire           tg68_cpuena;
wire [  2-1:0] cpu_config;
wire [  6-1:0] memcfg;
wire [ 32-1:0] tg68_cad;
wire [  6-1:0] tg68_cpustate;
wire           tg68_cdma;
wire           tg68_clds;
wire           tg68_cuds;

// minimig
wire [ 16-1:0] ram_data;      // sram data bus
wire [ 16-1:0] ramdata_in;    // sram data bus in
wire [ 22-1:1] ram_address;   // sram address bus
wire           _ram_bhe;      // sram upper byte select
wire           _ram_ble;      // sram lower byte select
wire           _ram_we;       // sram write enable
wire           _ram_oe;       // sram output enable
wire           _15khz;        // scandoubler disable
wire           joy_emu_en;    // joystick emulation enable
wire           sdo;           // SPI data output
wire [ 15-1:0] ldata;         // left DAC data
wire [ 15-1:0] rdata;         // right DAC data
wire           audio_left;
wire           audio_right;
wire           floppy_fwr;
wire           floppy_frd;
wire           hd_fwr;
wire           hd_frd;

// sdram
wire           reset_out;
wire [  4-1:0] sdram_cs;
wire [  2-1:0] sdram_dqm;
wire [  2-1:0] sdram_ba;

// audio
wire           audio_lr_switch;
wire           audio_lr_mix;

// ctrl
wire [ 16-1:0] SRAM_DAT_W;
wire [ 16-1:0] SRAM_DAT_R;
wire [  8-1:0] FL_DAT_W;
wire [  8-1:0] FL_DAT_R;
wire [  4-1:0] SPI_CS_N;
wire           SPI_DI;
wire           rst_ext;
wire           boot_sel;
wire [  4-1:0] ctrl_cfg;
wire [  4-1:0] ctrl_status;

// indicators
wire [  8-1:0] track;



////////////////////////////////////////
// input synchronizers                //
////////////////////////////////////////

wire   sw_1;

i_sync #(.DW(1)) i_sync_28 (
  .clk  (clk_28),
  .i    ({SW[1]}),
  .o    ({sw_1})
);



////////////////////////////////////////
// toplevel assignments               //
////////////////////////////////////////

// SRAM
assign SRAM_DQ[16-1:0]  = SRAM_OE_N ? SRAM_DAT_W : 16'bzzzzzzzzzzzzzzzz;
assign SRAM_DAT_R       = SRAM_DQ[16-1:0];

// SDRAM
assign DRAM_CKE         = 1'b1;
assign DRAM_CLK         = clk_sdram;
assign DRAM_CS_N        = sdram_cs[0];
assign DRAM_LDQM        = sdram_dqm[0];
assign DRAM_UDQM        = sdram_dqm[1];
assign DRAM_BA_0        = sdram_ba[0];
assign DRAM_BA_1        = sdram_ba[1];


// AUDIO
assign AUDIOLEFT        = audio_left;
assign AUDIORIGHT       = audio_right;

// ctrl
assign SPI_DI           = !SPI_CS_N[0] ? SD_DAT : sdo;
assign rst_ext          = !KEY[0];
assign boot_sel         = 1'b0;
assign ctrl_cfg         = 4'b0;

// clock
IBUFG CLOCK_66_IBUFG(.I(CLOCK_66), .O(pll_in_clk));

// reset
assign pll_rst          = !SW[0];
assign sdctl_rst        = pll_locked & SW[0];

// audio
assign audio_lr_switch  = 1'b0;
assign audio_lr_mix     = 1'b1;

// minimig
assign _15khz           = sw_1;
assign joy_emu_en       = 1'b0;



////////////////////////////////////////
// modules                            //
////////////////////////////////////////

//// control block ////
ctrl_top ctrl_top (
  // system
  .clk_in       (pll_in_clk       ),  // input 50MHz clock
  .rst_ext      (rst_ext          ),  // external reset input
  .clk_out      (clk_50           ),  // output 50MHz clock from internal PLL
  .rst_out      (rst_50           ),  // reset output from internal reset generator
  .rst_minimig  (rst_minimig      ),  // minimig reset output from internal reset generator
  // config
  .boot_sel     (boot_sel         ),  // select FLASH boot location
  .ctrl_cfg     (ctrl_cfg         ),  // config for ctrl module
  // status
  .rom_status   (rom_status       ),  // ROM slave activity
  .ram_status   (ram_status       ),  // RAM slave activity
  .reg_status   (reg_status       ),  // REG slave activity
  .ctrl_status  (ctrl_status      ),  // CTRL LEDs
  // SRAM interface
  .sram_adr     (SRAM_ADDR        ),  // SRAM address output
  .sram_ce_n    (SRAM_CE_N        ),  // SRAM chip enable output
  .sram_we_n    (SRAM_WE_N        ),  // SRAM write enable output
  .sram_ub_n    (SRAM_UB_N        ),  // SRAM upper byte select output
  .sram_lb_n    (SRAM_LB_N        ),  // SRAM lower byte select output
  .sram_oe_n    (SRAM_OE_N        ),  // SRAM output enable
  .sram_dat_w   (SRAM_DAT_W       ),  // SRAM write data
  .sram_dat_r   (SRAM_DAT_R       ),  // SRAM read data
  // FLASH interface
  .fl_adr       (FL_ADDR          ),  // FLASH address output
  .fl_ce_n      (FL_CE_N          ),  // FLASH chip enable output
  .fl_we_n      (FL_WE_N          ),  // FLASH write enable output
  .fl_oe_n      (FL_OE_N          ),  // FLASH output enable
  .fl_rst_n     (FL_RST_N         ),  // FLASH reset
  .fl_dat_w     (FL_DAT_W         ),  // FLASH write data
  .fl_dat_r     (FL_DAT_R         ),  // FLASH read data
  // UART
  .uart_txd     (UART_TXD         ),  // UART transmit output
  .spi_cs_n     (SPI_CS_N         ),  // SPI chip select output
  .spi_clk      (SD_CLK           ),  // SPI clock
  .spi_do       (SD_CMD           ),  // SPI data input
  .spi_di       (SPI_DI           )   // SPI data output
);


//// indicators ////
indicators indicators(
  .clk          (clk_7            ),
  .rst          (~pll_locked      ),
  .track        (track            ),
  .f_wr         (floppy_fwr       ),
  .f_rd         (floppy_frd       ),
  .h_wr         (hd_fwr           ),
  .h_rd         (hd_frd           ),
  .status       ({rom_status, ram_status, reg_status}),
  .ctrl_status  (ctrl_status      ),
  .hex_0        (HEX0[6:0]        ),
  .hex_1        (HEX1[6:0]        ),
  .hex_2        (                 ),
  .hex_3        (                 ),
  .led_g        (                 ),
  .led_r        (LEDR             )
);


//// amiga clocks ////
amiga_clk amiga_clk (
  .rst          (pll_rst          ), // async reset input
  .clk_in       (pll_in_clk       ), // input clock     ( 27.000000MHz)
  .clk_114      (clk_114          ), // output clock c0 (114.750000MHz)
  .clk_sdram    (clk_sdram        ), // output clock c2 (114.750000MHz, -146.25 deg)
  .clk_28       (clk_28           ), // output clock c1 ( 28.687500MHz)
  .clk_7        (clk_7            ), // output clock 7  (  7.171875MHz)
  .c1           (c1               ), // clk28m clock domain signal synchronous with clk signal
  .c3           (c3               ), // clk28m clock domain signal synchronous with clk signal delayed by 90 degrees
  .cck          (cck              ), // colour clock output (3.54 MHz)
  .eclk         (eclk             ), // 0.709379 MHz clock enable output (clk domain pulse)
  .locked       (pll_locked       )  // pll locked output
);


//// audio ////
audio_top audio_top (
  .clk          (clk_28           ),  // 28MHz input clock
  .rst_n        (reset_out        ),  // active low reset (from sdram controller)
  // config
  .exchan       (audio_lr_switch  ),  // switch audio left / right channel
  .mix          (audio_lr_mix     ),  // normal / centered mix (play some left channel on the right channel and vise-versa)
  // audio shifter
  .rdata        (rdata            ),  // right channel sample data
  .ldata        (ldata            ),  // left channel sample data
  .aud_bclk     (AUD_BCLK         ),  // CODEC data clock
  .aud_daclrck  (AUD_DACLRCK      ),  // CODEC data clock
  .aud_dacdat   (AUD_DACDAT       ),  // CODEC data
  .aud_xck      (AUD_XCK          ),  // CODEC data clock
  // I2C audio config
  .i2c_sclk     (I2C_SCLK         ),  // CODEC config clock
  .i2c_sdat     (I2C_SDAT         )   // CODEC config data
);


//// TG68K main CPU ////
TG68K tg68k (
  .clk          (clk_114          ),
  .reset        (tg68_rst         ),
  .clkena_in    (1'b1             ),
  .IPL          (tg68_IPL         ),
  .dtack        (tg68_dtack       ),
  .vpa          (1'b1             ),
  .ein          (1'b1             ),
  .addr         (tg68_adr         ),
  .data_read    (tg68_dat_in      ),
  .data_write   (tg68_dat_out     ),
  .as           (tg68_as          ),
  .uds          (tg68_uds         ),
  .lds          (tg68_lds         ),
  .rw           (tg68_rw          ),
  .e            (                 ),
  .vma          (                 ),
  .wrd          (                 ),
  .ena7RDreg    (tg68_ena7RD      ),
  .ena7WRreg    (tg68_ena7WR      ),
  .enaWRreg     (tg68_enaWR       ),
  .fromram      (tg68_cout        ),
  .ramready     (tg68_cpuena      ),
  .cpu          (cpu_config       ),
  .memcfg       (memcfg           ),
  .ramaddr      (tg68_cad         ),
  .cpustate     (tg68_cpustate    ),
  .nResetOut    (                 ),
  .skipFetch    (                 ),
  .cpuDMA       (tg68_cdma        ),
  .ramlds       (tg68_clds        ),
  .ramuds       (tg68_cuds        )
);


//// sdram ////
sdram_ctrl sdram (
  .sdata        (DRAM_DQ[16-1:0]  ),
  .sdaddr       (DRAM_ADDR[12-1:0]),
  .dqm          (sdram_dqm        ),
  .sd_cs        (sdram_cs         ),
  .ba           (sdram_ba         ),
  .sd_we        (DRAM_WE_N        ),
  .sd_ras       (DRAM_RAS_N       ),
  .sd_cas       (DRAM_CAS_N       ),
  .sysclk       (clk_114          ),
  .reset_in     (sdctl_rst        ),
  .hostWR       (16'h0            ),
  .hostAddr     (24'h0            ),
  .hostState    ({1'b0, 2'b01}    ),
  .hostL        (1'b1             ),
  .hostU        (1'b1             ),
  .cpuWR        (tg68_dat_out     ),
  .cpuAddr      (tg68_cad[24:1]   ),
  .cpuU         (tg68_cuds        ),
  .cpuL         (tg68_clds        ),
  .cpustate     (tg68_cpustate    ),
  .cpu_dma      (tg68_cdma        ),
  .chipWR       (ram_data         ),
  .chipAddr     ({2'b00, ram_address[21:1]}),
  .chipU        (_ram_bhe         ),
  .chipL        (_ram_ble         ),
  .chipRW       (_ram_we          ),
  .chip_dma     (_ram_oe          ),
  .c_7m         (clk_7            ),
  .hostRD       (                 ),
  .hostena      (                 ),
  .cpuRD        (tg68_cout        ),
  .cpuena       (tg68_cpuena      ),
  .chipRD       (ramdata_in       ),
  .reset_out    (reset_out        ),
  .enaWRreg     (tg68_enaWR       ),
  .ena7RDreg    (tg68_ena7RD      ),
  .ena7WRreg    (tg68_ena7WR      )
);


//// minimig top ////
Minimig1 minimig (
  //m68k pins
  .cpu_address  (tg68_adr[23:1]   ),  // M68K address bus
  .cpu_data     (tg68_dat_in      ),  // M68K data bus
  .cpudata_in   (tg68_dat_out     ),  // M68K data in
  ._cpu_ipl     (tg68_IPL         ),  // M68K interrupt request
  ._cpu_as      (tg68_as          ),  // M68K address strobe
  ._cpu_uds     (tg68_uds         ),  // M68K upper data strobe
  ._cpu_lds     (tg68_lds         ),  // M68K lower data strobe
  .cpu_r_w      (tg68_rw          ),  // M68K read / write
  ._cpu_dtack   (tg68_dtack       ),  // M68K data acknowledge
  ._cpu_reset   (tg68_rst         ),  // M68K reset
  .cpu_clk      (clk_7            ),  // M68K clock
  //sram pins
  .ram_data     (ram_data         ),  // SRAM data bus
  .ramdata_in   (ramdata_in       ),  // SRAM data bus in
  .ram_address  (ram_address[21:1]),  // SRAM address bus
  ._ram_ce      (                 ),  // SRAM chip enable
  ._ram_bhe     (_ram_bhe         ),  // SRAM upper byte select
  ._ram_ble     (_ram_ble         ),  // SRAM lower byte select
  ._ram_we      (_ram_we          ),  // SRAM write enable
  ._ram_oe      (_ram_oe          ),  // SRAM output enable
  //system  pins
  .clk28m       (clk_28           ), // output clock c1 ( 28.687500MHz)
  .clk          (clk_7            ), // output clock 7  (  7.171875MHz)
  .c1           (c1               ), // clk28m clock domain signal synchronous with clk signal
  .c3           (c3               ), // clk28m clock domain signal synchronous with clk signal delayed by 90 degrees
  .cck          (cck              ), // colour clock output (3.54 MHz)
  .eclk         (eclk             ), // 0.709379 MHz clock enable output (clk domain pulse)
  //rs232 pins
  .rxd          (1'b0             ),  // RS232 receive
  .txd          (                 ),  // RS232 send
  .cts          (1'b0             ),  // RS232 clear to send
  .rts          (                 ),  // RS232 request to send
  //I/O
  ._joy1        (Joya             ),  // joystick 1 [fire2,fire,up,down,left,right] (default mouse port)
  ._joy2        (Joyb             ),  // joystick 2 [fire2,fire,up,down,left,right] (default joystick port)
  .mouse_btn1   (1'b1             ),  // mouse button 1
  .mouse_btn2   (1'b1             ),  // mouse button 2
  .joy_emu_en   (joy_emu_en       ),  // enable keyboard joystick emulation
  ._15khz       (_15khz           ),  // scandoubler disable
  .pwrled       (                 ),  // power led
  .msdat        (PS2_MDAT         ),  // PS2 mouse data
  .msclk        (PS2_MCLK         ),  // PS2 mouse clk
  .kbddat       (PS2_DAT          ),  // PS2 keyboard data
  .kbdclk       (PS2_CLK          ),  // PS2 keyboard clk
  //host controller interface (SPI)
  ._scs         (SPI_CS_N[3:1]    ),  // SPI chip select
  .direct_sdi   (SD_DAT           ),  // SD Card direct in
  .sdi          (SD_CMD           ),  // SPI data input
  .sdo          (sdo              ),  // SPI data output
  .sck          (SD_CLK           ),  // SPI clock
  //video
  ._hsync       (VGA_HS           ),  // horizontal sync
  ._vsync       (VGA_VS           ),  // vertical sync
  .red          (VGA_R[8-1:4]     ),  // red
  .green        (VGA_G[8-1:4]     ),  // green
  .blue         (VGA_B[8-1:4]     ),  // blue
  //audio
  .left         (audio_left       ),  // audio bitstream left
  .right        (audio_right      ),  // audio bitstream right
  .ldata        (ldata            ),  // left DAC data
  .rdata        (rdata            ),  // right DAC data
  //user i/o
  .gpio         (                 ),  // spare GPIO
  .cpu_config   (cpu_config       ),  // CPU config
  .memcfg       (memcfg           ),  // memory config
  .drv_snd      (                 ),  // drive sound
  .init_b       (                 ),  // vertical sync for MCU (sync OSD update)
  // fifo / track display
  .trackdisp    (track            ),  // floppy track number
  .secdisp      (                 ),  // sector
  .floppy_fwr   (floppy_fwr       ),  // floppy fifo writing
  .floppy_frd   (floppy_frd       ),  // floppy fifo reading
  .hd_fwr       (hd_fwr           ),  // hd fifo writing
  .hd_frd       (hd_frd           )   // hd fifo  ading
);


endmodule


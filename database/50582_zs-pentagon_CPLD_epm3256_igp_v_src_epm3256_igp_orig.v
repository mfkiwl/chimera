// This program was cloned from: https://github.com/MikhaelKaa/zs-pentagon
// License: MIT License

module epm3256_igp_orig (
	// Main Clock
	input 	CLK_14MHZ,

	// CPU signals
	input 	CPU_IORQ,
	input 	CPU_MREQ,
	input 	CPU_WR,
	input 	CPU_RD,
	input 	CPU_M1,
	input 	CPU_RFSH,
	input 	CPU_RESET,

	output 	CPU_CLK,
	output 	CPU_INT,
	output 	CPU_BUSRQ,
	output 	CPU_WAIT,
	output 	CPU_NMI,
	
	// CPU address & data
	inout  [7:0] D,	
	input [15:0] A,
	
	// BBSRAM
	output BBSRAM_RD,
	output BBSRAM_WR,
	output BBSRAM_MREQ,

	// Main RAM 1024k
	output WR_RAM,
	output CS_RAM1,
	output CS_RAM0,
	inout [7:0] MD,
	output [18:0]MA,
	
	// ROM
	output ROM_A14, // TODO: ROM_A_H[5],
	output ROM_A15,
	output ROM_A16,
	output ROM_A17,
	output ROM_A18,
	output WR_ROM,
	output RD_ROM,
	output CS_ROM,
	
	// Video output
	output [7:0]VGA, //TODO -2
	output HS,
	output VS,
	output SGI,
	
	// DOS
	output 	C_DOS,
	output 	C_IODOS,

	// 
	input 	C_IORQGE,
	output 	C_BLK,

	//
	output [14:0]VA,
	inout [7:0]VD, // [5:0] ->> [7:0] ?
	output VWR,

	// Port FE
	output BEEP,
	output TAPE_OUT,
	input TAPE_IN,
	
	// Joystick select
	output RD_1F,

	// USB/PS2/SEGAGP controller
	input 	C_MAGIC,
	input 	C_PNT,
	input 	C_TURBO,
	// SPI 
	input 	KBD_DI,
	input 	KBD_CS,
	input 	KBD_CLK,

	// stm32 bluepill device
	input STM32_BUSRQ, 	// EXT0,
	input EXT1,				// RESET. The signal passes by. Disabling requires hardware modification of the hat, do not use this pin (signal) !
	
	// EXT pins.
	output EXT2,  // LED
	output EXT3

	// PSG
	//output AYCLK,
	//output BDIR,
	//output BC1,
);
/*
	reg [3:0] EX_RGBI_PIX = 4'b0;
	reg [7:0] EX_RGBI_DATA = 8'b0;
	reg [19:0] EX_RGBI_cnt = 20'b0;
	reg [14:0] EX_RGBI_ADR = 15'b0;
	reg pre_VWR = 1'b0;
	
	reg [7:0] cnt = 8'b0;
	always @(negedge CLK_14MHZ) begin
		cnt = cnt + 1'b1;
		
		if(cnt[0]) begin
			pre_VWR <= 1'b0;
			VD <= EX_RGBI_cnt[9:2];
			EX_RGBI_ADR <= EX_RGBI_cnt;
			
		end else begin 
			pre_VWR <= 1'b1;
			EX_RGBI_DATA <= VD;
			
			if(KSI) begin
				EX_RGBI_cnt <= 0;	
			end else begin
				EX_RGBI_cnt <= EX_RGBI_cnt + 1'b1;
				EX_RGBI_ADR <= EX_RGBI_cnt[15:1];
				EX_RGBI_PIX <= EX_RGBI_DATA[3:0];
			end
		
		end	
		
	end 
	
	always @(negedge cnt[0]) begin

	end 
*/
	
	/******************** CPU ***********************/	
	// CPU data bus
	//assign D = CPU_RD?(8'bz):(MD);	
	//assign D = 8'bz;	
	
	// CPU clock
	assign CPU_CLK   = C25;
	
	// TODO: NMI IODOS перепутаны
	assign C_IODOS = 1'b1;
	assign CPU_NMI   = 1'b1;
	
	
	assign CPU_INT   = C8;
	assign CPU_BUSRQ = STM32_BUSRQ; //1'b1;
	assign CPU_WAIT  = 1'b1;

	
	/***************** BBSRAM 32kb ******************/	
	assign BBSRAM_RD    = CPU_RD | A[15];
	assign BBSRAM_WR    = STM32_BUSRQ?(CPU_WR | (A < 16'h4000) | A[15]):(CPU_WR | A[15]);
	assign BBSRAM_MREQ  = CPU_MREQ | A[15] ;//| (A == 16'h7250); 
	// BBSRAM data connect to cpu data
	// BBSRAM adr connect to cpu adr [14:0]
	
	
	/********** ext RAM W24257AK-20 32kb ************/
	wire ext_ram_cs =  CPU_MREQ | ~A[15];
	wire ext_ram_rd =  CPU_RD | ext_ram_cs;
	wire ext_ram_wr =  CPU_WR | ext_ram_cs;
	
	assign VA  = A[14:0];
	//assign D   = (ext_ram_rd == 1'b0) ? ext_ram_d : 8'bZ;
	assign VD  = (ext_ram_wr == 1'b0) ? D  : 8'bZ;
	assign VWR = ext_ram_wr;
	
	reg [7:0] ext_ram_d = 8'b0;
	always @(negedge ext_ram_rd) begin
		ext_ram_d <= D;
	end

	
	
	/***************** RAM 1024k ********************/	
	wire main_ram_cs =  CPU_MREQ | ~A[15];// | (A == 16'hb250);
	wire main_ram_rd =  CPU_RD | main_ram_cs;
	wire main_ram_wr =  CPU_WR | main_ram_cs;
	
	assign MA = {A, 3'b1};// 19'bx;
	
	assign D   = (main_ram_rd == 1'b0) ? MD : 8'bZ;
	assign MD  = (main_ram_wr == 1'b0) ? D  : 8'bZ;
	assign WR_RAM  = main_ram_wr;
	assign CS_RAM0 = main_ram_cs;
	assign CS_RAM1 = main_ram_cs;
	
	
	
	/******************* ROM 512k *******************/
	assign ROM_A14 = 1'b0;
	assign ROM_A15 = 1'b0;
	assign ROM_A16 = 1'b0;
	assign ROM_A17 = 1'b0;
	assign ROM_A18 = 1'b0;
	
	assign WR_ROM = 1'b1;
	assign RD_ROM = 1'b1;//CPU_MREQ | C13;  //OE
	assign CS_ROM = 1'b1;//CPU_RD;
	

	/**************** Video output ******************/	
	assign VGA = {1'b0, I, G, 1'b0, I, R, I, B};
	//                  I               G                     I               R               I               B
	//assign VGA = {1'b0, EX_RGBI_PIX[0], EX_RGBI_PIX[2], 1'b0, EX_RGBI_PIX[0], EX_RGBI_PIX[3], EX_RGBI_PIX[0], EX_RGBI_PIX[1]};
	// Vertical sync
	assign VS = SYNC;
	// TODO: in Jasper this pin use to enable scart
	assign HS = 1'b1;
	// Not used.
	assign SGI = 1'b0;

	
	// port 
	assign BEEP = SOUND;
	assign TAPE_OUT = TAPEOUT;

	//
	assign RD_1F = 1'b1;
	
	assign C_DOS = 1'b0;
	
	
	//
	wire test_pin;
	
	assign EXT2 = reg_fe[0];//CAS_n;
	assign EXT3 = C1;
	
	
	// io
	wire iowr = CPU_IORQ | CPU_WR ;//| ~m1;
	wire iord = CPU_IORQ | CPU_RD ;//| ~m1;
	
	// register fe
	reg [7:0] reg_fe = 8'b0;
	always @(negedge iowr) begin
		if(A[7:0] == 8'hfe) reg_fe = D;
	end
	assign D = (~iord & (A[7:0] == 8'hfe))?reg_fe:8'bz;

	// PSG <---- Deleted. This pins now BBSRAM RWIO.
	//assign AYCLK = 1'bz;
	//assign BDIR = 1'bz;
	//assign BC1 = 1'bz;

	// CPU reset
	wire C39 = CPU_RESET;
	
	wire C1, C25, C2, C31, C3, B1, B2, B3, B4, B5, B6, SSI, B7, B8, B9, B10, B11, B12, B13, C6, KSI, C7, BL, C5, C8, RAS, RAS_n, CAS, CAS_n, B14, B15, B16, B17;
	pent_gen gen (.clk14m(CLK_14MHZ), .C30(C30),
	.C1(C1), .C25(C25), .C2(C2), .C31(C31), .C3(C3), .B1(B1), .B2(B2), .B3(B3), .B4(B4), .B5(B5), .B6(B6), .SSI(SSI), .B7(B7), .B8(B8), .B9(B9), .B10(B10), .B11(B11),
	.B12(B12), .B13(B13), .C6(C6), .KSI(KSI), .C7(C7), .BL(BL), .C5(C5), .C8(C8), .RAS(RAS), .RAS_n(RAS_n), .CAS(CAS), .CAS_n(CAS_n), .B14(B14), .B15(B15), .B16(B16), .B17(B17));
	
	wire RD, C19, C16, C20, C13, CPU, DIS, C29, C17, C30, C18, B18;
	pent_log logicz(.B13(B13), .RD_n(CPU_RD), .RAS(RAS), .MREQ(CPU_MREQ), .A15(A[15]), .A14(A[14]), .CAS_n(CAS_n), .RFS(CPU_RFSH), 
	.RD(RD), .C19(C19), .C16(C16), .C20(C20), .C13(C13), .CPU(CPU), .DIS(DIS), .C29(C29), .C17(C17), .C30(C30), .C18(C18), .B18(B18));
	
	
	wire C33, C34, C35, C36, C37, C38;
	pent_logic_0 port7ffd  ( .D(D[5:0]), .C39(C39), .A14(A[14]), .IORQn(CPU_IORQ), .WRn(CPU_WR),.A1(A[1]), .A15(A[15]), .CAS(CAS), .DIS(DIS),
	.C33(C33), .C34(C34), .C35(C35), .C36(C36),.C37(C37),.C38(C38));


	wire K9, K10, K11, TAPEOUT, SOUND;
	pent_logic_1 logi(.D(D[4:0]), .WRn(CPU_WR), .A0(A[0]), .IORQn(CPU_IORQ), .RD(RD),
	.K9(K9), .K10(K10), .K11(K11), .TAPEOUT(TAPEOUT), .SOUND(SOUND));

	wire R, G, B, I, SYNC;
	video video0(.Q(MD), .C17(C17), .C3(C3), .C18(C18), .C1(C1), .C2(C2), .K9(K9), .K10(K10), .K11(K11), .BL(BL), .C5(C5), .C7(C7), .FLASHER(flash_gen),
	.R(R), .G(G), .B(B), .I(I), .SYNC(SYNC), .test_pin(test_pin));
	
endmodule

/*
set_global_assignment -name FAMILY MAX3000A
set_global_assignment -name DEVICE "EPM3512AQC208-10"
set_global_assignment -name TOP_LEVEL_ENTITY epm3256_igp_orig
set_global_assignment -name ORIGINAL_QUARTUS_VERSION "13.0 SP1"
set_global_assignment -name PROJECT_CREATION_TIME_DATE "22:07:41  NOVEMBER 23, 2022"
set_global_assignment -name LAST_QUARTUS_VERSION "13.0 SP1"
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY build
set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR "-1"
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
set_global_assignment -name MAX7000_DEVICE_IO_STANDARD "3.3-V LVTTL"
set_location_assignment PIN_100 -to C_IODOS
set_location_assignment PIN_98 -to A[6]
set_location_assignment PIN_97 -to A[7]
set_location_assignment PIN_96 -to CPU_M1
set_location_assignment PIN_95 -to A[5]
set_location_assignment PIN_93 -to CPU_RFSH
set_location_assignment PIN_92 -to A[4]
set_location_assignment PIN_91 -to A[8]
set_location_assignment PIN_90 -to CS_ROM
set_location_assignment PIN_7 -to KBD_CLK
set_location_assignment PIN_89 -to A[10]
set_location_assignment PIN_87 -to A[11]
set_location_assignment PIN_86 -to A[9]
set_location_assignment PIN_81 -to MA[2]
set_location_assignment PIN_79 -to MA[1]
set_location_assignment PIN_78 -to MA[10]
set_location_assignment PIN_77 -to MA[3]
set_location_assignment PIN_76 -to MA[4]
set_location_assignment PIN_71 -to MA[5]
set_location_assignment PIN_70 -to MA[9]
set_location_assignment PIN_8 -to HS
set_location_assignment PIN_69 -to MA[6]
set_location_assignment PIN_68 -to MA[8]
set_location_assignment PIN_67 -to MA[7]
set_location_assignment PIN_66 -to MA[13]
set_location_assignment PIN_65 -to MA[12]
set_location_assignment PIN_61 -to MD[4]
set_location_assignment PIN_60 -to MD[6]
set_location_assignment PIN_59 -to MD[5]
set_location_assignment PIN_58 -to ROM_A15
set_location_assignment PIN_55 -to RD_1F
set_location_assignment PIN_48 -to WR_RAM
set_location_assignment PIN_73 -to MA[11]
set_location_assignment PIN_49 -to MA[14]
set_location_assignment PIN_47 -to MA[16]
set_location_assignment PIN_44 -to MA[15]
set_location_assignment PIN_43 -to MA[0]
set_location_assignment PIN_42 -to MD[7]
set_location_assignment PIN_4 -to VGA[1]
set_location_assignment PIN_39 -to RD_ROM
set_location_assignment PIN_37 -to MD[0]
set_location_assignment PIN_36 -to ROM_A14
set_location_assignment PIN_35 -to MD[1]
set_location_assignment PIN_33 -to MD[2]
set_location_assignment PIN_31 -to WR_ROM
set_location_assignment PIN_3 -to KBD_DI
set_location_assignment PIN_27 -to MD[3]
set_location_assignment PIN_206 -to VGA[0]
set_location_assignment PIN_204 -to VGA[7]
set_location_assignment PIN_203 -to C_MAGIC
set_location_assignment PIN_202 -to VGA[6]
set_location_assignment PIN_199 -to VGA[5]
set_location_assignment PIN_197 -to VGA[4]
set_location_assignment PIN_195 -to VGA[3]
set_location_assignment PIN_193 -to VGA[2]
set_location_assignment PIN_188 -to SGI
set_location_assignment PIN_184 -to CLK_14MHZ
set_location_assignment PIN_183 -to CPU_WR
set_location_assignment PIN_182 -to CPU_RESET
set_location_assignment PIN_181 -to CPU_MREQ
set_location_assignment PIN_18 -to KBD_CS
set_location_assignment PIN_178 -to TAPE_IN
set_location_assignment PIN_175 -to D[2]
set_location_assignment PIN_173 -to D[0]
set_location_assignment PIN_172 -to C_BLK
set_location_assignment PIN_171 -to A[12]
set_location_assignment PIN_170 -to TAPE_OUT
set_location_assignment PIN_168 -to BEEP
set_location_assignment PIN_166 -to A[15]
set_location_assignment PIN_164 -to A[14]
set_location_assignment PIN_163 -to A[13]
set_location_assignment PIN_162 -to VWR
set_location_assignment PIN_161 -to D[7]
set_location_assignment PIN_160 -to VA[13]
set_location_assignment PIN_159 -to C_DOS
set_location_assignment PIN_154 -to VA[8]
set_location_assignment PIN_153 -to D[1]
set_location_assignment PIN_151 -to D[5]
set_location_assignment PIN_150 -to D[6]
set_location_assignment PIN_149 -to VA[14]
set_location_assignment PIN_148 -to VA[9]
set_location_assignment PIN_147 -to VA[12]
set_location_assignment PIN_145 -to VA[7]
set_location_assignment PIN_144 -to VA[11]
set_location_assignment PIN_141 -to VA[6]
set_location_assignment PIN_140 -to A[0]
set_location_assignment PIN_139 -to VA[5]
set_location_assignment PIN_138 -to A[1]
set_location_assignment PIN_137 -to VA[4]
set_location_assignment PIN_135 -to VA[3]
set_location_assignment PIN_133 -to A[2]
set_location_assignment PIN_132 -to VA[2]
set_location_assignment PIN_131 -to A[3]
set_location_assignment PIN_130 -to D[3]
set_location_assignment PIN_129 -to D[4]
set_location_assignment PIN_128 -to CPU_CLK
set_location_assignment PIN_126 -to C_IORQGE
set_location_assignment PIN_124 -to VA[1]
set_location_assignment PIN_122 -to VA[0]
set_location_assignment PIN_117 -to CPU_INT
set_location_assignment PIN_111 -to CPU_IORQ
set_location_assignment PIN_109 -to CPU_BUSRQ
set_location_assignment PIN_102 -to CPU_RD
set_location_assignment PIN_101 -to CPU_WAIT
set_location_assignment PIN_99 -to CPU_NMI
set_location_assignment PIN_10 -to VS
set_location_assignment PIN_120 -to VD[0]
set_location_assignment PIN_118 -to VD[1]
set_location_assignment PIN_115 -to VD[2]
set_location_assignment PIN_114 -to VD[3]
set_location_assignment PIN_112 -to VD[4]
set_location_assignment PIN_110 -to VD[5]
set_location_assignment PIN_136 -to VA[10]
set_location_assignment PIN_13 -to EXT2
set_location_assignment PIN_38 -to CS_RAM0
set_location_assignment PIN_80 -to CS_RAM1
set_location_assignment PIN_45 -to MA[17]
set_location_assignment PIN_46 -to MA[18]
set_location_assignment PIN_17 -to EXT3
set_location_assignment PIN_205 -to C_PNT
set_location_assignment PIN_201 -to C_TURBO
set_global_assignment -name VERILOG_FILE src/epm3256_igp_orig.v
set_global_assignment -name VERILOG_FILE src/logic74.v
set_global_assignment -name VERILOG_FILE src/video.v
set_global_assignment -name VERILOG_FILE src/test_pent_gen.v
set_global_assignment -name VERILOG_FILE src/pent_logic_1.v
set_global_assignment -name VERILOG_FILE src/pent_logic_0.v
set_global_assignment -name VERILOG_FILE src/pent_log.v
set_global_assignment -name VERILOG_FILE src/pent_gen.v
set_location_assignment PIN_56 -to ROM_A16
set_location_assignment PIN_34 -to ROM_A17
set_location_assignment PIN_57 -to ROM_A18
set_location_assignment PIN_169 -to BBSRAM_WR
set_location_assignment PIN_167 -to BBSRAM_RD
set_location_assignment PIN_177 -to BBSRAM_MREQ
set_location_assignment PIN_121 -to EXT1
set_location_assignment PIN_146 -to STM32_BUSRQ
set_location_assignment PIN_119 -to VD[6]
set_location_assignment PIN_123 -to VD[7]

*/
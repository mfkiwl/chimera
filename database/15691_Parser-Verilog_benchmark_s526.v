// This program was cloned from: https://github.com/OpenTimer/Parser-Verilog
// License: MIT License

module s526 (
G1,
G2,
blif_clk_net,
blif_reset_net,
G0,
G198,
G213,
G148,
G214,
G199,
G147);

// Start PIs
input G1;
input G2;
input blif_clk_net;
input blif_reset_net;
input G0;

// Start POs
output G198;
output G213;
output G148;
output G214;
output G199;
output G147;

// Start wires
wire net_47;
wire net_176;
wire net_215;
wire net_296;
wire net_137;
wire net_132;
wire net_54;
wire net_237;
wire net_105;
wire net_129;
wire net_119;
wire net_98;
wire net_12;
wire net_151;
wire net_53;
wire net_93;
wire net_210;
wire net_284;
wire net_168;
wire net_259;
wire net_269;
wire net_127;
wire G147;
wire net_76;
wire net_101;
wire net_187;
wire net_111;
wire net_264;
wire net_90;
wire net_225;
wire net_283;
wire net_100;
wire net_85;
wire net_263;
wire net_252;
wire net_124;
wire net_240;
wire net_160;
wire net_221;
wire net_115;
wire net_4;
wire net_17;
wire net_295;
wire net_164;
wire net_87;
wire net_288;
wire net_0;
wire net_35;
wire net_16;
wire net_239;
wire net_193;
wire net_157;
wire net_257;
wire net_233;
wire net_42;
wire net_120;
wire net_292;
wire net_201;
wire net_109;
wire net_80;
wire net_65;
wire blif_reset_net;
wire net_50;
wire net_234;
wire net_96;
wire net_66;
wire net_38;
wire G213;
wire net_167;
wire net_207;
wire net_136;
wire net_280;
wire net_19;
wire net_126;
wire net_278;
wire net_34;
wire net_108;
wire net_270;
wire net_183;
wire net_150;
wire net_63;
wire G0;
wire net_274;
wire net_287;
wire net_30;
wire net_189;
wire net_24;
wire net_99;
wire net_186;
wire net_46;
wire net_118;
wire net_216;
wire net_146;
wire net_122;
wire net_7;
wire net_224;
wire net_172;
wire net_52;
wire net_165;
wire net_13;
wire net_246;
wire net_94;
wire net_219;
wire net_18;
wire net_131;
wire net_114;
wire net_196;
wire net_29;
wire net_149;
wire net_142;
wire net_248;
wire net_31;
wire net_36;
wire net_158;
wire net_41;
wire net_198;
wire net_253;
wire net_276;
wire net_209;
wire net_3;
wire net_294;
wire net_154;
wire net_213;
wire net_238;
wire net_260;
wire net_28;
wire net_97;
wire net_182;
wire net_192;
wire net_60;
wire net_267;
wire net_273;
wire net_256;
wire net_58;
wire net_82;
wire net_64;
wire net_291;
wire net_121;
wire net_73;
wire net_200;
wire net_177;
wire net_75;
wire net_86;
wire net_206;
wire net_195;
wire net_125;
wire net_107;
wire net_166;
wire net_223;
wire net_179;
wire net_159;
wire net_235;
wire net_61;
wire net_62;
wire net_6;
wire net_217;
wire net_271;
wire net_23;
wire net_117;
wire net_74;
wire net_250;
wire net_205;
wire net_135;
wire net_265;
wire net_242;
wire net_130;
wire net_286;
wire net_147;
wire net_14;
wire net_220;
wire net_293;
wire net_26;
wire net_113;
wire G198;
wire net_32;
wire blif_clk_net;
wire net_40;
wire net_282;
wire net_69;
wire net_161;
wire net_141;
wire net_83;
wire G148;
wire net_95;
wire net_173;
wire net_78;
wire net_27;
wire net_56;
wire G2;
wire net_155;
wire net_261;
wire net_191;
wire net_22;
wire net_181;
wire net_39;
wire net_245;
wire net_2;
wire net_102;
wire net_144;
wire net_227;
wire net_9;
wire net_59;
wire net_162;
wire net_44;
wire net_230;
wire net_277;
wire net_134;
wire net_199;
wire net_45;
wire net_89;
wire net_185;
wire net_290;
wire net_272;
wire net_178;
wire net_208;
wire net_236;
wire net_212;
wire net_243;
wire net_222;
wire net_152;
wire net_116;
wire net_175;
wire net_297;
wire net_91;
wire net_106;
wire net_55;
wire net_258;
wire net_255;
wire net_140;
wire net_266;
wire net_247;
wire net_279;
wire net_104;
wire net_148;
wire net_72;
wire net_25;
wire net_229;
wire net_70;
wire net_251;
wire net_194;
wire net_241;
wire net_5;
wire net_244;
wire G199;
wire net_128;
wire net_138;
wire net_184;
wire net_11;
wire net_123;
wire net_262;
wire net_170;
wire net_68;
wire net_77;
wire net_214;
wire net_249;
wire net_20;
wire net_49;
wire G1;
wire net_15;
wire net_275;
wire net_57;
wire net_71;
wire net_153;
wire net_156;
wire net_84;
wire net_218;
wire G214;
wire net_174;
wire net_231;
wire net_112;
wire net_92;
wire net_1;
wire net_103;
wire net_139;
wire net_226;
wire net_43;
wire net_10;
wire net_228;
wire net_180;
wire net_21;
wire net_169;
wire net_51;
wire net_79;
wire net_171;
wire net_143;
wire net_190;
wire net_88;
wire net_285;
wire net_145;
wire net_281;
wire net_197;
wire net_204;
wire net_81;
wire net_232;
wire net_163;
wire net_254;
wire net_67;
wire net_37;
wire net_202;
wire net_268;
wire net_188;
wire net_110;
wire net_33;
wire net_48;
wire net_8;
wire net_211;
wire net_133;
wire net_203;
wire net_289;

// Start cells
CLKBUF_X2 inst_257 ( .A(net_250), .Z(net_251) );
CLKBUF_X2 inst_290 ( .A(net_277), .Z(net_284) );
INV_X4 inst_145 ( .ZN(net_121), .A(net_17) );
CLKBUF_X2 inst_272 ( .A(net_265), .Z(net_266) );
NAND2_X2 inst_103 ( .A1(net_181), .ZN(net_119), .A2(net_118) );
CLKBUF_X2 inst_248 ( .A(net_241), .Z(net_242) );
AND2_X4 inst_228 ( .A1(net_205), .A2(net_145), .ZN(net_109) );
INV_X4 inst_125 ( .A(net_199), .ZN(net_198) );
DFFR_X2 inst_207 ( .QN(net_214), .RN(net_170), .D(net_139), .CK(net_274) );
INV_X4 inst_138 ( .ZN(net_26), .A(net_7) );
INV_X4 inst_159 ( .ZN(net_38), .A(net_3) );
INV_X4 inst_134 ( .A(net_188), .ZN(net_187) );
CLKBUF_X2 inst_244 ( .A(net_237), .Z(net_238) );
INV_X4 inst_131 ( .A(net_192), .ZN(net_191) );
DFFR_X2 inst_214 ( .RN(net_170), .D(net_168), .QN(net_2), .CK(net_234) );
INV_X2 inst_180 ( .A(net_201), .ZN(net_200) );
INV_X4 inst_160 ( .ZN(net_156), .A(net_121) );
NOR2_X2 inst_33 ( .A2(net_222), .ZN(net_132), .A1(net_56) );
NOR2_X2 inst_47 ( .ZN(net_91), .A2(net_84), .A1(net_59) );
NOR3_X2 inst_19 ( .A1(net_177), .ZN(net_159), .A3(net_158), .A2(net_98) );
NOR4_X2 inst_8 ( .A1(net_182), .ZN(net_122), .A3(net_121), .A4(net_102), .A2(net_69) );
AND2_X2 inst_232 ( .ZN(net_87), .A2(net_86), .A1(net_38) );
CLKBUF_X2 inst_301 ( .A(net_294), .Z(net_295) );
CLKBUF_X2 inst_297 ( .A(net_290), .Z(net_291) );
CLKBUF_X2 inst_247 ( .A(net_240), .Z(net_241) );
NOR2_X4 inst_27 ( .ZN(net_131), .A2(net_101), .A1(net_100) );
NAND2_X2 inst_100 ( .ZN(net_212), .A1(net_182), .A2(net_99) );
CLKBUF_X2 inst_302 ( .A(net_295), .Z(net_296) );
CLKBUF_X2 inst_279 ( .A(net_272), .Z(net_273) );
CLKBUF_X2 inst_253 ( .A(net_246), .Z(net_247) );
DFFR_X2 inst_211 ( .QN(net_225), .RN(net_170), .D(net_163), .CK(net_256) );
INV_X4 inst_162 ( .ZN(net_99), .A(net_28) );
NAND2_X2 inst_93 ( .ZN(net_199), .A1(net_33), .A2(net_3) );
NAND2_X4 inst_81 ( .ZN(net_171), .A1(net_20), .A2(net_3) );
INV_X4 inst_139 ( .ZN(net_19), .A(net_15) );
INV_X4 inst_155 ( .ZN(net_61), .A(net_8) );
NOR2_X2 inst_59 ( .ZN(net_163), .A2(net_153), .A1(net_143) );
INV_X4 inst_135 ( .A(net_188), .ZN(net_186) );
INV_X1 inst_196 ( .A(net_12), .ZN(G199) );
NOR2_X2 inst_55 ( .ZN(net_107), .A2(net_79), .A1(net_55) );
NOR2_X2 inst_37 ( .A1(net_184), .ZN(net_71), .A2(net_70) );
CLKBUF_X2 inst_237 ( .A(net_230), .Z(net_231) );
INV_X4 inst_148 ( .ZN(net_41), .A(net_19) );
CLKBUF_X2 inst_264 ( .A(net_247), .Z(net_258) );
INV_X2 inst_191 ( .ZN(net_114), .A(net_113) );
NAND2_X4 inst_84 ( .ZN(net_111), .A1(net_104), .A2(net_49) );
NOR2_X2 inst_51 ( .ZN(net_102), .A1(net_99), .A2(net_72) );
INV_X4 inst_142 ( .ZN(net_24), .A(net_16) );
NAND2_X4 inst_80 ( .A1(net_203), .A2(net_185), .ZN(net_40) );
CLKBUF_X2 inst_303 ( .A(net_296), .Z(net_297) );
CLKBUF_X2 inst_298 ( .A(net_291), .Z(net_292) );
INV_X4 inst_173 ( .A(net_142), .ZN(net_57) );
AND2_X4 inst_224 ( .A1(net_225), .ZN(net_207), .A2(net_8) );
DFFR_X1 inst_216 ( .RN(net_170), .D(net_159), .QN(net_10), .CK(net_260) );
NAND3_X2 inst_78 ( .A2(net_209), .A1(net_208), .ZN(net_165), .A3(net_140) );
CLKBUF_X2 inst_287 ( .A(net_269), .Z(net_281) );
NOR2_X2 inst_42 ( .A1(net_187), .ZN(net_77), .A2(net_9) );
CLKBUF_X2 inst_241 ( .A(net_231), .Z(net_235) );
INV_X2 inst_177 ( .A(net_216), .ZN(net_215) );
AND2_X2 inst_231 ( .ZN(net_179), .A2(net_74), .A1(net_66) );
CLKBUF_X2 inst_270 ( .A(net_263), .Z(net_264) );
INV_X2 inst_183 ( .A(net_191), .ZN(net_190) );
NOR2_X4 inst_26 ( .A2(net_220), .ZN(net_181), .A1(net_100) );
INV_X4 inst_151 ( .ZN(net_28), .A(net_23) );
NAND4_X2 inst_64 ( .A4(net_179), .A1(net_178), .ZN(net_144), .A3(net_96), .A2(net_70) );
NAND2_X2 inst_107 ( .ZN(net_148), .A1(net_130), .A2(net_123) );
NAND3_X2 inst_70 ( .ZN(net_123), .A3(net_111), .A1(net_53), .A2(net_39) );
INV_X4 inst_129 ( .ZN(net_194), .A(net_2) );
NAND2_X2 inst_92 ( .A2(net_185), .A1(net_116), .ZN(net_39) );
INV_X2 inst_189 ( .A(net_49), .ZN(net_36) );
AND2_X4 inst_223 ( .A2(net_193), .ZN(net_145), .A1(net_8) );
NOR3_X2 inst_11 ( .A2(net_183), .A1(net_180), .ZN(net_90), .A3(net_89) );
INV_X2 inst_188 ( .ZN(net_17), .A(G0) );
NOR3_X2 inst_14 ( .ZN(net_127), .A2(net_126), .A3(net_108), .A1(net_73) );
NOR2_X2 inst_31 ( .A2(net_145), .ZN(net_52), .A1(G213) );
CLKBUF_X2 inst_252 ( .A(net_245), .Z(net_246) );
INV_X4 inst_158 ( .ZN(net_89), .A(net_43) );
INV_X4 inst_141 ( .A(net_10), .ZN(G148) );
NAND4_X2 inst_62 ( .A3(net_156), .ZN(net_133), .A1(net_132), .A4(net_131), .A2(net_78) );
DFFR_X2 inst_200 ( .RN(net_170), .D(net_76), .QN(net_15), .CK(net_292) );
CLKBUF_X2 inst_251 ( .A(net_244), .Z(net_245) );
CLKBUF_X2 inst_286 ( .A(net_276), .Z(net_280) );
NOR2_X2 inst_57 ( .ZN(net_178), .A1(net_121), .A2(net_113) );
CLKBUF_X2 inst_300 ( .A(net_293), .Z(net_294) );
NAND2_X2 inst_102 ( .A1(net_212), .ZN(net_124), .A2(net_43) );
NOR2_X2 inst_32 ( .ZN(net_55), .A2(net_54), .A1(net_12) );
INV_X4 inst_144 ( .ZN(net_23), .A(net_4) );
INV_X1 inst_195 ( .A(net_219), .ZN(net_217) );
NOR3_X2 inst_21 ( .ZN(net_161), .A3(net_158), .A1(net_109), .A2(net_94) );
CLKBUF_X2 inst_281 ( .A(net_253), .Z(net_275) );
NAND2_X2 inst_97 ( .A2(net_198), .A1(net_99), .ZN(net_83) );
INV_X4 inst_124 ( .A(net_203), .ZN(net_201) );
NOR3_X2 inst_18 ( .A2(net_196), .ZN(net_155), .A3(net_145), .A1(net_135) );
DFFR_X2 inst_208 ( .RN(net_170), .D(net_147), .QN(net_6), .CK(net_269) );
NAND2_X4 inst_88 ( .ZN(net_151), .A2(net_150), .A1(net_136) );
AND4_X2 inst_220 ( .A1(net_152), .ZN(net_115), .A2(net_86), .A4(net_83), .A3(net_47) );
NOR3_X4 inst_9 ( .ZN(net_147), .A1(net_125), .A3(net_103), .A2(net_91) );
NAND2_X2 inst_113 ( .ZN(net_168), .A1(net_162), .A2(net_133) );
INV_X1 inst_198 ( .A(net_9), .ZN(G147) );
NOR2_X2 inst_50 ( .A1(net_188), .ZN(net_98), .A2(net_81) );
INV_X4 inst_137 ( .A(net_185), .ZN(net_183) );
CLKBUF_X2 inst_245 ( .A(net_238), .Z(net_239) );
INV_X4 inst_130 ( .A(net_193), .ZN(net_192) );
AND2_X4 inst_227 ( .A1(net_152), .ZN(net_64), .A2(net_63) );
AND2_X4 inst_226 ( .A1(net_191), .ZN(net_93), .A2(net_54) );
CLKBUF_X2 inst_260 ( .A(net_253), .Z(net_254) );
INV_X2 inst_176 ( .A(net_224), .ZN(net_223) );
NOR2_X2 inst_58 ( .A2(net_217), .ZN(net_139), .A1(net_126) );
INV_X4 inst_147 ( .A(net_24), .ZN(net_18) );
NAND2_X4 inst_87 ( .A2(net_216), .A1(net_195), .ZN(net_158) );
CLKBUF_X2 inst_293 ( .A(net_286), .Z(net_287) );
NOR2_X1 inst_61 ( .ZN(net_94), .A2(net_93), .A1(G198) );
DFFR_X2 inst_203 ( .RN(net_170), .D(net_112), .QN(net_5), .CK(net_281) );
DFFR_X2 inst_212 ( .RN(net_170), .D(net_166), .QN(net_8), .CK(net_239) );
CLKBUF_X2 inst_234 ( .A(net_227), .Z(net_228) );
XOR2_X2 inst_0 ( .Z(net_42), .B(net_41), .A(G2) );
INV_X2 inst_184 ( .A(net_11), .ZN(G198) );
CLKBUF_X2 inst_236 ( .A(net_227), .Z(net_230) );
NOR3_X2 inst_10 ( .A3(net_200), .A1(net_180), .A2(net_89), .ZN(net_88) );
OR2_X4 inst_4 ( .A2(net_221), .ZN(net_81), .A1(net_46) );
NAND3_X2 inst_65 ( .A2(net_202), .ZN(net_104), .A3(net_73), .A1(net_34) );
NOR2_X2 inst_28 ( .A1(net_201), .A2(net_185), .ZN(net_51) );
CLKBUF_X2 inst_242 ( .A(net_235), .Z(net_236) );
CLKBUF_X2 inst_275 ( .A(net_268), .Z(net_269) );
INV_X8 inst_117 ( .A(net_225), .ZN(net_224) );
NAND2_X2 inst_98 ( .ZN(net_92), .A2(net_50), .A1(net_40) );
CLKBUF_X2 inst_263 ( .A(blif_clk_net), .Z(net_257) );
INV_X2 inst_190 ( .A(net_118), .ZN(net_113) );
DFFR_X2 inst_204 ( .RN(net_170), .D(net_122), .QN(net_4), .CK(net_280) );
INV_X2 inst_185 ( .A(net_14), .ZN(G214) );
NOR2_X2 inst_49 ( .A1(net_191), .A2(net_186), .ZN(net_97) );
INV_X4 inst_154 ( .ZN(net_220), .A(net_26) );
NOR3_X2 inst_13 ( .A2(net_126), .ZN(net_112), .A1(net_111), .A3(net_88) );
NAND3_X2 inst_75 ( .A2(net_226), .A3(net_188), .ZN(net_154), .A1(net_152) );
INV_X4 inst_166 ( .A(net_156), .ZN(net_126) );
MUX2_X2 inst_116 ( .A(net_224), .S(net_188), .Z(net_48), .B(G214) );
INV_X4 inst_163 ( .A(net_61), .ZN(net_46) );
NOR2_X2 inst_54 ( .ZN(net_210), .A1(net_80), .A2(net_52) );
NAND2_X4 inst_79 ( .ZN(net_172), .A2(net_23), .A1(net_1) );
NAND2_X2 inst_109 ( .ZN(net_153), .A1(net_152), .A2(net_129) );
NAND2_X2 inst_106 ( .ZN(net_130), .A2(net_117), .A1(net_56) );
DFFR_X1 inst_219 ( .RN(net_170), .D(net_161), .QN(net_11), .CK(net_243) );
DFFR_X2 inst_201 ( .RN(net_170), .D(net_75), .QN(net_16), .CK(net_287) );
NOR2_X2 inst_43 ( .ZN(net_176), .A2(net_78), .A1(net_62) );
CLKBUF_X2 inst_255 ( .A(net_248), .Z(net_249) );
INV_X4 inst_128 ( .ZN(net_206), .A(net_45) );
NAND3_X2 inst_73 ( .A1(net_218), .A3(net_210), .A2(net_188), .ZN(net_141) );
CLKBUF_X2 inst_256 ( .A(net_249), .Z(net_250) );
NOR2_X4 inst_23 ( .A1(net_224), .A2(net_211), .ZN(net_205) );
NAND2_X2 inst_94 ( .A1(net_184), .ZN(net_50), .A2(net_49) );
CLKBUF_X2 inst_262 ( .A(net_255), .Z(net_256) );
CLKBUF_X2 inst_243 ( .A(net_236), .Z(net_237) );
CLKBUF_X2 inst_285 ( .A(net_278), .Z(net_279) );
NOR3_X2 inst_15 ( .ZN(net_134), .A1(net_110), .A3(net_105), .A2(net_90) );
DFFR_X1 inst_218 ( .RN(net_170), .D(net_160), .QN(net_7), .CK(net_247) );
INV_X1 inst_197 ( .ZN(net_170), .A(blif_reset_net) );
CLKBUF_X2 inst_250 ( .A(blif_clk_net), .Z(net_244) );
INV_X2 inst_179 ( .ZN(net_202), .A(net_201) );
NOR2_X4 inst_24 ( .ZN(net_180), .A2(net_172), .A1(net_171) );
OR2_X2 inst_6 ( .ZN(net_86), .A1(net_32), .A2(net_25) );
NAND2_X1 inst_114 ( .A1(net_63), .ZN(net_47), .A2(net_22) );
INV_X1 inst_194 ( .A(net_224), .ZN(net_221) );
NAND3_X2 inst_76 ( .ZN(net_157), .A3(net_156), .A2(net_150), .A1(net_137) );
INV_X4 inst_150 ( .A(net_37), .ZN(net_22) );
INV_X4 inst_172 ( .ZN(net_150), .A(net_46) );
CLKBUF_X2 inst_277 ( .A(net_270), .Z(net_271) );
NAND2_X4 inst_83 ( .ZN(net_100), .A1(net_66), .A2(net_6) );
INV_X4 inst_121 ( .ZN(net_219), .A(net_216) );
INV_X4 inst_123 ( .ZN(net_203), .A(net_5) );
CLKBUF_X2 inst_299 ( .A(net_243), .Z(net_293) );
OR2_X4 inst_2 ( .A1(net_201), .ZN(net_49), .A2(net_18) );
NAND2_X4 inst_86 ( .ZN(net_216), .A2(net_174), .A1(net_173) );
INV_X8 inst_118 ( .ZN(net_27), .A(net_20) );
NOR3_X2 inst_20 ( .ZN(net_160), .A1(net_148), .A3(net_85), .A2(net_60) );
INV_X4 inst_153 ( .A(net_37), .ZN(net_25) );
NOR2_X2 inst_38 ( .ZN(net_72), .A2(net_68), .A1(net_63) );
CLKBUF_X2 inst_295 ( .A(net_288), .Z(net_289) );
NOR2_X2 inst_52 ( .ZN(net_105), .A2(net_104), .A1(net_71) );
NAND2_X2 inst_90 ( .ZN(net_30), .A1(net_26), .A2(net_6) );
CLKBUF_X2 inst_267 ( .A(net_228), .Z(net_261) );
INV_X4 inst_140 ( .ZN(net_20), .A(net_0) );
DFFR_X2 inst_209 ( .RN(net_170), .D(net_146), .QN(net_9), .CK(net_264) );
CLKBUF_X2 inst_259 ( .A(net_238), .Z(net_253) );
AND3_X4 inst_221 ( .ZN(net_125), .A1(net_124), .A2(net_116), .A3(net_51) );
NOR2_X2 inst_40 ( .A1(net_126), .ZN(net_75), .A2(net_44) );
INV_X4 inst_167 ( .ZN(net_63), .A(net_33) );
CLKBUF_X2 inst_246 ( .A(net_233), .Z(net_240) );
CLKBUF_X2 inst_289 ( .A(net_282), .Z(net_283) );
NAND2_X2 inst_95 ( .A1(net_183), .ZN(net_53), .A2(net_31) );
XOR2_X2 inst_1 ( .Z(net_44), .B(net_43), .A(G1) );
CLKBUF_X2 inst_282 ( .A(net_275), .Z(net_276) );
NAND3_X2 inst_72 ( .A3(net_216), .A2(net_191), .ZN(net_140), .A1(net_107) );
NOR2_X2 inst_44 ( .A2(net_204), .ZN(net_79), .A1(net_61) );
CLKBUF_X2 inst_274 ( .A(net_267), .Z(net_268) );
INV_X4 inst_174 ( .A(net_132), .ZN(net_65) );
NAND2_X1 inst_115 ( .A2(net_216), .ZN(net_135), .A1(net_48) );
CLKBUF_X2 inst_235 ( .A(net_228), .Z(net_229) );
DFFR_X2 inst_210 ( .RN(net_170), .D(net_155), .QN(net_14), .CK(net_229) );
INV_X4 inst_164 ( .A(net_116), .ZN(net_58) );
OR2_X2 inst_5 ( .ZN(net_31), .A2(net_21), .A1(net_6) );
CLKBUF_X2 inst_278 ( .A(net_271), .Z(net_272) );
INV_X4 inst_157 ( .ZN(net_116), .A(net_6) );
CLKBUF_X2 inst_239 ( .A(net_232), .Z(net_233) );
NAND2_X2 inst_105 ( .A1(net_223), .ZN(net_129), .A2(net_119) );
NAND3_X2 inst_68 ( .A2(net_152), .ZN(net_110), .A3(net_92), .A1(net_67) );
DFFR_X2 inst_213 ( .QN(net_189), .RN(net_170), .D(net_167), .CK(net_237) );
NOR2_X2 inst_53 ( .A2(net_196), .ZN(net_106), .A1(net_77) );
INV_X4 inst_175 ( .ZN(net_136), .A(net_120) );
DFFR_X2 inst_205 ( .QN(net_185), .RN(net_170), .D(net_134), .CK(net_279) );
CLKBUF_X2 inst_254 ( .A(net_231), .Z(net_248) );
AND2_X4 inst_225 ( .ZN(net_84), .A2(net_51), .A1(net_17) );
INV_X4 inst_133 ( .ZN(net_211), .A(net_188) );
CLKBUF_X2 inst_292 ( .A(net_285), .Z(net_286) );
NAND2_X2 inst_112 ( .ZN(net_167), .A2(net_154), .A1(net_138) );
NAND3_X2 inst_67 ( .ZN(net_213), .A3(net_207), .A1(net_206), .A2(net_19) );
INV_X2 inst_181 ( .A(net_199), .ZN(net_197) );
INV_X4 inst_127 ( .A(net_196), .ZN(net_195) );
NOR2_X2 inst_29 ( .ZN(net_34), .A2(net_28), .A1(net_27) );
INV_X2 inst_186 ( .A(net_13), .ZN(G213) );
NOR3_X2 inst_17 ( .A1(net_215), .ZN(net_146), .A2(net_145), .A3(net_106) );
INV_X4 inst_146 ( .ZN(net_56), .A(net_26) );
CLKBUF_X2 inst_249 ( .A(net_242), .Z(net_243) );
DFFR_X2 inst_202 ( .RN(net_170), .D(net_115), .QN(net_1), .CK(net_283) );
INV_X2 inst_187 ( .ZN(net_175), .A(net_8) );
DFFR_X2 inst_206 ( .RN(net_170), .D(net_127), .QN(net_3), .CK(net_276) );
INV_X4 inst_122 ( .A(net_219), .ZN(net_218) );
INV_X4 inst_126 ( .ZN(net_196), .A(net_45) );
NOR2_X4 inst_25 ( .A1(net_180), .ZN(net_101), .A2(net_24) );
CLKBUF_X2 inst_240 ( .A(net_233), .Z(net_234) );
NAND2_X2 inst_110 ( .ZN(net_164), .A1(net_149), .A2(net_141) );
NAND3_X2 inst_74 ( .A3(net_216), .ZN(net_209), .A1(net_97), .A2(net_12) );
CLKBUF_X2 inst_288 ( .A(net_257), .Z(net_282) );
AND2_X4 inst_229 ( .A1(net_191), .ZN(net_80), .A2(net_74) );
NAND2_X2 inst_99 ( .A2(net_191), .A1(net_188), .ZN(net_96) );
NOR2_X2 inst_35 ( .A1(net_191), .ZN(net_62), .A2(net_61) );
NAND3_X2 inst_69 ( .A2(net_224), .A3(net_181), .ZN(net_120), .A1(net_118) );
NOR2_X2 inst_48 ( .ZN(net_95), .A1(net_93), .A2(G148) );
NAND2_X4 inst_82 ( .A1(net_194), .A2(net_189), .ZN(net_45) );
NOR2_X2 inst_46 ( .ZN(net_85), .A2(net_84), .A1(net_29) );
NOR2_X2 inst_30 ( .A2(net_192), .ZN(net_78), .A1(net_8) );
INV_X4 inst_136 ( .A(net_185), .ZN(net_184) );
NAND2_X2 inst_108 ( .A2(net_215), .ZN(net_149), .A1(net_57) );
CLKBUF_X2 inst_233 ( .A(blif_clk_net), .Z(net_227) );
INV_X4 inst_165 ( .A(net_33), .ZN(net_32) );
CLKBUF_X2 inst_271 ( .A(net_254), .Z(net_265) );
CLKBUF_X2 inst_283 ( .A(net_227), .Z(net_277) );
NOR2_X4 inst_22 ( .A2(net_225), .A1(net_175), .ZN(net_74) );
NOR2_X2 inst_34 ( .ZN(net_59), .A1(net_58), .A2(G0) );
NOR3_X2 inst_12 ( .A3(net_180), .A2(net_116), .ZN(net_103), .A1(net_89) );
NAND3_X2 inst_71 ( .ZN(net_226), .A3(net_176), .A2(net_132), .A1(net_131) );
NOR2_X2 inst_56 ( .A1(net_197), .ZN(net_108), .A2(net_87) );
NAND2_X2 inst_104 ( .ZN(net_128), .A2(net_124), .A1(net_66) );
NOR2_X1 inst_60 ( .A1(net_56), .ZN(net_29), .A2(G0) );
INV_X4 inst_168 ( .ZN(net_35), .A(net_34) );
INV_X4 inst_169 ( .ZN(net_70), .A(net_30) );
DFFR_X2 inst_215 ( .RN(net_170), .D(net_169), .QN(net_12), .CK(net_257) );
INV_X4 inst_161 ( .ZN(net_152), .A(net_121) );
NOR3_X2 inst_16 ( .ZN(net_143), .A2(net_142), .A1(net_128), .A3(net_65) );
CLKBUF_X2 inst_276 ( .A(net_236), .Z(net_270) );
OR2_X4 inst_3 ( .A2(net_189), .ZN(net_54), .A1(net_8) );
INV_X4 inst_156 ( .ZN(net_33), .A(net_27) );
INV_X4 inst_170 ( .ZN(net_66), .A(net_40) );
CLKBUF_X2 inst_258 ( .A(net_251), .Z(net_252) );
NOR2_X2 inst_41 ( .A1(net_126), .ZN(net_76), .A2(net_42) );
DFFR_X2 inst_199 ( .RN(net_170), .D(net_64), .QN(net_0), .CK(net_297) );
CLKBUF_X2 inst_296 ( .A(net_289), .Z(net_290) );
NAND2_X2 inst_91 ( .ZN(net_68), .A1(net_38), .A2(net_37) );
INV_X4 inst_132 ( .A(net_189), .ZN(net_188) );
INV_X4 inst_143 ( .ZN(net_37), .A(net_1) );
NOR2_X2 inst_36 ( .ZN(net_69), .A2(net_68), .A1(net_35) );
INV_X4 inst_152 ( .ZN(net_43), .A(net_24) );
CLKBUF_X2 inst_265 ( .A(net_258), .Z(net_259) );
NAND2_X2 inst_96 ( .A2(net_70), .ZN(net_67), .A1(net_36) );
NOR2_X2 inst_45 ( .A1(net_121), .ZN(net_82), .A2(net_81) );
NAND2_X2 inst_101 ( .A2(net_118), .ZN(net_117), .A1(net_116) );
CLKBUF_X2 inst_269 ( .A(net_262), .Z(net_263) );
CLKBUF_X2 inst_238 ( .A(net_231), .Z(net_232) );
CLKBUF_X2 inst_261 ( .A(net_254), .Z(net_255) );
INV_X2 inst_178 ( .A(net_205), .ZN(net_204) );
NAND2_X4 inst_89 ( .A1(net_219), .ZN(net_208), .A2(net_142) );
NAND2_X2 inst_111 ( .ZN(net_166), .A1(net_157), .A2(net_144) );
NAND3_X2 inst_66 ( .A3(net_196), .ZN(net_174), .A1(net_74), .A2(net_41) );
CLKBUF_X2 inst_268 ( .A(net_261), .Z(net_262) );
OR2_X2 inst_7 ( .ZN(net_177), .A2(net_109), .A1(net_95) );
NAND4_X2 inst_63 ( .A3(net_196), .A4(net_181), .ZN(net_138), .A2(net_114), .A1(net_82) );
INV_X2 inst_182 ( .A(net_194), .ZN(net_193) );
CLKBUF_X2 inst_273 ( .A(net_266), .Z(net_267) );
INV_X4 inst_120 ( .A(net_224), .ZN(net_222) );
CLKBUF_X2 inst_294 ( .A(net_255), .Z(net_288) );
INV_X8 inst_119 ( .ZN(net_118), .A(net_101) );
CLKBUF_X2 inst_284 ( .A(net_277), .Z(net_278) );
AND2_X4 inst_222 ( .ZN(net_73), .A1(net_3), .A2(net_1) );
INV_X2 inst_192 ( .ZN(net_137), .A(net_136) );
CLKBUF_X2 inst_280 ( .A(net_273), .Z(net_274) );
NAND2_X4 inst_85 ( .A2(net_214), .A1(net_213), .ZN(net_173) );
CLKBUF_X2 inst_291 ( .A(net_284), .Z(net_285) );
CLKBUF_X2 inst_266 ( .A(net_259), .Z(net_260) );
INV_X4 inst_149 ( .A(net_26), .ZN(net_21) );
INV_X2 inst_193 ( .ZN(net_169), .A(net_165) );
NOR2_X2 inst_39 ( .A1(net_199), .ZN(net_182), .A2(net_37) );
AND2_X2 inst_230 ( .A1(net_121), .ZN(net_60), .A2(net_58) );
DFFR_X1 inst_217 ( .RN(net_170), .D(net_164), .QN(net_13), .CK(net_252) );
NAND3_X2 inst_77 ( .A2(net_190), .ZN(net_162), .A3(net_156), .A1(net_151) );
INV_X4 inst_171 ( .ZN(net_142), .A(net_58) );

endmodule

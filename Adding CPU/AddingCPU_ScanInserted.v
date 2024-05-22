
//Verilog file of module residue5

`timescale 1 ns / 1ns

module AddingCPU_ScanInserted(global_reset, clk, reset, data_bus_in, {adr_bus,rd_mem,wr_mem,data_bus_out}, NbarT, Si, So);

input global_reset;
   input reset;
   input clk;
   input [7:0]data_bus_in;

   output [5:0]adr_bus;
   output rd_mem;
   output wr_mem;
   output [7:0]data_bus_out;
   
   input NbarT;
   input Si;
   output So;
   
wire
HM_1,
HM_2,
HM_3,
HM_4,
HM_5,
HM_6,
HM_7,
HM_8,
HM_9,
HM_10,
HM_11,
HM_12,
HM_13,
HM_14,
HM_15,
HM_16,
HM_17,
HM_18,
HM_19,
HM_20,
HM_21,
HM_22,
HM_23,
HM_24,
HM_25,
HM_26,
HM_27,
HM_28,
HM_29,
HM_30,
HM_31,
HM_32,
HM_33,
HM_34,
HM_35,
HM_36,
HM_37,
HM_38,
HM_39,
HM_40,
HM_41,
HM_42,
HM_43,
HM_44,
HM_45,
HM_46,
HM_47,
HM_48,
HM_49,
HM_50,
HM_51,
HM_52,
HM_53,
HM_54,
HM_55,
HM_56,
HM_57,
HM_58,
HM_59,
HM_60,
HM_61,
HM_62,
HM_63,
HM_64,
HM_65,
HM_66,
HM_67,
HM_68,
HM_69,
HM_70,
HM_71,
HM_72,
HM_73,
HM_74,
HM_75,
HM_76,
HM_77,
HM_78,
HM_79,
HM_80,
HM_81,
HM_82,
HM_83,
HM_84,
HM_85,
HM_86,
HM_87,
HM_88,
HM_89,
HM_90,
HM_91,
HM_92,
HM_93,
HM_94,
HM_95,
HM_96,
HM_97,
HM_98,
HM_99,
HM_100,
HM_101,
HM_102,
HM_103,
HM_104,
HM_105,
HM_106,
HM_107,
HM_108,
HM_109,
HM_110,
HM_111,
HM_112,
HM_113,
HM_114,
HM_115,
HM_116,
HM_117,
HM_118,
HM_119,
HM_120,
HM_121,
HM_122,
HM_123,
HM_124,
HM_125,
HM_126,
HM_127,
HM_128,
HM_129,
HM_130,
HM_131,
HM_132,
HM_133,
HM_134,
HM_135,
HM_136,
HM_137,
HM_138,
HM_139,
HM_140,
HM_141,
HM_142,
HM_143,
HM_144,
HM_145,
HM_146,
HM_147,
HM_148,
HM_149,
HM_150,
HM_151,
HM_152,
HM_153,
HM_154,
HM_155,
HM_156,
HM_157,
HM_158,
HM_159,
HM_160,
HM_161,
HM_162,
HM_163,
HM_164,
HM_165,
HM_166,
HM_167,
HM_168,
HM_169,
HM_170,
HM_171,
HM_172,
HM_173,
HM_174,
HM_175,
HM_176,
HM_177,
HM_178,
HM_179,
HM_180,
HM_181,
HM_182,
HM_183,
HM_184,
HM_185,
HM_186,
HM_187,
HM_188,
HM_189,
HM_190,
HM_191,
HM_192,
HM_193,
HM_194,
HM_195,
HM_196,
HM_197,
HM_198,
HM_199,
HM_200,
HM_201,
HM_202,
HM_203,
HM_204,
HM_205,
HM_206,
HM_207,
HM_208,
HM_209,
HM_210,
HM_211,
HM_212,
HM_213,
HM_214,
HM_215,
HM_216,
HM_217,
HM_218,
HM_219,
HM_220,
HM_221,
HM_222,
HM_223,
HM_224,
HM_225,
HM_226,
HM_227,
HM_228,
HM_229,
HM_230,
HM_231,
HM_232,
HM_233,
HM_234,
HM_235,
HM_236,
HM_237,
HM_238,
HM_239,
HM_240,
HM_241,
HM_242,
HM_243,
HM_244,
HM_245,
HM_246,
HM_247,
HM_248,
HM_249,
HM_250,
HM_251,
HM_252,
HM_253,
clk_0,
clk_1,
clk_2,
clk_3,
clk_4,
clk_5,
clk_6,
clk_7,
clk_8,
clk_9,
clk_10,
clk_11,
clk_12,
clk_13,
clk_14,
clk_15,
clk_16,
clk_17,
clk_18,
clk_19,
clk_20,
clk_21,
clk_22,
clk_23,
data_bus_in_0_0,
data_bus_in_0_1,
data_bus_in_0_2,
data_bus_in_1_0,
data_bus_in_1_1,
data_bus_in_1_2,
data_bus_in_2_0,
data_bus_in_2_1,
data_bus_in_2_2,
data_bus_in_3_0,
data_bus_in_3_1,
data_bus_in_3_2,
data_bus_in_4_0,
data_bus_in_4_1,
data_bus_in_4_2,
data_bus_in_5_0,
data_bus_in_5_1,
data_bus_in_5_2,
data_bus_in_6_0,
data_bus_in_6_1,
data_bus_in_6_2,
data_bus_in_7_0,
data_bus_in_7_1,
data_bus_in_7_2,
HM_1_0,
HM_1_1,
HM_1_2,
HM_1_3,
HM_1_4,
HM_1_5,
HM_1_6,
HM_1_7,
HM_1_8,
HM_1_9,
HM_1_10,
HM_1_11,
HM_1_12,
HM_1_13,
HM_1_14,
HM_1_15,
HM_1_16,
HM_1_17,
HM_1_18,
HM_1_19,
HM_1_20,
HM_1_21,
HM_1_22,
HM_1_23,
HM_1_24,
HM_1_25,
HM_1_26,
HM_1_27,
HM_1_28,
HM_1_29,
HM_1_30,
HM_1_31,
HM_1_32,
HM_1_33,
HM_1_34,
HM_1_35,
HM_1_36,
HM_1_37,
HM_1_38,
HM_1_39,
HM_1_40,
HM_1_41,
HM_1_42,
HM_1_43,
HM_1_44,
HM_1_45,
HM_1_46,
HM_1_47,
HM_1_48,
HM_1_49,
HM_1_50,
HM_1_51,
HM_1_52,
HM_1_53,
HM_1_54,
HM_1_55,
HM_1_56,
HM_3_0,
HM_3_1,
HM_3_2,
HM_3_3,
HM_3_4,
HM_3_5,
HM_3_6,
HM_3_7,
HM_5_0,
HM_5_1,
HM_5_2,
HM_5_3,
HM_5_4,
HM_5_5,
HM_5_6,
HM_5_7,
HM_5_8,
HM_5_9,
HM_5_10,
HM_5_11,
HM_5_12,
HM_5_13,
HM_5_14,
HM_5_15,
HM_5_16,
HM_5_17,
HM_5_18,
HM_5_19,
HM_5_20,
HM_5_21,
HM_5_22,
HM_7_0,
HM_7_1,
HM_7_2,
HM_7_3,
HM_7_4,
HM_7_5,
HM_7_6,
HM_7_7,
HM_7_8,
HM_8_0,
HM_8_1,
HM_8_2,
HM_8_3,
HM_8_4,
HM_8_5,
HM_8_6,
HM_8_7,
HM_8_8,
HM_8_9,
HM_8_10,
HM_8_11,
HM_8_12,
HM_8_13,
HM_8_14,
HM_16_0,
HM_16_1,
HM_20_0,
HM_20_1,
HM_20_2,
HM_20_3,
HM_20_4,
HM_20_5,
HM_20_6,
HM_20_7,
HM_21_0,
HM_21_1,
HM_21_2,
HM_21_3,
HM_27_0,
HM_27_1,
HM_27_2,
HM_27_3,
HM_27_4,
HM_28_0,
HM_28_1,
HM_28_2,
HM_30_0,
HM_30_1,
HM_30_2,
HM_30_3,
HM_30_4,
HM_33_0,
HM_33_1,
HM_33_2,
HM_34_0,
HM_34_1,
HM_36_0,
HM_36_1,
HM_36_2,
HM_40_0,
HM_40_1,
HM_40_2,
HM_40_3,
HM_40_4,
HM_42_0,
HM_42_1,
HM_42_2,
HM_42_3,
HM_43_0,
HM_43_1,
HM_43_2,
HM_45_0,
HM_45_1,
HM_45_2,
HM_45_3,
HM_45_4,
HM_49_0,
HM_49_1,
HM_49_2,
HM_49_3,
HM_49_4,
HM_49_5,
HM_51_0,
HM_51_1,
HM_51_2,
HM_51_3,
HM_51_4,
HM_53_0,
HM_53_1,
HM_55_0,
HM_55_1,
HM_55_2,
HM_55_3,
HM_24_0,
HM_24_1,
HM_24_2,
HM_62_0,
HM_62_1,
HM_62_2,
HM_62_3,
HM_63_0,
HM_63_1,
HM_63_2,
HM_63_3,
HM_63_4,
HM_63_5,
HM_63_6,
HM_64_0,
HM_64_1,
HM_69_0,
HM_69_1,
HM_69_2,
HM_70_0,
HM_70_1,
HM_75_0,
HM_75_1,
HM_80_0,
HM_80_1,
HM_85_0,
HM_85_1,
HM_86_0,
HM_86_1,
HM_91_0,
HM_91_1,
HM_6_0,
HM_6_1,
HM_6_2,
HM_6_3,
HM_6_4,
HM_6_5,
HM_6_6,
HM_6_7,
HM_6_8,
HM_6_9,
HM_6_10,
HM_6_11,
HM_6_12,
HM_6_13,
HM_6_14,
HM_6_15,
HM_6_16,
HM_6_17,
HM_6_18,
HM_6_19,
HM_6_20,
HM_6_21,
HM_6_22,
HM_6_23,
HM_6_24,
HM_6_25,
HM_6_26,
HM_6_27,
HM_6_28,
HM_6_29,
HM_6_30,
HM_6_31,
HM_6_32,
HM_6_33,
HM_6_34,
HM_6_35,
HM_6_36,
HM_6_37,
HM_6_38,
HM_6_39,
HM_6_40,
HM_6_41,
HM_6_42,
HM_6_43,
HM_6_44,
HM_6_45,
HM_97_0,
HM_97_1,
HM_97_2,
HM_2_0,
HM_2_1,
HM_2_2,
HM_2_3,
HM_101_0,
HM_101_1,
HM_124_0,
HM_124_1,
HM_124_2,
HM_124_3,
HM_129_0,
HM_129_1,
HM_11_0,
HM_11_1,
HM_11_2,
HM_11_3,
HM_11_4,
HM_11_5,
HM_11_6,
HM_11_7,
HM_11_8,
HM_11_9,
HM_142_0,
HM_142_1,
HM_142_2,
HM_142_3,
HM_142_4,
HM_142_5,
HM_142_6,
HM_142_7,
HM_142_8,
HM_142_9,
HM_142_10,
HM_142_11,
HM_142_12,
HM_142_13,
HM_142_14,
HM_142_15,
HM_142_16,
HM_142_17,
HM_142_18,
HM_142_19,
HM_142_20,
HM_142_21,
HM_142_22,
HM_142_23,
HM_142_24,
HM_142_25,
HM_142_26,
HM_142_27,
HM_142_28,
HM_12_0,
HM_12_1,
HM_12_2,
HM_12_3,
HM_12_4,
HM_12_5,
HM_12_6,
HM_35_0,
HM_35_1,
HM_35_2,
HM_35_3,
HM_35_4,
HM_44_0,
HM_44_1,
HM_44_2,
HM_44_3,
HM_44_4,
HM_44_5,
HM_54_0,
HM_54_1,
HM_54_2,
HM_54_3,
HM_54_4,
HM_54_5,
HM_26_0,
HM_26_1,
HM_26_2,
HM_26_3,
HM_26_4,
HM_130_0,
HM_130_1,
HM_130_2,
HM_130_3,
HM_130_4,
HM_130_5,
HM_135_0,
HM_135_1,
HM_135_2,
HM_135_3,
HM_135_4,
HM_10_0,
HM_10_1,
HM_10_2,
HM_10_3,
HM_10_4,
HM_10_5,
HM_10_6,
HM_10_7,
HM_10_8,
HM_10_9,
HM_193_0,
HM_193_1,
HM_193_2,
HM_193_3,
HM_193_4,
HM_193_5,
HM_193_6,
HM_193_7,
HM_14_0,
HM_14_1,
HM_14_2,
HM_14_3,
HM_14_4,
HM_14_5,
HM_14_6,
HM_14_7,
HM_14_8,
HM_29_0,
HM_29_1,
HM_29_2,
HM_29_3,
HM_41_0,
HM_41_1,
HM_41_2,
HM_41_3,
HM_41_4,
HM_50_0,
HM_50_1,
HM_50_2,
HM_50_3,
HM_52_0,
HM_52_1,
HM_52_2,
HM_52_3,
HM_52_4,
HM_52_5,
HM_65_0,
HM_65_1,
HM_65_2,
HM_65_3,
HM_65_4,
HM_65_5,
HM_65_6,
HM_65_7,
HM_65_8,
HM_71_0,
HM_71_1,
HM_71_2,
HM_71_3,
HM_71_4,
HM_71_5,
HM_71_6,
HM_71_7,
HM_76_0,
HM_76_1,
HM_76_2,
HM_76_3,
HM_76_4,
HM_76_5,
HM_76_6,
HM_81_0,
HM_81_1,
HM_81_2,
HM_81_3,
HM_81_4,
HM_81_5,
HM_87_0,
HM_87_1,
HM_87_2,
HM_87_3,
HM_87_4,
HM_92_0,
HM_92_1,
HM_92_2,
HM_92_3,
HM_18_0,
HM_18_1,
HM_18_2,
HM_18_3,
HM_18_4,
HM_18_5,
HM_18_6,
HM_18_7,
HM_18_8,
HM_18_9,
HM_18_10,
HM_18_11,
HM_18_12,
HM_18_13,
HM_18_14,
HM_18_15,
HM_18_16,
HM_18_17,
HM_18_18,
HM_18_19,
HM_18_20,
HM_18_21,
HM_18_22,
HM_18_23,
HM_18_24,
HM_18_25,
HM_18_26,
HM_18_27,
HM_18_28,
HM_18_29,
HM_18_30,
HM_18_31,
HM_18_32,
HM_18_33,
HM_18_34,
HM_18_35,
HM_18_36,
HM_18_37,
HM_18_38,
HM_4_0,
HM_4_1,
HM_4_2,
HM_4_3,
HM_4_4,
HM_4_5,
HM_4_6,
HM_4_7,
HM_4_8,
HM_4_9,
HM_4_10,
HM_4_11,
HM_4_12,
HM_4_13,
HM_4_14,
HM_4_15,
HM_4_16,
HM_4_17,
HM_4_18,
HM_4_19,
HM_4_20,
HM_4_21,
HM_4_22,
HM_4_23,
HM_4_24,
HM_4_25,
HM_4_26,
HM_4_27,
HM_4_28,
HM_4_29,
rd_mem_0,
rd_mem_1,
rd_mem_2,
rd_mem_3,
rd_mem_4,
rd_mem_5,
rd_mem_6,
rd_mem_7,
rd_mem_8,
rd_mem_9,
rd_mem_10,
rd_mem_11,
rd_mem_12,
rd_mem_13,
rd_mem_14,
rd_mem_15,
rd_mem_16,
rd_mem_17,
rd_mem_18,
wr_mem_0,
wr_mem_1,
wr_mem_2,
wr_mem_3,
wr_mem_4,
wr_mem_5,
wr_mem_6,
wr_mem_7,
wr_mem_8,
wr_mem_9,
wr_mem_10,
wr_mem_11,
wr_mem_12,
wr_mem_13,
wr_mem_14,
wr_mem_15,
wr_mem_16,
wr_mem_17,
wr_mem_18,
wr_mem_19,
wr_mem_20,
wr_mem_21,
wr_mem_22,
wr_mem_23,
wr_mem_24,
wr_mem_25,
wr_mem_26,
wr_mem_27;

pin #(8) pin_0 ({data_bus_in[0], data_bus_in[1], data_bus_in[2], data_bus_in[3], data_bus_in[4], data_bus_in[5], data_bus_in[6], data_bus_in[7]}, {data_bus_in_0, data_bus_in_1, data_bus_in_2, data_bus_in_3, data_bus_in_4, data_bus_in_5, data_bus_in_6, data_bus_in_7});

pout #(14) pout_0 ({adr_bus_0, adr_bus_1, adr_bus_2, adr_bus_3, adr_bus_4, adr_bus_5, data_bus_out_0, data_bus_out_1, data_bus_out_2, data_bus_out_3, data_bus_out_4, data_bus_out_5, data_bus_out_6, data_bus_out_7}, {adr_bus[0], adr_bus[1], adr_bus[2], adr_bus[3], adr_bus[4], adr_bus[5], data_bus_out[0], data_bus_out[1], data_bus_out[2], data_bus_out[3], data_bus_out[4], data_bus_out[5], data_bus_out[6], data_bus_out[7]});

//fanout_n #(24, 0, 0) FANOUT_1 (clk, {clk_0, clk_1, clk_2, clk_3, clk_4, clk_5, clk_6, clk_7, clk_8, clk_9, clk_10, clk_11, clk_12, clk_13, clk_14, clk_15, clk_16, clk_17, clk_18, clk_19, clk_20, clk_21, clk_22, clk_23});
fanout_n #(3, 0, 0) FANOUT_2 (data_bus_in_0, {data_bus_in_0_0, data_bus_in_0_1, data_bus_in_0_2});
fanout_n #(3, 0, 0) FANOUT_3 (data_bus_in_1, {data_bus_in_1_0, data_bus_in_1_1, data_bus_in_1_2});
fanout_n #(3, 0, 0) FANOUT_4 (data_bus_in_2, {data_bus_in_2_0, data_bus_in_2_1, data_bus_in_2_2});
fanout_n #(3, 0, 0) FANOUT_5 (data_bus_in_3, {data_bus_in_3_0, data_bus_in_3_1, data_bus_in_3_2});
fanout_n #(3, 0, 0) FANOUT_6 (data_bus_in_4, {data_bus_in_4_0, data_bus_in_4_1, data_bus_in_4_2});
fanout_n #(3, 0, 0) FANOUT_7 (data_bus_in_5, {data_bus_in_5_0, data_bus_in_5_1, data_bus_in_5_2});
fanout_n #(3, 0, 0) FANOUT_8 (data_bus_in_6, {data_bus_in_6_0, data_bus_in_6_1, data_bus_in_6_2});
fanout_n #(3, 0, 0) FANOUT_9 (data_bus_in_7, {data_bus_in_7_0, data_bus_in_7_1, data_bus_in_7_2});
fanout_n #(57, 0, 0) FANOUT_10 (HM_1, {HM_1_0, HM_1_1, HM_1_2, HM_1_3, HM_1_4, HM_1_5, HM_1_6, HM_1_7, HM_1_8, HM_1_9, HM_1_10, HM_1_11, HM_1_12, HM_1_13, HM_1_14, HM_1_15, HM_1_16, HM_1_17, HM_1_18, HM_1_19, HM_1_20, HM_1_21, HM_1_22, HM_1_23, HM_1_24, HM_1_25, HM_1_26, HM_1_27, HM_1_28, HM_1_29, HM_1_30, HM_1_31, HM_1_32, HM_1_33, HM_1_34, HM_1_35, HM_1_36, HM_1_37, HM_1_38, HM_1_39, HM_1_40, HM_1_41, HM_1_42, HM_1_43, HM_1_44, HM_1_45, HM_1_46, HM_1_47, HM_1_48, HM_1_49, HM_1_50, HM_1_51, HM_1_52, HM_1_53, HM_1_54, HM_1_55, HM_1_56});
fanout_n #(8, 0, 0) FANOUT_11 (HM_3, {HM_3_0, HM_3_1, HM_3_2, HM_3_3, HM_3_4, HM_3_5, HM_3_6, HM_3_7});
fanout_n #(23, 0, 0) FANOUT_12 (HM_5, {HM_5_0, HM_5_1, HM_5_2, HM_5_3, HM_5_4, HM_5_5, HM_5_6, HM_5_7, HM_5_8, HM_5_9, HM_5_10, HM_5_11, HM_5_12, HM_5_13, HM_5_14, HM_5_15, HM_5_16, HM_5_17, HM_5_18, HM_5_19, HM_5_20, HM_5_21, HM_5_22});
fanout_n #(9, 0, 0) FANOUT_13 (HM_7, {HM_7_0, HM_7_1, HM_7_2, HM_7_3, HM_7_4, HM_7_5, HM_7_6, HM_7_7, HM_7_8});
fanout_n #(15, 0, 0) FANOUT_14 (HM_8, {HM_8_0, HM_8_1, HM_8_2, HM_8_3, HM_8_4, HM_8_5, HM_8_6, HM_8_7, HM_8_8, HM_8_9, HM_8_10, HM_8_11, HM_8_12, HM_8_13, HM_8_14});
fanout_n #(2, 0, 0) FANOUT_15 (HM_16, {HM_16_0, HM_16_1});
fanout_n #(8, 0, 0) FANOUT_16 (HM_20, {HM_20_0, HM_20_1, HM_20_2, HM_20_3, HM_20_4, HM_20_5, HM_20_6, HM_20_7});
fanout_n #(4, 0, 0) FANOUT_17 (HM_21, {HM_21_0, HM_21_1, HM_21_2, HM_21_3});
fanout_n #(5, 0, 0) FANOUT_18 (HM_27, {HM_27_0, HM_27_1, HM_27_2, HM_27_3, HM_27_4});
fanout_n #(3, 0, 0) FANOUT_19 (HM_28, {HM_28_0, HM_28_1, HM_28_2});
fanout_n #(5, 0, 0) FANOUT_20 (HM_30, {HM_30_0, HM_30_1, HM_30_2, HM_30_3, HM_30_4});
fanout_n #(3, 0, 0) FANOUT_21 (HM_33, {HM_33_0, HM_33_1, HM_33_2});
fanout_n #(2, 0, 0) FANOUT_22 (HM_34, {HM_34_0, HM_34_1});
fanout_n #(3, 0, 0) FANOUT_23 (HM_36, {HM_36_0, HM_36_1, HM_36_2});
fanout_n #(5, 0, 0) FANOUT_24 (HM_40, {HM_40_0, HM_40_1, HM_40_2, HM_40_3, HM_40_4});
fanout_n #(4, 0, 0) FANOUT_25 (HM_42, {HM_42_0, HM_42_1, HM_42_2, HM_42_3});
fanout_n #(3, 0, 0) FANOUT_26 (HM_43, {HM_43_0, HM_43_1, HM_43_2});
fanout_n #(5, 0, 0) FANOUT_27 (HM_45, {HM_45_0, HM_45_1, HM_45_2, HM_45_3, HM_45_4});
fanout_n #(6, 0, 0) FANOUT_28 (HM_49, {HM_49_0, HM_49_1, HM_49_2, HM_49_3, HM_49_4, HM_49_5});
fanout_n #(5, 0, 0) FANOUT_29 (HM_51, {HM_51_0, HM_51_1, HM_51_2, HM_51_3, HM_51_4});
fanout_n #(2, 0, 0) FANOUT_30 (HM_53, {HM_53_0, HM_53_1});
fanout_n #(4, 0, 0) FANOUT_31 (HM_55, {HM_55_0, HM_55_1, HM_55_2, HM_55_3});
fanout_n #(3, 0, 0) FANOUT_32 (HM_24, {HM_24_0, HM_24_1, HM_24_2});
fanout_n #(4, 0, 0) FANOUT_33 (HM_62, {HM_62_0, HM_62_1, HM_62_2, HM_62_3});
fanout_n #(7, 0, 0) FANOUT_34 (HM_63, {HM_63_0, HM_63_1, HM_63_2, HM_63_3, HM_63_4, HM_63_5, HM_63_6});
fanout_n #(2, 0, 0) FANOUT_35 (HM_64, {HM_64_0, HM_64_1});
fanout_n #(3, 0, 0) FANOUT_36 (HM_69, {HM_69_0, HM_69_1, HM_69_2});
fanout_n #(2, 0, 0) FANOUT_37 (HM_70, {HM_70_0, HM_70_1});
fanout_n #(2, 0, 0) FANOUT_38 (HM_75, {HM_75_0, HM_75_1});
fanout_n #(2, 0, 0) FANOUT_39 (HM_80, {HM_80_0, HM_80_1});
fanout_n #(2, 0, 0) FANOUT_40 (HM_85, {HM_85_0, HM_85_1});
fanout_n #(2, 0, 0) FANOUT_41 (HM_86, {HM_86_0, HM_86_1});
fanout_n #(2, 0, 0) FANOUT_42 (HM_91, {HM_91_0, HM_91_1});
fanout_n #(46, 0, 0) FANOUT_43 (HM_6, {HM_6_0, HM_6_1, HM_6_2, HM_6_3, HM_6_4, HM_6_5, HM_6_6, HM_6_7, HM_6_8, HM_6_9, HM_6_10, HM_6_11, HM_6_12, HM_6_13, HM_6_14, HM_6_15, HM_6_16, HM_6_17, HM_6_18, HM_6_19, HM_6_20, HM_6_21, HM_6_22, HM_6_23, HM_6_24, HM_6_25, HM_6_26, HM_6_27, HM_6_28, HM_6_29, HM_6_30, HM_6_31, HM_6_32, HM_6_33, HM_6_34, HM_6_35, HM_6_36, HM_6_37, HM_6_38, HM_6_39, HM_6_40, HM_6_41, HM_6_42, HM_6_43, HM_6_44, HM_6_45});
fanout_n #(3, 0, 0) FANOUT_44 (HM_97, {HM_97_0, HM_97_1, HM_97_2});
fanout_n #(4, 0, 0) FANOUT_45 (HM_2, {HM_2_0, HM_2_1, HM_2_2, HM_2_3});
fanout_n #(2, 0, 0) FANOUT_46 (HM_101, {HM_101_0, HM_101_1});
fanout_n #(4, 0, 0) FANOUT_47 (HM_124, {HM_124_0, HM_124_1, HM_124_2, HM_124_3});
fanout_n #(2, 0, 0) FANOUT_48 (HM_129, {HM_129_0, HM_129_1});
fanout_n #(10, 0, 0) FANOUT_49 (HM_11, {HM_11_0, HM_11_1, HM_11_2, HM_11_3, HM_11_4, HM_11_5, HM_11_6, HM_11_7, HM_11_8, HM_11_9});
fanout_n #(29, 0, 0) FANOUT_50 (HM_142, {HM_142_0, HM_142_1, HM_142_2, HM_142_3, HM_142_4, HM_142_5, HM_142_6, HM_142_7, HM_142_8, HM_142_9, HM_142_10, HM_142_11, HM_142_12, HM_142_13, HM_142_14, HM_142_15, HM_142_16, HM_142_17, HM_142_18, HM_142_19, HM_142_20, HM_142_21, HM_142_22, HM_142_23, HM_142_24, HM_142_25, HM_142_26, HM_142_27, HM_142_28});
fanout_n #(7, 0, 0) FANOUT_51 (HM_12, {HM_12_0, HM_12_1, HM_12_2, HM_12_3, HM_12_4, HM_12_5, HM_12_6});
fanout_n #(5, 0, 0) FANOUT_52 (HM_35, {HM_35_0, HM_35_1, HM_35_2, HM_35_3, HM_35_4});
fanout_n #(6, 0, 0) FANOUT_53 (HM_44, {HM_44_0, HM_44_1, HM_44_2, HM_44_3, HM_44_4, HM_44_5});
fanout_n #(6, 0, 0) FANOUT_54 (HM_54, {HM_54_0, HM_54_1, HM_54_2, HM_54_3, HM_54_4, HM_54_5});
fanout_n #(5, 0, 0) FANOUT_55 (HM_26, {HM_26_0, HM_26_1, HM_26_2, HM_26_3, HM_26_4});
fanout_n #(6, 0, 0) FANOUT_56 (HM_130, {HM_130_0, HM_130_1, HM_130_2, HM_130_3, HM_130_4, HM_130_5});
fanout_n #(5, 0, 0) FANOUT_57 (HM_135, {HM_135_0, HM_135_1, HM_135_2, HM_135_3, HM_135_4});
fanout_n #(10, 0, 0) FANOUT_58 (HM_10, {HM_10_0, HM_10_1, HM_10_2, HM_10_3, HM_10_4, HM_10_5, HM_10_6, HM_10_7, HM_10_8, HM_10_9});
fanout_n #(8, 0, 0) FANOUT_59 (HM_193, {HM_193_0, HM_193_1, HM_193_2, HM_193_3, HM_193_4, HM_193_5, HM_193_6, HM_193_7});
fanout_n #(9, 0, 0) FANOUT_60 (HM_14, {HM_14_0, HM_14_1, HM_14_2, HM_14_3, HM_14_4, HM_14_5, HM_14_6, HM_14_7, HM_14_8});
fanout_n #(4, 0, 0) FANOUT_61 (HM_29, {HM_29_0, HM_29_1, HM_29_2, HM_29_3});
fanout_n #(5, 0, 0) FANOUT_62 (HM_41, {HM_41_0, HM_41_1, HM_41_2, HM_41_3, HM_41_4});
fanout_n #(4, 0, 0) FANOUT_63 (HM_50, {HM_50_0, HM_50_1, HM_50_2, HM_50_3});
fanout_n #(6, 0, 0) FANOUT_64 (HM_52, {HM_52_0, HM_52_1, HM_52_2, HM_52_3, HM_52_4, HM_52_5});
fanout_n #(9, 0, 0) FANOUT_65 (HM_65, {HM_65_0, HM_65_1, HM_65_2, HM_65_3, HM_65_4, HM_65_5, HM_65_6, HM_65_7, HM_65_8});
fanout_n #(8, 0, 0) FANOUT_66 (HM_71, {HM_71_0, HM_71_1, HM_71_2, HM_71_3, HM_71_4, HM_71_5, HM_71_6, HM_71_7});
fanout_n #(7, 0, 0) FANOUT_67 (HM_76, {HM_76_0, HM_76_1, HM_76_2, HM_76_3, HM_76_4, HM_76_5, HM_76_6});
fanout_n #(6, 0, 0) FANOUT_68 (HM_81, {HM_81_0, HM_81_1, HM_81_2, HM_81_3, HM_81_4, HM_81_5});
fanout_n #(5, 0, 0) FANOUT_69 (HM_87, {HM_87_0, HM_87_1, HM_87_2, HM_87_3, HM_87_4});
fanout_n #(4, 0, 0) FANOUT_70 (HM_92, {HM_92_0, HM_92_1, HM_92_2, HM_92_3});
fanout_n #(39, 0, 0) FANOUT_71 (HM_18, {HM_18_0, HM_18_1, HM_18_2, HM_18_3, HM_18_4, HM_18_5, HM_18_6, HM_18_7, HM_18_8, HM_18_9, HM_18_10, HM_18_11, HM_18_12, HM_18_13, HM_18_14, HM_18_15, HM_18_16, HM_18_17, HM_18_18, HM_18_19, HM_18_20, HM_18_21, HM_18_22, HM_18_23, HM_18_24, HM_18_25, HM_18_26, HM_18_27, HM_18_28, HM_18_29, HM_18_30, HM_18_31, HM_18_32, HM_18_33, HM_18_34, HM_18_35, HM_18_36, HM_18_37, HM_18_38});
fanout_n #(30, 0, 0) FANOUT_72 (HM_4, {HM_4_0, HM_4_1, HM_4_2, HM_4_3, HM_4_4, HM_4_5, HM_4_6, HM_4_7, HM_4_8, HM_4_9, HM_4_10, HM_4_11, HM_4_12, HM_4_13, HM_4_14, HM_4_15, HM_4_16, HM_4_17, HM_4_18, HM_4_19, HM_4_20, HM_4_21, HM_4_22, HM_4_23, HM_4_24, HM_4_25, HM_4_26, HM_4_27, HM_4_28, HM_4_29});
fanout_n #(19, 0, 0) FANOUT_73 (rd_mem, {rd_mem_0, rd_mem_1, rd_mem_2, rd_mem_3, rd_mem_4, rd_mem_5, rd_mem_6, rd_mem_7, rd_mem_8, rd_mem_9, rd_mem_10, rd_mem_11, rd_mem_12, rd_mem_13, rd_mem_14, rd_mem_15, rd_mem_16, rd_mem_17, rd_mem_18});
fanout_n #(28, 0, 0) FANOUT_74 (wr_mem, {wr_mem_0, wr_mem_1, wr_mem_2, wr_mem_3, wr_mem_4, wr_mem_5, wr_mem_6, wr_mem_7, wr_mem_8, wr_mem_9, wr_mem_10, wr_mem_11, wr_mem_12, wr_mem_13, wr_mem_14, wr_mem_15, wr_mem_16, wr_mem_17, wr_mem_18, wr_mem_19, wr_mem_20, wr_mem_21, wr_mem_22, wr_mem_23, wr_mem_24, wr_mem_25, wr_mem_26, wr_mem_27});


notg #(0, 0) NOT_1 (HM_1, HM_2_0);
notg #(0, 0) NOT_2 (HM_3, HM_4_0);
and_n #(3, 0, 0) AND_1 (HM_5, {HM_1_0, HM_6_0, HM_3_0});
notg #(0, 0) NOT_3 (HM_7, HM_6_1);
and_n #(2, 0, 0) AND_2 (HM_8, {HM_2_1, HM_7_0});
and_n #(3, 0, 0) AND_3 (HM_9, {HM_10_0, HM_11_0, HM_12_0});
and_n #(3, 0, 0) AND_4 (HM_13, {HM_10_1, HM_14_0, HM_11_1});
and_n #(2, 0, 0) AND_5 (HM_15, {HM_14_1, HM_12_1});
or_n #(3, 0, 0) OR_1 (HM_16, {HM_15, HM_13, HM_9});
and_n #(5, 0, 0) AND_6 (HM_17, {HM_18_0, rd_mem_0, HM_1_1, HM_6_2, wr_mem_0});
and_n #(2, 0, 0) AND_7 (HM_19, {rd_mem_1, wr_mem_1});
xor_n #(2, 0, 0) XOR_1 (HM_20, {HM_19, HM_17});
notg #(0, 0) NOT_4 (HM_21, HM_22);
and_n #(3, 0, 0) AND_8 (HM_23, {HM_4_1, HM_21_0, HM_24_0});
and_n #(3, 0, 0) AND_9 (HM_25, {HM_4_2, HM_26_0, HM_21_1});
or_n #(2, 0, 0) OR_2 (HM_27, {HM_25, HM_23});
notg #(0, 0) NOT_5 (HM_28, HM_29_0);
notg #(0, 0) NOT_6 (HM_30, HM_16_0);
and_n #(2, 0, 0) AND_10 (HM_31, {HM_28_0, HM_30_0});
and_n #(2, 0, 0) AND_11 (HM_32, {HM_29_1, HM_16_1});
or_n #(2, 0, 0) OR_3 (HM_33, {HM_32, HM_31});
notg #(0, 0) NOT_7 (HM_34, HM_35_0);
notg #(0, 0) NOT_8 (HM_36, HM_33_0);
and_n #(2, 0, 0) AND_12 (HM_37, {HM_34_0, HM_36_0});
and_n #(2, 0, 0) AND_13 (HM_38, {HM_30_1, HM_33_1});
or_n #(2, 0, 0) OR_4 (HM_39, {HM_38, HM_37});
xor_n #(2, 0, 0) XOR_2 (HM_40, {HM_41_0, HM_39});
notg #(0, 0) NOT_9 (HM_42, HM_41_1);
notg #(0, 0) NOT_10 (HM_43, HM_44_0);
notg #(0, 0) NOT_11 (HM_45, HM_40_0);
and_n #(2, 0, 0) AND_14 (HM_46, {HM_43_0, HM_45_0});
and_n #(2, 0, 0) AND_15 (HM_47, {HM_42_0, HM_40_1});
or_n #(2, 0, 0) OR_5 (HM_48, {HM_47, HM_46});
xor_n #(2, 0, 0) XOR_3 (HM_49, {HM_50_0, HM_48});
notg #(0, 0) NOT_12 (HM_51, HM_52_0);
notg #(0, 0) NOT_13 (HM_53, HM_54_0);
notg #(0, 0) NOT_14 (HM_55, HM_49_0);
and_n #(4, 0, 0) AND_16 (HM_56, {HM_51_0, HM_43_1, HM_45_1, HM_49_1});
and_n #(4, 0, 0) AND_17 (HM_57, {HM_42_1, HM_51_1, HM_40_2, HM_49_2});
and_n #(3, 0, 0) AND_18 (HM_58, {HM_51_2, HM_53_0, HM_55_0});
or_n #(3, 0, 0) OR_6 (HM_22, {HM_58, HM_57, HM_56});
and_n #(4, 0, 0) AND_19 (HM_59, {HM_52_1, HM_44_1, HM_45_2, HM_49_3});
and_n #(4, 0, 0) AND_20 (HM_60, {HM_41_2, HM_52_2, HM_40_3, HM_49_4});
and_n #(3, 0, 0) AND_21 (HM_61, {HM_52_3, HM_54_1, HM_55_1});
or_n #(3, 0, 0) OR_7 (HM_24, {HM_61, HM_60, HM_59});
notg #(0, 0) NOT_15 (HM_62, HM_10_2);
notg #(0, 0) NOT_16 (HM_63, HM_5_0);
notg #(0, 0) NOT_17 (HM_64, HM_65_0);
and_n #(2, 0, 0) AND_22 (HM_66, {HM_63_0, HM_64_0});
and_n #(2, 0, 0) AND_23 (HM_67, {HM_62_0, HM_5_1});
or_n #(2, 0, 0) OR_8 (HM_68, {HM_67, HM_66});
notg #(0, 0) NOT_18 (adr_bus_0, HM_68);
notg #(0, 0) NOT_19 (HM_69, HM_14_2);
notg #(0, 0) NOT_20 (HM_70, HM_71_0);
and_n #(2, 0, 0) AND_24 (HM_72, {HM_63_1, HM_70_0});
and_n #(2, 0, 0) AND_25 (HM_73, {HM_5_2, HM_69_0});
or_n #(2, 0, 0) OR_9 (HM_74, {HM_73, HM_72});
notg #(0, 0) NOT_21 (adr_bus_1, HM_74);
notg #(0, 0) NOT_22 (HM_75, HM_76_0);
and_n #(2, 0, 0) AND_26 (HM_77, {HM_63_2, HM_75_0});
and_n #(2, 0, 0) AND_27 (HM_78, {HM_5_3, HM_28_1});
or_n #(2, 0, 0) OR_10 (HM_79, {HM_78, HM_77});
notg #(0, 0) NOT_23 (adr_bus_2, HM_79);
notg #(0, 0) NOT_24 (HM_80, HM_81_0);
and_n #(2, 0, 0) AND_28 (HM_82, {HM_63_3, HM_80_0});
and_n #(2, 0, 0) AND_29 (HM_83, {HM_5_4, HM_42_2});
or_n #(2, 0, 0) OR_11 (HM_84, {HM_83, HM_82});
notg #(0, 0) NOT_25 (adr_bus_3, HM_84);
notg #(0, 0) NOT_26 (HM_85, HM_50_1);
notg #(0, 0) NOT_27 (HM_86, HM_87_0);
and_n #(2, 0, 0) AND_30 (HM_88, {HM_63_4, HM_86_0});
and_n #(2, 0, 0) AND_31 (HM_89, {HM_5_5, HM_85_0});
or_n #(2, 0, 0) OR_12 (HM_90, {HM_89, HM_88});
notg #(0, 0) NOT_28 (adr_bus_4, HM_90);
notg #(0, 0) NOT_29 (HM_91, HM_92_0);
and_n #(2, 0, 0) AND_32 (HM_93, {HM_63_5, HM_91_0});
and_n #(2, 0, 0) AND_33 (HM_94, {HM_5_6, HM_51_3});
or_n #(2, 0, 0) OR_13 (HM_95, {HM_94, HM_93});
notg #(0, 0) NOT_30 (adr_bus_5, HM_95);
notg #(0, 0) NOT_31 (HM_97, reset);
and_n #(2, 0, 0) AND_34 (HM_96, {HM_2_2, HM_97_0});
and_n #(2, 0, 0) AND_35 (HM_99, {HM_97_1, HM_7_1});
and_n #(2, 0, 0) AND_36 (HM_100, {HM_1_2, HM_97_2});
or_n #(2, 0, 0) OR_14 (HM_98, {HM_100, HM_99});
notg #(0, 0) NOT_32 (HM_101, HM_11_2);
and_n #(7, 0, 0) AND_37 (HM_102, {HM_10_3, HM_18_1, HM_1_3, HM_6_3, HM_4_3, wr_mem_2, HM_101_0});
and_n #(6, 0, 0) AND_38 (HM_103, {HM_18_2, HM_1_4, HM_6_4, HM_3_1, wr_mem_3, HM_11_3});
and_n #(6, 0, 0) AND_39 (HM_104, {HM_62_1, HM_18_3, HM_1_5, HM_6_5, wr_mem_4, HM_11_4});
and_n #(2, 0, 0) AND_40 (HM_105, {data_bus_in_0_0, HM_20_0});
or_n #(4, 0, 0) OR_15 (data_bus_out_0, {HM_105, HM_104, HM_103, HM_102});
and_n #(8, 0, 0) AND_41 (HM_106, {HM_10_4, HM_18_4, HM_1_6, HM_6_6, HM_14_3, wr_mem_5, HM_11_5, HM_12_2});
and_n #(8, 0, 0) AND_42 (HM_107, {HM_10_5, HM_18_5, HM_1_7, HM_6_7, HM_4_4, wr_mem_6, HM_11_6, HM_30_2});
and_n #(7, 0, 0) AND_43 (HM_108, {HM_18_6, HM_1_8, HM_6_8, HM_4_5, HM_14_4, wr_mem_7, HM_30_3});
and_n #(6, 0, 0) AND_44 (HM_109, {HM_18_7, HM_1_9, HM_6_9, wr_mem_8, HM_12_3, HM_30_4});
and_n #(6, 0, 0) AND_45 (HM_110, {HM_18_8, HM_1_10, HM_6_10, HM_3_2, wr_mem_9, HM_12_4});
and_n #(2, 0, 0) AND_46 (HM_111, {data_bus_in_1_0, HM_20_1});
or_n #(6, 0, 0) OR_16 (data_bus_out_1, {HM_111, HM_110, HM_109, HM_108, HM_107, HM_106});
and_n #(7, 0, 0) AND_47 (HM_112, {HM_18_9, HM_1_11, HM_6_11, HM_4_6, wr_mem_10, HM_34_1, HM_36_1});
and_n #(6, 0, 0) AND_48 (HM_113, {HM_18_10, HM_1_12, HM_6_12, wr_mem_11, HM_35_1, HM_33_2});
and_n #(6, 0, 0) AND_49 (HM_114, {HM_18_11, HM_1_13, HM_6_13, HM_3_3, wr_mem_12, HM_35_2});
and_n #(2, 0, 0) AND_50 (HM_115, {data_bus_in_2_0, HM_20_2});
or_n #(4, 0, 0) OR_17 (data_bus_out_2, {HM_115, HM_114, HM_113, HM_112});
and_n #(7, 0, 0) AND_51 (HM_116, {HM_18_12, HM_1_14, HM_6_14, HM_4_7, wr_mem_13, HM_43_2, HM_45_3});
and_n #(6, 0, 0) AND_52 (HM_117, {HM_18_13, HM_1_15, HM_6_15, wr_mem_14, HM_44_2, HM_40_4});
and_n #(6, 0, 0) AND_53 (HM_118, {HM_18_14, HM_1_16, HM_6_16, HM_3_4, wr_mem_15, HM_44_3});
and_n #(2, 0, 0) AND_54 (HM_119, {data_bus_in_3_0, HM_20_3});
or_n #(4, 0, 0) OR_18 (data_bus_out_3, {HM_119, HM_118, HM_117, HM_116});
and_n #(7, 0, 0) AND_55 (HM_120, {HM_18_15, HM_1_17, HM_6_17, HM_4_8, wr_mem_16, HM_53_1, HM_55_2});
and_n #(6, 0, 0) AND_56 (HM_121, {HM_18_16, HM_1_18, HM_6_18, wr_mem_17, HM_54_2, HM_49_5});
and_n #(6, 0, 0) AND_57 (HM_122, {HM_18_17, HM_1_19, HM_6_19, HM_3_5, wr_mem_18, HM_54_3});
and_n #(2, 0, 0) AND_58 (HM_123, {data_bus_in_4_0, HM_20_4});
or_n #(4, 0, 0) OR_19 (data_bus_out_4, {HM_123, HM_122, HM_121, HM_120});
notg #(0, 0) NOT_33 (HM_124, HM_27_0);
and_n #(7, 0, 0) AND_59 (HM_125, {HM_18_18, HM_1_20, HM_6_20, HM_63_6, wr_mem_19, HM_21_2, HM_124_0});
and_n #(6, 0, 0) AND_60 (HM_126, {HM_18_19, HM_1_21, HM_6_21, wr_mem_20, HM_26_1, HM_124_1});
and_n #(6, 0, 0) AND_61 (HM_127, {HM_18_20, HM_1_22, HM_6_22, wr_mem_21, HM_26_2, HM_24_1});
and_n #(2, 0, 0) AND_62 (HM_128, {data_bus_in_5_0, HM_20_5});
or_n #(4, 0, 0) OR_20 (data_bus_out_5, {HM_128, HM_127, HM_126, HM_125});
notg #(0, 0) NOT_34 (HM_129, HM_130_0);
and_n #(6, 0, 0) AND_63 (HM_131, {HM_18_21, HM_1_23, HM_6_23, wr_mem_22, HM_124_2, HM_130_1});
and_n #(6, 0, 0) AND_64 (HM_132, {HM_18_22, HM_1_24, HM_6_24, wr_mem_23, HM_27_1, HM_129_0});
and_n #(2, 0, 0) AND_65 (HM_133, {data_bus_in_6_0, HM_20_6});
or_n #(3, 0, 0) OR_21 (data_bus_out_6, {HM_133, HM_132, HM_131});
notg #(0, 0) NOT_35 (HM_134, HM_135_0);
and_n #(7, 0, 0) AND_66 (HM_136, {HM_18_23, HM_1_25, HM_6_25, wr_mem_24, HM_27_2, HM_130_2, HM_134});
and_n #(6, 0, 0) AND_67 (HM_137, {HM_18_24, HM_1_26, HM_6_26, wr_mem_25, HM_129_1, HM_135_1});
and_n #(6, 0, 0) AND_68 (HM_138, {HM_18_25, HM_1_27, HM_6_27, wr_mem_26, HM_124_3, HM_135_2});
and_n #(2, 0, 0) AND_69 (HM_139, {data_bus_in_7_0, HM_20_7});
or_n #(4, 0, 0) OR_22 (data_bus_out_7, {HM_139, HM_138, HM_137, HM_136});
xor_n #(2, 0, 0) XOR_4 (HM_140, {HM_11_7, HM_141});
notg #(0, 0) NOT_36 (HM_142, HM_18_26);
and_n #(5, 0, 0) AND_70 (HM_143, {HM_10_6, HM_18_27, HM_1_28, HM_6_28, HM_4_9});
and_n #(4, 0, 0) AND_71 (HM_144, {data_bus_in_0_1, HM_142_0, rd_mem_2, HM_5_7});
or_n #(2, 0, 0) OR_23 (HM_145, {HM_144, HM_143});
and_n #(3, 0, 0) AND_72 (HM_146, {HM_142_1, HM_5_8, HM_11_8});
xor_n #(2, 0, 0) XOR_5 (HM_141, {HM_146, HM_145});
xor_n #(2, 0, 0) XOR_6 (HM_147, {HM_12_5, HM_148});
and_n #(7, 0, 0) AND_73 (HM_149, {HM_10_7, HM_18_28, HM_1_29, HM_6_29, HM_4_10, HM_69_1, HM_11_9});
and_n #(6, 0, 0) AND_74 (HM_150, {HM_18_29, HM_1_30, HM_6_30, HM_4_11, HM_14_5, HM_101_1});
and_n #(6, 0, 0) AND_75 (HM_151, {HM_62_2, HM_18_30, HM_1_31, HM_6_31, HM_4_12, HM_14_6});
and_n #(4, 0, 0) AND_76 (HM_152, {HM_142_2, rd_mem_3, HM_5_9, data_bus_in_1_1});
or_n #(4, 0, 0) OR_24 (HM_153, {HM_152, HM_151, HM_150, HM_149});
and_n #(3, 0, 0) AND_77 (HM_154, {HM_142_3, HM_5_10, HM_12_6});
xor_n #(2, 0, 0) XOR_7 (HM_148, {HM_154, HM_153});
xor_n #(2, 0, 0) XOR_8 (HM_155, {HM_35_3, HM_156});
and_n #(5, 0, 0) AND_78 (HM_157, {HM_18_31, HM_1_32, HM_6_32, HM_4_13, HM_36_2});
and_n #(4, 0, 0) AND_79 (HM_158, {HM_142_4, rd_mem_4, HM_5_11, data_bus_in_2_1});
or_n #(2, 0, 0) OR_25 (HM_159, {HM_158, HM_157});
and_n #(3, 0, 0) AND_80 (HM_160, {HM_142_5, HM_5_12, HM_35_4});
xor_n #(2, 0, 0) XOR_9 (HM_156, {HM_160, HM_159});
xor_n #(2, 0, 0) XOR_10 (HM_161, {HM_44_4, HM_162});
and_n #(5, 0, 0) AND_81 (HM_163, {HM_18_32, HM_1_33, HM_6_33, HM_4_14, HM_45_4});
and_n #(4, 0, 0) AND_82 (HM_164, {HM_142_6, rd_mem_5, HM_5_13, data_bus_in_3_1});
or_n #(2, 0, 0) OR_26 (HM_165, {HM_164, HM_163});
and_n #(3, 0, 0) AND_83 (HM_166, {HM_142_7, HM_5_14, HM_44_5});
xor_n #(2, 0, 0) XOR_11 (HM_162, {HM_166, HM_165});
xor_n #(2, 0, 0) XOR_12 (HM_167, {HM_54_4, HM_168});
and_n #(5, 0, 0) AND_84 (HM_169, {HM_18_33, HM_1_34, HM_6_34, HM_4_15, HM_55_3});
and_n #(4, 0, 0) AND_85 (HM_170, {HM_142_8, rd_mem_6, HM_5_15, data_bus_in_4_1});
or_n #(2, 0, 0) OR_27 (HM_171, {HM_170, HM_169});
and_n #(3, 0, 0) AND_86 (HM_172, {HM_142_9, HM_5_16, HM_54_5});
xor_n #(2, 0, 0) XOR_13 (HM_168, {HM_172, HM_171});
xor_n #(2, 0, 0) XOR_14 (HM_173, {HM_26_3, HM_174});
notg #(0, 0) NOT_37 (HM_175, HM_24_2);
and_n #(6, 0, 0) AND_87 (HM_176, {HM_18_34, HM_1_35, HM_6_35, HM_4_16, HM_21_3, HM_175});
and_n #(4, 0, 0) AND_88 (HM_177, {HM_142_10, rd_mem_7, HM_5_17, data_bus_in_5_1});
or_n #(2, 0, 0) OR_28 (HM_178, {HM_177, HM_176});
and_n #(3, 0, 0) AND_89 (HM_179, {HM_142_11, HM_5_18, HM_26_4});
xor_n #(2, 0, 0) XOR_15 (HM_174, {HM_179, HM_178});
xor_n #(2, 0, 0) XOR_16 (HM_180, {HM_130_3, HM_181});
and_n #(4, 0, 0) AND_90 (HM_182, {HM_142_12, data_bus_in_6_1, rd_mem_8, HM_5_19});
and_n #(4, 0, 0) AND_91 (HM_183, {HM_18_35, HM_1_36, HM_6_36, HM_27_3});
or_n #(2, 0, 0) OR_29 (HM_184, {HM_183, HM_182});
and_n #(3, 0, 0) AND_92 (HM_185, {HM_142_13, HM_5_20, HM_130_4});
xor_n #(2, 0, 0) XOR_17 (HM_181, {HM_185, HM_184});
xor_n #(2, 0, 0) XOR_18 (HM_186, {HM_135_3, HM_187});
and_n #(5, 0, 0) AND_93 (HM_188, {HM_18_36, HM_1_37, HM_6_37, HM_27_4, HM_130_5});
and_n #(4, 0, 0) AND_94 (HM_189, {HM_142_14, rd_mem_9, data_bus_in_7_1, HM_5_21});
or_n #(2, 0, 0) OR_30 (HM_190, {HM_189, HM_188});
and_n #(3, 0, 0) AND_95 (HM_191, {HM_142_15, HM_5_22, HM_135_4});
xor_n #(2, 0, 0) XOR_19 (HM_187, {HM_191, HM_190});
notg #(0, 0) NOT_38 (HM_193, HM_8_0);
and_n #(3, 0, 0) AND_96 (HM_194, {data_bus_in_0_2, rd_mem_10, HM_8_1});
and_n #(2, 0, 0) AND_97 (HM_195, {HM_10_8, HM_193_0});
or_n #(2, 0, 0) OR_31 (HM_192, {HM_195, HM_194});
and_n #(3, 0, 0) AND_98 (HM_197, {rd_mem_11, HM_8_2, data_bus_in_1_2});
and_n #(2, 0, 0) AND_99 (HM_198, {HM_193_1, HM_14_7});
or_n #(2, 0, 0) OR_32 (HM_196, {HM_198, HM_197});
and_n #(3, 0, 0) AND_100 (HM_200, {rd_mem_12, HM_8_3, data_bus_in_2_2});
and_n #(2, 0, 0) AND_101 (HM_201, {HM_193_2, HM_29_2});
or_n #(2, 0, 0) OR_33 (HM_199, {HM_201, HM_200});
and_n #(3, 0, 0) AND_102 (HM_203, {rd_mem_13, HM_8_4, data_bus_in_3_2});
and_n #(2, 0, 0) AND_103 (HM_204, {HM_193_3, HM_41_3});
or_n #(2, 0, 0) OR_34 (HM_202, {HM_204, HM_203});
and_n #(3, 0, 0) AND_104 (HM_206, {rd_mem_14, HM_8_5, data_bus_in_4_2});
and_n #(2, 0, 0) AND_105 (HM_207, {HM_193_4, HM_50_2});
or_n #(2, 0, 0) OR_35 (HM_205, {HM_207, HM_206});
and_n #(3, 0, 0) AND_106 (HM_209, {rd_mem_15, HM_8_6, data_bus_in_5_2});
and_n #(2, 0, 0) AND_107 (HM_210, {HM_193_5, HM_52_4});
or_n #(2, 0, 0) OR_36 (HM_208, {HM_210, HM_209});
xor_n #(2, 0, 0) XOR_20 (HM_211, {HM_65_1, HM_212});
and_n #(6, 0, 0) AND_108 (HM_213, {HM_10_9, HM_142_16, HM_1_38, HM_6_38, HM_4_17, HM_64_1});
and_n #(5, 0, 0) AND_109 (HM_214, {HM_62_3, HM_142_17, HM_1_39, HM_4_18, HM_65_2});
and_n #(2, 0, 0) AND_110 (HM_215, {HM_7_2, HM_65_3});
or_n #(4, 0, 0) OR_37 (HM_212, {HM_8_7, HM_215, HM_214, HM_213});
xor_n #(2, 0, 0) XOR_21 (HM_216, {HM_71_1, HM_217});
and_n #(6, 0, 0) AND_111 (HM_218, {HM_142_18, HM_1_40, HM_6_39, HM_4_19, HM_14_8, HM_70_1});
and_n #(5, 0, 0) AND_112 (HM_219, {HM_142_19, HM_1_41, HM_4_20, HM_69_2, HM_71_2});
and_n #(3, 0, 0) AND_113 (HM_220, {HM_1_42, HM_7_3, HM_71_3});
and_n #(2, 0, 0) AND_114 (HM_221, {HM_8_8, HM_65_4});
or_n #(4, 0, 0) OR_38 (HM_217, {HM_221, HM_220, HM_219, HM_218});
xor_n #(2, 0, 0) XOR_22 (HM_222, {HM_76_1, HM_223});
and_n #(6, 0, 0) AND_115 (HM_224, {HM_142_20, HM_1_43, HM_6_40, HM_4_21, HM_29_3, HM_75_1});
and_n #(5, 0, 0) AND_116 (HM_225, {HM_142_21, HM_1_44, HM_4_22, HM_28_2, HM_76_2});
and_n #(3, 0, 0) AND_117 (HM_226, {HM_1_45, HM_7_4, HM_76_3});
and_n #(3, 0, 0) AND_118 (HM_227, {HM_8_9, HM_65_5, HM_71_4});
or_n #(4, 0, 0) OR_39 (HM_223, {HM_227, HM_226, HM_225, HM_224});
xor_n #(2, 0, 0) XOR_23 (HM_228, {HM_81_1, HM_229});
and_n #(6, 0, 0) AND_119 (HM_230, {HM_142_22, HM_1_46, HM_6_41, HM_4_23, HM_41_4, HM_80_1});
and_n #(5, 0, 0) AND_120 (HM_231, {HM_142_23, HM_1_47, HM_4_24, HM_42_3, HM_81_2});
and_n #(4, 0, 0) AND_121 (HM_232, {HM_8_10, HM_65_6, HM_71_5, HM_76_4});
and_n #(3, 0, 0) AND_122 (HM_233, {HM_1_48, HM_7_5, HM_81_3});
or_n #(4, 0, 0) OR_40 (HM_229, {HM_233, HM_232, HM_231, HM_230});
xor_n #(2, 0, 0) XOR_24 (HM_234, {HM_87_1, HM_235});
and_n #(6, 0, 0) AND_123 (HM_236, {HM_142_24, HM_1_49, HM_6_42, HM_4_25, HM_50_3, HM_86_1});
and_n #(5, 0, 0) AND_124 (HM_237, {HM_8_11, HM_65_7, HM_71_6, HM_76_5, HM_81_4});
and_n #(5, 0, 0) AND_125 (HM_238, {HM_142_25, HM_1_50, HM_4_26, HM_85_1, HM_87_2});
and_n #(3, 0, 0) AND_126 (HM_239, {HM_1_51, HM_7_6, HM_87_3});
or_n #(4, 0, 0) OR_41 (HM_235, {HM_239, HM_238, HM_237, HM_236});
xor_n #(2, 0, 0) XOR_25 (HM_240, {HM_92_1, HM_241});
and_n #(6, 0, 0) AND_127 (HM_242, {HM_8_12, HM_65_8, HM_71_7, HM_76_6, HM_81_5, HM_87_4});
and_n #(6, 0, 0) AND_128 (HM_243, {HM_142_26, HM_1_52, HM_6_43, HM_4_27, HM_52_5, HM_91_1});
and_n #(5, 0, 0) AND_129 (HM_244, {HM_142_27, HM_1_53, HM_4_28, HM_51_4, HM_92_2});
and_n #(3, 0, 0) AND_130 (HM_245, {HM_1_54, HM_7_7, HM_92_3});
or_n #(4, 0, 0) OR_42 (HM_241, {HM_245, HM_244, HM_243, HM_242});
and_n #(3, 0, 0) AND_131 (HM_247, {data_bus_in_6_2, rd_mem_16, HM_8_13});
and_n #(2, 0, 0) AND_132 (HM_248, {HM_18_37, HM_193_6});
or_n #(2, 0, 0) OR_43 (HM_246, {HM_248, HM_247});
and_n #(3, 0, 0) AND_133 (HM_250, {rd_mem_17, HM_8_14, data_bus_in_7_2});
and_n #(2, 0, 0) AND_134 (HM_251, {HM_193_7, HM_4_29});
or_n #(2, 0, 0) OR_44 (HM_249, {HM_251, HM_250});
and_n #(4, 0, 0) AND_135 (HM_252, {HM_142_28, HM_1_55, HM_6_44, HM_3_6});
and_n #(2, 0, 0) AND_136 (HM_253, {HM_2_3, HM_7_8});
or_n #(2, 0, 0) OR_45 (rd_mem, {HM_253, HM_252});
and_n #(4, 0, 0) AND_137 (wr_mem, {HM_18_38, HM_1_56, HM_6_45, HM_3_7});

/*

dff INS_1 (out_0, HM_1, clk_0, reset_0, 1'b0, 1'b1, NbarT, Si, global_reset);
dff INS_2 (out_1, HM_13, clk_1, reset_1, 1'b0, 1'b1, NbarT, out_0, global_reset);
dff INS_3 (out_2, HM_21, clk_2, reset_2, 1'b0, 1'b1, NbarT, out_1, global_reset);
*/

dff INS_1 (HM_6, HM_96, clk, 1'b0, 1'b0, 1'b1, NbarT, Si, global_reset);
dff INS_2 (HM_2, HM_98, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_6, global_reset);
dff INS_3 (HM_11, HM_140, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_2, global_reset);
dff INS_4 (HM_12, HM_147, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_11, global_reset);
dff INS_5 (HM_35, HM_155, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_12, global_reset);
dff INS_6 (HM_44, HM_161, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_35, global_reset);
dff INS_7 (HM_54, HM_167, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_44, global_reset);
dff INS_8 (HM_26, HM_173, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_54, global_reset);
dff INS_9 (HM_130, HM_180, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_26, global_reset);
dff INS_10 (HM_135, HM_186, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_130, global_reset);
dff INS_11 (HM_10, HM_192, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_135, global_reset);
dff INS_12 (HM_14, HM_196, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_10, global_reset);
dff INS_13 (HM_29, HM_199, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_14, global_reset);
dff INS_14 (HM_41, HM_202, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_29, global_reset);
dff INS_15 (HM_50, HM_205, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_41, global_reset);
dff INS_16 (HM_52, HM_208, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_50, global_reset);
dff INS_17 (HM_65, HM_211, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_52, global_reset);
dff INS_18 (HM_71, HM_216, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_65, global_reset);
dff INS_19 (HM_76, HM_222, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_71, global_reset);
dff INS_20 (HM_81, HM_228, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_76, global_reset);
dff INS_21 (HM_87, HM_234, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_81, global_reset);
dff INS_22 (HM_92, HM_240, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_87, global_reset);
dff INS_23 (HM_18, HM_246, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_92, global_reset);
dff INS_24 (HM_4, HM_249, clk, 1'b0, 1'b0, 1'b1, NbarT, HM_18, global_reset);

assign So = HM_4;

endmodule

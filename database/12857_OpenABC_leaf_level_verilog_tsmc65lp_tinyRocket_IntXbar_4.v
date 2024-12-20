// This program was cloned from: https://github.com/NYU-MLDA/OpenABC
// License: BSD 3-Clause "New" or "Revised" License

module IntXbar_4( // @[:freechips.rocketchip.system.TinyConfig.fir@102861.2]
  input   auto_int_in_2_0, // @[:freechips.rocketchip.system.TinyConfig.fir@102864.4]
  input   auto_int_in_1_0, // @[:freechips.rocketchip.system.TinyConfig.fir@102864.4]
  input   auto_int_in_1_1, // @[:freechips.rocketchip.system.TinyConfig.fir@102864.4]
  input   auto_int_in_0_0, // @[:freechips.rocketchip.system.TinyConfig.fir@102864.4]
  output  auto_int_out_0, // @[:freechips.rocketchip.system.TinyConfig.fir@102864.4]
  output  auto_int_out_1, // @[:freechips.rocketchip.system.TinyConfig.fir@102864.4]
  output  auto_int_out_2, // @[:freechips.rocketchip.system.TinyConfig.fir@102864.4]
  output  auto_int_out_3 // @[:freechips.rocketchip.system.TinyConfig.fir@102864.4]
);
  assign auto_int_out_0 = auto_int_in_0_0; // @[LazyModule.scala 173:49:freechips.rocketchip.system.TinyConfig.fir@102877.4]
  assign auto_int_out_1 = auto_int_in_1_0; // @[LazyModule.scala 173:49:freechips.rocketchip.system.TinyConfig.fir@102877.4]
  assign auto_int_out_2 = auto_int_in_1_1; // @[LazyModule.scala 173:49:freechips.rocketchip.system.TinyConfig.fir@102877.4]
  assign auto_int_out_3 = auto_int_in_2_0; // @[LazyModule.scala 173:49:freechips.rocketchip.system.TinyConfig.fir@102877.4]
endmodule
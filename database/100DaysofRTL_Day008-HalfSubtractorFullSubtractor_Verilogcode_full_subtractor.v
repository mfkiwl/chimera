// This program was cloned from: https://github.com/ekb0412/100DaysofRTL
// License: Apache License 2.0

`timescale 1ns / 1ps

module full_subtractor(
  input a, b, bin,
  output diff, bout
);

  assign diff = a ^ b ^ bin;
  assign bout = (~a & (b^bin)) | (b & bin) ;
endmodule
// This program was cloned from: https://github.com/intel/aib-phy-hardware
// License: Apache License 2.0

// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2019 Intel Corporation. All rights reserved
module aibcr3_txdat_mimic (
	input wire idat_in,
	input wire vcc_aibcr,
	input wire vss_aibcr,
	output wire idat_out
);

	assign idat_out = idat_in;

endmodule
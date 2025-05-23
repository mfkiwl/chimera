// This program was cloned from: https://github.com/atrac17/Toaplan2
// License: GNU General Public License v3.0

/* This file is part of JTFRAME.


    JTFRAME program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    JTFRAME program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with JTFRAME.  If not, see <http://www.gnu.org/licenses/>.

    Author: Jose Tejada Gomez. Twitter: @topapate
    Version: 1.0
    Date: 22-11-2020

*/

// Make sure that the period can be divided by 3, otherwise there will be noise

module jtframe_uprate3_fir(
    input         rst,
    input         clk,
    input         sample,
    output reg    upsample,
    input  signed [15:0] l_in,
    input  signed [15:0] r_in,
    output signed [15:0] l_out,
    output signed [15:0] r_out
);

//parameter N=3746;
//localparam W=log2(N)-1;
localparam W=14;

reg [W-1:0] cnt, period, cnt3x;
reg signed [15:0] l_pad, r_pad;

always @(*) begin
    cnt3x = cnt<<1;
    cnt3x = cnt3x + cnt;
end

always @(posedge clk, posedge rst ) begin
    if( rst ) begin
        cnt     <= {W{1'd0}};
        period  <= {W{1'd0}};
        upsample <= 0;
    end else begin
        if( cnt3x == (period<<1) || cnt3x == period || sample ) begin
            upsample <= 1;
            l_pad   <= sample ? l_in : 16'd0;
            r_pad   <= sample ? r_in : 16'd0;
        end else upsample <= 0;
        if( sample ) begin
            cnt    <= { {W-1{1'd0}}, 1'd1}; // must start from 1
            period <= cnt;
        end else begin
            cnt <= cnt+1'd1;
        end
    end
end

jtframe_fir #(.KMAX(126),.COEFFS("uprate3.hex")) fir3(
    .rst    ( rst       ),
    .clk    ( clk       ),
    .sample ( upsample  ),
    .l_in   ( l_pad     ),
    .r_in   ( r_pad     ),
    .l_out  ( l_out     ),
    .r_out  ( r_out     )
);

endmodule
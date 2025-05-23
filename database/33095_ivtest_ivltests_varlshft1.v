// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

//
// Copyright (c) 1999 Steven Wilson (stevew@home.com)
//
//    This source code is free software; you can redistribute it
//    and/or modify it in source code form under the terms of the GNU
//    General Public License as published by the Free Software
//    Foundation; either version 2 of the License, or (at your option)
//    any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program; if not, write to the Free Software
//    Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA
//
//  SDW - Validate variable left shift in always block


module main;

reg globvar;

reg [7:0] var1,var2,var3;
reg error;
wire [7:0] value;
assign value = var1 << var2;

initial
  begin
    error = 0;
    #1 ;
    var1 = 8'h1;
    var2 = 8'h0;
    #2;
    if(value !== 8'h1)
      begin
        error = 1;
	$display ("FAILED - 1 << 0 is %h",value);
      end
    #1 ;
    var1 = 8'h1;
    var2 = 8'h1;
    #2;
    if(value !== 8'h2)
      begin
        error = 1;
	$display ("FAILED - 1 << 1 is %h",value);
      end
    #1 ;
    var1 = 8'h1;
    var2 = 8'h2;
    #2;
    if(value !== 8'h4)
      begin
        error = 1;
	$display ("FAILED - 1 << 2 is %h",value);
      end
    #1 ;
    var1 = 8'h1;
    var2 = 8'h3;
    #2;
    if(value !== 8'h8)
      begin
        error = 1;
	$display ("FAILED - 1 << 3 is %h",value);
      end
    #1 ;
    var1 = 8'h1;
    var2 = 8'h4;
    #2;
    if(value !== 8'h10)
      begin
        error = 1;
	$display ("FAILED - 1 << 4 is %h",value);
      end
    #1 ;
    var1 = 8'h1;
    var2 = 8'h5;
    #2;
    if(value !== 8'h20)
      begin
        error = 1;
	$display ("FAILED - 1 << 5 is %h",value);
      end
    #1 ;
    var1 = 8'h1;
    var2 = 8'h6;
    #2;
    if(value !== 8'h40)
      begin
        error = 1;
	$display ("FAILED - 1 << 6 is %h",value);
      end
    #1 ;
    var1 = 8'h1;
    var2 = 8'h7;
    #2;
    if(value !== 8'h80)
      begin
        error = 1;
	$display ("FAILED - 1 << 6 is %h",value);
      end
    #1 ;
    var1 = 8'ha5;
    var2 = 8'h7;
    #2;
    if(value !== 8'h80)
      begin
        error = 1;
	$display ("FAILED - a5 << 7 is %h",value);
      end
    #1 ;
    var1 = 8'ha5;
    var2 = 8'h1;
    #2;
    if(value !== 8'h4a)
      begin
        error = 1;
	$display ("FAILED - aa << 1 is %h",value);
      end
    if(error === 0)
        $display("PASSED");
   end

endmodule // main

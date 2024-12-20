module expression_00031(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
  input [3:0] a0;
  input [4:0] a1;
  input [5:0] a2;
  input signed [3:0] a3;
  input signed [4:0] a4;
  input signed [5:0] a5;

  input [3:0] b0;
  input [4:0] b1;
  input [5:0] b2;
  input signed [3:0] b3;
  input signed [4:0] b4;
  input signed [5:0] b5;

  wire [3:0] y0;
  wire [4:0] y1;
  wire [5:0] y2;
  wire signed [3:0] y3;
  wire signed [4:0] y4;
  wire signed [5:0] y5;
  wire [3:0] y6;
  wire [4:0] y7;
  wire [5:0] y8;
  wire signed [3:0] y9;
  wire signed [4:0] y10;
  wire signed [5:0] y11;
  wire [3:0] y12;
  wire [4:0] y13;
  wire [5:0] y14;
  wire signed [3:0] y15;
  wire signed [4:0] y16;
  wire signed [5:0] y17;

  output [89:0] y;
  assign y = {y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17};

  localparam [3:0] p0 = ((3'sd3)-(5'sd14));
  localparam [4:0] p1 = ((5'd2 ** ((4'd8)===(2'd3)))<<(((4'd0)<<(-2'sd0))&&{(4'd1),(5'd11),(2'd1)}));
  localparam [5:0] p2 = (-((2'd1)?(2'd1):(5'd6)));
  localparam signed [3:0] p3 = ({1{(~{4{(4'd11)}})}}>>>((3'sd0)?((5'd30)?(4'd10):(3'd0)):(+(-3'sd3))));
  localparam signed [4:0] p4 = (6'd2 ** (~|(2'd3)));
  localparam signed [5:0] p5 = ((-3'sd1)<<<(2'sd0));
  localparam [3:0] p6 = {3{(3'd3)}};
  localparam [4:0] p7 = {4{(2'd2)}};
  localparam [5:0] p8 = (((3'd6)+(4'd8))==(^{3{(-3'sd1)}}));
  localparam signed [3:0] p9 = (((4'd6)||(3'd4))?{1{{3{(4'd15)}}}}:(~^((2'd2)?(-2'sd1):(-5'sd6))));
  localparam signed [4:0] p10 = (~(~^(&(~^(!(~|(!(~^(~(4'd14))))))))));
  localparam signed [5:0] p11 = (~|(~^{3{{2{((3'd1)>>(2'd0))}}}}));
  localparam [3:0] p12 = (-2'sd0);
  localparam [4:0] p13 = ((-4'sd6)-(2'sd0));
  localparam [5:0] p14 = (({3{(4'd11)}}^~((3'sd0)?(5'd13):(5'sd15)))?((~^(2'sd0))?{4{(5'sd0)}}:{3{(4'sd3)}}):(~|(~&((5'sd1)|(2'd2)))));
  localparam signed [3:0] p15 = (((^((-2'sd1)|(2'd2)))>(~|((3'd2)>>(2'd1))))>(~|((-(2'sd1))>(-4'sd6))));
  localparam signed [4:0] p16 = (((-4'sd2)?(5'sd4):(2'd0))?((5'd16)^~(-4'sd2)):(~&(5'sd2)));
  localparam signed [5:0] p17 = {3{(4'd1)}};

  assign y0 = (($unsigned(((b2>>>a0)=={3{a5}}))<((!b4)?(p2?p1:p16):{b5,a2}))||((~(~$unsigned({4{p2}})))<<((5'd2 ** p13)?(|b5):(b4?p7:p16))));
  assign y1 = ({3{a3}}-(p2<=b5));
  assign y2 = (((a5<=a4)?(a2+b2):(b1&a3))>(((p11^a5)?(p12&a2):(p6?a3:p14))<<((b1>=p0)>=(a3||p13))));
  assign y3 = ((~^{(b2-a4)})?((p5?a5:b4)==(a5?b0:a5)):((~^p5)^~{a4,b3,a3}));
  assign y4 = ($signed(p6)<$unsigned(p11));
  assign y5 = {3{{3{{2{p13}}}}}};
  assign y6 = ((~|(a5?p13:b4))?(~|(~&(~|(a5^~p8)))):(+(~^(&(~p9)))));
  assign y7 = (|(^{{4{a2}},(p6==b4)}));
  assign y8 = (p3?b1:b1);
  assign y9 = (2'sd0);
  assign y10 = (~^((^{(5'd2 ** a1),{a1,a1,a0}})>={2{(+{a1,p15})}}));
  assign y11 = ((a2?a2:b0)?(5'd1):(a1?a2:b3));
  assign y12 = {3{(4'd6)}};
  assign y13 = {1{{{p15,p17,p6},(5'sd9)}}};
  assign y14 = {{b4},(p2>>a0),(a0||p0)};
  assign y15 = ((-((p16?a5:p11)?(~^b3):(!p9)))?((a1^b4)===(~^(~&b0))):(~|((!a1)?(~a5):(&a4))));
  assign y16 = (2'sd1);
  assign y17 = (~{(((b3&a5)?{p10,a1}:{p10})>((~^b0)?(3'd1):(-5'sd12)))});
endmodule

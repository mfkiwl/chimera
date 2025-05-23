module expression_00507(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (^((4'sd0)?(-2'sd0):(2'd2)));
  localparam [4:0] p1 = (|(-4'sd5));
  localparam [5:0] p2 = (({(-4'sd6),(5'd27)}-((3'd5)?(2'sd1):(3'sd1)))!=((~&(3'd3))||((3'd5)|(-4'sd0))));
  localparam signed [3:0] p3 = ((4'sd2)?(-4'sd4):(4'sd6));
  localparam signed [4:0] p4 = (~|{(4'd3)});
  localparam signed [5:0] p5 = (({4{(4'd3)}}|((3'd3)?(5'sd7):(4'd11)))?{((-3'sd3)?(4'sd3):(5'd0))}:{({(-2'sd1),(3'd2),(4'd9)}&&((2'd0)?(5'd26):(-2'sd0)))});
  localparam [3:0] p6 = {4{(-3'sd2)}};
  localparam [4:0] p7 = {4{((5'sd9)&(4'sd0))}};
  localparam [5:0] p8 = {({(-2'sd1),(4'sd0)}?((2'sd0)>=(-5'sd1)):((-4'sd7)<<(4'd8)))};
  localparam signed [3:0] p9 = (^({((3'sd1)>(4'd8)),((3'sd1)<=(2'd0))}<{((3'd1)===(4'd1)),((3'd3)<<<(5'd4)),((3'sd3)>>>(-5'sd8))}));
  localparam signed [4:0] p10 = {1{{1{((2'd2)?(-5'sd12):(-3'sd3))}}}};
  localparam signed [5:0] p11 = (+((3'sd3)^(4'sd4)));
  localparam [3:0] p12 = {4{{3{(3'sd0)}}}};
  localparam [4:0] p13 = {2{(3'd6)}};
  localparam [5:0] p14 = {1{(4'sd0)}};
  localparam signed [3:0] p15 = (({2{((3'sd2)^(3'sd1))}}<((-3'sd3)-((5'sd1)!==(2'd3))))<<((((4'd14)|(-5'sd0))===((-4'sd6)+(-4'sd6)))<<<(5'sd9)));
  localparam signed [4:0] p16 = ({3{(4'd7)}}?(^(!(~|(5'sd1)))):(~&(|{1{(3'sd1)}})));
  localparam signed [5:0] p17 = (((-4'sd3)?(4'd13):(-5'sd14))/(5'd12));

  assign y0 = {{{a3,b2,p8},(p6?p3:b4)}};
  assign y1 = (-3'sd1);
  assign y2 = (+((+((b2===b5)))!==((a5&&b4))));
  assign y3 = ({4{(a5<=a4)}}!==({b0,b5,a0}!=={3{b2}}));
  assign y4 = ((((!b1)<<(4'd2 ** b0))>(~(b2?b2:a4)))-(((a5&&b4)>(a3===a2))>$unsigned((a2>>>b5))));
  assign y5 = (~^{4{($unsigned((~b2)))}});
  assign y6 = {((3'd2)?(-(b0==b2)):(b2!==b1))};
  assign y7 = ((^((^(b0+a2))&$unsigned((a1?a5:a2))))==={(|(a1&&a0)),(a5<<<a4),(b3?a4:a0)});
  assign y8 = ((-5'sd14)&(~^{4{(^b5)}}));
  assign y9 = (((b4===b3)|(p15||p3))?(b0?p4:p0):(p14?p17:p4));
  assign y10 = (((|(a2?a5:b3))-(~(a1+a1)))!==(~&((b3>>a2)^~(a1>>a1))));
  assign y11 = {2{((3'd7)>>>{2{b5}})}};
  assign y12 = {(|(^(&{1{b1}}))),((~^a2)==(~|p7)),({p16,p5,b0}?(~&a2):(p2==b5))};
  assign y13 = (((2'd0)>>(~&(b5&p3)))||(((~&p0)^~(+p17))<((~|b2)&&(-a5))));
  assign y14 = (~&(((^(^(~^(((b2)>>{3{a4}})))))||(~&(((a0>=a0))|{3{a1}})))));
  assign y15 = ((b4?b5:a2)^{a2,a3,b4});
  assign y16 = (((a1>b4)||(6'd2 ** p14))>(6'd2 ** (p2&p7)));
  assign y17 = (({b4}?{p12}:(a1?b2:b1))?{3{{b4,a1}}}:(|{(~&p13),(~&a4)}));
endmodule

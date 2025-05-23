module expression_00338(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (^(~^(~{3{(!{1{(4'd8)}})}})));
  localparam [4:0] p1 = (((-5'sd1)<=(4'd2))<=((5'sd2)+(-2'sd1)));
  localparam [5:0] p2 = (-4'sd6);
  localparam signed [3:0] p3 = ((5'd4)!==(3'd7));
  localparam signed [4:0] p4 = (-5'sd4);
  localparam signed [5:0] p5 = {4{(2'd1)}};
  localparam [3:0] p6 = (((4'd11)/(-4'sd4))&((5'd10)>(5'd4)));
  localparam [4:0] p7 = (((4'd9)&&(-3'sd0))?((4'sd4)?(5'd30):(5'sd10)):((2'sd0)===(3'd4)));
  localparam [5:0] p8 = (+(((5'sd4)?(2'd3):(3'd0))||((2'd1)?(2'd0):(3'd6))));
  localparam signed [3:0] p9 = {2{(((3'd6)<<(2'sd0))<<<{(2'd1),(5'd10)})}};
  localparam signed [4:0] p10 = (&((5'sd1)^~(3'd0)));
  localparam signed [5:0] p11 = ((-2'sd1)|(2'sd0));
  localparam [3:0] p12 = ({(4'd2),(3'd0),(5'sd4)}&&(~|(3'd0)));
  localparam [4:0] p13 = {2{{4{{(4'sd0),(4'd4),(2'sd0)}}}}};
  localparam [5:0] p14 = {3{{1{{3{(2'd2)}}}}}};
  localparam signed [3:0] p15 = (|(6'd2 ** ((5'd30)+(4'd11))));
  localparam signed [4:0] p16 = {4{{3{(3'sd0)}}}};
  localparam signed [5:0] p17 = (!(3'sd3));

  assign y0 = (4'sd2);
  assign y1 = ((^(p13?a3:b2))?((+b2)?(+a1):(^p8)):(-(~&(p1?p5:a2))));
  assign y2 = (($signed(b3)||(a3>>p15))<<(|$unsigned((b4>>>a1))));
  assign y3 = (~|(|((+(~&(-(p11?p14:a1))))?(5'sd10):((p17?a5:p7)?(p3?b3:a1):(-5'sd10)))));
  assign y4 = (-(4'sd0));
  assign y5 = (3'd5);
  assign y6 = {4{$signed({({1{a2}})})}};
  assign y7 = ((2'd2)<=(-(6'd2 ** (4'd9))));
  assign y8 = ((b4<=b2)?{a5,a2}:{b5,a1,b4});
  assign y9 = (-({1{(+($signed({4{p16}})))}}>>({2{{1{p4}}}}>>$signed((b4===b2)))));
  assign y10 = (-(!(~^(~^{3{p14}}))));
  assign y11 = ({(+((+(^b2))?(p3?b4:p13):(b1?a3:p12)))}-(2'd0));
  assign y12 = ((((2'd3)?(p7+p5):(4'd4))==((p13==p3)?(-3'sd2):(p7*a5)))^((3'd3)<<((p5%p16)?(p9>=b2):(p4?p13:p6))));
  assign y13 = {2{({3{p15}}<=(p0<=p11))}};
  assign y14 = (-2'sd1);
  assign y15 = (~|((~&$unsigned(a2))+{4{p17}}));
  assign y16 = $unsigned({p4,p16});
  assign y17 = (2'd3);
endmodule

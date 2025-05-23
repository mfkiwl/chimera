module expression_00767(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((4'd13)==(-5'sd14))&&((3'd6)?(5'd2):(-3'sd2)));
  localparam [4:0] p1 = (3'sd0);
  localparam [5:0] p2 = (3'd7);
  localparam signed [3:0] p3 = (((-2'sd1)?(4'sd5):(5'sd7))<<<((4'd7)^~(3'd0)));
  localparam signed [4:0] p4 = (~|{1{{((-4'sd5)===(2'd1))}}});
  localparam signed [5:0] p5 = (^((((4'd3)==(5'sd8))!=(~|(-2'sd1)))<<<((-(3'sd3))>>>(~^(2'd2)))));
  localparam [3:0] p6 = (+(^(~(^(|(!((~((4'sd5)==(5'd7)))!=({(2'sd0),(2'sd1)}<<<(+(4'd6))))))))));
  localparam [4:0] p7 = (((4'd13)||{(-4'sd4),(5'd17),(5'd18)})?((5'd20)?{2{(-2'sd1)}}:((-3'sd2)>>(-3'sd0))):(!(((-5'sd9)>>>(4'sd0))>>((-3'sd3)?(-4'sd2):(3'd4)))));
  localparam [5:0] p8 = {((3'sd0)+(-2'sd0)),{(5'd30),(3'd0)},((3'd1)+(4'd3))};
  localparam signed [3:0] p9 = (((-4'sd5)<=(2'd0))<=(~^(~|(-4'sd7))));
  localparam signed [4:0] p10 = {1{{2{(+{4{(3'd7)}})}}}};
  localparam signed [5:0] p11 = {{(2'd1),(4'd7),(2'sd0)},(4'd3),(~|{(5'd1),(2'd2)})};
  localparam [3:0] p12 = (~|{(~&(|{(4'd12),(2'd0)})),{{(-3'sd0),(2'd1),(-2'sd0)},(^(2'sd1))},(&((5'd22)+(-2'sd1)))});
  localparam [4:0] p13 = ((((3'sd3)?(4'sd7):(5'd31))&((4'd2)?(4'sd5):(5'd15)))>=((4'd9)<=(-4'sd2)));
  localparam [5:0] p14 = ({({(4'd11)}||(|(5'd5)))}<<<({(-4'sd6),(2'sd1)}^~((3'd0)>(4'd4))));
  localparam signed [3:0] p15 = ({2{(4'd6)}}>>>{1{((-2'sd0)^(3'd0))}});
  localparam signed [4:0] p16 = (((2'd0)?(3'd0):(5'd31))?((5'sd13)?(5'd15):(4'd13)):{((3'd0)?(4'd2):(5'd10))});
  localparam signed [5:0] p17 = ((-4'sd1)?(2'd1):(-4'sd5));

  assign y0 = ({p0,a3,p6}?(p17^~b5):(p17&b4));
  assign y1 = (((p4?a2:a3)?{a0}:(p13<p7))^(2'sd0));
  assign y2 = $unsigned((~^$signed({($signed($signed((b4||p5)))-((~&b2)&&$unsigned(p5))),{((-(b2>=a4))>(2'd0))}})));
  assign y3 = (4'd6);
  assign y4 = {2{{4{p6}}}};
  assign y5 = $signed((!p10));
  assign y6 = (5'd2 ** (b1&&p2));
  assign y7 = (&(((a3&b4)||(a0>a0))!=={3{(~b1)}}));
  assign y8 = (5'd27);
  assign y9 = $unsigned(((5'd13)==$unsigned($signed((b5<<<b2)))));
  assign y10 = (({(~^a1),(|a0)}!=(+(b2>=b2)))^~{3{(a4?a0:a2)}});
  assign y11 = ({((({1{$unsigned(({a3,p11,p0}<<(p6&&p9)))}})))}==(({3{b5}}^(b5&&a2))>=$signed({4{p10}})));
  assign y12 = {$signed(((-a2)-(a3<<p14))),({a1,b1,b3}&(b2<=a1))};
  assign y13 = ({3{p14}}!={1{a2}});
  assign y14 = (~^(((a4^~b4)<=(b2<<<a3))>>((p1<<<a3)&(p17<<p1))));
  assign y15 = ((p12<<b1)|(a4!==a2));
  assign y16 = ((~&((4'd8)&(p12?b1:a4)))?(3'd1):((!(!(|(b3<b0))))));
  assign y17 = $signed((~|$signed((~^$unsigned(($unsigned(a0)))))));
endmodule

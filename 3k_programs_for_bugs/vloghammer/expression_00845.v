module expression_00845(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (4'd10);
  localparam [4:0] p1 = {4{{2{(4'd0)}}}};
  localparam [5:0] p2 = (4'd4);
  localparam signed [3:0] p3 = (5'd3);
  localparam signed [4:0] p4 = (^(!(4'd5)));
  localparam signed [5:0] p5 = (2'sd1);
  localparam [3:0] p6 = (((-2'sd0)?(-3'sd3):(-2'sd0))|{1{{3{(-5'sd6)}}}});
  localparam [4:0] p7 = ({4{(4'sd5)}}+(((5'd2)?(4'd12):(4'd3))>={2{(3'sd0)}}));
  localparam [5:0] p8 = {1{({2{((3'd6)===(3'd6))}}&&({1{(3'd6)}}===(~^(5'd1))))}};
  localparam signed [3:0] p9 = {3{(3'd6)}};
  localparam signed [4:0] p10 = ((((3'd6)==(3'sd1))|((4'd10)&&(4'sd5)))&&(((-2'sd1)*(-2'sd0))==((4'd8)!=(3'd3))));
  localparam signed [5:0] p11 = (|((~&(4'sd7))^~((-4'sd4)-(-3'sd2))));
  localparam [3:0] p12 = ({2{(5'd25)}}?{3{(5'd14)}}:{3{(2'd1)}});
  localparam [4:0] p13 = (2'd1);
  localparam [5:0] p14 = ((((2'd3)+(4'd10))^((4'sd0)===(4'd3)))|(4'd2 ** (6'd2 ** (5'd30))));
  localparam signed [3:0] p15 = {3{(-2'sd0)}};
  localparam signed [4:0] p16 = (5'sd0);
  localparam signed [5:0] p17 = (((!(4'd2))>>(~(3'sd2)))?(-((2'sd1)?(4'd7):(-4'sd4))):((2'd1)?(-2'sd1):(-4'sd1)));

  assign y0 = ((4'd2 ** b2)?(b5&b2):(3'd2));
  assign y1 = (2'd2);
  assign y2 = ((5'd28)|(5'd2 ** (|(b2?p6:p6))));
  assign y3 = (|(2'd3));
  assign y4 = (((2'sd1)>>(p7?a1:b4))?((4'sd3)===(3'd0)):((a5||a1)>>>(p13<<<a3)));
  assign y5 = {(-(~^p0)),(&(p2?p12:p14)),(a4<p8)};
  assign y6 = {1{(~|p13)}};
  assign y7 = (((~&b2)?(a0>>>b1):(p3-a5))?(^(4'sd7)):$signed((~^((p12>>b3)<=(4'd14)))));
  assign y8 = (($unsigned(($signed(p7)))?((p16?p0:a4)&(b3*b5)):(($unsigned(p13)))));
  assign y9 = (5'd6);
  assign y10 = {{(p6>p9),{a1,p0,p10}},(5'd2 ** (b2<=p2)),({b2}<<<(6'd2 ** b1))};
  assign y11 = ((^((a4<<<p6)?(p15&&p11):$signed(p15)))&((b0-p8)>>(a5?p5:b4)));
  assign y12 = ($unsigned((~|(b0!==a2)))>>>$signed({3{p0}}));
  assign y13 = (5'd2 ** {3{b2}});
  assign y14 = (&(((~&a3)?(p11?b5:p0):(~|p14))?(~^(|(&(-p9)))):((&p11)<<<(p5?b0:p2))));
  assign y15 = $signed($unsigned($signed((-5'sd9))));
  assign y16 = {4{((~|a4)?(p2<<<a4):(p13?p3:b5))}};
  assign y17 = {{a0,b0,p9},$unsigned($unsigned((p11<=p13)))};
endmodule

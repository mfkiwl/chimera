module expression_00095(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((((4'd4)<(5'd10))?(|(-5'sd9)):(~|(-2'sd0)))?(4'sd6):(-5'sd6));
  localparam [4:0] p1 = (~|((~|(|(3'sd2)))<<(&((2'd2)>(5'd26)))));
  localparam [5:0] p2 = (~^(3'sd2));
  localparam signed [3:0] p3 = {(((3'sd1)?(3'sd1):(2'sd0))+((5'd31)>>(5'd23))),{((2'd2)?(2'd2):(2'sd0))},((6'd2 ** (4'd15))<=((3'd5)?(-3'sd3):(2'd1)))};
  localparam signed [4:0] p4 = ((~&{(-(4'd13))})+{((4'd5)<<(4'sd6))});
  localparam signed [5:0] p5 = ((((5'd24)^(2'd0))==((-3'sd2)<(3'd7)))===(((-5'sd6)&&(-2'sd0))|((3'd1)^(-3'sd2))));
  localparam [3:0] p6 = (((3'd2)?(2'sd0):(4'd2))?(~^(+(3'sd3))):(~^((4'sd4)?(2'd2):(-4'sd3))));
  localparam [4:0] p7 = ((^(|(~&(2'd2))))!==((|(4'd12))<<<((3'd4)|(4'd5))));
  localparam [5:0] p8 = (-4'sd2);
  localparam signed [3:0] p9 = (((3'd3)!=(-5'sd10))!==(5'd29));
  localparam signed [4:0] p10 = (^(-4'sd3));
  localparam signed [5:0] p11 = ((^{4{(2'd3)}})>>>((^(3'd3))^~(~^(5'sd10))));
  localparam [3:0] p12 = ((((4'd15)<<(2'sd1))|((2'sd1)==(5'd1)))&&(((2'd2)>>(5'sd14))<<((-3'sd1)<<<(5'd24))));
  localparam [4:0] p13 = ((~^(+(2'd0)))?{2{(2'd2)}}:{3{(2'd3)}});
  localparam [5:0] p14 = ({(2'd3)}?((4'd11)?(5'd14):(-5'sd10)):((2'sd1)?(-3'sd2):(5'd10)));
  localparam signed [3:0] p15 = (4'd2 ** (3'd7));
  localparam signed [4:0] p16 = (5'd2 ** (6'd2 ** (2'd3)));
  localparam signed [5:0] p17 = ((~(6'd2 ** ((3'd7)>=(4'd2))))>>((5'd16)%(5'd3)));

  assign y0 = ({(-5'sd11),(~|p16)}?(p7?p13:p9):(+{(!p12)}));
  assign y1 = (({a4,a0,a3}|((b0&&b5)>>>(a3<=a5)))-$unsigned(((a3>>>a1)&(b0<a5))));
  assign y2 = ({(a1?p5:b5),(p13?p11:a1)}?{{3{a3}},{a4,a5}}:(5'd26));
  assign y3 = (2'd2);
  assign y4 = (({3{(-2'sd1)}}!=({1{a4}}^(|b0)))<<<((4'd2 ** (p7^a1))<(-4'sd5)));
  assign y5 = (~{1{(|(~|(-4'sd0)))}});
  assign y6 = ((~|(~&(p9&&p17)))=={3{a1}});
  assign y7 = (~^(-2'sd1));
  assign y8 = ((2'd1)?(4'sd5):{2{b5}});
  assign y9 = (^(2'd2));
  assign y10 = (-(~^(~(((b0===a2)+(a0==p10))>>(|(~(~&(b5/p4))))))));
  assign y11 = (~^($signed($signed(b5))&(b2!=a1)));
  assign y12 = (-5'sd12);
  assign y13 = (~|(~((~&(b2?b0:p12))|{(p10?b4:a1)})));
  assign y14 = ((p3-a3)>={2{p2}});
  assign y15 = (((-5'sd8)<(-4'sd3))<<<((3'd0)<=((2'd3)===(b4===b1))));
  assign y16 = ((~^((p6?b5:p0)?(p17?a5:b5):(+(-b5))))==((|(p7-p1))&&({3{p8}}<=(&p9))));
  assign y17 = {4{((b4^~b2)===(b2))}};
endmodule

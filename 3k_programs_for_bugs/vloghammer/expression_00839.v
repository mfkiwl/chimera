module expression_00839(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (-2'sd1);
  localparam [4:0] p1 = ((-2'sd0)?(5'sd2):(2'sd0));
  localparam [5:0] p2 = {({3{(4'sd7)}}!=={1{{(2'sd1)}}}),{(+(3'd2)),{4{(4'd14)}}}};
  localparam signed [3:0] p3 = (((2'd0)?(-3'sd2):((5'sd6)^~(-2'sd1)))-((3'd1)?((-2'sd0)&(5'd8)):((-4'sd3)?(2'sd1):(-2'sd0))));
  localparam signed [4:0] p4 = (-4'sd5);
  localparam signed [5:0] p5 = (~(^(4'sd7)));
  localparam [3:0] p6 = (&{(5'sd9)});
  localparam [4:0] p7 = ((4'sd3)?(-4'sd6):(5'd29));
  localparam [5:0] p8 = ((5'd14)>>>((^(-2'sd1))?(2'sd0):((-2'sd1)<<<(4'd6))));
  localparam signed [3:0] p9 = {3{({(4'sd6)}||(!(3'd4)))}};
  localparam signed [4:0] p10 = (&(((3'd0)/(5'sd10))<<<(+(-2'sd1))));
  localparam signed [5:0] p11 = ({2{((3'd7)>>>(4'd3))}}!==(4'd8));
  localparam [3:0] p12 = (+(-(-4'sd7)));
  localparam [4:0] p13 = ((&(~(~^(3'd2))))?{1{(+((-5'sd11)===(-4'sd4)))}}:{3{(5'd24)}});
  localparam [5:0] p14 = (({3{(-5'sd12)}}?(4'd2):{1{(2'd0)}})?({1{(-3'sd0)}}||((-4'sd3)?(2'd0):(3'd6))):{4{(4'd14)}});
  localparam signed [3:0] p15 = ((5'sd0)-(4'd12));
  localparam signed [4:0] p16 = ((5'd2)?(4'sd4):(5'd17));
  localparam signed [5:0] p17 = ((2'sd1)?(2'd0):(3'd3));

  assign y0 = (({p6}<$unsigned(p2))&$signed((p6==p17)));
  assign y1 = ({2{{4{p7}}}}>>((p13>>b2)^~{1{(p11>>p11)}}));
  assign y2 = (|(|p0));
  assign y3 = (((~^(a2-b1))?(a0?a4:a3):(5'd2 ** p12))>>((a5?a5:b3)<(a3?a1:a5)));
  assign y4 = ((p0|p10)%a5);
  assign y5 = ((a5^~a1)||(p9==p4));
  assign y6 = ((-p10)||{p10,p14});
  assign y7 = (({b1,p15})<<$signed({p14}));
  assign y8 = {(~^(~|{(~|(^{{3{(+p7)}},{3{{p4,a4}}},{{1{a5}},{p8,a4},{b2,a2}}}))}))};
  assign y9 = ((((b3&a5)!=={4{b3}})<={1{{b4,b4,a5}}})<={2{{(6'd2 ** b0),(a1<a4)}}});
  assign y10 = (((^p1)^(b2>>b1))<<($unsigned(a4)!==(+b3)));
  assign y11 = (((b1?a1:a3)&&(|b5))?{{b5,a5,a4},{b4,b4,b1}}:({b0,b1,a1}|(~&a4)));
  assign y12 = (~&(~^(~&(3'sd2))));
  assign y13 = (4'd2 ** (p13>>>p14));
  assign y14 = ((($unsigned(b5)<<{2{b4}}))-((b0>=b0)?{1{b0}}:{p5}));
  assign y15 = (({p16,p13,p15}||{p1,p4})<={(p1&&p12),{3{p16}},{1{p9}}});
  assign y16 = {4{b4}};
  assign y17 = ($unsigned((~&({3{p4}}>>$signed({4{p9}})))));
endmodule

module expression_00719(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((3'sd0)+(((4'd15)?(5'd11):(5'd5))&&((5'd9)?(3'd6):(5'd27))));
  localparam [4:0] p1 = (((2'd0)?(-2'sd1):(5'd3))?((2'sd1)?(2'sd1):(5'sd12)):((4'd1)?(-4'sd7):(4'sd5)));
  localparam [5:0] p2 = ((5'sd8)||(4'sd5));
  localparam signed [3:0] p3 = {(!{(~{(3'd3),{(-3'sd3),(3'sd2)}})}),{(-3'sd3),((-4'sd4)?(3'd3):(3'd0)),(3'd7)}};
  localparam signed [4:0] p4 = (|(+(|(~^(+((-3'sd2)||(4'd15)))))));
  localparam signed [5:0] p5 = (3'd4);
  localparam [3:0] p6 = {{3{(-4'sd4)}},((3'd3)?(5'd22):(2'd2)),{(4'sd6),(-2'sd1)}};
  localparam [4:0] p7 = (^(6'd2 ** ((5'd12)|(4'd4))));
  localparam [5:0] p8 = ((((5'd19)>>>(3'sd2))<((5'd18)||(-4'sd1)))|((5'd2)?(2'sd1):(-4'sd6)));
  localparam signed [3:0] p9 = {1{(5'd30)}};
  localparam signed [4:0] p10 = ((((3'sd2)!==(3'd3))+((-3'sd2)?(3'sd2):(4'd8)))?(((3'd7)?(-3'sd1):(2'd3))?((2'd2)?(-3'sd0):(-2'sd0)):((-5'sd13)<(4'd6))):(((-3'sd1)&(4'd7))!=(-(3'd5))));
  localparam signed [5:0] p11 = (~(((4'd10)>>(3'sd1))===((5'sd7)&&(3'd2))));
  localparam [3:0] p12 = ((((-3'sd1)===(5'd4))&((5'd2)===(-5'sd12)))-(((2'sd1)!==(-4'sd7))==((2'd2)?(-5'sd5):(5'sd14))));
  localparam [4:0] p13 = ((((-4'sd5)>>(-2'sd0))>(^(|(-5'sd4))))+(|((&(2'd3))<=(&(5'd18)))));
  localparam [5:0] p14 = ((~((2'd3)-(4'd3)))<<<(((-5'sd12)?(5'd7):(3'sd1))!==((4'd3)+(5'sd3))));
  localparam signed [3:0] p15 = (-((6'd2 ** (3'd4))|(|(4'sd3))));
  localparam signed [4:0] p16 = {2{(((5'd19)&&(5'd29))<<<((-2'sd1)==(-2'sd0)))}};
  localparam signed [5:0] p17 = (((3'd6)===(-4'sd1))||((5'd22)<<(3'sd3)));

  assign y0 = {4{({4{p9}}==(!p14))}};
  assign y1 = ((+{((&p1)>>{1{p14}})})|(^{4{(p3>>p6)}}));
  assign y2 = (^(~(~^{{(!p10),{p11,p0},(-p0)},{(~(~|{p6,p16,p13}))},(-{(~^p4),(~|p13)})})));
  assign y3 = ((-p8)<$signed(p14));
  assign y4 = {2{(((p13<<p6)>={3{p15}})>>>{2{(p2<p4)}})}};
  assign y5 = {(&{p8,b2,p17})};
  assign y6 = ($signed(({3{p15}}))&&({3{p10}}&&{4{p1}}));
  assign y7 = ($signed((p1==b2))?$signed($signed((p15?b2:a2))):((b5)<<(p15|p17)));
  assign y8 = (~(2'sd1));
  assign y9 = (~^(&(a1>b4)));
  assign y10 = (|{1{{p3,a4,b5}}});
  assign y11 = (((p7>=p1)/p6)>>>$signed(((p14&&p4)?(p3||p12):(p6&&b3))));
  assign y12 = (~^{$signed(p5),(p17<<b4),{p2,b1}});
  assign y13 = ((a0==a5)===(-5'sd11));
  assign y14 = (~&{{{(p9>b1),(~|{b0,b1})},{(~|(a1>=a1)),{(a1?b1:a2)}},(3'd4)}});
  assign y15 = {((a1?b1:b0)?$unsigned(b3):{b4,p3})};
  assign y16 = $signed((|(-(-$unsigned((~&(~|(&(~|$signed((~^((&(~(-a1)))))))))))))));
  assign y17 = {3{p1}};
endmodule

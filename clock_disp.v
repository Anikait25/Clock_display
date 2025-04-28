module clock_disp(clk,rst,ledH,ledM,ledS,ledS1,ledM1,ledH1);
input clk,rst;
output [0:6] ledH,ledM,ledS,ledS1,ledM1,ledH1;
wire [3:0] H1,M1,S1,H0,M0,S0;
wire [6:0] H,M,S;
wire [25:0] c;
wire clk32,clk32_1,clk32_2,clk4,clk2;
clk_div d1(.clk(clk),.div32(clk32));
clk_div d2(.clk(clk32),.div32(clk32_1));
clk_div d3(.clk(clk32_1),.div32(clk32_2));
clk_div d4(.clk(clk32_2),.div32(clk4));
clk_div d5(.clk(clk4),.div8(clk2));
clock_display c1(clk2,rst,H,M,S);

assign S0 = S%10;
assign S1 = S/10;
assign M0 = M%10;
assign M1 = M/10;
assign H0 = H%10;
assign H1 = H/10;

display_d b1(ledS,S0);
display_d b2(ledS1,S1);
display_d b3(ledM,M0);
display_d b4(ledM1,M1);
display_d b5(ledH,H0);
display_d b6(ledH1,H1);

endmodule
module clock_display_tb;
reg clk,rst;
wire [6:0] H;
wire [6:0] M,S;
clock_display c1(clk,rst,H,M,S);
initial
begin
rst = 0;
clk=0;
end
always 
#5 clk=~clk;
initial
begin
rst=0;
#1500 rst=1;
$finish;
end
endmodule
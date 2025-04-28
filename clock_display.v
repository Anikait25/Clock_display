module clock_display(clk,rst,H,M,S);
input clk,rst;
output reg [6:0] M = 0;
output reg [6:0] S = 0;
output reg [6:0] H = 0;
always@(posedge clk or posedge rst)
begin
	if(rst)
		begin
			S=0;
			H=0;
			M=0;
		end
	else
		begin
			S = S + 1;
			if(S==60)
			begin
				S = 0;
				M = M + 1;
			end
			if(M==60)
			begin
				M = 0;
				H = H + 1;
			end
			if(H==24)
			begin
				H = 0;
				M = 0;
				S = 0;
			end
		end
end			
endmodule
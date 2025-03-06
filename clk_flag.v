module clk_flag(clk,rst,flag);
input clk,rst;
output flag;
reg flag;
reg [2:0] counter = 3'b000;
reg x=1'b0;  
always@(posedge clk or posedge rst)
begin
if(clk)
begin
counter<=counter+1;
	if(counter==2 )
		begin
		flag<=1;
		x<=1;	
		 end
	else if((counter!=2& x==0)| rst==1)
		begin
		flag<=0; 
		end
end

end
endmodule

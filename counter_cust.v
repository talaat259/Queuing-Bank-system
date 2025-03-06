module counter_cust(clk_flag, rst,BPH,FPH,counter,counter_ch,fflag,eflag);
input BPH,FPH,rst,clk_flag;
output  [2:0]counter,counter_ch;
output fflag,eflag;
reg fflag;
reg eflag;
reg [2:0]counter;
reg [2:0]counter_ch;

always@(posedge rst or posedge BPH or posedge FPH  or  posedge clk_flag)
begin

if(rst | clk_flag)
	begin
	counter<=0;
	if(clk_flag==1)begin
	counter_ch<=0;

		 end
	counter_ch<=counter_ch;
	end
else if(BPH)
	begin
	counter<=counter+1;
	counter_ch<=counter_ch+1;
	if(counter==7)
		begin 
		fflag<=1;
		end
	end

else if(FPH)
	begin
	counter<=counter-1;
	counter_ch<=counter_ch-1;
	if(counter==0)
		begin 
		eflag<=1;
		end
	end

else 
	begin
counter <=counter;
counter_ch<=counter_ch;
	end



end
endmodule
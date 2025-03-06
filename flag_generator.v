module flag_generator(counter,BPH,counter_ch,fflag,clear_flag,alarm);
input BPH,clear_flag,fflag;
input [3:0]counter,counter_ch;
output reg alarm;
always@(BPH or counter_ch or clear_flag)
begin
if(clear_flag)
	begin
	alarm<=0;
	end



else if(fflag)
	begin
    	if(BPH)
		begin 
		alarm<=1;
		end
	end
else if(counter!=counter_ch)
	begin
	alarm<=1;
	end
end

endmodule

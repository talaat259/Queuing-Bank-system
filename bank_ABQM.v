module bank_ABQM(clock,BPH,FPH,tellers,clear_flags, led1, led2, led3, alarm, flag, fflag, eflag);
input clock,BPH,FPH;
output [6:0]led1;
output [6:0]led2;
output [6:0]led3;
input clear_flags;

wire [2:0]counter,counter_check;////////////////////

wire [1:0]bin_rep;
output fflag,eflag;
input flag;
input [2:0]tellers;
wire [7:0]wtime;
wire [3:0]most7seg;
wire [3:0]lest7seg;
output alarm;
reg c=0;

clk_flag G1(clock,clear_flags,flag);


counter_cust couter_1(flag,clear_flags,BPH,FPH,counter,counter_check,fflag,eflag);


bcd_7_seg bcd(.A(c), .B(counter[2]), .C(counter[1]), .D(counter[0]), .led_a(led1[6]), .led_b(led1[5]), 
              .led_c(led1[4]), .led_d(led1[3]), .led_e(led1[2]), .led_f(led1[1]), .led_g(led1[0]));


flag_generator generator_Flag(counter,BPH,counter_check,fflag,clear_flags,alarm);
Teller_count teller__countt(tellers, bin_rep);


waiting_time_display wait_dispaly(wtime,most7seg,lest7seg,
				  led2[6], led2[5], led2[4], led2[3], led2[2], 
				  led2[1], led2[0], 
                                  
				  led3[6], led3[5], led3[4], led3[3], led3[2], 
				  led3[1], led3[0]);
rom mmm1(counter,bin_rep,wtime);

endmodule

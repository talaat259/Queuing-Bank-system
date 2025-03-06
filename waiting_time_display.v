module waiting_time_display(wtime, most_7seg, least_7seg, 
			    led_a, led_b, led_c, led_d, led_e, led_f, led_g,
			    led_a0, led_b0, led_c0, led_d0, led_e0, led_f0, led_g0);
	input [7:0]wtime;
	output [3:0] most_7seg, least_7seg;
	output led_a, led_b, led_c, led_d, led_e, led_f, led_g;
	output led_a0, led_b0, led_c0, led_d0, led_e0, led_f0, led_g0;
	
	assign most_7seg = wtime/10;
	assign least_7seg = wtime%10;

	bcd_7_seg most (most_7seg[3], most_7seg[2], most_7seg[1], most_7seg[0],
			   led_a, led_b, led_c, led_d, led_e, led_f, led_g);
	bcd_7_seg least (least_7seg[3], least_7seg[2], least_7seg[1], least_7seg[0],
			    led_a0, led_b0, led_c0, led_d0, led_e0, led_f0, led_g0);
	
endmodule
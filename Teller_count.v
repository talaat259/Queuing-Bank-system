module Teller_count(num_tellers, binary_rep);//encoder_3_2
	input [2:0]num_tellers;
        output [1:0]binary_rep;
	reg [1:0]binary_rep;

	always @(num_tellers)
		begin 
			case(num_tellers)
			3'b000:
				binary_rep=2'b00;
			3'b001:
  				binary_rep=2'b01;
			3'b010:
				binary_rep=2'b01;
			3'b011:
				binary_rep=2'b10;
			3'b100:
				binary_rep=2'b01;
			3'b101:
				binary_rep=2'b10;
			3'b110:
				binary_rep=2'b10;
			3'b111:
				binary_rep=2'b11;
			endcase
		end
endmodule

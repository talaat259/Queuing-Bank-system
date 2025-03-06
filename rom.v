module rom (
    input [2:0] Pcount,   // 3-bit Pcount (0 to 7)
    input [1:0] Tcount,   // 2-bit Tcount (1 to 3)
    output reg [7:0] Wtime // 8-bit Wtime value
);

    // ROM array to store Wtime values (24 values for 8 x 3 combinations)
    reg [7:0] rom_memory [0:'h17]; // 24 entries
	 // Output Wtime based on concatenated address
    always @ (Pcount) begin

	case ({Tcount, Pcount})
	5'b01000: Wtime = 8'b00000000;
	5'b01001: Wtime = 8'b00000011;	
	5'b01010: Wtime = 8'b00000110;
	5'b01011: Wtime = 8'b00001001;
	5'b01100: Wtime = 8'b00001100;
	5'b01101: Wtime = 8'b00001111;
	5'b01110: Wtime = 8'b00010010;
	5'b01111: Wtime = 8'b00010101;
	5'b10000: Wtime = 8'b00000000;
	5'b10001: Wtime = 8'b00000011;	
	5'b10010: Wtime = 8'b00000100;
	5'b10011: Wtime = 8'b00000110;
	5'b10100: Wtime = 8'b00000111;
	5'b10101: Wtime = 8'b00001001;
	5'b10110: Wtime = 8'b00001010;
	5'b10111: Wtime = 8'b00001100;
	5'b11000: Wtime = 8'b00000000;
	5'b11001: Wtime = 8'b00000011;	
	5'b11010: Wtime = 8'b00000100;
	5'b11011: Wtime = 8'b00000101;
	5'b11100: Wtime = 8'b00000110;
	5'b11101: Wtime = 8'b00000111;
	5'b11110: Wtime = 8'b00001000;
	5'b11111: Wtime = 8'b00001001;
   	default : Wtime = 8'b00000000;
	endcase 
    end

endmodule
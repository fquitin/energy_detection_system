
module shift_reg (
		  input 	    sclr, 
		  input 	    clk, 
		  input [4:0] 	    a, 
		  input [31:0] 	    d, 
		  output reg [31:0] q);


   always @(posedge clk,posedge sclr)begin
     if(sclr == 1'b1)begin
	q = {32{1'b0}};
     end else begin
     case (a)
       5'b00000: q = d;
       5'b00001: q = d>>1;
       5'b00010: q = d>>2;
       5'b00011: q = d>>3;
       5'b00100: q = d>>4;
       5'b00101: q = d>>5;
       5'b00110: q = d>>6;
       5'b00111: q = d>>7;
       5'b01000: q = d>>8;
       5'b01001: q = d>>9;
       5'b01010: q = d>>10;
       5'b01011: q = d>>11;
       5'b01100: q = d>>12;
       5'b01101: q = d>>13;
       5'b01110: q = d>>14;
       5'b01111: q = d>>15;
       5'b10000: q = d>>16;
       5'b10001: q = d>>17;
       5'b10010: q = d>>18;
       5'b10011: q = d>>19;
       5'b10100: q = d>>20;
       5'b10101: q = d>>21;
       5'b10110: q = d>>22;
       5'b10111: q = d>>23;
       5'b11000: q = d>>24;
       5'b11001: q = d>>25;
       5'b11010: q = d>>26;
       5'b11011: q = d>>27;
       5'b11100: q = d>>28;
       5'b11101: q = d>>29;
       5'b11110: q = d>>30;
       5'b11111: q = d>>31;      
     endcase // case (sh)
     end // else: !if(sclr == 1'b1)
   end // always @ (posedge clk,posedge sclr)

endmodule// shift_reg

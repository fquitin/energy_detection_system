`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:48 03/28/2017 
// Design Name: 
// Module Name:    FFD 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FFD_en(
     q,
     clk,
     rst,
     d,
     en);
	 
	output q;    
	input clk;
   input rst;
	input d;
   input      en;
	
	reg q;
	 

always @(posedge rst, posedge clk) begin
	if(rst==1'b1)
		  q <= 0;
	else begin
	   if(en == 1'b1)
		  q <= d;
	end
end

endmodule

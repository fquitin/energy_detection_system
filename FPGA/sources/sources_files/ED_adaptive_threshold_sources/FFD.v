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
module FFD(
     q,
     clk,
     rst,
     d
    );
	 
	output q;    
	input clk;
   input rst;
	input d;
		
	reg q;
	 

always @(posedge rst, posedge clk) begin
	if(rst==1'b1)
		  q <= 0;
	else begin
		  q <= d;
	end
end

endmodule

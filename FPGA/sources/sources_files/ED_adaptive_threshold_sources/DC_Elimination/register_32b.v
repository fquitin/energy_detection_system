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
module register_32b(
		    output reg [31:0] q,
		    input 	      clk,
		    input 	      rst,
		    input [31:0]      d);

always @(posedge rst, posedge clk) begin
	if(rst==1'b1)
		  q <= {32{1'b0}};
	else begin
		  q <= d;
	end
end

endmodule

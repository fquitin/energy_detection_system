`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:02 04/27/2017 
// Design Name: 
// Module Name:    datapath_fft_controller 
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
module datapath_fft_controller(
			       input 	    clock,
			       input 	    sclr_counter,
			       input 	    en_counter,
			       output 	    tc_counter,
			       output [9:0] addr
			       );
   
   counter_mod_10 counter_fft(
			  .clk(clock),
			  .ce(en_counter),
			  .sclr(sclr_counter),
			  .q(addr)
			  ); // Bus [9 : 0] 

   assign tc_counter = addr[0] & addr[1] & addr[2] & addr[3] & addr[4] & addr[5] & addr[6] & addr[7] & addr[8] & addr[9];

endmodule

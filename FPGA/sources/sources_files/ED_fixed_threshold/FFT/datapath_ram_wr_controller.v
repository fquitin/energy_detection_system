`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:02 04/26/2017 
// Design Name: 
// Module Name:    datapath_ram_wr_controller 
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
module datapath_ram_wr_controller(
				  input        clock,
				  input        sclr_cnt,
				  input        en_cnt,
				  output       tc_cnt,
				  output [9:0] addr    
				  );

   counter_mod_10 counter(
			  .clk(clock),
			  .ce(en_cnt),
			  .sclr(sclr_cnt),
			  .q(addr)
			  ); // Bus [9 : 0] 

   assign tc_cnt = addr[0] & addr[1] & addr[2] & addr[3] & addr[4] & addr[5] & addr[6] & addr[7] & addr[8] & addr[9];
   
endmodule

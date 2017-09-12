`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:55:53 04/26/2017 
// Design Name: 
// Module Name:    ram_wr_controller 
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
module ram_wr_controller(
			 input 	      clock,
			 input 	      reset,
			 input 	      strobe,
			 input 	      sel_ram,
			 output       wr_en_ram_0,
			 output       wr_en_ram_1,
			 output       ready, 
			 output [9:0] addr);

   wire 			      sclr_cnt,en_cnt,tc_cnt;
   			      
	 
   CU_ram_wr_controller CU_ram_wr_controller (
					      .clock(clock), 
					      .reset(reset), 
					      .strobe(strobe), 
					      .sel_ram(sel_ram), 
					      .tc_cnt(tc_cnt), 
					      .wr_en_ram_0(wr_en_ram_0), 
					      .wr_en_ram_1(wr_en_ram_1), 
					      .en_cnt(en_cnt), 
					      .sclr_cnt(sclr_cnt), 
					      .ready(ready)
					      );

   datapath_ram_wr_controller datapath_ram_wr_controller (
							  .clock(clock), 
						       	  .sclr_cnt(sclr_cnt), 
							  .en_cnt(en_cnt), 
							  .tc_cnt(tc_cnt), 
							  .addr(addr)
							  );
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:48:37 04/27/2017 
// Design Name: 
// Module Name:    fft_controller 
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
module fft_controller(
		      input 	   clock,
		      input 	   reset,
		      input 	   ready,
		      input 	   e_done_fft_core,
		      input 	   dv_fft_core,
		      output 	   sclr_fft_core,
		      output 	   scale_sch_we_fft_core,
		      output 	   start_fft_core,
		      output 	   unload_fft_core,
		      output [9:0] addr      
		      );
   wire 			   tc_counter,en_counter,sclr_counter;
   

CU_fft_controller control_unit_fft_controller (
					       .clock(clock), 
					       .reset(reset), 
					       .ready(ready), 
					       .e_done_fft_core(e_done_fft_core), 
					       .dv_fft_core(dv_fft_core), 
					       .tc_counter(tc_counter),
					       .sclr_fft_core(sclr_fft_core),
					       .scale_sch_we_fft_core(scale_sch_we_fft_core),
					       .start_fft_core(start_fft_core),
					       .unload_fft_core(unload_fft_core),
					       .en_counter(en_counter),
					       .sclr_counter(sclr_counter)
					       );



datapath_fft_controller data_path_fft_controller (
						  .clock(clock), 
						  .sclr_counter(sclr_counter), 
						  .en_counter(en_counter), 
						  .tc_counter(tc_counter), 
						  .addr(addr)
						  );

endmodule

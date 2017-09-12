`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:47 04/27/2017 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(
		    input 	     clock,
		    input 	     reset,
		    input 	     strobe, 
		    input 	     e_done_fft_core,
		    input 	     dv_fft_core, 
		    output 	     sclr_fft_core,
		    output 	     scale_sch_we_fft_core, 
		    output 	     start_fft_core,
		    output 	     unload_fft_core,
		    output 	     wr_en_ram_0,
		    output 	     wr_en_ram_1,
		    output 	     sel_ram, 
		    output reg [9:0] addr_ram_0,
		    output reg [9:0] addr_ram_1
		    );

   wire 			     ready;
   wire [9:0] 			     addr_ram_fft_controller, addr_ram_wr_controller;
 			     
   
   fft_controller fft_controller(
				 .clock(clock), 
				 .reset(reset), 
				 .ready(ready), 
				 .e_done_fft_core(e_done_fft_core), 
				 .dv_fft_core(dv_fft_core), 
				 .sclr_fft_core(sclr_fft_core),
				 .scale_sch_we_fft_core(scale_sch_we_fft_core),
				 .start_fft_core(start_fft_core), 
				 .unload_fft_core(unload_fft_core), 
				 .addr(addr_ram_fft_controller)
				 );
	 
   ram_wr_controller ram_wr_controller (
					.clock(clock), 
					.reset(reset), 
					.strobe(strobe), 
					.sel_ram(sel_ram), 
					.wr_en_ram_0(wr_en_ram_0), 
					.wr_en_ram_1(wr_en_ram_1),
					.ready(ready),
					.addr(addr_ram_wr_controller)
					);


   always @ (sel_ram or addr_ram_wr_controller or addr_ram_fft_controller)
     begin : MUX1
	case(sel_ram ) 
	  1'b0 : addr_ram_0 = addr_ram_wr_controller;
	  1'b1 : addr_ram_0 = addr_ram_fft_controller;
	endcase 
     end

   always @ (sel_ram or addr_ram_wr_controller or addr_ram_fft_controller)
     begin : MUX2
	case(sel_ram ) 
	  1'b0 : addr_ram_1 = addr_ram_fft_controller;
	  1'b1 : addr_ram_1 = addr_ram_wr_controller;
	endcase 
     end

   tff_sync_reset tff_sel_ram (
			       .data(ready), 
			       .clock(clock), 
			       .reset(reset), 
			       .q(sel_ram)
			       );
   
   
endmodule

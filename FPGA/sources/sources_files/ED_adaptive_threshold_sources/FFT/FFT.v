`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:28 04/27/2017 
// Design Name: 
// Module Name:    FFT_USRP 
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
module FFT(
		input 	      clock,
		input 	      reset,
		input 	      strobe_in,
		input [31:0]  xn,
		output 	      dv_fft_core,
		output [15:0] xk_re_fft_core,
		output [15:0] xk_im_fft_core 
		);

   //ram signals
   wire [31:0] 		     xn_ram_0,xn_ram_1;
   wire [9:0] 		     addr_ram_0,addr_ram_1;
   wire 		     wr_en_ram_0,wr_en_ram_1;
   wire 		     sel_ram;
		     
   //fft signals
   reg [31:0] 		     xn_fft; 		     
   wire 		     fwd_inv_fft_core,fwd_inv_we_fft,sclr_fft_core,start_fft_core;
   wire 		     unload_fft_core,scale_sch_we_fft_core;
   wire [19:0] 		     scale_sch_fft_core;
   wire 		     busy_fft_core,e_done_fft_core,done_fft_core;
   wire 		     xn_index_fft_core,xk_index_fft_core;
   wire [15:0]		     xn_re_fft_core,xn_im_fft_core;
   
   assign fwd_inv_fft_core = 1'b1;
   assign fwd_inv_we_fft = sclr_fft_core;
   assign scale_sch_fft_core ={{9{2'b01}},{2'b10}};
   
   assign xn_re_fft_core = xn_fft[15:0];
   assign xn_im_fft_core = xn_fft[31:16];
   
   xfft_v7_1_ip_core fft_ip_core (
				  .clk(clock),
				  .sclr(sclr_fft_core),
				  .start(start_fft_core),
				  .unload(unload_fft_core),
				  .xn_re(xn_re_fft_core), // Bus [15 : 0] 
				  .xn_im(xn_im_fft_core), // Bus [15 : 0] 
				  .fwd_inv(fwd_inv_fft_core),
				  .fwd_inv_we(fwd_inv_we_fft),
				  .scale_sch(scale_sch_fft_core), // Bus [19 : 0] 
				  .scale_sch_we(scale_sch_we_fft_core),
				  .rfd(rfd_fft_core),
				  .xn_index(xn_index_fft_core), // Bus [9 : 0] 
				  .busy(busy_fft_core),
				  .edone(e_done_fft_core),
				  .done(done_fft_core),
				  .dv(dv_fft_core),
				  .xk_index(xk_index_fft_core), // Bus [9 : 0] 
				  .xk_re(xk_re_fft_core), // Bus [15 : 0] 
				  .xk_im(xk_im_fft_core)); // Bus [15 : 0]
	
   
   RAM_SP ram_0 (
		 .clka(clock),
		 .wea(wr_en_ram_0), // Bus [0 : 0] 
		 .addra(addr_ram_0), // Bus [9 : 0] 
		 .dina(xn), // Bus [31 : 0] 
		 .douta(xn_ram_0)); // Bus [31 : 0] 

   RAM_SP ram_1 (
		 .clka(clock),
		 .wea(wr_en_ram_1), // Bus [0 : 0] 
		 .addra(addr_ram_1), // Bus [9 : 0] 
		 .dina(xn), // Bus [31 : 0] 
		 .douta(xn_ram_1)); // Bus [31 : 0] 
   
   control_unit_fft cu_fft (
			      .clock(clock), 
			      .reset(reset), 
			      .strobe(strobe_in), 
			      .e_done_fft_core(e_done_fft_core), 
			      .dv_fft_core(dv_fft_core), 
			      .sclr_fft_core(sclr_fft_core),
			      .scale_sch_we_fft_core(scale_sch_we_fft_core),
			      .start_fft_core(start_fft_core), 
			      .unload_fft_core(unload_fft_core), 
			      .wr_en_ram_0(wr_en_ram_0), 
			      .wr_en_ram_1(wr_en_ram_1), 
			      .addr_ram_0(addr_ram_0), 
			      .addr_ram_1(addr_ram_1),
			      .sel_ram(sel_ram)
			      );
   //Mux Output Signals
      always @ (sel_ram or xn_ram_0 or xn_ram_1)
     begin : MUX
	case(sel_ram) 
	  1'b0 : xn_fft = xn_ram_1;
	  1'b1 : xn_fft = xn_ram_0;
	endcase 
     end


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:54:23 07/11/2017 
// Design Name: 
// Module Name:    energy_detection_module 
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
module energy_detection_module(
			       input 	     clock,
			       input 	     reset,
			       input 	     set_stb,
			       input [7:0]   set_addr,
			       input [31:0]  set_data,
			       input [31:0]  xk_sq_m,
			       input 	     dv_sq_m,
			       output [31:0] xk_sq_m_dt,
			       output 	     dv_sq_m_dt);

   wire [31:0] 				     th_value;
   wire [9:0] 				     window_size; 
   wire 				     pop_fin;
   wire 				     sclr_fin;
   wire 				     pop_fout;
   wire 				     push_fout;
   wire 				     sclr_fout;
   wire 				     sclr_ew;
   wire 				     ce_ew;
   wire 				     add_subn_ew;
   wire 				     end_sig;
   wire 				     sclr_cnt1;
   wire 				     en_cnt1;
   wire 				     sclr_cnt2;
   wire 				     en_cnt2;
   wire 				     sclr_dres;
   wire 				     en_dres;
   wire 				     empty_fin;
   wire 				     cnt1_tc;
   wire 				     cnt2_tc;

   //User Setting Register definition
   reg [31:0] 			       prtCycles_th;  // Local register set by User Settings Bus
   wire [31:0] 			       prtCycles_sr_th;   // setting_reg module output 
   wire 			       prtCycles_ch_th;     // bit indicating the reg has just changed

   reg [31:0] 			       prtCycles_ws;  // Local register set by User Settings Bus
   wire [31:0] 			       prtCycles_sr_ws;   // setting_reg module output 
   wire 			       prtCycles_ch_ws;     // bit indicating the reg has just changed

   setting_reg #(.my_addr(1)) sr_1( //  1 is the address you choose. (there is an 8 bit address space)
				    .clk(clock),
				    .rst(reset),
				    .strobe(set_stb),
				    .addr(set_addr),
				    .in(set_data),
				    .out(prtCycles_sr_th),
				    .changed(prtCycles_ch_th));
   
   always @(posedge clock)
     if (prtCycles_ch_th)
       prtCycles_th <= prtCycles_sr_th;
   
   assign th_value = prtCycles_th;

   setting_reg #(.my_addr(3)) sr_3( //  1 is the address you choose. (there is an 8 bit address space)
				    .clk(clock),
				    .rst(reset),
				    .strobe(set_stb),
				    .addr(set_addr),
				    .in(set_data),
				    .out(prtCycles_sr_ws),
				    .changed(prtCycles_ch_ws));
   
   always @(posedge clock)
     if (prtCycles_ch_ws)
       prtCycles_ws <= prtCycles_sr_ws;

   assign window_size = prtCycles_ws[9:0];
   
   
   control_unit_ed CU_ed(
		   .clock(clock),
		   .reset(reset), 
		   .empty_fin(empty_fin),
		   .cnt1_tc(cnt1_tc),
		   .cnt2_tc(cnt2_tc),
		   .pop_fin(pop_fin),
		   .sclr_fin(sclr_fin),
		   .pop_fout(pop_fout),
		   .push_fout(push_fout), 
		   .sclr_fout(sclr_fout),
		   .sclr_ew(sclr_ew),
		   .ce_ew(ce_ew),
		   .add_subn_ew(add_subn_ew),
		   .end_sig(end_sig),
		   .sclr_cnt1(sclr_cnt1),
		   .en_cnt1(en_cnt1),
	           .sclr_cnt2(sclr_cnt2),
		   .en_cnt2(en_cnt2),
		   .sclr_dres(sclr_dres),
		   .en_dres(en_dres));

   datapath_unit_ed DP_ed(
			.clock(clock),
			.xk_sq_m(xk_sq_m),
			.th_value(th_value),
			.window_size(window_size),
			.pop_fin(pop_fin),
			.push_fin(dv_sq_m),
			.sclr_fin(sclr_fin),
			.pop_fout(pop_fout),
			.push_fout(push_fout), 
			.sclr_fout(sclr_fout),
			.sclr_ew(sclr_ew),
			.ce_ew(ce_ew),
			.add_subn_ew(add_subn_ew),
			.end_sig(end_sig),
			.sclr_cnt1(sclr_cnt1),
			.en_cnt1(en_cnt1),
			.sclr_cnt2(sclr_cnt2),
			.en_cnt2(en_cnt2),
			.sclr_dres(sclr_dres),
			.en_dres(en_dres), 	   
			.empty_fin(empty_fin),
			.cnt1_tc(cnt1_tc),
			.cnt2_tc(cnt2_tc),
			.xk_sq_m_dt(xk_sq_m_dt));

   FFD dv_sq_m_dt_delayed(
     .q(dv_sq_m_dt),
     .clk((clock)),
     .rst(reset),
     .d(pop_fout)
    );


endmodule

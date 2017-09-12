`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:45:51 07/21/2017 
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
module control_unit_ed(
		    input  clock,
		    input  reset, 
		    input  empty_fin,
		    input  cnt1_tc,
		    input  cnt2_tc,
		    output pop_fin,
		    output push_fin,
		    output sclr_fin,
		    output pop_fout,
		    output push_fout, 
		    output sclr_fout,
		    output sclr_ew,
		    output ce_ew,
		    output add_subn_ew,
		    output ce_thw,
    		    output select_th,
		    output end_sig,
		    output sclr_cnt1,
		    output en_cnt1,
	            output sclr_cnt2,
		    output en_cnt2,
		    output sclr_dres,
		    output en_dres);


	
   control_unit_detection cu_detection(
				       .clock(clock),
				       .reset(reset),
				       .empty_fin(empty_fin),
				       .cnt1_tc(cnt1_tc),
				       .pop_fin(pop_fin),
				       .push_fin(push_fin),
				       .sclr_fin(sclr_fin),
				       .push_fout(push_fout),
				       .sclr_fout(sclr_fout),
				       .sclr_ew(sclr_ew),
				       .ce_ew(ce_ew),
				       .add_subn_ew(add_subn_ew),
				       .ce_thw(ce_thw),
    				       .select_th(select_th),
				       .end_sig(end_sig),
				       .sclr_cnt1(sclr_cnt1),
				       .en_cnt1(en_cnt1),
				       .sclr_dres(sclr_dres),
				       .en_dres(en_dres));
						 

   control_unit_packing cu_packing(
				   .clock(clock),
				   .reset(reset),
				   .end_sig(end_sig),
				   .cnt2_tc(cnt2_tc),
				   .sclr_cnt2(sclr_cnt2),
				   .en_cnt2(en_cnt2),
				   .pop_fout(pop_fout)
			);
			
			
   
endmodule

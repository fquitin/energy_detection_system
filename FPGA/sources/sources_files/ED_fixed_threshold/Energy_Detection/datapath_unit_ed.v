`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:20 07/21/2017 
// Design Name: 
// Module Name:    datapath_unit 
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
module datapath_unit_ed(
		     input 	   clock,
		     input [31:0]  xk_sq_m,
		     input [31:0]  th_value,
		     input [9:0]   window_size, 
		     input 	   pop_fin,
		     input 	   push_fin,
		     input 	   sclr_fin,
		     input 	   pop_fout,
		     input 	   push_fout, 
		     input 	   sclr_fout,
		     input 	   sclr_ew,
		     input 	   ce_ew,
		     input 	   add_subn_ew,
		     input 	   end_sig,
		     input 	   sclr_cnt1,
		     input 	   en_cnt1,
	             input 	   sclr_cnt2,
		     input 	   en_cnt2,
		     input 	   sclr_dres,
		     input 	   en_dres, 
		     output 	   empty_fin,
		     output 	   cnt1_tc,
		     output 	   cnt2_tc,
		     output [31:0] xk_sq_m_dt);

   

   //wire Fifo input
   wire [31:0] 			   dout_fin;
   wire 			   full_fin;
   
   //wire Fifo output
   wire [31:0] 			   dout_fout;
   wire 			   full_fout;
   wire 			   empty_fout;

   //wire Energy Window
   reg [31:0] 			   din_ew;
   wire [36:0] 			   dout_ew;

   //wire Detection Result
   wire 			   d_res,d_res_d;

   //wire Counter
   wire [9:0] 			   cnt1,cnt2;
			     
   

   assign cnt1_tc =  (window_size[0]~^ cnt1[0])
     &(window_size[1]~^ cnt1[1])
       &(window_size[2]~^ cnt1[2])
	 &(window_size[3]~^ cnt1[3])
	   &(window_size[4]~^ cnt1[4])
	     &(window_size[5]~^ cnt1[5])
	       &(window_size[6]~^ cnt1[6])
		 &(window_size[7]~^ cnt1[7])
		   &(window_size[8]~^ cnt1[8])
		     &(window_size[9]~^ cnt1[9]); // the terminal count is settled at the value written on the user register
   
   assign cnt2_tc =  (window_size[0]~^ cnt2[0])
     &(window_size[1]~^ cnt2[1])
       &(window_size[2]~^ cnt2[2])
	 &(window_size[3]~^ cnt2[3])
	   &(window_size[4]~^ cnt2[4])
	     &(window_size[5]~^ cnt2[5])
	       &(window_size[6]~^ cnt2[6])
		 &(window_size[7]~^ cnt2[7])
		   &(window_size[8]~^ cnt2[8])
		     &(window_size[9]~^ cnt2[9]); // the terminal count is settled at the value written on the user register
   
	 
   fifo_s1024 FOUTPUT ( //fifo size 1024
		     .clk(clock),
		     .srst(sclr_fout),
		     .din(dout_fin),
		     .wr_en(push_fout),
		     .rd_en(pop_fout),
		     .dout(dout_fout),
		     .full(full_fout),
		     .empty(empty_fout));
   

   fifo_s1024 FINPUT ( //fifo size 1024
		    .clk(clock),
		    .srst(sclr_fin),
		    .din(xk_sq_m),
		    .wr_en(push_fin),
		    .rd_en(pop_fin),
		    .dout(dout_fin),
		    .full(full_fin),
		    .empty(empty_fin));
   


   acc_sub ENERGY_WINDOW(
			 .b(din_ew),
			 .clk(clock),
			 .add(add_subn_ew),
			 .ce(ce_ew),
			 .sclr(sclr_ew),
			 .q(dout_ew));


   FFD_en detection_res(
     .q(d_res),
     .clk(clock),
	  .en(en_dres),
     .rst(sclr_dres),
     .d(~dout_ew[36])
    );
	 

   always @ (add_subn_ew or dout_fin or th_value)
     begin : MUX
	case(add_subn_ew) 
	  1'b0 : din_ew <= th_value;
	  1'b1 : din_ew <= dout_fin;
	endcase 
     end

   assign xk_sq_m_dt={d_res,dout_fout[30:0]};

   
	
   counter_mod_10 counter_detection (
				    .clk(clock),
				    .ce(en_cnt1),
				    .sclr(sclr_cnt1),
				    .q(cnt1)); // Bus [9 : 0] 
   
   counter_mod_10 counter_packing (
				  .clk(clock),
				  .ce(en_cnt2),
				  .sclr(sclr_cnt2),
				  .q(cnt2)); // Bus [9 : 0] 

   

   
   

endmodule
 

module d_factor_unit(
		     input 	   clock,
		     input 	   reset,
		     input [31:0]  data_in,
		     input 	   dv_in,
		     output [31:0] data_out,
 		     output 	   dv_out);

   

   // counter_1 signals
   wire [9:0] 			   cnt1;
   wire 			   tc_cnt1;

   // counter_2 signals
   wire [9:0] 			   cnt2;
   wire 			   ce_cnt2;
   wire 			   ce_cnt2_d;
   wire 			   tc_cnt2;

   // fifo_sqm signals
   wire [31:0] 			   din_fifo_sqm;
   wire [31:0] 			   dout_fifo_sqm;
   wire 			   push_fifo_sqm;
   wire 			   pop_fifo_sqm;			   
   wire 			   full_fifo_sqm;
   wire 			   empty_fifo_sqm;

   //shift_register signals
   reg [4:0] 			   sh_num;
   wire 			   select_sh_num;
      
   // pr_enc signals		   
   wire [5:0] 			   dout_pr_enc;
   

   // average_unit signals
   wire [40:0] 			   data_in_value;
   wire [40:0] 			   accumulate_value;
   wire [31:0] 			   averaged_value;
   wire 			   dv_av_unit;
		
   assign data_in_value = {{9{1'b0}},data_in};
   assign averaged_value = {{1'b0},accumulate_value[40:10]};
   assign din_fifo_sqm = data_in;
   assign push_fifo_sqm = dv_in;

   assign select_sh_num = averaged_value[31] || averaged_value[30] || averaged_value[29] || averaged_value[28] || 
			  averaged_value[27] || averaged_value[26] || averaged_value[25] || averaged_value[24] || 
			  averaged_value[23] || averaged_value[22] || averaged_value[21] || averaged_value[20] ||  
			  averaged_value[19] || averaged_value[18] || averaged_value[17] || averaged_value[16] ||
			  averaged_value[15] || averaged_value[14] || averaged_value[13] || averaged_value[12] || 
			  averaged_value[11] || averaged_value[10] || averaged_value[9] || averaged_value[8] ||  
			  averaged_value[7] || averaged_value[6] || averaged_value[5] || averaged_value[4] ||
			  averaged_value[3] || averaged_value[2] || averaged_value[1] || averaged_value[0] ;
   
   assign tc_cnt1 = cnt1[0] && cnt1[1] && cnt1[2] && cnt1[3] && cnt1[4] && 
		    cnt1[5] && cnt1[6] && cnt1[7] && cnt1[8] && cnt1[9] ;

   assign tc_cnt2 = cnt2[0] && cnt2[1] && cnt2[2] && cnt2[3] && cnt2[4] && 
		    cnt2[5] && cnt2[6] && cnt2[7] && cnt2[8] && cnt2[9] ;

 
   assign pop_fifo_sqm = ce_cnt2;
   
     
   FFD ffd1(
	    .q(dv_av_unit),
	    .clk(clock),
	    .rst(reset),
	    .d(tc_cnt1));

   FFD ffd2(
	    .q(ce_cnt2_d),
	    .clk(clock),
	    .rst(reset),
	    .d(ce_cnt2));
   
   FFD ffd3(
	    .q(dv_out),
	    .clk(clock),
	    .rst(reset),
	    .d(ce_cnt2_d));

   tff_sync_reset tff1 (
		       .data(tc_cnt2||dv_av_unit)  , // Data Input
		       .clock(clock)   , // Clock Input
		       .reset(reset) , // Reset input
		       .q(ce_cnt2)       // Q output
		       );

   counter_mod_10 counter_1 (
			     .clk(clock),
			     .ce(dv_in),
			     .sclr(reset),
			     .q(cnt1)); // Bus [9 : 0]

   
   counter_mod_10 counter_2 (
			     .clk(clock),
			     .ce(ce_cnt2),
			     .sclr(reset),
			     .q(cnt2)); // Bus [9 : 0]

   
   fifo_s1024 fifo_sqm (
	.clk(clock),
	.srst(reset),
	.din(din_fifo_sqm), // Bus [31 : 0] 
	.wr_en(push_fifo_sqm),
	.rd_en(pop_fifo_sqm),
	.dout(dout_fifo_sqm), // Bus [31 : 0] 
	.full(full_fifo_sqm),
	.empty(empty_fifo_sqm));

   shift_reg shift_register (
			     .a(sh_num), // Bus [4 : 0] 
			     .d(dout_fifo_sqm), // Bus [31 : 0] 
			     .clk(clock),
			     .sclr(reset),
			     .q(data_out)); // Bus [31 : 0]

   priority_encoder_32to6 pr_enc(
			       	 .clock(clock),
				 .reset(reset),
				 .data_in(averaged_value),
				 .dv_in(dv_av_unit),
				 .data_out(dout_pr_enc));

   av_accumulator av_acc_unit (
			       .b(data_in_value), // Bus [40 : 0] 
			       .clk(clock),
			       .sclr(reset|tc_cnt2),
			       .ce(dv_in||dv_av_unit),
			       .q(accumulate_value)); // Bus [40 : 0] 



   //multiplexer selection shift number
   always @ (select_sh_num or dout_pr_enc)
     begin : MUX
	case(select_sh_num) 
	  1'b1 : sh_num = dout_pr_enc[4:0];
	  1'b0 : sh_num = 5'b00001;
	endcase 
     end
	 
endmodule

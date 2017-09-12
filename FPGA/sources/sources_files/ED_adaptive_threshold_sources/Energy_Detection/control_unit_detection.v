`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:02 07/21/2017 
// Design Name: 
// Module Name:    control_unit_detection 
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
module control_unit_detection(
			      input 	 clock,
			      input 	 reset,
			      input 	 empty_fin,
			      input 	 cnt1_tc,
			      output reg pop_fin,
			      output reg push_fin,
			      output reg sclr_fin,
			      output reg push_fout,
			      output reg sclr_fout,
			      output reg sclr_ew,
			      output reg ce_ew,
			      output reg add_subn_ew,
			      output reg ce_thw,
    			      output reg select_th,
			      output reg end_sig,
			      output reg sclr_cnt1,
			      output reg en_cnt1,
			      output reg sclr_dres,
			      output reg en_dres);

   reg [3:0] 			     present_state,next_state;
   
   //states definition
   parameter RESET_STATE=4'b0000,WAIT_DATA=4'b0001,ACCUMULATE1=4'b0010;
   parameter ACCUMULATE2=4'b0011,COMPARE=4'b0100,WAIT_COMP=4'b0101,END_COMP=4'b0110;
   parameter RESET_ACC=4'b0111,ACCUMULATE3=4'b1000,TH_EV1=4'b1001,TH_EV2=4'b1010;
   
   
   

   //present_state update 
   always@(posedge reset, posedge clock) begin
   
     if(reset == 1) present_state <= RESET_STATE;
     else  present_state <= next_state ;
   
   end

   //next_state update
   always@(empty_fin,cnt1_tc,present_state) begin
      case(present_state)
	RESET_STATE:  begin
	   if(empty_fin == 1) 
	     next_state = WAIT_DATA;
	   else
	     next_state = ACCUMULATE1;
	end
	
	WAIT_DATA:begin
	  if(empty_fin == 1) 
	    next_state = WAIT_DATA;
	  else
	    next_state = ACCUMULATE1;
	end
	
	ACCUMULATE1:
	  next_state = ACCUMULATE2;

	ACCUMULATE2:begin
	  if( cnt1_tc == 1)
	    next_state = ACCUMULATE3;
	  else
	    next_state= ACCUMULATE2;
	end
	
	ACCUMULATE3:
	  next_state = TH_EV1;

	TH_EV1:
	  next_state = TH_EV2;

	TH_EV2:
	  next_state = COMPARE;
	
	COMPARE:
	  next_state = WAIT_COMP;

	WAIT_COMP:
	  next_state = END_COMP;
   
        END_COMP:
          next_state = RESET_ACC;
   
        RESET_ACC:begin
           if(empty_fin == 1)
             next_state = WAIT_DATA;
	   else
	     next_state = ACCUMULATE1;
	end
        default: next_state=RESET_STATE;
      endcase
   end // always@ (strobe,sel_ram,tc_cnt,present_state)
   

   //Output Generation
   always@(present_state) begin
      
      pop_fin = 1'b0;
      push_fin = 1'b0;
      sclr_fin = 1'b0;
      push_fout = 1'b0;
      sclr_fout = 1'b0;
      sclr_ew = 1'b0;
      ce_ew = 1'b0;
      add_subn_ew = 1'b0;
      ce_thw = 1'b0;
      select_th = 1'b0;
      end_sig = 1'b0;
      sclr_cnt1 = 1'b0;
      en_cnt1 = 1'b0;
      sclr_dres = 1'b0;
      en_dres = 1'b0;
      
      case(present_state)
	RESET_STATE:begin
	   sclr_fin = 1'b1;
	   sclr_fout = 1'b1;
	   sclr_ew = 1'b1;
	   sclr_cnt1 = 1'b1;
	   sclr_dres = 1'b1;
	end
	WAIT_DATA:
	  end_sig =0;
       
	ACCUMULATE1:begin
	   pop_fin = 1'b1;
	   en_cnt1 = 1'b1;
	   add_subn_ew = 1'b1;
	end
	
	ACCUMULATE2:begin
	   ce_ew= 1'b1;
	   ce_thw=1'b1;
	   push_fout= 1'b1;
	   pop_fin = 1'b1;
	   en_cnt1 = 1'b1;
	   add_subn_ew = 1'b1;
	end
	
	ACCUMULATE3:begin
	   ce_ew= 1'b1;
	   ce_thw=1'b1;
	   push_fout= 1'b1;
	   add_subn_ew = 1'b1;
	end

	TH_EV1:begin
	   ce_ew= 1'b0;
	   ce_thw=1'b1;
	   add_subn_ew = 1'b1;
	   select_th = 1'b1;
	end

	TH_EV2:begin
	   ce_ew= 1'b0;
	   ce_thw=1'b1;
	   add_subn_ew = 1'b0;
	end
	
	COMPARE:begin
	   ce_ew= 1'b1;
	   ce_thw=1'b0;
	   add_subn_ew = 1'b0;
	end
      
	WAIT_COMP:begin
	   sclr_cnt1 = 1'b1;
	   ce_ew = 1'b1;
	end
     
	END_COMP:begin
	   end_sig=1'b1;
	   en_dres =1'b1;
	end

	RESET_ACC:begin
	  sclr_ew=1'b1;
	end
	
   
	default: next_state=RESET_STATE;
      endcase      
   end // always@ (present_state)

endmodule

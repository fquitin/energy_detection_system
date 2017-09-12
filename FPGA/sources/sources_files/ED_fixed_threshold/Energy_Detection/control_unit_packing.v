`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:02 07/21/2017 
// Design Name: 
// Module Name:    control_unit_result 
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
module control_unit_packing(
			    input  clock,
			    input  reset,
			    input  end_sig,
			    input  cnt2_tc,
			    output reg sclr_cnt2,
			    output reg en_cnt2,
			    output reg pop_fout);

   reg [1:0] 			     present_state,next_state;
   
   //states definition
   parameter RESET_STATE=3'b000,POP_DATA=3'b001;
   
   
   //present_state update 
   always@(posedge reset, posedge clock) begin
   
     if(reset == 1) present_state <= RESET_STATE;
     else  present_state <= next_state ;
   
   end

   //next_state update
   always@(end_sig,cnt2_tc,present_state) begin
      case(present_state)
	RESET_STATE:  begin
	   if(end_sig == 1) 
	     next_state = POP_DATA;
	   else
	     next_state = RESET_STATE;
	end
	
	POP_DATA:begin
	  if(cnt2_tc == 1) begin
	     if(end_sig == 1) 
	       next_state = POP_DATA;
	     else
	       next_state = RESET_STATE;
	  end
	  else
	    next_state = POP_DATA;
	end
	
        default: next_state=RESET_STATE;
      endcase
   end // always@ (present_state)
   

   //Output Generation
   always@(present_state) begin
      
      sclr_cnt2 = 1'b0;
      en_cnt2 = 1'b0;
      pop_fout = 1'b0;
      
      case(present_state)
	RESET_STATE:begin
	   sclr_cnt2 = 1'b1;
	end

	POP_DATA:begin
	   en_cnt2 = 1'b1;
	   pop_fout = 1'b1;
	end
   
	default: next_state=RESET_STATE;
      endcase      
   end // always@ (present_state)

endmodule

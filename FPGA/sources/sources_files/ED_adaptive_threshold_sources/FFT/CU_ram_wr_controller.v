`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:58:27 04/26/2017 
// Design Name: 
// Module Name:    fsm_wr_ram_controller 
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
module CU_ram_wr_controller(
			    input      clock,
			    input      reset,
			    input      strobe,
			    input      sel_ram,
			    input      tc_cnt,
			    output reg wr_en_ram_0,
			    output reg wr_en_ram_1,
			    output reg en_cnt,
			    output reg sclr_cnt,
			    output reg ready);

   reg [6:0] 			   present_state,next_state;

   //states definition
   parameter RESET_STATE=3'b000,WR_RAM_0=3'b001,WR_RAM_1=3'b010;
   parameter COUNT_EN=3'b011,RAM_FULL=3'b101;
   parameter WAIT_NEW_SAMPLE=3'b110;

   //present_state update 
   always@(posedge reset, posedge clock) begin
   
     if(reset == 1) present_state <= RESET_STATE;
     else  present_state <= next_state ;
   
   end

   //next_state update
   always@(strobe,sel_ram,tc_cnt,present_state) begin
     case(present_state)
       RESET_STATE:  
	 if(strobe == 1) 
	   if(sel_ram == 0)
	     next_state = WR_RAM_0;
	   else
	     next_state = WR_RAM_1;
	 else
	   next_state = RESET_STATE;

       WR_RAM_0:
	 next_state = COUNT_EN;

       WR_RAM_1:
	 next_state = COUNT_EN;

       COUNT_EN:
	 if(tc_cnt == 1)
	   next_state = RAM_FULL;
	 else
	   next_state = WAIT_NEW_SAMPLE;
       
       RAM_FULL:
	 if(strobe == 1) 
	   if(sel_ram == 0)
	     next_state = WR_RAM_0;
	   else
	     next_state = WR_RAM_1;
	 else
	   next_state = RESET_STATE;
       
       WAIT_NEW_SAMPLE:
	 if(strobe == 1) 
	   if(sel_ram == 0)
	     next_state = WR_RAM_0;
	   else
	     next_state = WR_RAM_1;
	 else
	   next_state = WAIT_NEW_SAMPLE;
       
	 default: next_state=RESET_STATE;
     endcase
   end // always@ (strobe,sel_ram,tc_cnt,present_state)
   

   //Output Generation
   always@(present_state) begin
      sclr_cnt = 0;
      en_cnt = 0;
      wr_en_ram_0 = 0;
      wr_en_ram_1 = 0;
      ready=0;		 
      
      case (present_state)

	RESET_STATE: begin
	   sclr_cnt = 1'b1;
	   en_cnt = 1'b1;
	end
	
	WR_RAM_0:
	  wr_en_ram_0 = 1'b1;

	WR_RAM_1:
	  wr_en_ram_1 = 1'b1;

	COUNT_EN:
	  en_cnt = 1'b1;
       
	RAM_FULL:
	  ready =  1'b1;
       
	WAIT_NEW_SAMPLE:
	  ready = 1'b0;
	  
      endcase
      
   end // always@ (present_state)

   
endmodule

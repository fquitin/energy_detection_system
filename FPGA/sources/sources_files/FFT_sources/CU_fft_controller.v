`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:34 04/27/2017 
// Design Name: 
// Module Name:    CU_fft_controller 
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
module CU_fft_controller(
			 input 	    clock,
			 input 	    reset,
			 input 	    ready,
			 input 	    e_done_fft_core,
			 input 	    dv_fft_core,
			 input 	    tc_counter,
			 output reg sclr_fft_core,
			 output reg scale_sch_we_fft_core,
			 output reg start_fft_core,
			 output reg unload_fft_core,
			 output reg en_counter,
			 output reg sclr_counter    
			 );

   reg [6:0] 			    present_state,next_state;

   //states definition
   parameter RESET_STATE=3'b000,START_FFT=3'b001,LOAD_FFT=3'b010;
   parameter WAITING_PROCESSING=3'b011,UNLOAD_EN=3'b100,WAITING_DV=3'b101,UNLOAD=3'b110;
   parameter SET_SCALING=3'b111;
   
   

   //present_state update 
   always@(posedge reset, posedge clock) begin
   
     if(reset == 1) present_state <= RESET_STATE;
     else  present_state <= next_state ;
   
   end

   //next_state update
   always@(ready,tc_counter,e_done_fft_core,dv_fft_core,present_state) begin
     case(present_state)
       RESET_STATE:  
	 next_state = SET_SCALING;
       
	 //if(ready == 1) 
	 //  next_state = START_FFT;
	 //else
	 //  next_state = RESET_STATE;

       SET_SCALING:
	 if(ready == 1) 
	   next_state = START_FFT;
	 else
	   next_state = SET_SCALING;

	 
       START_FFT:
	 next_state = LOAD_FFT;

       LOAD_FFT:
	 if(tc_counter == 1)
	   next_state = WAITING_PROCESSING;
	 else
	   next_state= LOAD_FFT;

       WAITING_PROCESSING:
	 if(e_done_fft_core == 1)
	   next_state = UNLOAD_EN;
	 else
	   next_state = WAITING_PROCESSING;

       UNLOAD_EN:
	 next_state = WAITING_DV;
       
       WAITING_DV:
	 if(dv_fft_core == 0) 
	   next_state = WAITING_DV;
	 else
	   next_state = UNLOAD;
	 
       UNLOAD:
	 if(dv_fft_core == 0)
	   if(ready == 1) 
	     next_state = START_FFT;
	   else
	     next_state = SET_SCALING;
	 else
	   next_state = UNLOAD;
       
       default: next_state=RESET_STATE;
     endcase
   end // always@ (strobe,sel_ram,tc_cnt,present_state)
   

   //Output Generation
   always@(present_state) begin
      sclr_fft_core = 0;
      start_fft_core = 0; 
      unload_fft_core = 0;
      en_counter = 0;
      sclr_counter = 0;
      scale_sch_we_fft_core = 0;
 		 
      case (present_state)

	RESET_STATE: begin
	   sclr_counter = 1'b1;
	   sclr_fft_core = 1'b1;
	end

	SET_SCALING:
	  scale_sch_we_fft_core = 1'b1;

	START_FFT:begin
	   start_fft_core = 1'b1;
	   en_counter = 1'b1;
	end
	
	LOAD_FFT:
	  en_counter = 1'b1;
	
	UNLOAD_EN:
	  unload_fft_core = 1'b1;
  
      endcase
      
   end // always@ (present_state)

endmodule

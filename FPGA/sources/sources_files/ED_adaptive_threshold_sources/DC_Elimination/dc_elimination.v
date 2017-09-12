`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:24 08/10/2017 
// Design Name: 
// Module Name:    dc_elimination 
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
module dc_elimination(
		      input 	    clock,
		      input 	    reset,
		      input 	    set_stb,
		      input [7:0]   set_addr,
		      input [31:0]  set_data,
		      input 	    dv_in,
		      input [31:0]  data_in,
		      output 	    dv_out,
		      output [31:0] data_out
		      );

   //signal FFDs
   wire 			    dv_in_d;
   
   //signal Registers
   wire [31:0] 			    data_out_reg1; 			    
   reg [31:0] 			    data_in_reg2;  

   //signal Counter
   wire [9:0] 			    cnt1;
   wire 			    ce_cnt1;
   wire 			    tc1,tc2,tc3;
   wire [9:0] 			    tc1_value;
   wire [9:0] 			    tc2_value;
   wire [9:0] 			    tc3_value;
     
   //signal mux
   wire 			    selection;

   //User Setting Register definition
   reg [31:0] 			    prtCycles_tc1;			    
   wire [31:0] 			       prtCycles_sr_tc1;   // setting_reg module output 
   wire 			       prtCycles_ch_tc1;     // bit indicating the reg has just changed

   reg [31:0] 			    prtCycles_tc2;			    
   wire [31:0] 			       prtCycles_sr_tc2;   // setting_reg module output 
   wire 			       prtCycles_ch_tc2;     // bit indicating the reg has just changed

   reg [31:0] 			    prtCycles_tc3;			    
   wire [31:0] 			       prtCycles_sr_tc3;   // setting_reg module output 
   wire 			       prtCycles_ch_tc3;     // bit indicating the reg has just changed

   
   setting_reg #(.my_addr(4)) sr_4        //  0 is the address you choose. (there is an 8 bit address space)
     (.clk(clock),.rst(reset),.strobe(set_stb),.addr(set_addr),.in(set_data),
      .out(prtCycles_sr_tc1),.changed(prtCycles_ch_tc1));
   
   always @(posedge clock)begin
      if (prtCycles_ch_tc1)
	prtCycles_tc1 <= prtCycles_sr_tc1;
   end
   
   assign tc1_value = prtCycles_tc1[9:0];

   setting_reg #(.my_addr(5)) sr_5        //  0 is the address you choose. (there is an 8 bit address space)
     (.clk(clock),.rst(reset),.strobe(set_stb),.addr(set_addr),.in(set_data),
      .out(prtCycles_sr_tc2),.changed(prtCycles_ch_tc2));
   
   always @(posedge clock)begin
      if (prtCycles_ch_tc2)
	prtCycles_tc2 <= prtCycles_sr_tc2;
   end
   
   assign tc2_value = prtCycles_tc2[9:0];

   setting_reg #(.my_addr(6)) sr_6       //  0 is the address you choose. (there is an 8 bit address space)
     (.clk(clock),.rst(reset),.strobe(set_stb),.addr(set_addr),.in(set_data),
      .out(prtCycles_sr_tc3),.changed(prtCycles_ch_tc3));
   
   always @(posedge clock)begin
      if (prtCycles_ch_tc3)
	prtCycles_tc3 <= prtCycles_sr_tc3;
   end
   
   assign tc3_value = prtCycles_tc3[9:0];
   

   
   assign ce_cnt1 = dv_in_d;

   assign tc1 =  (tc1_value[0]~^ cnt1[0])&&
		 (tc1_value[1]~^ cnt1[1])&&
		 (tc1_value[2]~^ cnt1[2])&&
		 (tc1_value[3]~^ cnt1[3])&&
		 (tc1_value[4]~^ cnt1[4])&&
		 (tc1_value[5]~^ cnt1[5])&&
		 (tc1_value[6]~^ cnt1[6])&&
		 (tc1_value[7]~^ cnt1[7])&&
		 (tc1_value[8]~^ cnt1[8])&& 
		 (tc1_value[9]~^ cnt1[9]); // the terminal count is settled at the value written on the user register
   
   assign tc2 =  (tc2_value[0]~^ cnt1[0])&&
		 (tc2_value[1]~^ cnt1[1])&&
		 (tc2_value[2]~^ cnt1[2])&&
		 (tc2_value[3]~^ cnt1[3])&&
		 (tc2_value[4]~^ cnt1[4])&&
		 (tc2_value[5]~^ cnt1[5])&&
		 (tc2_value[6]~^ cnt1[6])&&
		 (tc2_value[7]~^ cnt1[7])&&
		 (tc2_value[8]~^ cnt1[8])&& 
		 (tc2_value[9]~^ cnt1[9]);
   
   assign tc3 =  (tc3_value[0]~^ cnt1[0])&&
		 (tc3_value[1]~^ cnt1[1])&&
		 (tc3_value[2]~^ cnt1[2])&&
		 (tc3_value[3]~^ cnt1[3])&&
		 (tc3_value[4]~^ cnt1[4])&&
		 (tc3_value[5]~^ cnt1[5])&&
		 (tc3_value[6]~^ cnt1[6])&&
		 (tc3_value[7]~^ cnt1[7])&&
		 (tc3_value[8]~^ cnt1[8])&& 
		 (tc3_value[9]~^ cnt1[9]);

   counter_mod_10 cnt_unit (
			    .sclr(reset), 
			    .ce(ce_cnt1), 
			    .clk(clock), 
			    .q(cnt1));

   register_32b reg1(
		     .q(data_out_reg1),
		     .clk(clock),
		     .rst(reset),
		     .d(data_in));

   assign selection = (tc1 || tc2 || tc3) && dv_in_d;
   
   
   always @ (selection or data_out_reg1)
     begin : MUX1
	case(selection) 
	  1'b0 : data_in_reg2 <= data_out_reg1;
	  1'b1 : data_in_reg2 <= {32{1'b0}};
	endcase 
     end

   
   
   register_32b reg2(
		     .q(data_out),
		     .clk(clock),
		     .rst(reset),
		     .d(data_in_reg2));

   FFD ffd1(
	    .q(dv_in_d),
	    .clk(clock),
	    .rst(reset),
	    .d(dv_in));

   FFD ffd2(
	    .q(dv_out),
	    .clk(clock),
	    .rst(reset),
	    .d(dv_in_d));
   
   

endmodule

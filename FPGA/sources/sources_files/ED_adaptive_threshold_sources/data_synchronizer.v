`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:36:14 05/05/2017 
// Design Name: 
// Module Name:    data_synchronizer 
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
module data_synchronizer(
			 input 	       clock,
			 input 	       reset,
			 input 	       set_stb,
			 input [7:0]   set_addr,
			 input [31:0]  set_data,
			 input [31:0]  data_in,
			 input 	       dv_in, 
			 output [31:0] data_out,
			 output        dv_synchronizer      
			 );
   wire 			       tc;
   wire [15:0] 			       q; 			      
   wire 			       rd_en,full,empty;
   
//User Setting Register definition
   reg [31:0] 			       prtCycles;  // Local register set by User Settings Bus
   wire [31:0] 			       prtCycles_sr;   // setting_reg module output 
   wire 			       prtCycles_ch;     // bit indicating the reg has just changed
   

   assign tc =  (prtCycles[0]~^ q[0])
					&(prtCycles[1]~^ q[1])
					&(prtCycles[2]~^ q[2])
					&(prtCycles[3]~^ q[3])
					&(prtCycles[4]~^ q[4])
					&(prtCycles[5]~^ q[5])
					&(prtCycles[6]~^ q[6])
					&(prtCycles[7]~^ q[7])
					&(prtCycles[8]~^ q[8])
					&(prtCycles[9]~^ q[9])
					&(prtCycles[10]~^ q[10])
					&(prtCycles[11]~^ q[11])
					&(prtCycles[12]~^ q[12])
					&(prtCycles[13]~^ q[13])
					&(prtCycles[14]~^ q[14])
					&(prtCycles[15]~^ q[15]); // the terminal count is settled at 9 to create the read command one clock cycle before
   assign rd_en = tc;
   
   
   
   setting_reg #(.my_addr(0)) sr_0        //  0 is the address you choose. (there is an 8 bit address space)
     (.clk(clock),.rst(reset),.strobe(set_stb),.addr(set_addr),.in(set_data),
      .out(prtCycles_sr),.changed(prtCycles_ch));
   
   always @(posedge clock)
     if (prtCycles_ch)
       prtCycles <= prtCycles_sr;
   


   fifo_generator_v6_2 fifo_synchronizer (
					  .clk(clock),
					  .srst(reset),
					  .din(data_in), // Bus [31 : 0] 
					  .wr_en(dv_in),
					  .rd_en(rd_en),
					  .dout(data_out), // Bus [31 : 0] 
					  .full(full),
					  .empty(empty));

   counter_mod_16 counter(
			 .clk(clock),
			 .sclr(reset | tc),
			 .q(q));

   FFD ff_dv_synchronizer(
		     .q(dv_synchronizer),
		     .clk(clock),
		     .rst(reset),
		     .d(rd_en & (~empty))
		     );

endmodule

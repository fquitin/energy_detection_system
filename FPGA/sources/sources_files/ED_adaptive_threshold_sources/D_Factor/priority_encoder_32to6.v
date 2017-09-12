`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:20:29 08/09/2017 
// Design Name: 
// Module Name:    priority_encoder_22to5 
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
module priority_encoder_32to6(
			      input 	   clock,
			      input 	   reset,
			      input [31:0] data_in,
			      input 	   dv_in,
			      output reg [5:0] data_out);
      
always @ (posedge reset, posedge clock)
  begin
     if(reset == 1'b1) begin
	data_out = 6'b000000;
     end
     else begin
	if (dv_in) begin
	   if (data_in[31] == 1'b1) begin 
	      data_out =32; 
	   end else if (data_in[30] == 1'b1) begin 
	      data_out =31; 
	   end else if (data_in[29] == 1'b1) begin 
	      data_out =30; 
	   end else if (data_in[28] == 1'b1) begin 
	      data_out =29; 
	   end else if (data_in[27] == 1'b1) begin 
	      data_out =28; 
	   end else if (data_in[26] == 1'b1) begin 
	      data_out =27; 
	   end else if (data_in[25] == 1'b1) begin 
	      data_out =26; 
	   end else if (data_in[24] == 1'b1) begin 
	      data_out =25; 
	   end else if (data_in[23] == 1'b1) begin 
	      data_out =24; 
	   end else if (data_in[22] == 1'b1) begin 
	      data_out =23; 
	   end else if (data_in[21] == 1'b1) begin 
	      data_out =22; 
	   end else if (data_in[20] == 1'b1) begin 
	      data_out =21; 
	   end else if (data_in[19] == 1'b1) begin 
	      data_out =20; 
	   end else if (data_in[18] == 1'b1) begin 
	      data_out =19; 
	   end else if (data_in[17] == 1'b1) begin 
	      data_out =18; 
	   end else if (data_in[16] == 1'b1) begin 
	      data_out =17; 
	   end else if (data_in[15] == 1'b1) begin 
	      data_out =16; 
	   end else if (data_in[14] == 1'b1) begin 
	      data_out =15; 
	   end else if (data_in[13] == 1'b1) begin 
	      data_out =14;
	   end else if (data_in[12] == 1'b1) begin 
	      data_out =13; 
	   end else if (data_in[11] == 1'b1) begin 
	      data_out =12; 
	   end else if (data_in[10] == 1'b1) begin 
	      data_out =11; 
	   end else if (data_in[9] == 1'b1) begin 
	      data_out =10; 
	   end else if (data_in[8] == 1'b1) begin 
	      data_out =9; 
	   end else if (data_in[7] == 1'b1) begin 
	      data_out =8; 
	   end else if (data_in[6] == 1'b1) begin 
	      data_out =7; 
	   end else if (data_in[5] == 1'b1) begin 
	      data_out =6; 
	   end else if (data_in[4] == 1'b1) begin 
	      data_out =5; 
	   end else if (data_in[3] == 1'b1) begin 
	      data_out =4; 
	   end else if (data_in[2] == 1'b1) begin 
	      data_out =3; 
	   end else if (data_in[1] == 1'b1) begin 
	      data_out =2; 
	   end else if (data_in[0] == 1'b1) begin 
	      data_out =1; 
	   end else begin 
	      data_out =0; 
	   end
	end // if (enable)
     end // else: !if(reset == 1'b1)
  end // always @ (posedge reset, posedge clock)
   

endmodule  


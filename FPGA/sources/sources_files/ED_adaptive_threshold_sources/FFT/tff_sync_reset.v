
module tff_sync_reset (
		       data  , // Data Input
		       clock   , // Clock Input
		       reset , // Reset input
		       q       // Q output
		       );
   
//-----------Input Ports---------------
input data, clock, reset ; 
//-----------Output Ports---------------
output q;
//------------Internal Variables--------
reg q;

   always @ ( posedge clock)
     if (reset) begin
	q <= 1'b0;
     end else if (data) begin
	q <= !q;
     end

endmodule 

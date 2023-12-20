module divisor(novo_clock,reset,clock_50,novo_clock2);
	input reset;
	input clock_50;
	
	output novo_clock;
	output novo_clock2;
	
	reg [26:0]Q,Q2;
   reg clk2, clk1;

assign clk = clock_50;
	
	initial
	
	begin
	clk2 = 0;	
	clk1 = 0;
	  Q = 27'b000;
	end

always @ (posedge clk or negedge reset) 
begin
   if (reset == 1'b0) 
	begin
     Q = 27'b000;
   end
	else if( Q == 27'd5000000)
		  begin
			 Q = 27'b0000;
			 clk2 =~clk2;
			 end
	else begin
     Q = Q + 1;
   end
end



always @ (posedge clk or negedge reset) 
begin
   if (reset == 1'b0) 
	begin
     Q2 = 27'b000;
   end
	else if( Q2 == 27'd50000000)
		  begin
			 Q2 = 27'b0000;
			clk1 =~clk1;
			 end 
	
   else begin
     Q2 = Q2 + 1;
   end
end


assign novo_clock = clk1; // novo_clock = 50M/2^24   =   3Hz
assign novo_clock2 = clk2;


endmodule

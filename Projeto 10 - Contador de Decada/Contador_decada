/* Projeto de contador de decada
Alunas: Letícia Vaz pires e Marina Stefane Candido Delfino
Data:30/11/23
*/

module Contador_decada(HEX1,SW,CLOCK_50,HEX4);
	  
	output [0:6] HEX1;
	output [0:6] HEX4;
   input [17:0] SW;
  	input CLOCK_50;
	
 	wire  novo_clock;
	wire  novo_clock2;
   wire  reset;
	
	reg [3:0] Q,Q2;
	
	assign reset = SW[10];	
	
	initial 
	   begin
	     Q = 4'b0000;
	   end

divisor ANA(novo_clock,reset,CLOCK_50,novo_clock2);


always @ (posedge novo_clock or negedge reset) 
begin
   if (reset == 1'b0 )   
	begin
     Q = 4'b0000;
   end
  
	else if( Q == 4'b1001)
		  begin
			 Q = 4'b0000;
			 end
		else 
		begin
			 Q = Q + 1;
		end
   end
	
always @ (posedge novo_clock2 or negedge reset) 
begin
   if (reset == 1'b0 )   
	begin
     Q2 = 4'b0000;
   end
  
	else if( Q2 == 4'b1001)
		  begin
			 Q2 = 4'b0000;
			 end
		else 
		begin
			 Q2 = Q2 + 1;
		end
   end


decodificador (Q,HEX1);
decodificador (Q2,HEX4);


endmodule

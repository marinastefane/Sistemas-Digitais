//Leticia Vaz Pires e Marina Stefane Candido Delfino
//Data: 26/10/2023
//Projeto Circuito Decodificador usando descrição comportamental (CASE)

module Circuito_Decodificador (SW, HEX1);
	//entrada e saida, já pinada
	input [17:14]SW;
	output reg [0:6]HEX1;
	
	//variavel intermediaria
	wire [3:0] A = SW[17:14];
	
	//case
	always@ (A)
		begin
			case (A)
			
			4'b0000 : HEX1 = 7'b0000001; //0
			4'b0001 : HEX1 = 7'b1001111; //1
			4'b0010 : HEX1 = 7'b0010010; //2
			4'b0011 : HEX1 = 7'b0000110; //3
			4'b0100 : HEX1 = 7'b1001100; //4
			4'b0101 : HEX1 = 7'b0100100; //5
			4'b0110 : HEX1 = 7'b0100000; //6
			4'b0111 : HEX1 = 7'b0001111; //7
			4'b1000 : HEX1 = 7'b0000000; //8
			4'b1001 : HEX1 = 7'b0000100; //9
			default : HEX1 = 7'b0101010; //caso o num nao exista
			
			endcase
	end
	
endmodule

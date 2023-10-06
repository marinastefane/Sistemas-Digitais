// Prova 1 - Circuito
// Data: 05/10/2023
// Marina Stefane Candido Delfino

module Circuito (X, S);
	
	//variavel de entrada
	input [3:0] X;
	
	//variavel de saida
	output S;
	
	//expressao
	assign S = (~X[3] & ~X[2] & ~X[1] & X[0]) | (~X[3] & ~X[2] & X[1] & ~X[0]) | (~X[3] & X[2] & ~X[1] & ~X[0]) | 
	(~X[3] & X[2] & X[1] & X[0]) | (X[3] & ~X[2] & ~X[1] & ~X[0]) | (X[3] & ~X[2] & X[1] & X[0]) | 
	(X[3] & X[2] & ~X[1] & X[0]) | (X[3] & X[2] & X[1] & ~X[0]);
	
	
endmodule

// Projeto de um subtrator de 2 bits
// Data: 05/10/2023
// Aluna: Marina Stefane Candido Delfino

module subtrator_completo (A, B, TE, R);

	//entradas A e B
	input [1:0] A, B;
	//transporte de entrada
	input TE;
	//Resultado 
	output [2:0] R;
	
	//variaveis intermediarias
	wire [1:0] TS, S;
	
	//subtrator(A, B, TE, S, TS);
	subtrator bloco0 (A[0], B[0], TE, S[0], TS[0]);
	subtrator bloco1 (A[1], B[1], TS[0], S[1], TS[1]);
	
	//resultado 
	assign R = {S[1], S[0]};
	
	endmodule

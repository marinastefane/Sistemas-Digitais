/* Somador completo
Alunas: Letícia Vaz Pires e Marina Stefane Candido Delfino
Data: 14/09
*/

module somador_completo(A, B, TE0, R);

	input [1:0] A, B;
	input TE0;
	output [2:0] R;

	
	// Variáveis auxiliares
	wire [1:0] TS, S;
	
	//somador_1bit(A, B, Te, S, TS);

	somador_1bit bloco0 (A[0], B[0], TE0, S[0], TS[0]);
	somador_1bit bloco1 (A[1], B[1], TS[0], S[1], TS[1]);

	assign R = {TS[1], S[1:0]};

endmodule

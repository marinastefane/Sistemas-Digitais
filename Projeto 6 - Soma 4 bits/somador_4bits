/* Somador completo(4bits mais o bit de sinal)
Alunas: Letícia Vaz Pires e Marina Stefane Candido Delfino
Data: 28/09/2023
*/


module somador_4bits(A, B,  Te, a,b,c,d,e,f,g,h,i,j,k,l,m,n);

	input  [3:0]A;

	input [3:0]B;

	input Te;

	output a, b, c, d, e, f, g, h, i, j, k, l, m, n;

	// variaveis auxiliares
	wire [4:0] TS, S;
	wire[4:0] A_aux, B_aux;
	assign A_aux[4:0] = {1'b0, A[3:0]};
	assign B_aux[4:0] = {1'b0, B[3:0]};
	
	//somador_1bit(A, B, Te, S, TS);
	somador_1bit bloco0 (A_aux[0], B_aux[0], Te, S[0], TS[0]);
	somador_1bit bloco1 (A_aux[1], B_aux[1], TS[0], S[1], TS[1]);
	somador_1bit bloco2 (A_aux[2], B_aux[2], TS[1], S[2], TS[2]);
	somador_1bit bloco3 (A_aux[3], B_aux[3], TS[2], S[3], TS[3]);
	somador_1bit bloco4 (A_aux[4], B_aux[4], TS[3], S[4], TS[4]);
	
	wire [5:0]R_un, R_dez;
	
	assign R_un[5:0] = {TS[3], S[4] }%10;
	assign R_dez[5:0] = {TS[3], S[4] }/10;
	
	
	//decodificador
	// Bloco 5 tem que ser o resultado da divisão por 10 e o Bloco 6 o resto da divisão por 10 

	wire aux1, aux2;
 
	Decodificador bloco5 (R_dez[3], R_dez[2], R_dez[1], R_dez[0], a, b, c, d, e, f, g);
	Decodificador bloco6 (R_un[3], R_un[2], R_un[1], R_un[0], h, i, j, k, l, m, n);


endmodule

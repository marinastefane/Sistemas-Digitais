/* Somador 1 bit 
Alunas: Letícia Vaz Pires e Marina Stefane Candido Delfino
Data: 14/07
*/

module somador_1bit(A, B, Te, S, TS);


input A, B, Te;
output S, TS;

	assign S = (A^B)^Te;
	assign TS = (A&Te) | (B&Te) | (A&B);


endmodule




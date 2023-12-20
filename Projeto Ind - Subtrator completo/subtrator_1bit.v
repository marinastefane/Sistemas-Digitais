// Projeto de um subtrator de 1 bit
// Data: 05/10/2023
// Aluna: Marina Stefane Candido Delfino

module subtrator_1bit (A, B, TE, S, TS);

	input A, B, TE;
	output S, TS;
	
	assign S = (A^B)^TE;
	assign TS = (~A&TE) | (B&TE) | (~A&B);
	
endmodule

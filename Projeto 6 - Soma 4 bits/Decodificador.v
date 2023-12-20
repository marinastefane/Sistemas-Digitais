//Decodificador 
//Alunas: Letícia Vaz Pires e Marina Stefane Candido Delfino
//Data: 21/09

module Decodificador (A, B, C, D, a, b, c, d, e, f, g);

	input A, B, C, D;
	output a, b, c, d, e, f, g;
	
	assign a = (~A&~B&~C&D) | (B&~C&~D);
	assign b = (B&~C&D) | (B&C&~D);
	assign c = (~A&~B&C&~D);
	assign d = (B&~C&~D) | (~A&~B&~C&D) | (B&C&D);
	assign e = (B&~C) | (D);
	assign f = (~A&~B&D) | (~A&C&D) | (~A&~B&C);
	assign g = (~A&~B&~C) | (B&C&D);

endmodule




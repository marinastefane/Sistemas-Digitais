/*Projeto Mux 2:1
Nome: Marina Stefane Candido Delfino
Data: 19/10/2023
*/

module mux_21 (Sel, I0, I1, S);

	input Sel, I0, I1;
	output S;
	
  assign S = (I0 & ~Sel) | (I1 & Sel);
	
endmodule

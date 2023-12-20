// Dupla: Marina Stefane e Leticia Vaz 
// Data 17/08/23 - Segunda Aula
// Projeto: Sinalizador de Farol acesso desnecessariamente em carro

module alarme(F,P,C,S);

	input F,P,C;

	output S;

	assign S = (F & ~P & ~C) | (F & ~P & C) | (F & P & ~C);

endmodule

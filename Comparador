/* 
	2o projeto - comparador de magnitude de dois números binários de 1 bit: A e B, verificando se: A=B,    ou     A>B      A<B
	Data:24/08/23
	Letícia Vaz Pires e Marina Stefane Candido Delfino 
 */
 module comparador1bit(A, B, Ig, Ma, Me);
 
 input A, B;
 output Ig, Ma, Me;
 assign Ig = (A ~^B);
 assign Ma = A & ~B; 
 assign Me = ~A & B;
 
 endmodule

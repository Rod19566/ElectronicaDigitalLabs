//Universidad Del Valle
//Electrónica Digital - 2020
//Dina Rodríguez

//Ejercicio 3

module FD1(input wire CLK, input wire D,  input wire E, input wire R, output Q);
reg Q;
	always @(posedge CLK or	posedge R or posedge E)
		if (R)begin
		Q <= 0;
	end else if(E) begin
		Q <= D;
	end
endmodule


module FJK(input wire CLK, E, R, J, K, output wire Q);
	FD1 O5(CLK, ~K&Q | J&~Q, R, E, Q);
endmodule

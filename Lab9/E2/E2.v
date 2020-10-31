//Universidad Del Valle
//Electrónica Digital - 2020
//Dina Rodríguez

//Ejercicio 2

//FlipFlop D
module FD1(input wire CLK, input wire D, input wire E, input wire R, output Q);
reg Q;
	always @(posedge CLK or	posedge R)
		if (R) begin
		Q <= 0;
	end else if (E) begin
		Q <= D;
	end
endmodule


//FlipFlop T
module FT(input wire CLK, E, R, output wire Q);
	FD1 O5(CLK, ~Q, R, E, Q);
endmodule

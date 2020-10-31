//Universidad Del Valle
//Electrónica Digital - 2020
//Dina Rodríguez

//Ejercicio 1


//FlipFlopDs


// (1 bit)
module FD1(input wire CLK, input wire D, input wire E, input wire R, output Q);
reg Q;
	always @(posedge CLK or	posedge R or posedge E)
		if (R)begin
		Q <= 0;
	end else if(E) begin
		Q <= D;
	end
endmodule


// (2 bits)
module FD2(input wire CLK, input wire [1:0]D, input wire E, input wire R, output wire [1:0]Q);
	FD1 O0(CLK, D[0], R, E, Q[0]);
	FD1 O1(CLK, D[1], R, E, Q[1]);
endmodule


// (4 bits)
module FD4 (input wire CLK, input wire [3:0]D, input wire E, input wire R, output wire [3:0]Q);
	FD2 O3(CLK, D[1:0], R, E, Q[1:0]);
	FD2 O4(CLK, D[3:2], R, E, Q[3:2]);
endmodule

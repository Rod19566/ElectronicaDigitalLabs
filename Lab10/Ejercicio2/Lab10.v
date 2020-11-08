//Univerrsidad Del Valle
//Electr+onica Digital
//Dina Rodríguez    19566


//Bus Driver
module Buf3(input wire E, input wire [3:0]IN, output wire [3:0]OUT);
	assign OUT = enable ? IN : 4'bz;
endmodule

module AC(input wire CLK, input wire [3:0]D, input wire E, input wire R, output [3:0]Q);
reg Q;
	always @(posedge CLK or	posedge E or posedge R)
		if (R) begin
		Q <= 0;
	end else if (E) begin
		Q <= D;
	end
endmodule

//ALU
module ALU(input wire [3:0]A, input wire [3:0]B, input wire [2:0]S, output reg [3:0]Y, output reg C, output reg Z);
reg [4:0]X;

	always @ (A or B or S)
		case (S)
			0 : begin
				Y = A;
				Z = ~Y[0] & ~Y[1] & ~Y[2] & ~Y[3];
				end
			1 : begin
				X = A - B;
				Y[0] = X[0];
				Y[1] = X[1];
				Y[2] = X[2];
				Y[3] = X[3];
				C = X[4];
				Z = ~Y[0] & ~Y[1] & ~Y[2] & ~Y[3];
				end
			2 : begin
				Y = B;
				Z = ~Y[0] & ~Y[1] & ~Y[2] & ~Y[3];
				end
			3 : begin
				X = A + B;
				Y[0] = X[0];
				Y[1] = X[1];
				Y[2] = X[2];
				Y[3] = X[3];
			  C = X[4];
				Z = ~Y[0] & ~Y[1] & ~Y[2] & ~Y[3];
				end
			4 : begin
				Y = ~(A & B);
				Z = ~Y[0] & ~Y[1] & ~Y[2] & ~Y[3];
				end
		endcase
endmodule


module E2(input wire CLK, E1, E2, E3, R, input wire [3:0]IN, input wire [2:0]S, output wire [3:0]Y, output wire C, Z);
	wire [3:0]YB1;	wire [3:0]YAC;	wire [3:0]YALU;
	Buf3 O1(E1, IN, YB1);
	AC O3(CLK, YALU, E3, R, YAC);
	ALU O2(YAC, YB1, S, YALU, C, Z);
	Buf3 O4(E2, YALU, Y);
endmodule

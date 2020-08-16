


//MUX 2:1
module mux21(input V0, V1, A, output wire Y);

	assign Y = V0 ? V1 : V0; // Asigna a Y con una condición (?)

endmodule

//MUX 4:1
module mux41(input V0, V1, V2, V3, A, B, output wire Y);

	wire [1:0] Y1;
	mux21 U1(V0, V1, B, Y1[0]);
	mux21 U2(V2, V3, B, Y1[1]);
	mux21 U3(Y1[0], Y1[1] , A, Y);

endmodule


// MUX 8:1
module mux81(input V0, V1, V2, V3, V4, V5, V6, V7, A, B, C, output wire Y);

	wire [1:0] Y1;
	mux41 U4(V0, V1, V2, V3, C, B, Y1[0]);
	mux41 U5(V4, V5, V6, V7, C, B, Y1[1]);
	mux21 U6(Y1[0], Y1[1], A, Y);

endmodule


//MUX 2:1 – tabla1
module t1mux21(input wire A, B, C, output wire Y);

	mux21 U7(B^C, B~^C, A, Y);

endmodule


//MUX 4:1 – tabla1
module t1mux41(input wire A, B, C, output wire Y);

	mux41 U8(C, ~C, ~C, C, A, B, Y);

endmodule


//MUX 8:1 – tabla1
module t1mux81(input wire A, B, C, output wire Y);

	wire V, T; // VOLTAJE Y TIERRA
	assign V = 1;
	assign T = 0;
	mux81 U9(T, V, V, T, V, T, T, V, A, B, C, Y); //SEGÚN LA TABLA

endmodule


//MUX 2:1 - tabla2
module t2mux21(input wire A, B, C, output wire Y);

	mux21 U10(~(B|C), ~(B&C), A, Y);

endmodule


//MUX 4:1 – tabla2
module t2mux41(input wire A, B, C, output wire Y);

  wire V, T; // VOLTAJE Y TIERRA
  assign V = 1;
  assign T = 0;
	mux41 U11(V, T, V, ~C, A, B, Y);

endmodule


//MUX 8:1 – tabla2
module t2mux81(input wire A, B, C, output wire Y);

	wire V, T;  // VOLTAJE Y TIERRA
	assign V = 1;
	assign T = 0;
	mux81 U12(V, T, T, T, V, V, V, T, A, B, C, Y);

endmodule

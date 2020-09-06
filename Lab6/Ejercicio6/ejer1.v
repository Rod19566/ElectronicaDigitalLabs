//Dina Patricia Rodríguez Pacay - 19566
//Electrónica Digital 1 - Sección 12 - UVG
//Laboratorio 6 - Ejercicio 6 - FSM del EJERCICIO 01

module FF1(input clk, rst, D, output reg Q);
	always @ (posedge clk or posedge rst) begin
		if (rst)
		  Q <= 1'b0;
	else
		  Q <= D;
	end
endmodule


//EJERCICIO 01
module FF2(input clk, rst, a, b, output Y, output wire [1:0] SP, SF);
  wire SP0, SP1, SF0, SF1;
  assign SF0 = (~SP1 & ~SP0 & a);
  assign SF1 = (SP1 & b & a) | (SP0 & b);
  FF1 U1(clk, rst, SF1, SP1);
  FF1 U2(clk, rst, SF0, SP0);
  assign Y = (SP1 & a & b);
endmodule

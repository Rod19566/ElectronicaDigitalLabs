//Dina Patricia Rodríguez Pacay - 19566
//Electrónica Digital 1 - Sección 12
//Laboratorio 6 - Ejercicio 5 - Flip Flop

module FF(input clk, rst, set, input [3:0] D, output [3:0] Q);
reg Q;
	always @ (posedge clk or	posedge rst) begin
		if (rst)
		  Q <= 4'b0000;
	else
		  Q <= D;
	end
endmodule

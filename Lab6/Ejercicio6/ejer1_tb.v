//Dina Patricia Rodríguez Pacay - 19566
//Electrónica Digital 1 - Sección 12
//Laboratorio 6 - Ejercicio 6 - FSM del EJERCICIO 01 testbench

module testbench();

  reg clk, rst, A, B;
  wire Y;
  wire [1:0] SP, SF;

	FF2 U3(clk, rst, A, B, Y, SP, SF);

  initial begin
	#2
  $display("EJERCICIO - 6 / 1");
  $display("------------");
  $monitor("%b %b %b %b", clk, rst, A, B, SP[1], SP[0], SF[1], SF[0], Y);
  rst = 0; A = 4'b0000;
  clk = 0;
  #1 rst = 1; A = 4'b0011;
  #1 A = 4'b0011;
	#1 A = 4'b1111;
	#1 A = 4'b1111;
	#1 rst = 1;
	#1 rst = 0; A = 4'b1100;
	#1 A = 4'b1100;
	#1 A = 4'b1111;
	#1 A = 4'b1111;
	#1 A = 4'b0011;
  #20 $finish;
  end

  always
   #1 clk = ~clk;

initial
  begin
    $dumpfile("ejer1_tb.vcd");
    $dumpvars(0, testbench);
  end
endmodule

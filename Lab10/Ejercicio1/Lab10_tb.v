//Univerrsidad Del Valle
//Electr+onica Digital
//Dina Rodríguez    19566

//entradas reset, clock, los 12 bits del Program Counter para hacer loads y los bits necesarios para operar los módulos Program Counter y Fetch

module Ej1();
  reg CLK, E1, E2, R, L;
  reg [11:0]D;
  wire [3:0]Q;
  wire [3:0]Q1;

	Eje1 U1(L, CLK, E1, E2, R, D, Q, Q1);

initial begin
	CLK = 0;
	forever #3 CLK = ~CLK;
end

  initial begin
	#3	$display("Ejercicio #1\n");
    $display("CLK E R L      D       |  Q1    Q0");
    $display("------------------------------------");
    $monitor("%b   %b %b %b %b %b | %b  %b", CLK, E1, E2, R, L, D, Q, Q1);
       R = 1; E1 = 0; E2 = 0; L = 0; D = 0;
    #2 R = 0;
	#15 E1 = 1; E2 = 1;
	#45 D = 50; L = 1;
	#10 L = 0;
	#10 L = 0;
  end


	initial
    #120 $finish;
  initial begin
    $dumpfile("Lab10_tb.vcd");
    $dumpvars(0, Ej1);
  end
endmodule

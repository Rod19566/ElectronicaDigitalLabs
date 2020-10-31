//Universidad Del Valle
//Electrónica Digital - 2020
//Dina Rodríguez


module E1();
  reg CLK, R, D1, E;
  reg [1:0]D2;
  reg [3:0]D4;
  wire Q1;
  wire [1:0]Q2;
  wire [3:0]Q4;


	FD1 U1(CLK, D1, R, E, Q1);
	FD2 U2(CLK, D2, R, E, Q2);
	FD4 U3(CLK, D4, R, E, Q4);


initial begin
	CLK=0;
	forever #3 CLK = ~CLK;
end


  initial begin
	#3
	$display("Ejercicio #1 FlipFlops D ");
  $display("\n");

  $display("1 bit");
    $display("CLK E D | Q");
    $display("------------");
    $monitor("%b  %b %b | %b", CLK, E, D1, Q1);
       R = 1;
       D1 = 1;
       E = 0;
    #2 R = 0;
	#8 D1 = 1;
	#8 E = 1;
	#8 D1 = 0;
  end


  initial begin
	#55
    $display("\n");
	$display("2 bits");
    $display("CLK E  D | Q");
    $display("-------------");
    $monitor("%b   %b %b |%b", CLK, E, D2, Q2);
      R = 1;
      D1 = 1;
      E = 0;
    #2 R = 0;
 #8 D1 = 1;
  #8 E = 1;
  #8 D1 = 0;
  end


  initial begin
	#98
    $display("\n");
	$display("Ejercicio 1, FlipFlop D 4 bits");
    $display("Clk E  D   |  Q");
    $display("-----------------");
    $monitor("%b   %b %b | %b", CLK, E, D4, Q4);
      R = 1;
      D1 = 1;
      E = 0;
    #2 R = 0;
 #8 D1 = 1;
  #8 E = 1;
  #8 D1 = 0;
  end


	initial
    #135 $finish;
  initial begin
    $dumpfile("E1_tb.vcd");
    $dumpvars(0, E1);
  end
endmodule

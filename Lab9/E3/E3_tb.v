//Universidad Del Valle
//Electrónica Digital - 2020
//Dina Rodríguez

module E3();
  reg CLK, R, E, K, J;
  wire Q;

	FJK U4(CLK, R, E, J, K, Q);


initial begin
	CLK=0;
	forever #5 CLK = ~CLK;
end


  initial begin
	#3
    $display("\n");
	$display("Ejercicio #3");
    $display("CLK J K |  Q");
    $display("-----------------");
    $monitor("%b  %b %b | %b", CLK, J, K, Q);
       R = 1; E = 0; J = 0; K = 0;
    #2 R = 0;
    E = 1;
	#15 J = 1;
	#20 J = 0; K = 1;
	#25 J = 1;

  end

	initial
    #70 $finish;
  initial begin
    $dumpfile("E3_tb.vcd");
    $dumpvars(0, E3);
  end
endmodule

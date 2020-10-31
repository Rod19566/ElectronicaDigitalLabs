//Universidad Del Valle
//Electrónica Digital - 2020
//Dina Rodríguez

module E2();
  reg CLK, E, R;
  wire Q;

	FT U4(CLK, E, R, Q);

initial begin
	CLK = 0;
	forever #2 CLK = ~CLK;
end


  initial begin
	#4

	$display("Ejercicio 2");

    $display("CLK E R |  Q");
    $display("-----------------");
    $monitor("%b  %b %b | %b", CLK, E, R, Q);
       R = 1;
       E = 0;
    #1 R = 0;
        E = 1;

  end

	initial
    #17 $finish;
  initial begin
    $dumpfile("E2_tb.vcd");
    $dumpvars(0, E2);
  end
endmodule

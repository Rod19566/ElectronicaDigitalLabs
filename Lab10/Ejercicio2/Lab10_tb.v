//Univerrsidad Del Valle
//Electr+onica Digital
//Dina Rodríguez    19566

module EJE2();
  reg CLK, E1, E2, E3, R;
  reg [3:0]IN; reg [2:0]S;
  wire [3:0]Y; wire C, Z;

	E2 U1(CLK, E1, E2, E3, R, IN, S, Y, C, Z);

initial begin
	CLK = 0;
	forever #5 CLK = ~CLK;
end

  initial begin
	#3
	$display("Ejercicio #2\n");
    $display("------------------------------------");
    $monitor("%b  %b %b  %b  %b  %b  %b | %b  %b   %b", CLK, E1, E2, E3, R, IN, S, Y, C, Z);
       E1 = 0; E2 = 0; E3 = 0; R = 0; IN = 0; S = 0;
	   #5 E1 = 1; E2 = 1; E3 = 1;
	   #5 IN = 2;
	   #5 IN = 5;
	   #5 IN = 6;
	   #5 IN = 8;
	   #5 S = 2;
	   #5 IN = 8;
	   #5 S = 1;
     #1 IN = 6;
	   #5 S = 3;
	   #15 S = 2;
  end

	initial
    #100 $finish;
  initial begin
    $dumpfile("Lab10_tb.vcd");
    $dumpvars(0, EJE2);
  end
endmodule

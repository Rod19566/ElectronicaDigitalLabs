//Dina Patricia Rodríguez Pacay - 19566
//Electrónica Digital 1 - Sección 12
//Laboratorio 6 - Ejercicio 5 - Flip Flop testbench

module testbench();

  reg clk, rst, set;
  reg [3:0] A;
  wire [3:0] Y;
	FF U1(clk, A, rst, set, Y);

  initial begin
	#2
  $display("Flip Flop");
  $display("------------");
  $monitor("%b %b %b %b", Y, A, clk, set);
  rst = 0; A = 4'b0000;
  #1 rst = 1; A = 4'b0011;
  #1 A = 4'b0011;
	#1 A = 4'b1111;
	#1 A = 4'b1111;
	#1 rst = 1;
	#1 rst = 0; A = 4'b1100;
	#1 set = 1; A = 4'b1100;
	#1 set = 1; A = 4'b1111;
	#1 set = 0; A = 4'b1111;
	#1 set = 0; A = 4'b0011;
  #20 $finish;
  end

  always
   #1 clk = ~clk;

  initial begin
    $dumpfile("flipflop_tb.vcd");
    $dumpvars(0, testbench);
  end
endmodule

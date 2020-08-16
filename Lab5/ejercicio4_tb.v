

module testbench();


  reg a21, b21, c21, a41, b41, c41, a81, b81, c81, a221, b221, c221, a241, b241, c241, a281, b281, c281;
  wire t1mux21, t1mux41, t1mux81, t2mux21, t2mux41, t2mux81;

//GLM
	t1mux21 U13(a21, b21, c21, t1mux21);
	t1mux41 U14(a41, b41, c41, t1mux41);
	t1mux81 U15(a81, b81, c81, t1mux81);
	t2mux21 U16(a221, b221, c221, t2mux21);
	t2mux41 U17(a241, b241, c241, t2mux41);
	t2mux81 U18(a281, b281, c281, t2mux81);

//MUX 2:1 - tabla1
  initial begin
	#2
	$display("Tabla 1 - MUX 2:1");
  $display("-------------");
  $display("| A B C | Y |");
  $display("|-------|---|");
  $monitor("| %b %b %b | %b |", a21, b21, c21, t1mux21);
  a21=0;
  b21=0;
  c21=0;
  #1 c21=1;
  #1 b21=1; c21=0;
  #1 c21=1;
  #1 a21=1; b21=0; c21=0;
  #1 c21=1;
  #1 b21=1; c21=0;
  #1 c21=1;
  #1 $display("-------------");
  end


  //MUX 4:1 - tabla1
  initial begin
  #12
  $display("Tabla 1 - MUX 4:1");
  $display("-------------");
  $display("| A B C | Y |");
  $display("|-------|---|");
  $monitor("| %b %b %b | %b |", a41, b41, c41, t1mux41);
  a41=0;
  b41=0;
  c41=0;
  #1 c41=1;
  #1 b41=1; c41=0;
  #1 c41=1;
  #1 a41=1; b41=0; c41=0;
  #1 c41=1;
  #1 b41=1; c41=0;
  #1 c41=1;
  #1 $display("-------------");
  end


  //MUX 8:1 - tabla1
  initial begin
  #22
  $display("Tabla 1 - MUX 8:1");
  $display("-------------");
  $display("| A B C | Y |");
  $display("|-------|---|");
  $monitor("| %b %b %b | %b |", a81, b81, c81, t1mux81);
  a81=0;
  b81=0;
  c81=0;
  #1 c81=1;
  #1 b81=1; c81=0;
  #1 c81=1;
  #1 a81=1; b81=0; c81=0;
  #1 c81=1;
  #1 b81=1; c81=0;
  #1 c81=1;
  #1 $display("-------------");
  end

  //MUX 2:1 – tabla2
  initial begin
	#32
	$display("Tabla 2 - MUX 2:1");
  $display("-------------");
  $display("| A B C | Y |");
  $display("|-------|---|");
  $monitor("| %b %b %b | %b |", a221, b221, c221, t2mux21);
  a221=0;
  b221=0;
  c221=0;
  #1 c221=1;
  #1 b221=1; c221=0;
  #1 c221=1;
  #1 a221=1; b221=0; c221=0;
  #1 c221=1;
  #1 b221=1; c221=0;
  #1 c221=1;
  #1 $display("-------------");
  end


  //MUX 4:1 – tabla2
  initial begin
  #42
  $display("Tabla 2 - MUX 4:1");
  $display("-------------");
  $display("| A B C | Y |");
  $display("|-------|---|");
  $monitor("| %b %b %b | %b |", a241, b241, c241, t2mux41);
  a241=0;
  b241=0;
  c241=0;
  #1 c241=1;
  #1 b241=1; c241=0;
  #1 c241=1;
  #1 a241=1; b241=0; c241=0;
  #1 c241=1;
  #1 b241=1; c241=0;
  #1 c241=1;
  #1 $display("-------------");
  end


  //MUX 8:1 – tabla2
  initial begin
  #52
  $display("Tabla 2 - MUX 8:1");
  $display("-------------");
  $display("| A B C | Y |");
  $display("|-------|---|");
  $monitor("| %b %b %b | %b |", a281, b281, c281, t2mux81);
  a281=0;
  b281=0;
  c281=0;
  #1 c281=1;
  #1 b281=1; c281=0;
  #1 c281=1;
  #1 a281=1; b281=0; c281=0;
  #1 c281=1;
  #1 b281=1; c281=0;
  #1 c281=1;
  #1 $display("-------------");
  end


  initial
    #62 $finish;

  initial begin
    $dumpfile("ejercicio4_tb.vcd");
    $dumpvars(0, testbench);
  end


endmodule

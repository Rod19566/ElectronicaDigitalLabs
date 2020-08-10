

module testbench();

reg A1,A2,A3,A4,A5,A6,A7,A8,B1,B2,B3,B4,B5,B6,B7,B8,C1,C2,C3,C4,C5,C6,C7,C8,D1,D2,D3,D4,D5,D6,D7,D8;
wire Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8;

gateLeveling1 U1(A1, B1, C1, Y1);  //ejercicio1.1
gateLeveling2 U2(A2, B2, C2, Y2); //ejercicio1.2
gateLeveling3 U3(A3, B3, C3, D3, Y3);  //ejercicio1.3
gateLeveling4 U4(A4, B4, C4, D4, Y4);   //ejercicio1.4

gates1 U5(A5, B5, C5, D5, Y5);   //ejercicio2.1
gates2 U6(A6, B6, C6, Y6);   //ejercicio2.2
gates3 U7(A7, B7, C7, D7, Y7);   //ejercicio2.3
gates4 U8(A8, B8, C8, Y8);   //ejercicio2.4

initial begin
  $display("-------------");
  $display("| A B C | Y |");
  $display("|-------|---|");
  $monitor("| %b %b %b | %b |",
  A1,B1,C1,Y1);
  A1=0;
  B1=0;
  C1=0;
  #1 C1=1;
  #1 B1=1; C1=0;
  #1 C1=1;
  #1 A1=1; B1=0; C1=0;
  #1 C1=1;
  #1 B1=1; C1=0;
  #1 C1=1;
  #1 $display("-------------");
  #1 $finish;
end

initial begin
  $display("-------------");
  $display("| A B C | Y |");
  $display("|-------|---|");
  $monitor("| %b %b %b | %b |",
  A2,B2,C2,Y2);
  A2=0;
  B2=0;
  C2=0;
  #1 C2=1;
  #1 B2=1; C2=0;
  #1 C2=1;
  #1 A2=1; B2=0; C2=0;
  #1 C2=1;
  #1 B2=1; C2=0;
  #1 C2=1;
  #1 $display("-------------");
  #1 $finish;
end

initial begin
  $display("---------------");
  $display("| A B C D | Y |");
  $display("|---------|---|");
  $monitor("| %b %b %b %b | %b |",
  A3,B3,C3,D3,Y3);
  A3=0;
  B3=0;
  C3=0;
  D3=0;
  #1 D3=1;
  #1 C3=1; D3=0;
  #1 D3=1;
  #1 B3=1; C3=0; D3=0;
  #1 D3=1;
  #1 C3=1; D3=0;
  #1 D3=1;
  #1 A3=1; B3=0; C3=0; D3=0;
  #1 D3=1;
  #1 C3=1; D3=0;
  #1 D3=1;
  #1 B3=1; C3=0; D3=0;
  #1 D3=1;
  #1 C3=1; D3=0;
  #1 D3=1;
  #1 $display("---------------");
  #1 $finish;
end


initial begin
  $display("---------------");
  $display("| A B C D | Y |");
  $display("|---------|---|");
  $monitor("| %b %b %b %b | %b |",
  A4,B4,C4,D4,Y4);
  A4=0;
  B4=0;
  C4=0;
  D4=0;
  #1 D4=1;
  #1 C4=1; D4=0;
  #1 D4=1;
  #1 B4=1; C4=0; D4=0;
  #1 D4=1;
  #1 C4=1; D4=0;
  #1 D4=1;
  #1 A4=1; B4=0; C4=0; D4=0;
  #1 D4=1;
  #1 C4=1; D4=0;
  #1 D4=1;
  #1 B4=1; C4=0; D4=0;
  #1 D4=1;
  #1 C4=1; D4=0;
  #1 D4=1;
  #1 $display("---------------");
  #1 $finish;
end


initial begin
  $display("---------------");
  $display("| A B C D | Y |");
  $display("|---------|---|");
  $monitor("| %b %b %b %b | %b |",
  A5,B5,C5,D5,Y5);
  A5=0;
  B5=0;
  C5=0;
  D5=0;
  #1 D5=1;
  #1 C5=1; D5=0;
  #1 D5=1;
  #1 B5=1; C5=0; D5=0;
  #1 D5=1;
  #1 C5=1; D5=0;
  #1 D5=1;
  #1 A5=1; B5=0; C5=0; D5=0;
  #1 D5=1;
  #1 C5=1; D5=0;
  #1 D5=1;
  #1 B5=1; C5=0; D5=0;
  #1 D5=1;
  #1 C5=1; D5=0;
  #1 D5=1;
  #1 $display("---------------");
  #1 $finish;
end



initial begin
  $display("-------------");
  $display("| A B C | Y |");
  $display("|-------|---|");
  $monitor("| %b %b %b | %b |",
  A6,B6,C6,Y6);
  A6=0;
  B6=0;
  C6=0;
  #1 C6=1;
  #1 B6=1; C6=0;
  #1 C6=1;
  #1 A6=1; B6=0; C6=0;
  #1 C6=1;
  #1 B6=1; C6=0;
  #1 C6=1;
  #1 $display("-------------");
  #1 $finish;
end


initial begin
  $display("---------------");
  $display("| A B C D | Y |");
  $display("|---------|---|");
  $monitor("| %b %b %b %b | %b |",
  A7,B7,C7,D7,Y7);
  A7=0;
  B7=0;
  C7=0;
  D7=0;
  #1 D7=1;
  #1 C7=1; D7=0;
  #1 D7=1;
  #1 B7=1; C7=0; D7=0;
  #1 D7=1;
  #1 C7=1; D7=0;
  #1 D7=1;
  #1 A7=1; B7=0; C7=0; D7=0;
  #1 D7=1;
  #1 C7=1; D7=0;
  #1 D7=1;
  #1 B7=1; C7=0; D7=0;
  #1 D7=1;
  #1 C7=1; D7=0;
  #1 D7=1;
  #1 $display("---------------");
  #1 $finish;
end



initial begin
  $display("-------------");
  $display("| A B C | Y |");
  $display("|-------|---|");
  $monitor("| %b %b %b | %b |",
  A8,B8,C8,Y8);
  A8=0;
  B8=0;
  C8=0;
  #1 C8=1;
  #1 B8=1; C8=0;
  #1 C8=1;
  #1 A8=1; B8=0; C8=0;
  #1 C8=1;
  #1 B8=1; C8=0;
  #1 C8=1;
  #1 $display("-------------");
  #1 $finish;
end

  initial
    #60 $finish;

  initial
    begin
      $dumpfile("ejercicio_tb.vcd");
      $dumpvars(0,testbench);
    end
endmodule




// Gate Level Modeling

module gateLeveling1(input wire A, B, C, output wire Y);  // ejercicio1.1

  wire a1,b1,c1,o1,o2,o3;

  not (a1, A);
  not (b1, B);
  not (c1, C);
  and (o1, a1, c1);
  and (o2, A, b1);
  and (o3, A, c1);
  or  (Y, o1, o2, o3);

endmodule  // ejercicio1.1


module gateLeveling2(input wire A, B, C, output wire Y);  // ejercicio1.2

  not (Y, B);

endmodule  // ejercicio1.2

//end Gate Level Modeling

module gateLeveling3(input wire A, B, C, D, output wire Y);  // ejercicio1.3

  wire a1,b1,c1,d1,o1,o2,o3,o4,o5,o6,o7,o8;

  not (a1, A);
  not (b1, B);
  not (c1, C);
  not (d1, D);
  and (o1, a1, b1, c1, d1);
  and (o2, A, B, c1, d1);
  and (o3, a1, B, c1, D);
  and (o4, A, b1, c1, D);
  and (o5, a1, b1, C, D);
  and (o6, A, B, C, D);
  and (o7, a1, B, C, d1);
  and (o8, A, b1, C, d1);
  or  (Y, o1, o2, o3, o4, o5, o6, o7, o8);

endmodule  // ejercicio1.3

module gateLeveling4(input wire A, B, C, D, output wire Y);  // ejercicio1.4

  wire d1,o1,o2,o3,o4,o5,o6,o7,o8;

  not (d1, D);
  and (o1, A, d1);
  and (o2, A, C);
  and (o3, A, B);
  or  (Y, o1, o2, o3);

endmodule  // ejercicio1.4

//operadores lógicos

module gates1(input wire a, b, c, d, output wire y1); //ejercicio2.1

  assign y1 = ~b & ~c & ~d |
              a & ~c |
              a & ~d |
              a & ~b ;

endmodule //end ejercicio2.1


module gates2(input wire a, b, c, output wire y1); //ejercicio2.2

  assign y1 = c |
              a |
               ~b ;

endmodule //end ejercicio2.2


module gates3(input wire a, b, c, d, output wire y1); //ejercicio2.3

  assign y1 = ~c & d |
              a & d  |
               ~b ;

endmodule //end ejercicio2.3

module gates4(input wire a, b, c, output wire y1); //ejercicio2.4

  assign y1 = ~c & ~a |
              b ;

endmodule //end ejercicio2.4
//operadores lógicos end

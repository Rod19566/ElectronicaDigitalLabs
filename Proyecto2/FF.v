//Univerrsidad Del Valle
//Electr+onica Digital
//Dina Rodríguez    19566

//Flip flops
// clock (clk), R, Enable (E), ent, sal
module FFD(input wire clk, input wire R, input wire E, input wire D, output reg Q);

  always @(posedge clk or posedge R)
    begin
      if (R) Q <= 1'b0;
      else if (E) Q <= D;
      //else Q <= Q;
    end

endmodule

// Flags
//FFD 2 ents y 2 sals/ 2 bits
module FLAGS(input wire clk, input wire R, input wire E, input wire carry, input wire z, output wire cflag, output wire zflag);
  FFD U1(clk, R, E, carry, cflag);
  FFD U2(clk, R, E, z, zflag);
endmodule

// ACCUMULATOR
// FFD/ 4 bits
module ACCUMULATOR(input wire clk, input wire R, input wire E, input wire [3:0] D, output wire [3:0] Q);
  FFD U1(clk, R, E, D[3], Q[3]);
  FFD U2(clk, R, E, D[2], Q[2]);
  FFD U3(clk, R, E, D[1], Q[1]);
  FFD U4(clk, R, E, D[0], Q[0]);

endmodule

// OUTPUTS
//FFD /4
module OUTPUTS( input wire clk, input wire R, input wire E, input wire [3:0] D, output wire [3:0] Q);
  FFD U1(clk, R, E, D[3], Q[3]);
  FFD U2(clk, R, E, D[2], Q[2]);
  FFD U3(clk, R, E, D[1], Q[1]);
  FFD U4(clk, R, E, D[0], Q[0]);

endmodule

// FETCH
//FFD /8 bits
module FETCH(input wire clk, input wire R, input wire E, input wire [7:0] D, output wire [3:0] instr, output wire [3:0] operando);   // sal oprnd
  FFD U1(clk, R, E, D[7], instr[3]);
  FFD U2(clk, R, E, D[6], instr[2]);
  FFD U3(clk, R, E, D[5], instr[1]);
  FFD U4(clk, R, E, D[4], instr[0]);
  FFD U5(clk, R, E, D[3], operando[3]);
  FFD U6(clk, R, E, D[2], operando[2]);
  FFD U7(clk, R, E, D[1], operando[1]);
  FFD U8(clk, R, E, D[0], operando[0]);

endmodule
//FFD (sin E)
module FFDNE(input wire clk, R, D, output reg Q);
  always @(posedge clk or posedge R)
    begin
      if (R)
        Q <= 1'b0;
      else
        Q <= D;
    end
endmodule

// PHASE
// FFT (sin E)
module FFT(input wire clk, input wire R, output wire Q);
    FFDNE U1(clk, R, ~Q, Q);
endmodule

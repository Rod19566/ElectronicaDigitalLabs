//Univerrsidad Del Valle
//Electr+onica Digital
//Dina Rodríguez    19566

//UP
module uP(input wire clk, input wire R, input wire [3:0] pbs, output wire phase, output wire cflag, output wire zflag, output wire [3:0] instr, output wire [3:0] operando, output wire [3:0] databus, output wire [3:0] FF_out, output wire [3:0] accu, output wire [7:0] programb, output wire [11:0] PC, output wire [11:0] address_RAM );
  //señales decode
  wire incPC, loadPC, loadA, loadF;
  wire [2:0] fun;
  wire csRAM, weRAM, OEALU, OEIn, OEOpr, loadO;

  //salidas
  wire carry, z;
  wire [3:0] alu;

  PCtr U1(clk, R, incPC, loadPC, address_RAM, PC);
  PROM U2(PC, programb);
  FETCH U3(clk, R, ~phase, programb, instr, operando);
  buffer bFetch(OEOpr, operando, databus);
  buffer bALU(OEALU, alu, databus);
  buffer Inputs(OEIn, pbs, databus);
  RAM U4(csRAM, weRAM, operando, programb, databus, address_RAM);
  OUTPUTS U5(clk, R, loadO, databus, FF_out);
  decode U6(phase, zflag, cflag, instr, incPC, loadPC, loadA, loadF, fun, csRAM, weRAM, OEALU, OEIn, OEOpr, loadO);
  ALU U7(accu, databus, fun, carry, z, alu);
  ACCUMULATOR U8(clk, R, loadA, alu, accu);
  FFT Phase(clk, R, phase);
  FLAGS U9(clk, R, loadF, carry, z, cflag, zflag );

endmodule

// Counter
module PCtr(input wire clk,input wire R, input wire E, input wire load, input wire [11:0] D, output reg [11:0] Q);
  always @(posedge clk or posedge R)
    begin
      if (R) Q <= 12'b0;
      else if (load) Q <= D;
      else if (E) Q <= Q+1;
    end
endmodule

// PROGRAM ROM
module PROM( input wire [11:0] dir, output wire [7:0] sal);
  reg[7:0] mem1[0:4095];
  initial begin
    $readmemh("memory.list", mem1);
  end
  assign sal = mem1[dir];

endmodule

module buffer(input Ed, input [3:0] A, output [3:0] Y);
    assign Y = Ed ? A : 4'bz;

endmodule

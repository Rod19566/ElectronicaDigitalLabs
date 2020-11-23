//Univerrsidad Del Valle
//Electr+onica Digital
//Dina Rodríguez    19566

//ALU
 // accumulator , data bus,  funcion - del Decode, carry, Z, salida de la alu
module ALU(input wire [3:0] A, input wire [3:0] B,  input wire [2:0] F, output wire C, Z, output wire [3:0] S);
    reg [4:0] rS;
    always @ (A, B, F)
        case (F)
            3'b000: rS = A;                   // pasa el data 000
            3'b001: rS = A - B;               // comparacion (resta) 001
            3'b010: rS = B;                   // pasa el data bus  010
            3'b011: rS = A + B;               // accumulator + data bus 011
            3'b100: rS = {1'b0 , ~(A & B)};    // NAND  100
            //default: rS = 5'b10101;
        endcase

    assign C = rS[4];     // carry -> bit más significativo
    assign S = rS[3:0];   // salida -> los 4 bits menos significativos
    assign Z = ~(rS[3] | rS[2] | rS[1] | rS[0]);


endmodule

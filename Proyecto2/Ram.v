//Univerrsidad Del Valle
//Electr+onica Digital
//Dina Rodríguez    19566

//RAM
module RAM(input wire chips, input wire ERW, input wire [3:0] operando, input wire [7:0] programb, input wire [3:0] data, output wire [11:0] address);
    assign address = {operando, programb};
    reg [3:0] data_out;
    reg [3:0] mem [0:4095]; // memoria

    assign data = (chips  &&  !ERW) ? data_out : 4'bz;
    // lectura RAM
    always @ (address or chips or ERW)
        begin
            if (chips &&  !ERW)
             data_out = mem[address];
        end

    always @ (address or data or chips or ERW)
        begin
            if ( chips && ERW )
           mem[address] = data;
        end


endmodule

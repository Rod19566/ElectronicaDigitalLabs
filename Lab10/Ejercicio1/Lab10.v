//Univerrsidad Del Valle
//Electr+onica Digital
//Dina Rodríguez    19566
//Lab 10


//Ejercicio #1
module CL(input wire [11:0]d, input wire CLK, L, E, R, output reg [11:0]out);
	always @(posedge CLK or posedge L or posedge R)
		if (R) begin
			out <= 12'b0;
		end else if (L) begin
			out <= d;
		end else if (E) begin
			out <= out + 1;
		end
endmodule



//Memoria ROM
module MRom (input wire [11:0]a, output wire [7:0]d);
	reg [11:0] mem [0:4095] ;

	assign data = mem[a];

initial begin
  $readmemb("memoria.txt", mem);
end

endmodule


//Fetch
module F(input wire CLK, input wire [7:0]da, input wire E, input wire R, output [3:0]Q1, output [3:0]Q);
reg Q;
reg Q1;
wire [3:0]D1;
wire [3:0]D;
assign D[0] = da[1];
assign D[1] = da[3];
assign D[2] = da[5];
assign D[3] = da[7];
assign D1[0] = da[0];
assign D1[1] = da[2];
assign D1[2] = da[4];
assign D1[3] = da[6];

	always @(posedge CLK or posedge E or posedge R)
		if (R) begin
		Q <= 0;
		Q1 <= 0;
	end else if (E) begin
    Q <= D;
		Q1 <= D1;
	end
endmodule


module Eje1(input wire L, CLK, E1, E2, R, input wire [11:0]D, output wire [3:0]Q1, output wire [3:0]Q);
	wire [11:0]CLOUT;
	wire [7:0]MROUT;
	CL O1(D, CLK, L, E1, R, CLOUT);
	MRom O2(CLOUT, MROUT);
	F O3(CLK, MROUT, E2, R, Q1, Q);
endmodule

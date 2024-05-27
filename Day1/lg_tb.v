`timescale 1ns/1ps

module lg_tb;

reg a,b;
wire AND2, OR2, XOR2, NAND2, NOR2, XNOR2;

logic_gates dut(a,b,AND2,OR2,XOR2,NAND2,NOR2,XNOR2);

initial begin
	#10 a=1'b0; b=1'b0;
	#10 a=1'b0; b=1'b1;
	#10 a=1'b1; b=1'b0;
	#10 a=1'b1; b=1'b1;
end

endmodule

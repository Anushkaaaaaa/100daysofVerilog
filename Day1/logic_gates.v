`timescale 1ns/1ps

module logic_gates(
	input a,
	input b,
	output reg AND2,
	output reg OR2,
	output reg XOR2,
	output reg NAND2,
	output reg NOR2,
	output reg XNOR2
);

always@(*) begin
	AND2 <= a && b;
	OR2 <= a || b;
	XOR2 <= a^b;
	NAND2 <= ~(AND2);
	NOR2 <= ~(OR2);
	XNOR2 <= ~(XOR2);
end

endmodule
	
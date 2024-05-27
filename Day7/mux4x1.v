module mux4x1(

	input [2:0] a1,a2,a3,a4,
	input [1:0] sel,
	output reg [2:0]b
);

always@(*)
	begin
		case(sel)
			2'b00 : b = a1;
			2'b01 : b = a2;
			2'b10 : b = a3;
			2'b11 : b = a4;
			default : b = 000;
		endcase
		
	end
endmodule

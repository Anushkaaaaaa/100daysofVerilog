module demux1x4(

	input [2:0] a,
	input [1:0] sel,
	output reg [2:0] b1,b2,b3,b4
	
);

always@(*)
	begin
		case(sel)
			2'b00 : b1 = a;
			2'b01 : b2 = a;
			2'b10 : b3 = a;
			2'b11 : b4 = a;
			default : b1 = 000;
		endcase
	end
endmodule


module sr_ff(

	input S,R,
	input clk,
	input rstn,
	output reg Q
);

//assign q = clk? (s + ((~r) & q)) : q;
//assign qbar = ~q;

always@(posedge clk) begin
	if(~rstn) begin
		Q <= 0;
	end else begin
		case({S,R})
			2'b00 : Q <= Q;
			2'b01 : Q <= 1'b0;
			2'b10 : Q <= 1'b1;
			2'b11 : Q <= 1'bx;
		endcase
	end
end
endmodule

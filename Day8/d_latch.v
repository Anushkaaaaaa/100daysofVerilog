module d_latch(
	input d,en,rstn,
	output reg q
);

always@(en or rstn or d)
	begin
		if(~rstn) begin
			q <= 0;
		end else if(en) begin
			q<=d;
		end
	end
endmodule

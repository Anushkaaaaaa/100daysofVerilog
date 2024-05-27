module half_add_sub(
	input a,b,
	input select, //select = 1 -> add, select = 2->sub
	output reg sum,
	output reg carry
);

always@(*)
	begin
		if (select == 1'b1) begin
			sum = a^b;
			carry = a&&b;
			
		end else begin
			sum = a^b;
			carry = (~a)&&b;
		end
	end
	
endmodule
				

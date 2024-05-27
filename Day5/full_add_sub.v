module full_add_sub(
	input a,b,cin,
	input select, //select = 1 -> add, select = 2->sub
	output reg sum,
	output reg carry
);

always@(*)
	begin
		if (select == 1'b1) begin
			sum = a^b^cin;
			carry = ((a&&b) || (b&&cin) || (a&&cin));
			
		end else begin
			sum = a^b^cin;
			carry = (((~a)&&b) || (b&&cin) || ((~a)&&cin));
		end
	end
	
endmodule

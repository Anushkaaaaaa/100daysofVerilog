module full_tb;

reg a,b,cin,select;
wire sum,carry;

full_add_sub dut(a,b,cin,select,sum,carry);

initial begin
	#10 a = 1'b0; b = 1'b0; cin = 1'b0; select = 1'b0;
	#10 a = 1'b0; b = 1'b0; cin = 1'b1; select = 1'b0;
	#10 a = 1'b0; b = 1'b1; cin = 1'b0; select = 1'b0;
	#10 a = 1'b0; b = 1'b1; cin = 1'b1; select = 1'b0;
	#10 a = 1'b1; b = 1'b0; cin = 1'b0; select = 1'b0;
	#10 a = 1'b1; b = 1'b0; cin = 1'b1; select = 1'b0;
	#10 a = 1'b1; b = 1'b1; cin = 1'b0; select = 1'b0;
	#10 a = 1'b1; b = 1'b1; cin = 1'b1; select = 1'b0;

	#10 a = 1'b0; b = 1'b0; cin = 1'b0; select = 1'b1;
	#10 a = 1'b0; b = 1'b0; cin = 1'b1; select = 1'b1;
	#10 a = 1'b0; b = 1'b1; cin = 1'b0; select = 1'b1;
	#10 a = 1'b0; b = 1'b1; cin = 1'b1; select = 1'b1;
	#10 a = 1'b1; b = 1'b0; cin = 1'b0; select = 1'b1;
	#10 a = 1'b1; b = 1'b0; cin = 1'b1; select = 1'b1;
	#10 a = 1'b1; b = 1'b1; cin = 1'b0; select = 1'b1;
	#10 a = 1'b1; b = 1'b1; cin = 1'b1; select = 1'b1;
	#10;
	
end

endmodule

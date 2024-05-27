module bg_tb;

reg [3:0] b;
wire [3:0] g;

binary2gray dut(b,g);

initial begin
	#10 b = 4'b0100;
	#10 b = 4'b0101;
	#10 b = 4'b1010;
	#10 b = 4'b1111;
end

endmodule

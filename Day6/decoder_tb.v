module decoder_tb;

reg [2:0] a;
wire [7:0] b;

decoder3x8 dut(a,b);

initial begin
	#10 a = 3'b000;
	#10 a = 3'b001;
	#10 a = 3'b010;
	#10 a = 3'b011;
	#10 a = 3'b100;
	#10 a = 3'b101;
	#10 a = 3'b110;
	#10 a = 3'b111;
	#10;
end

endmodule
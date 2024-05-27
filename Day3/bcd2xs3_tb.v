module bcd2xs3_tb;

reg [3:0] bcd;
wire [3:0] excess3;

bcd2xs3 dut(bcd,excess3);

initial begin
	#10 bcd = 4'b0000;
	#10 bcd = 4'b0001;
	#10 bcd = 4'b0010;
	#10 bcd = 4'b0011;
	#10 bcd = 4'b0100;
	#10 bcd = 4'b0101;
	#10 bcd = 4'b0110;
	#10 bcd = 4'b0111;
	#10 bcd = 4'b1000;
	#10 bcd = 4'b1001;
end

endmodule
module demux_tb;

reg [2:0] a;
reg [1:0] sel;
wire [2:0] b1,b2,b3,b4;

demux1x4 dut(a,sel,b1,b2,b3,b4);
initial begin
	#10 a = 3'b111; sel = 2'b00;
	#10 a = 3'b111; sel = 2'b01;
	#10 a = 3'b111; sel = 2'b10;
	#10 a = 3'b111; sel = 2'b11;
	#10;
	
end

endmodule
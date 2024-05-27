module mux_tb;

reg [2:0] a1,a2,a3,a4;
reg [1:0] sel;
wire [2:0] b;


mux4x1 dut(a1,a2,a3,a4,sel,b);

initial begin
	#10 a1=3'b001; a2 = 3'b010; a3 = 3'b100; a4 = 3'b110; sel = 2'b00;
	#10 a1=3'b001; a2 = 3'b010; a3 = 3'b100; a4 = 3'b110; sel = 2'b01;
	#10 a1=3'b001; a2 = 3'b010; a3 = 3'b100; a4 = 3'b110; sel = 2'b10;
	#10 a1=3'b001; a2 = 3'b010; a3 = 3'b100; a4 = 3'b110; sel = 2'b11;
	#10;
end

endmodule

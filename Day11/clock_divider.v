module clock_divider(
	input in1MHZ,
	output reg out125KHZ
);



initial begin
	out125KHZ = 0;
end

reg [2:0] counter = 0;

always@(posedge in1MHZ) begin
	if(!counter) out125KHZ = ~out125KHZ;
	counter = counter +1'b1;
end

endmodule

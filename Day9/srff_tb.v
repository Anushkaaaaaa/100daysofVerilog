module srff_tb;

reg S,R,clk,rstn;
wire Q;

sr_ff dut(S,R,clk,rstn,Q);

initial begin
	clk = 0; rstn = 0;
	#10 rstn = 1;
	forever #2 clk = ~clk;
end

initial begin
	#10 S = 0; R = 0;
	#10 S = 0; R = 1;
	#10 S = 1; R = 0;
	#10 S = 0; R = 0;
	#10 S = 1; R = 1;
	#10;
	$finish ;
end

endmodule
	
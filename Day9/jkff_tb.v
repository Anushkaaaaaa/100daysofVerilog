module jkff_tb;

reg J,K,clk,rstn;
wire Q;

jk_ff dut(J,K,clk,rstn,Q);

initial begin
	clk = 0; rstn = 0;
	#10 rstn = 1;
	forever #2 clk = ~clk;
end

initial begin
	#10 J = 0; K = 0;
	#10 J = 0; K = 1;
	#10 J = 1; K = 0;
	#10 J = 0; K = 0;
	#10 J = 1; K = 1;
	#10;
	$finish ;
end

endmodule
	
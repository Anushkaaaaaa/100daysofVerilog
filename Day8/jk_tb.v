module jk_tb;

reg J,K;
wire Q;

jk_latch dut(J,K,Q);

initial begin
	#10 J = 0; K = 0;
	#10 J = 0; K = 1;
	#10 J = 1; K = 0;
	#10 J = 0; K = 0;
	#10 J = 1; K = 1;
	#10;
end

endmodule
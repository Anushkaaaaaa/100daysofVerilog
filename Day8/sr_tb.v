module sr_tb;

reg S,R;
wire Q,Q_not;

sr_latch dut(S,R,Q,Q_not);

initial begin
	#10 S = 0; R = 0;
	#10 S = 0; R = 1;
	#10 S = 1; R = 0;
	#10 S = 0; R = 0;
	#10 S = 1; R = 1;
	#10;
end

endmodule
	
	
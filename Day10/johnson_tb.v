module johnson_tb;

reg clk, rstn;
wire [3:0] Q,Qn;

johnson_counter dut(clk,rstn,Q,Qn);

always #10 clk <= ~clk;

initial begin
	clk <=1'b0;
	rstn = 1'b0;
	
	#40
	rstn = 1'b1;
end

endmodule
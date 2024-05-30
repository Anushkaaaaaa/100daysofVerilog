module async_tb;

reg clk, rstn;
wire [2:0] Q,Qn;

async_counter dut(clk,rstn,Q,Qn);

always #10 clk <= ~clk;

initial begin
	clk <=1'b0;
	rstn = 1'b0;
	
	#40
	rstn = 1'b1;
end

endmodule
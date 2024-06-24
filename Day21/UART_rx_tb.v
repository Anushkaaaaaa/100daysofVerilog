module UART_rx_tb;
reg clk;
reg rx;
wire [7:0] data;
wire rx_recieved;

UART_rx dut(clk, rx, data, rx_recieved);

initial clk = 0;
always #2 clk = ~clk;

initial begin
	#100 rx = 0;
	#1735 rx = 1;
	#1735 rx = 0;
	#1735 rx = 1;
	#1735 rx = 0;
	#1735 rx = 1;
	#1735 rx = 0;
	#1735 rx = 1;
	#1735 rx = 1;
	#50;
	$finish;
end

endmodule
	
	
	
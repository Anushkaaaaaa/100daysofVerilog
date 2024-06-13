module UART_tb; //non overlapping
  reg clk;
  reg [7:0] data;
  wire tx;
  
  UART_tx dut(clk, data, tx);
  initial clk = 0;   
  always #2 clk = ~clk;
  
  initial begin
	  data = 8'b01101001;
	  #18000;
	  $finish;
  end

endmodule
  
	
    
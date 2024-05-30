module DFlipFlop_tb;

reg clk,rstn,D;
wire Q;
reg [2:0] delay;  
reg [1:0] delay2;  
integer i;

DFlipFlop dut(clk,rstn,D,Q);


initial begin
	clk = 0; rstn = 0;
	#10 rstn = 1;
	forever #2 clk = ~clk;
end

initial begin
   for (i = 0; i < 5; i=i+1) begin  
		delay = $random;      
      #(delay) D <= i;  
	end
	#100 $finish;
end

endmodule
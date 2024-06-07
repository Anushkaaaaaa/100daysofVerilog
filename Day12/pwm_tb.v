module pwm_tb;
	reg clk1MHZ;
	reg [3:0] duty_cycle;
	wire pwm_signal;
	
pwm_generator dut(clk1MHZ,duty_cycle, pwm_cycle);

initial begin
	clk1MHZ = 0;
	forever #5 clk1MHZ = ~clk1MHZ;
end

initial begin
	duty_cycle = 0001;
	#160 duty_cycle = 0010;
	#160 duty_cycle = 0010;
	#160 duty_cycle = 0011;
	#160 duty_cycle = 0100;
	#160 duty_cycle = 0101;
	#160 duty_cycle = 0110;
	#160 duty_cycle = 0111;
	#160 duty_cycle = 1000;
	#160 duty_cycle = 1001;
	#160 duty_cycle = 1010;
	#160 duty_cycle = 1011;
	#160 duty_cycle = 1100;
	#160 duty_cycle = 1101;
	#160 duty_cycle = 1110;
	#160 duty_cycle = 1111;
	#100 $finish;
end

endmodule
	
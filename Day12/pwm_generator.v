module pwm_generator(
	input clk1MHZ,
	input [3:0] duty_cycle,
	output reg pwm_signal
);

initial begin
	pwm_signal = 1;
end

reg [3:0] counter = 0;

always@(posedge clk1MHZ) begin
	if(counter<duty_cycle) begin
		pwm_signal = 1'b1;
		
	end else begin
		pwm_signal = 1'b0;
	end
	counter = counter + 1;
	
end

endmodule

		

	
module universal_tb;

reg [3:0] I;
reg [1:0] S;
reg clk;
reg rstn;
reg serial_in_right;
reg serial_in_left;
wire [3:0] out;

universal_shift_register dut(I,S,clk,serial_in_right,serial_in_left,rstn,out);

always #2 clk = ~clk;

initial begin
	clk = 0;
	rstn = 0;
	#3 rstn = 1;
	
	I = 4'b1101;
	serial_in_left = 1'b1;
	serial_in_right = 1'b0;
	
	S = 2'b11; #10;
	S = 2'b01; #20;
	
	I = 4'b1101;
	S = 2'b11; #10;
	S = 2'b10; #20;
	S = 2'b00; #20;
	
	$finish;
end

endmodule

	
	
	
	
module ALU(
	input [7:0] a,
	input [7:0] b,
	input [3:0] select,
	input clk,
	output reg carry,
	output reg zero,
	output reg [15:0] y
);


reg [7:0] ain, bin;
reg c,z;
reg [15:0] out;
reg [3:0] s;

initial begin
	y = 0;
	carry = 0;
	zero = 0;
end



always @(posedge clk) begin
	ain <= a;
	bin<=b;
	c <= carry;
	z<= zero;
	out<= y;
	s <= select;
end

always@(ain,bin,s) begin
	case(select)
		4'd0 : begin //add
			out = {8'd0, ain+bin};
			c = out[8];
		end
		4'd1 : begin//sub
			out = {8'd0, ain-bin};
			c = out[8];
		end
		4'd2 : begin //mul
			out = (ain*bin);
		end
		4'd3 : begin //div
			out = (ain/bin);
		end
		4'd4 : begin //increment a
			out = {8'd0, ain + 1'b1};
			c = out[8];
		end
		4'd5 : begin // decrement
			out = {8'd0, ain - 1'b1};
			c = out[8];
		end
		4'd6 : begin // bitwise AND
			out = {8'd0, ain & bin};
		end
		4'd7 : begin //bitwise OR
			out = {8'd0, ain | bin};
		end
		4'd8 : begin //bitwise xor
			out  = {8'd0, (ain ^ bin)};
		end
		4'd9 : begin //bitwise nand
			out  = {8'd0, ~(ain & bin)};
		end
		4'd10 : begin //bitwise nor
			out  = {8'd0, ~(ain | bin)};
		end
		4'd11 : begin //bitwise xnor
			out  = {8'd0, ~(ain ^ bin)};
		end
		4'd12 : begin //shift right
			c = ain[0];
			out = {8'd0, ain>>1};
		end
		4'd13 : begin //shift left
			c = ain[7];
			out = {8'd0, ain<<1};
		end
		4'd14 : begin //rotate right
			out = {8'd0, a[0], a[7:1]};
		end
		4'd15 : begin //rotate left
			out = {8'd0, a[6:0], a[7]};
		end
		default : out = 16'd0;
	endcase
	
end

endmodule
		
		
		
		
		
			

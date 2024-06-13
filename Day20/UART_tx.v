module UART_tx(
	input clk, //50MHz
	input [7:0] data,
	output reg tx
);

//baud rate 115200 => 8680ns

reg [8:0] counter ;
parameter start = 4'd0;
parameter d1 = 4'd1;
parameter d2 = 4'd2;
parameter d3 = 4'd3;
parameter d4 = 4'd4;
parameter d5 = 4'd5;
parameter d6 = 4'd6;
parameter d7 = 4'd7;
parameter d8 = 4'd8;
parameter stop = 4'd9;

reg [3:0] state = start;

initial begin
	tx = 0;
	counter = 0;
end

always@(posedge clk) begin
	case(state)
		start: begin
			if (counter < 9'd433) begin
				counter <= counter + 1;
				tx <= 0;
			end else begin
				counter <= 0;
				state <= d1;
			end
		end
		
		d1: begin
			if (counter < 9'd433) begin
				counter <= counter + 1;
				tx <= data[0];
			end else begin
				counter = 0;
				state <= d2;
			end
		end
		
		d2: begin
			if (counter < 9'd433) begin
				counter <= counter + 1;
				tx <= data[1];
			end else begin
				counter = 0;
				state <= d3;
			end
		end

		d3: begin
			if (counter < 9'd433) begin
				counter <= counter + 1;
				tx <= data[2];
			end else begin
				counter = 0;
				state <= d4;
			end
		end
		d4: begin
			if (counter < 9'd433) begin
				counter <= counter + 1;
				tx <= data[3];
			end else begin
				counter = 0;
				state <= d5;
			end
		end
		d5: begin
			if (counter < 9'd433) begin
				counter <= counter + 1;
				tx <= data[4];
			end else begin
				counter = 0;
				state <= d6;
			end
		end
		d6: begin
			if (counter < 9'd433) begin
				counter = counter + 1;
				tx <= data[5];
			end else begin
				counter = 0;
				state <= d7;
			end
		end
		d7: begin
			if (counter < 9'd433) begin
				counter <= counter + 1;
				tx <= data[6];
			end else begin
				counter = 0;
				state <= d8;
			end
		end
		d8: begin
			if (counter < 9'd433) begin
				counter <= counter + 1;
				tx <= data[7];
			end else begin
				counter = 0;
				state <= stop;
			end
		end
		stop: begin
			if (counter != 9'd434) begin
				counter <= counter + 1;
				tx <= 1;
			end else begin
				counter = 0;
				state <= start;
			end
		end
		default: begin
			state <= start;
			counter <= 0;
		end
	endcase
end

endmodule

	
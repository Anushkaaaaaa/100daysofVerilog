module mealy1( //non overlapping
	input clk,
	input rstn,
	input din,
	output reg dout
);

parameter S0 = 3'd0;
parameter S1 = 3'd1;
parameter S2 = 3'd2;
parameter S3 = 3'd3;
parameter S4 = 3'd4;
parameter S5 = 3'd5;

reg [2:0] state = S0;

always@(posedge clk or posedge rstn) begin
	if (rstn) begin
		dout <= 1'b0;
		state <= S0;
	end else begin
		case(state)
			S0: begin
				if(din) begin
					dout <= 0;
					state <= S1;
				end else begin
					dout <= 0;
					state<=S0;
				end
			end
			S1: begin
				if(din) begin
					dout <= 0;
					state <= S1;
				end else begin
					dout <= 0;
					state<=S2;
				end
			end
			S2: begin
				if(din) begin
					dout <= 0;
					state <= S3;
				end else begin
					dout <= 0;
					state<=S0;
				end
			end
			S3: begin
				if(din) begin
					dout <= 0;
					state <= S1;
				end else begin
					dout <= 0;
					state<=S4;
				end
			end
			S4: begin
				if(din) begin
					dout <= 1;
					state <= S5;
				end else begin
					dout <= 0;
					state<=S0;
				end
			end
			S5: begin
				if(din) begin
					dout <= 0;
					state <= S1;
				end else begin
					dout <= 0;
					state<=S0;
				end
			end
		endcase
	end
end

endmodule

			
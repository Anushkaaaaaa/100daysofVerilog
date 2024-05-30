module DFlipFlop(
	input clk,rstn,
	input D,
	output reg Q
);
//asynchronous reset
//
//always @ (posedge clk or negedge reset)
//    if (~reset)
//      q <= 1'b0;
//    else
//      q <= data;
//

//synchronous reset
always@(posedge clk) begin
	if(~rstn) begin
		Q<=0;
	end else begin
		Q<=D;
	end
end
endmodule 
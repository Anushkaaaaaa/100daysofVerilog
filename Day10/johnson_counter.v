module johnson_counter(

	input clk,rstn,
	input [3:0] Q, Qn
);

DFlipFlop d1(clk, rstn, Qn[3],Q[0], Qn[0]);
DFlipFlop d2(clk, rstn, Q[0],Q[1], Qn[1]);
DFlipFlop d3(clk, rstn, Q[1],Q[2], Qn[2]);
DFlipFlop d4(clk, rstn, Q[2],Q[3], Qn[3]);

endmodule


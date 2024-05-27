module gray2binary(
	input [0:3] g,
	output [0:3]b
);

//b[n-1] = b[n] xor g[n-1]

assign b[3] = b[3];
assign b[2] = b[3]^g[2];
assign b[1] = b[2]^g[1];
assign b[0] = b[1]^g[0];

endmodule
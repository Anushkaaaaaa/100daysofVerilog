module binary2gray(
	input [3:0] b,
	output [3:0]g
);

//g[n-1] = b[n] xor b[n-1]

assign g[3] = b[3];
assign g[2] = b[3]^b[2];
assign g[1] = b[2]^b[1];
assign g[0] = b[1]^b[0];

endmodule



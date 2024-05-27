module bcd2xs3(
	input [3:0] bcd,
	output [3:0]excess3
);

assign excess3[3] = (bcd[3] || (bcd[2] && bcd[1]) || (bcd[2] && bcd[0]));
assign excess3[2] = (((~bcd[2])&&bcd[1]) || ((~bcd[2])&&bcd[0]) || ((bcd[2]&&(~bcd[1]))&&(~bcd[0])));
assign excess3[1] = ((bcd[1] && bcd[0]) || ((~bcd[1]) && (~bcd[0])));
assign excess3[0] = (~bcd[0]);

endmodule


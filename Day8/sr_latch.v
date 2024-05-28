module sr_latch(
	input S,R,
	output wire Q,
	output wire Q_not
);

assign Q = ~(R || Q_not);
assign Q_not = ~(S || Q);

endmodule

// s   r   Q          Q_not
// 0   0   Q(t-1)     Q_not(t-1)
// 0   1   0           1
// 1   0   1           0
// 1   1   0           0
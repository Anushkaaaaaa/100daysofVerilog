module universal_shift_register(
	input [3:0] I,
	input [1:0] S,
	input clk,
	input serial_in_right,
	input serial_in_left,
	input rstn,
	output [3:0] out
);

//S1=0, S0=0 : no operation
//S1 = 0, S0=1 : Shift right
//S1 = 1, S0=0 : Shift left
//S1 = 1, S0=1 : parallel load

wire p1,p2,p3,p4;
wire [3:0] outn;

mux4x1_1bit M1(out[3],serial_in_right,out[2] , I[3],S,p1);
mux4x1_1bit M2(out[2],out[3],out[1] , I[2],S,p2);
mux4x1_1bit M3(out[1],out[2] ,out[0] , I[1],S,p3);
mux4x1_1bit M4(out[0],out[1] ,serial_in_left , I[0],S,p4);

DFlipFlop D1(clk,rstn,p1,out[3],outn[3]);
DFlipFlop D2(clk,rstn,p2,out[2],outn[2]);
DFlipFlop D3(clk,rstn,p3,out[1],outn[1]);
DFlipFlop D4(clk,rstn,p4,out[0],outn[0]);

endmodule



module async_counter(

 input clk,
 input rstn,
 output [2:0] Q,Qn  //Q -> up, Qn -> down
);



DFlipFlop d1(clk, rstn, Qn[0], Q[0], Qn[0]);
DFlipFlop d2(Qn[0],rstn, Qn[1], Q[1], Qn[1]);
DFlipFlop d3(Qn[1],rstn,Qn[2], Q[2], Qn[2]);

endmodule




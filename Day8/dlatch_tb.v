module dlatch_tb;

reg d,en,rstn;
wire q;
reg [2:0] delay;  
reg [1:0] delay2;  
integer i;

d_latch dut(d,en,rstn,q);

initial begin
	d <= 0;  
   en <= 0;  
   rstn <= 0;  
  
   // Release reset  
   #10 rstn <= 1;  
  
   //  Randomly change d and enable  
   for (i = 0; i < 5; i=i+1) begin  
		delay = $random;  
      delay2 = $random;  
      #(delay2) en <= ~en;  
      #(delay) d <= i;  
	end  
  end  
endmodule  
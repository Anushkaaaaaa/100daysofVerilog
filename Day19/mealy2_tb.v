module mealy2_tb; //non overlapping
  reg clk, rstn, x;
  wire z;
  
  mealy2 dut(clk, rstn, x, z);
  initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    x = 0;
    #1 rstn = 1;
    #2 rstn = 0;
    
    #3 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #10;
    $finish;
  end
  

endmodule
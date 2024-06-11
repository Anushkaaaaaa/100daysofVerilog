module ALU_tb;
reg clk;
reg [7:0] A, B;
reg [3:0] select;
wire [15:0] y;
wire carry, zero;

ALU dut(clk, A, B, select, y, carry, zero);

// Initialize Input pins with 0
initial begin
    A = 0; B = 0; select = 0; clk = 0;
end

always begin // Generate a clock of period 10 units
    clk = ~clk ;#5;
end

initial begin
    #50;
    A = 8'b11101110; // Initialize 8bit input value for a & b.
    B = 8'b11101110; #29;
    // Initialize 's' value to perform different operations .

    select = 4'b0000; #30
select = 4'b0001; #30;
    select = 4'b0010; #30;
    select = 4'b0011; #30;
    select = 4'b0100; #30;
    select = 4'b0101; #30;
    select = 4'b0110; #30;
    select = 4'b0111; #30;
    select = 4'b1000; #30;
    select = 4'b1001; #30;
    select = 4'b1010; #30;
    select = 4'b1011; #30;
    select = 4'b1100; #30;
    select = 4'b1101; #30;
    select = 4'b1110; #30;
    #10; $stop;
end // End of initial block

endmodule // End of module .

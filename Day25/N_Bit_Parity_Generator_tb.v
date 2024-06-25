module N_Bit_Parity_Generator_tb;

parameter N_Bits = 7;
reg [N_Bits-1 : 0] DataInput;
wire OddParity;
wire EvenParity;
integer i;
	
N_Bit_Parity_Generator dut( .DataInput(DataInput), .OddParity(OddParity), .EvenParity(EvenParity));

initial
begin
{DataInput} = 0;
#10;
for(i = 0; i<30; i =i+1)
begin
{DataInput} = $random;
#10;
end
end


endmodule
module fifo #(
    parameter WIDTH = 4,
    parameter DEPTH = 4
)(
    input [WIDTH-1:0] data_in,
    input wire clk,
    input wire write,
    input wire read,
    output reg [WIDTH-1:0] data_out,
    output wire fifo_full,
    output wire fifo_empty,
    output wire fifo_not_empty,
    output wire fifo_not_full
);


    reg [WIDTH-1:0] memory [0:DEPTH-1];

    reg [$clog2(DEPTH)-1:0] write_ptr;
    reg [$clog2(DEPTH)-1:0] read_ptr;

    initial begin
    
        write_ptr = 0;
        read_ptr = 0;

        
        if ( WIDTH <= 0 ) begin
            $error("%m ** Illegal condition **, you used %d WIDTH", WIDTH);
        end
       
        if ( DEPTH <= 0) begin
            $error("%m ** Illegal condition **, you used %d DEPTH", DEPTH);
        end

    end

    assign fifo_empty   = ( write_ptr == read_ptr ) ? 1'b1 : 1'b0;
    assign fifo_full    = ( write_ptr == (DEPTH-1) ) ? 1'b1 : 1'b0;
    assign fifo_not_empty = ~fifo_empty;
    assign fifo_not_full = ~fifo_full;

    always @ (posedge clk) begin

        if ( write ) begin
            memory[write_ptr] <= data_in;
        end

        if ( read ) begin
            data_out <= memory[read_ptr];
        end

    end

    always @ ( posedge clk ) begin
        if ( write ) begin
            write_ptr <= write_ptr + 1;
        end

        if ( read && fifo_not_empty ) begin
            read_ptr <= read_ptr + 1;
        end
    end

endmodule
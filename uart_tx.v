`timescale 1ns/1ps
// 8-N-1 UART transmitter.
// Sends one byte whenever tx_start is pulsed for one clock.
module uart_tx #(
    parameter integer CLKS_PER_BIT = 868
)(
    input  wire       clk,
    input  wire       reset,
    input  wire [7:0] data_in,
    input  wire       tx_start,
    output reg        tx,
    output reg        busy
);
    localparam IDLE=2'd0, START=2'd1, DATA=2'd2, STOP=2'd3;
    reg [1:0] state;
    integer clk_count;
    reg [2:0] bit_index;
    reg [7:0] data_reg;

    always @(posedge clk) begin
        if (reset) begin
            state <= IDLE;
            clk_count <= 0;
            bit_index <= 0;
            data_reg <= 8'd0;
            tx <= 1'b1;
            busy <= 1'b0;
        end else begin
            case (state)
                IDLE: begin
                    tx <= 1'b1;
                    busy <= 1'b0;
                    clk_count <= 0;
                    bit_index <= 0;
                    if (tx_start) begin
                        data_reg <= data_in;
                        busy <= 1'b1;
                        state <= START;
                    end
                end
                START: begin
                    tx <= 1'b0;
                    if (clk_count == CLKS_PER_BIT-1) begin
                        clk_count <= 0;
                        state <= DATA;
                    end else clk_count <= clk_count + 1;
                end
                DATA: begin
                    tx <= data_reg[bit_index];
                    if (clk_count == CLKS_PER_BIT-1) begin
                        clk_count <= 0;
                        if (bit_index == 3'd7) begin
                            bit_index <= 0;
                            state <= STOP;
                        end else bit_index <= bit_index + 1'b1;
                    end else clk_count <= clk_count + 1;
                end
                STOP: begin
                    tx <= 1'b1;
                    if (clk_count == CLKS_PER_BIT-1) begin
                        clk_count <= 0;
                        state <= IDLE;
                    end else clk_count <= clk_count + 1;
                end
                default: state <= IDLE;
            endcase
        end
    end
endmodule

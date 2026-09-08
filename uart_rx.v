`timescale 1ns/1ps
// 8-N-1 UART receiver.
// For 50 MHz FPGA clock and 115200 baud: CLKS_PER_BIT ≈ 434.
// For 100 MHz: ≈ 868.
module uart_rx #(
    parameter integer CLKS_PER_BIT = 868
)(
    input wire clk,
    input wire reset,
    input wire rx,
    output reg [7:0] data_out,
    output reg data_valid
);
localparam IDLE=2'd0, START=2'd1, DATA=2'd2, STOP=2'd3;
reg [1:0] state;
integer clk_count;
reg [2:0] bit_index;

always @(posedge clk) begin
    if (reset) begin
        state <= IDLE;
        clk_count <= 0;
        bit_index <= 0;
        data_out <= 8'd0;
        data_valid <= 1'b0;
    end else begin
        data_valid <= 1'b0;
        case(state)
            IDLE: begin
                clk_count <= 0;
                bit_index <= 0;
                if (rx == 1'b0) state <= START;
            end
            START: begin
                if (clk_count == (CLKS_PER_BIT-1)/2) begin
                    if (rx == 1'b0) begin
                        clk_count <= 0;
                        state <= DATA;
                    end else state <= IDLE;
                end else clk_count <= clk_count + 1;
            end
            DATA: begin
                if (clk_count == CLKS_PER_BIT-1) begin
                    clk_count <= 0;
                    data_out[bit_index] <= rx;
                    if (bit_index == 3'd7) begin
                        bit_index <= 0;
                        state <= STOP;
                    end else bit_index <= bit_index + 1;
                end else clk_count <= clk_count + 1;
            end
            STOP: begin
                if (clk_count == CLKS_PER_BIT-1) begin
                    clk_count <= 0;
                    data_valid <= 1'b1;
                    state <= IDLE;
                end else clk_count <= clk_count + 1;
            end
            default: state <= IDLE;
        endcase
    end
end
endmodule

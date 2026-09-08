`timescale 1ns/1ps
// Nexys A7-100T board wrapper.
// UART_RXD_OUT: PC -> FPGA feature packet input.
// UART_TXD_IN : FPGA -> PC result output.
// LED[0] = last prediction (1=P, 0=NP)
// LED[1] = prediction_valid pulse indicator (stretched)
// LED[2] = UART result transmitter busy
// BTNC is an active-high synchronous reset.
module nexys_a7_top #(
    parameter integer CLKS_PER_BIT = 868
)(
    input  wire       CLK100MHZ,
    input  wire       BTNC,
    input  wire       UART_RXD_OUT,
    output wire       UART_TXD_IN,
    output wire [2:0] LED
);
    wire prediction;
    wire prediction_valid;
    wire signed [39:0] total_score;

    top_module #(.CLKS_PER_BIT(CLKS_PER_BIT)) core (
        .clk(CLK100MHZ),
        .reset(BTNC),
        .uart_rx_in(UART_RXD_OUT),
        .prediction(prediction),
        .prediction_valid(prediction_valid),
        .total_score(total_score)
    );

    reg [23:0] valid_hold;
    reg tx_start;
    reg [7:0] tx_data;
    wire tx_busy;

    uart_tx #(.CLKS_PER_BIT(CLKS_PER_BIT)) tx0 (
        .clk(CLK100MHZ),
        .reset(BTNC),
        .data_in(tx_data),
        .tx_start(tx_start),
        .tx(UART_TXD_IN),
        .busy(tx_busy)
    );

    // Return one ASCII result byte to the PC after every prediction.
    // P = 0x50, NP = 0x4E. The receiver can therefore log predictions easily.
    always @(posedge CLK100MHZ) begin
        if (BTNC) begin
            valid_hold <= 24'd0;
            tx_start <= 1'b0;
            tx_data <= 8'h00;
        end else begin
            tx_start <= 1'b0;
            if (prediction_valid) begin
                valid_hold <= 24'hFFFFFF;
                if (!tx_busy) begin
                    tx_data <= prediction ? 8'h50 : 8'h4E;
                    tx_start <= 1'b1;
                end
            end else if (valid_hold != 0) begin
                valid_hold <= valid_hold - 1'b1;
            end
        end
    end

    assign LED[0] = prediction;
    assign LED[1] = (valid_hold != 0);
    assign LED[2] = tx_busy;
endmodule

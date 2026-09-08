`timescale 1ns/1ps
// Top-level IVF FPGA inference block.
// UART receives 16 bytes = 8 features x 16-bit signed Q8.8.
// Byte order per feature: HIGH byte first, then LOW byte.
// After byte 15 is received, prediction_valid pulses for one clock.
// prediction: 1 = P, 0 = NP.
module top_module #(
    parameter integer CLKS_PER_BIT = 868
)(
    input wire clk,
    input wire reset,
    input wire uart_rx_in,
    output wire prediction,
    output wire prediction_valid,
    output wire signed [39:0] total_score
);
wire [7:0] rx_data;
wire rx_valid;
reg [4:0] byte_count;
reg signed [15:0] f0,f1,f2,f3,f4,f5,f6,f7;
reg pred_valid_reg;

uart_rx #(.CLKS_PER_BIT(CLKS_PER_BIT)) uart(
    .clk(clk), .reset(reset), .rx(uart_rx_in),
    .data_out(rx_data), .data_valid(rx_valid)
);

always @(posedge clk) begin
    if (reset) begin
        byte_count <= 0;
        f0<=0; f1<=0; f2<=0; f3<=0;
        f4<=0; f5<=0; f6<=0; f7<=0;
        pred_valid_reg <= 1'b0;
    end else begin
        pred_valid_reg <= 1'b0;
        if (rx_valid) begin
            case(byte_count)
                5'd0:  f0[15:8] <= rx_data;
                5'd1:  f0[7:0]  <= rx_data;
                5'd2:  f1[15:8] <= rx_data;
                5'd3:  f1[7:0]  <= rx_data;
                5'd4:  f2[15:8] <= rx_data;
                5'd5:  f2[7:0]  <= rx_data;
                5'd6:  f3[15:8] <= rx_data;
                5'd7:  f3[7:0]  <= rx_data;
                5'd8:  f4[15:8] <= rx_data;
                5'd9:  f4[7:0]  <= rx_data;
                5'd10: f5[15:8] <= rx_data;
                5'd11: f5[7:0]  <= rx_data;
                5'd12: f6[15:8] <= rx_data;
                5'd13: f6[7:0]  <= rx_data;
                5'd14: f7[15:8] <= rx_data;
                5'd15: begin
                    f7[7:0] <= rx_data;
                    pred_valid_reg <= 1'b1;
                end
                default: ;
            endcase
            if (byte_count == 5'd15) byte_count <= 0;
            else byte_count <= byte_count + 1'b1;
        end
    end
end

gbdt_inference model(
    .f0(f0),.f1(f1),.f2(f2),.f3(f3),
    .f4(f4),.f5(f5),.f6(f6),.f7(f7),
    .total_score(total_score),
    .prediction(prediction)
);

assign prediction_valid = pred_valid_reg;
endmodule

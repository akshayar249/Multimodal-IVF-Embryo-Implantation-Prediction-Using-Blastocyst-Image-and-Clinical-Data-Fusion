`timescale 1ns/1ps
// Score aggregation. Each tree output is signed Q16.16.
// The final XGBoost margin is the sum of all 25 tree outputs.
// Because base_score=0.5, the initial margin is zero.
// prediction=1 (P) when margin >= 0, else 0 (NP).
module vote_aggregation (
    input signed [31:0] tree0,
    input signed [31:0] tree1,
    input signed [31:0] tree2,
    input signed [31:0] tree3,
    input signed [31:0] tree4,
    input signed [31:0] tree5,
    input signed [31:0] tree6,
    input signed [31:0] tree7,
    input signed [31:0] tree8,
    input signed [31:0] tree9,
    input signed [31:0] tree10,
    input signed [31:0] tree11,
    input signed [31:0] tree12,
    input signed [31:0] tree13,
    input signed [31:0] tree14,
    input signed [31:0] tree15,
    input signed [31:0] tree16,
    input signed [31:0] tree17,
    input signed [31:0] tree18,
    input signed [31:0] tree19,
    input signed [31:0] tree20,
    input signed [31:0] tree21,
    input signed [31:0] tree22,
    input signed [31:0] tree23,
    input signed [31:0] tree24,
    output reg signed [39:0] total_score,
    output reg prediction
);
always @* begin
    total_score =
                  { {8{tree0[31]}}, tree0 } +
                  { {8{tree1[31]}}, tree1 } +
                  { {8{tree2[31]}}, tree2 } +
                  { {8{tree3[31]}}, tree3 } +
                  { {8{tree4[31]}}, tree4 } +
                  { {8{tree5[31]}}, tree5 } +
                  { {8{tree6[31]}}, tree6 } +
                  { {8{tree7[31]}}, tree7 } +
                  { {8{tree8[31]}}, tree8 } +
                  { {8{tree9[31]}}, tree9 } +
                  { {8{tree10[31]}}, tree10 } +
                  { {8{tree11[31]}}, tree11 } +
                  { {8{tree12[31]}}, tree12 } +
                  { {8{tree13[31]}}, tree13 } +
                  { {8{tree14[31]}}, tree14 } +
                  { {8{tree15[31]}}, tree15 } +
                  { {8{tree16[31]}}, tree16 } +
                  { {8{tree17[31]}}, tree17 } +
                  { {8{tree18[31]}}, tree18 } +
                  { {8{tree19[31]}}, tree19 } +
                  { {8{tree20[31]}}, tree20 } +
                  { {8{tree21[31]}}, tree21 } +
                  { {8{tree22[31]}}, tree22 } +
                  { {8{tree23[31]}}, tree23 } +
                  { {8{tree24[31]}}, tree24 };
    prediction = (total_score >= 0);
end
endmodule

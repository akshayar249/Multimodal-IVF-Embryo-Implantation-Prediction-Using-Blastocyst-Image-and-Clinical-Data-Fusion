`timescale 1ns/1ps
// AUTO-GENERATED from gardner_pnp_model(2).json
// XGBoost binary classifier: 25 trees, max_depth=4.
// Feature representation: signed 16-bit decimal fixed-point, value*100.
// Example: 5.05 -> 505, 0.50 -> 50, 38 -> 3800.
// Tree-score representation: signed 32-bit Q16.16, value*65536.
// XGBoost JSON leaf weights are used directly; learning_rate is NOT
// multiplied again because the saved model already contains the shrunken
// tree contributions.
module tree_traversal #(
    parameter integer TREE_ID = 0
)(
    input signed [15:0] f0, input signed [15:0] f1,
    input signed [15:0] f2, input signed [15:0] f3,
    input signed [15:0] f4, input signed [15:0] f5,
    input signed [15:0] f6, input signed [15:0] f7,
    output reg signed [31:0] tree_score
);
integer node, step;
reg is_leaf;
reg signed [31:0] leaf;
always @* begin
    node=0; leaf=32'sd0; is_leaf=1'b0;
    for(step=0; step<4; step=step+1) begin
        if(!is_leaf) begin
            case(TREE_ID)

                0: begin
                    case(node)
                        0: begin if(f2 < 16'sd100) node=1; else node=2; end
                        1: begin if(f0 < 16'sd505) node=3; else node=4; end
                        2: begin if(f0 < 16'sd505) node=5; else node=6; end
                        3: begin if(f0 < 16'sd504) node=7; else node=8; end
                        4: begin if(f0 < 16'sd511) node=9; else node=10; end
                        5: begin if(f0 < 16'sd504) node=11; else node=12; end
                        6: begin if(f0 < 16'sd506) node=13; else node=14; end
                        7: begin if(f3 < 16'sd148) node=15; else node=16; end
                        8: begin if(f3 < 16'sd34) node=17; else node=18; end
                        9: begin leaf=32'shFFFFE6FB; is_leaf=1'b1; end
                        10: begin if(f4 < 16'sd3800) node=19; else node=20; end
                        11: begin if(f5 < 16'sd3500) node=21; else node=22; end
                        12: begin if(f3 < 16'sd2369) node=23; else node=24; end
                        13: begin if(f5 < 16'sd4400) node=25; else node=26; end
                        14: begin if(f4 < 16'sd3836) node=27; else node=28; end
                        15: begin leaf=32'shFFFFF605; is_leaf=1'b1; end
                        16: begin leaf=32'sh000008A2; is_leaf=1'b1; end
                        17: begin leaf=32'sh00000511; is_leaf=1'b1; end
                        18: begin leaf=32'sh0000178B; is_leaf=1'b1; end
                        19: begin leaf=32'shFFFFEC91; is_leaf=1'b1; end
                        20: begin leaf=32'shFFFFFCC4; is_leaf=1'b1; end
                        21: begin leaf=32'sh00000530; is_leaf=1'b1; end
                        22: begin leaf=32'shFFFFF2D4; is_leaf=1'b1; end
                        23: begin leaf=32'sh000017FF; is_leaf=1'b1; end
                        24: begin leaf=32'sh00000381; is_leaf=1'b1; end
                        25: begin leaf=32'shFFFFE914; is_leaf=1'b1; end
                        26: begin leaf=32'sh00000381; is_leaf=1'b1; end
                        27: begin leaf=32'shFFFFFEA2; is_leaf=1'b1; end
                        28: begin leaf=32'sh00000927; is_leaf=1'b1; end
                    endcase
                end
                1: begin
                    case(node)
                        0: begin if(f2 < 16'sd100) node=1; else node=2; end
                        1: begin if(f0 < 16'sd505) node=3; else node=4; end
                        2: begin if(f0 < 16'sd505) node=5; else node=6; end
                        3: begin if(f0 < 16'sd504) node=7; else node=8; end
                        4: begin if(f0 < 16'sd511) node=9; else node=10; end
                        5: begin if(f0 < 16'sd504) node=11; else node=12; end
                        6: begin if(f0 < 16'sd506) node=13; else node=14; end
                        7: begin if(f3 < 16'sd148) node=15; else node=16; end
                        8: begin if(f3 < 16'sd34) node=17; else node=18; end
                        9: begin leaf=32'shFFFFE826; is_leaf=1'b1; end
                        10: begin if(f4 < 16'sd3800) node=19; else node=20; end
                        11: begin if(f5 < 16'sd3500) node=21; else node=22; end
                        12: begin if(f3 < 16'sd2369) node=23; else node=24; end
                        13: begin if(f5 < 16'sd4400) node=25; else node=26; end
                        14: begin if(f4 < 16'sd3836) node=27; else node=28; end
                        15: begin leaf=32'shFFFFF682; is_leaf=1'b1; end
                        16: begin leaf=32'sh0000083C; is_leaf=1'b1; end
                        17: begin leaf=32'sh000004DB; is_leaf=1'b1; end
                        18: begin leaf=32'sh00001681; is_leaf=1'b1; end
                        19: begin leaf=32'shFFFFED7C; is_leaf=1'b1; end
                        20: begin leaf=32'shFFFFFCEC; is_leaf=1'b1; end
                        21: begin leaf=32'sh000004EE; is_leaf=1'b1; end
                        22: begin leaf=32'shFFFFF375; is_leaf=1'b1; end
                        23: begin leaf=32'sh000016DC; is_leaf=1'b1; end
                        24: begin leaf=32'sh00000367; is_leaf=1'b1; end
                        25: begin leaf=32'shFFFFEA29; is_leaf=1'b1; end
                        26: begin leaf=32'sh00000367; is_leaf=1'b1; end
                        27: begin leaf=32'shFFFFFEB3; is_leaf=1'b1; end
                        28: begin leaf=32'sh000008B4; is_leaf=1'b1; end
                    endcase
                end
                2: begin
                    case(node)
                        0: begin if(f2 < 16'sd100) node=1; else node=2; end
                        1: begin if(f0 < 16'sd505) node=3; else node=4; end
                        2: begin if(f0 < 16'sd505) node=5; else node=6; end
                        3: begin if(f0 < 16'sd504) node=7; else node=8; end
                        4: begin if(f0 < 16'sd511) node=9; else node=10; end
                        5: begin if(f0 < 16'sd504) node=11; else node=12; end
                        6: begin if(f0 < 16'sd506) node=13; else node=14; end
                        7: begin if(f3 < 16'sd148) node=15; else node=16; end
                        8: begin if(f3 < 16'sd34) node=17; else node=18; end
                        9: begin leaf=32'shFFFFE929; is_leaf=1'b1; end
                        10: begin if(f4 < 16'sd3800) node=19; else node=20; end
                        11: begin if(f5 < 16'sd3500) node=21; else node=22; end
                        12: begin if(f3 < 16'sd2369) node=23; else node=24; end
                        13: begin if(f5 < 16'sd4400) node=25; else node=26; end
                        14: begin if(f4 < 16'sd3836) node=27; else node=28; end
                        15: begin leaf=32'shFFFFF6F8; is_leaf=1'b1; end
                        16: begin leaf=32'sh000007DC; is_leaf=1'b1; end
                        17: begin leaf=32'sh000004A9; is_leaf=1'b1; end
                        18: begin leaf=32'sh00001597; is_leaf=1'b1; end
                        19: begin leaf=32'shFFFFEE51; is_leaf=1'b1; end
                        20: begin leaf=32'shFFFFFD12; is_leaf=1'b1; end
                        21: begin leaf=32'sh000004AF; is_leaf=1'b1; end
                        22: begin leaf=32'shFFFFF40B; is_leaf=1'b1; end
                        23: begin leaf=32'sh000015DE; is_leaf=1'b1; end
                        24: begin leaf=32'sh0000034F; is_leaf=1'b1; end
                        25: begin leaf=32'shFFFFEB1D; is_leaf=1'b1; end
                        26: begin leaf=32'sh0000034F; is_leaf=1'b1; end
                        27: begin leaf=32'shFFFFFEC4; is_leaf=1'b1; end
                        28: begin leaf=32'sh00000848; is_leaf=1'b1; end
                    endcase
                end
                3: begin
                    case(node)
                        0: begin if(f2 < 16'sd100) node=1; else node=2; end
                        1: begin if(f0 < 16'sd505) node=3; else node=4; end
                        2: begin if(f1 < 16'sd948) node=5; else node=6; end
                        3: begin if(f0 < 16'sd504) node=7; else node=8; end
                        4: begin if(f0 < 16'sd511) node=9; else node=10; end
                        5: begin if(f1 < 16'sd944) node=11; else node=12; end
                        6: begin if(f1 < 16'sd1000) node=13; else node=14; end
                        7: begin if(f3 < 16'sd148) node=15; else node=16; end
                        8: begin if(f3 < 16'sd34) node=17; else node=18; end
                        9: begin leaf=32'shFFFFEA0C; is_leaf=1'b1; end
                        10: begin if(f3 < 16'sd144) node=19; else node=20; end
                        11: begin if(f5 < 16'sd3200) node=21; else node=22; end
                        12: begin leaf=32'shFFFFE77D; is_leaf=1'b1; end
                        13: begin leaf=32'sh000017B4; is_leaf=1'b1; end
                        14: begin if(f0 < 16'sd505) node=23; else node=24; end
                        15: begin leaf=32'shFFFFF766; is_leaf=1'b1; end
                        16: begin leaf=32'sh00000781; is_leaf=1'b1; end
                        17: begin leaf=32'sh00000478; is_leaf=1'b1; end
                        18: begin leaf=32'sh000014C8; is_leaf=1'b1; end
                        19: begin leaf=32'shFFFFF274; is_leaf=1'b1; end
                        20: begin leaf=32'sh000006C5; is_leaf=1'b1; end
                        21: begin leaf=32'sh0000054F; is_leaf=1'b1; end
                        22: begin leaf=32'shFFFFF9C1; is_leaf=1'b1; end
                        23: begin leaf=32'sh000008BC; is_leaf=1'b1; end
                        24: begin leaf=32'shFFFFFD24; is_leaf=1'b1; end
                    endcase
                end
                4: begin
                    case(node)
                        0: begin if(f2 < 16'sd100) node=1; else node=2; end
                        1: begin if(f0 < 16'sd505) node=3; else node=4; end
                        2: begin if(f3 < 16'sd144) node=5; else node=6; end
                        3: begin if(f0 < 16'sd504) node=7; else node=8; end
                        4: begin if(f0 < 16'sd511) node=9; else node=10; end
                        5: begin if(f3 < 16'sd125) node=11; else node=12; end
                        6: begin if(f3 < 16'sd149) node=13; else node=14; end
                        7: begin if(f3 < 16'sd148) node=15; else node=16; end
                        8: begin if(f3 < 16'sd34) node=17; else node=18; end
                        9: begin leaf=32'shFFFFEAD5; is_leaf=1'b1; end
                        10: begin if(f4 < 16'sd3800) node=19; else node=20; end
                        11: begin if(f1 < 16'sd948) node=21; else node=22; end
                        12: begin leaf=32'shFFFFE848; is_leaf=1'b1; end
                        13: begin if(f3 < 16'sd145) node=23; else node=24; end
                        14: begin if(f4 < 16'sd3800) node=25; else node=26; end
                        15: begin leaf=32'shFFFFF7CE; is_leaf=1'b1; end
                        16: begin leaf=32'sh0000072B; is_leaf=1'b1; end
                        17: begin leaf=32'sh0000044A; is_leaf=1'b1; end
                        18: begin leaf=32'sh0000140E; is_leaf=1'b1; end
                        19: begin leaf=32'shFFFFEF8C; is_leaf=1'b1; end
                        20: begin leaf=32'shFFFFFDAC; is_leaf=1'b1; end
                        21: begin leaf=32'shFFFFFF06; is_leaf=1'b1; end
                        22: begin leaf=32'sh00000767; is_leaf=1'b1; end
                        23: begin leaf=32'sh00000529; is_leaf=1'b1; end
                        24: begin leaf=32'sh00001757; is_leaf=1'b1; end
                        25: begin leaf=32'shFFFFF9FD; is_leaf=1'b1; end
                        26: begin leaf=32'sh000004D2; is_leaf=1'b1; end
                    endcase
                end
                5: begin
                    case(node)
                        0: begin if(f3 < 16'sd148) node=1; else node=2; end
                        1: begin if(f3 < 16'sd125) node=3; else node=4; end
                        2: begin if(f3 < 16'sd149) node=5; else node=6; end
                        3: begin if(f2 < 16'sd100) node=7; else node=8; end
                        4: begin if(f3 < 16'sd144) node=9; else node=10; end
                        5: begin leaf=32'sh0000169E; is_leaf=1'b1; end
                        6: begin if(f0 < 16'sd505) node=11; else node=12; end
                        7: begin if(f1 < 16'sd948) node=13; else node=14; end
                        8: begin if(f5 < 16'sd3500) node=15; else node=16; end
                        9: begin leaf=32'shFFFFE996; is_leaf=1'b1; end
                        10: begin leaf=32'shFFFFFD68; is_leaf=1'b1; end
                        11: begin if(f0 < 16'sd504) node=17; else node=18; end
                        12: begin if(f0 < 16'sd509) node=19; else node=20; end
                        13: begin leaf=32'shFFFFF1C0; is_leaf=1'b1; end
                        14: begin leaf=32'shFFFFFD76; is_leaf=1'b1; end
                        15: begin leaf=32'sh000004CE; is_leaf=1'b1; end
                        16: begin leaf=32'shFFFFF871; is_leaf=1'b1; end
                        17: begin leaf=32'shFFFFFF70; is_leaf=1'b1; end
                        18: begin leaf=32'sh00001113; is_leaf=1'b1; end
                        19: begin leaf=32'shFFFFEB01; is_leaf=1'b1; end
                        20: begin leaf=32'sh000000CC; is_leaf=1'b1; end
                    endcase
                end
                6: begin
                    case(node)
                        0: begin if(f0 < 16'sd505) node=1; else node=2; end
                        1: begin if(f0 < 16'sd504) node=3; else node=4; end
                        2: begin if(f0 < 16'sd507) node=5; else node=6; end
                        3: begin if(f3 < 16'sd148) node=7; else node=8; end
                        4: begin if(f3 < 16'sd2369) node=9; else node=10; end
                        5: begin if(f5 < 16'sd4400) node=11; else node=12; end
                        6: begin if(f2 < 16'sd100) node=13; else node=14; end
                        7: begin if(f3 < 16'sd125) node=15; else node=16; end
                        8: begin if(f3 < 16'sd149) node=17; else node=18; end
                        9: begin if(f3 < 16'sd25) node=19; else node=20; end
                        10: begin leaf=32'sh00000294; is_leaf=1'b1; end
                        11: begin if(f5 < 16'sd2900) node=21; else node=22; end
                        12: begin leaf=32'shFFFFFDC3; is_leaf=1'b1; end
                        13: begin if(f3 < 16'sd144) node=23; else node=24; end
                        14: begin if(f4 < 16'sd3836) node=25; else node=26; end
                        15: begin leaf=32'shFFFFFECF; is_leaf=1'b1; end
                        16: begin leaf=32'shFFFFE9E8; is_leaf=1'b1; end
                        17: begin leaf=32'sh000015FA; is_leaf=1'b1; end
                        18: begin leaf=32'shFFFFFF77; is_leaf=1'b1; end
                        19: begin leaf=32'sh00000D22; is_leaf=1'b1; end
                        20: begin leaf=32'sh00001431; is_leaf=1'b1; end
                        21: begin leaf=32'shFFFFEF8C; is_leaf=1'b1; end
                        22: begin leaf=32'shFFFFEAF6; is_leaf=1'b1; end
                        23: begin leaf=32'shFFFFF34E; is_leaf=1'b1; end
                        24: begin leaf=32'sh00000527; is_leaf=1'b1; end
                        25: begin leaf=32'shFFFFFF49; is_leaf=1'b1; end
                        26: begin leaf=32'sh00000755; is_leaf=1'b1; end
                    endcase
                end
                7: begin
                    case(node)
                        0: begin if(f1 < 16'sd948) node=1; else node=2; end
                        1: begin if(f1 < 16'sd944) node=3; else node=4; end
                        2: begin if(f1 < 16'sd1000) node=5; else node=6; end
                        3: begin if(f5 < 16'sd3200) node=7; else node=8; end
                        4: begin leaf=32'shFFFFE9D0; is_leaf=1'b1; end
                        5: begin leaf=32'sh00001649; is_leaf=1'b1; end
                        6: begin if(f0 < 16'sd505) node=9; else node=10; end
                        7: begin if(f2 < 16'sd100) node=11; else node=12; end
                        8: begin if(f3 < 16'sd148) node=13; else node=14; end
                        9: begin if(f0 < 16'sd504) node=15; else node=16; end
                        10: begin if(f0 < 16'sd506) node=17; else node=18; end
                        11: begin leaf=32'shFFFFFAD8; is_leaf=1'b1; end
                        12: begin leaf=32'sh000004A7; is_leaf=1'b1; end
                        13: begin leaf=32'shFFFFF555; is_leaf=1'b1; end
                        14: begin leaf=32'sh00000527; is_leaf=1'b1; end
                        15: begin leaf=32'sh0000015C; is_leaf=1'b1; end
                        16: begin leaf=32'sh000012F8; is_leaf=1'b1; end
                        17: begin leaf=32'shFFFFED69; is_leaf=1'b1; end
                        18: begin leaf=32'shFFFFFF90; is_leaf=1'b1; end
                    endcase
                end
                8: begin
                    case(node)
                        0: begin if(f2 < 16'sd100) node=1; else node=2; end
                        1: begin if(f0 < 16'sd505) node=3; else node=4; end
                        2: begin if(f1 < 16'sd948) node=5; else node=6; end
                        3: begin if(f0 < 16'sd504) node=7; else node=8; end
                        4: begin if(f0 < 16'sd511) node=9; else node=10; end
                        5: begin if(f1 < 16'sd944) node=11; else node=12; end
                        6: begin if(f1 < 16'sd1000) node=13; else node=14; end
                        7: begin if(f3 < 16'sd148) node=15; else node=16; end
                        8: begin if(f3 < 16'sd34) node=17; else node=18; end
                        9: begin leaf=32'shFFFFECE8; is_leaf=1'b1; end
                        10: begin if(f4 < 16'sd3800) node=19; else node=20; end
                        11: begin if(f5 < 16'sd3200) node=21; else node=22; end
                        12: begin leaf=32'shFFFFEA30; is_leaf=1'b1; end
                        13: begin leaf=32'sh000014DB; is_leaf=1'b1; end
                        14: begin if(f0 < 16'sd505) node=23; else node=24; end
                        15: begin leaf=32'shFFFFF903; is_leaf=1'b1; end
                        16: begin leaf=32'sh00000649; is_leaf=1'b1; end
                        17: begin leaf=32'sh0000038E; is_leaf=1'b1; end
                        18: begin leaf=32'sh0000125C; is_leaf=1'b1; end
                        19: begin leaf=32'shFFFFF15C; is_leaf=1'b1; end
                        20: begin leaf=32'shFFFFFE5A; is_leaf=1'b1; end
                        21: begin leaf=32'sh0000046D; is_leaf=1'b1; end
                        22: begin leaf=32'shFFFFFAA0; is_leaf=1'b1; end
                        23: begin leaf=32'sh00000728; is_leaf=1'b1; end
                        24: begin leaf=32'shFFFFFD93; is_leaf=1'b1; end
                    endcase
                end
                9: begin
                    case(node)
                        0: begin if(f3 < 16'sd148) node=1; else node=2; end
                        1: begin if(f3 < 16'sd125) node=3; else node=4; end
                        2: begin if(f3 < 16'sd149) node=5; else node=6; end
                        3: begin if(f2 < 16'sd100) node=7; else node=8; end
                        4: begin if(f3 < 16'sd144) node=9; else node=10; end
                        5: begin leaf=32'sh000014B3; is_leaf=1'b1; end
                        6: begin if(f4 < 16'sd3836) node=11; else node=12; end
                        7: begin if(f1 < 16'sd948) node=13; else node=14; end
                        8: begin if(f5 < 16'sd3500) node=15; else node=16; end
                        9: begin leaf=32'shFFFFEB79; is_leaf=1'b1; end
                        10: begin leaf=32'shFFFFFD5D; is_leaf=1'b1; end
                        11: begin if(f1 < 16'sd1200) node=17; else node=18; end
                        12: begin if(f4 < 16'sd3900) node=19; else node=20; end
                        13: begin leaf=32'shFFFFF36B; is_leaf=1'b1; end
                        14: begin leaf=32'shFFFFFE11; is_leaf=1'b1; end
                        15: begin leaf=32'sh0000043B; is_leaf=1'b1; end
                        16: begin leaf=32'shFFFFF907; is_leaf=1'b1; end
                        17: begin leaf=32'shFFFFF509; is_leaf=1'b1; end
                        18: begin leaf=32'sh00000742; is_leaf=1'b1; end
                        19: begin leaf=32'sh000012E1; is_leaf=1'b1; end
                        20: begin leaf=32'sh000000A4; is_leaf=1'b1; end
                    endcase
                end
                10: begin
                    case(node)
                        0: begin if(f0 < 16'sd505) node=1; else node=2; end
                        1: begin if(f0 < 16'sd504) node=3; else node=4; end
                        2: begin if(f0 < 16'sd507) node=5; else node=6; end
                        3: begin if(f3 < 16'sd148) node=7; else node=8; end
                        4: begin if(f3 < 16'sd2369) node=9; else node=10; end
                        5: begin if(f5 < 16'sd4400) node=11; else node=12; end
                        6: begin if(f2 < 16'sd100) node=13; else node=14; end
                        7: begin if(f3 < 16'sd125) node=15; else node=16; end
                        8: begin if(f3 < 16'sd149) node=17; else node=18; end
                        9: begin if(f3 < 16'sd25) node=19; else node=20; end
                        10: begin leaf=32'sh00000224; is_leaf=1'b1; end
                        11: begin if(f5 < 16'sd2900) node=21; else node=22; end
                        12: begin leaf=32'shFFFFFEF6; is_leaf=1'b1; end
                        13: begin if(f7 < 16'sd1209) node=23; else node=24; end
                        14: begin if(f0 < 16'sd520) node=25; else node=26; end
                        15: begin leaf=32'shFFFFFED3; is_leaf=1'b1; end
                        16: begin leaf=32'shFFFFEBCB; is_leaf=1'b1; end
                        17: begin leaf=32'sh0000140B; is_leaf=1'b1; end
                        18: begin leaf=32'shFFFFFF32; is_leaf=1'b1; end
                        19: begin leaf=32'sh00000C2E; is_leaf=1'b1; end
                        20: begin leaf=32'sh000012A6; is_leaf=1'b1; end
                        21: begin leaf=32'shFFFFF0D4; is_leaf=1'b1; end
                        22: begin leaf=32'shFFFFEC6E; is_leaf=1'b1; end
                        23: begin leaf=32'shFFFFF2A9; is_leaf=1'b1; end
                        24: begin leaf=32'shFFFFFEE6; is_leaf=1'b1; end
                        25: begin leaf=32'sh00000943; is_leaf=1'b1; end
                        26: begin leaf=32'sh00000094; is_leaf=1'b1; end
                    endcase
                end
                11: begin
                    case(node)
                        0: begin if(f1 < 16'sd948) node=1; else node=2; end
                        1: begin if(f1 < 16'sd944) node=3; else node=4; end
                        2: begin if(f1 < 16'sd1000) node=5; else node=6; end
                        3: begin if(f3 < 16'sd148) node=7; else node=8; end
                        4: begin leaf=32'shFFFFEB8B; is_leaf=1'b1; end
                        5: begin leaf=32'sh00001491; is_leaf=1'b1; end
                        6: begin if(f0 < 16'sd505) node=9; else node=10; end
                        7: begin if(f3 < 16'sd125) node=11; else node=12; end
                        8: begin if(f3 < 16'sd149) node=13; else node=14; end
                        9: begin if(f0 < 16'sd504) node=15; else node=16; end
                        10: begin if(f0 < 16'sd506) node=17; else node=18; end
                        11: begin leaf=32'shFFFFFEB7; is_leaf=1'b1; end
                        12: begin leaf=32'shFFFFEDC2; is_leaf=1'b1; end
                        13: begin leaf=32'sh000013DB; is_leaf=1'b1; end
                        14: begin leaf=32'shFFFFFF8A; is_leaf=1'b1; end
                        15: begin leaf=32'sh0000010F; is_leaf=1'b1; end
                        16: begin leaf=32'sh00001173; is_leaf=1'b1; end
                        17: begin leaf=32'shFFFFEEE2; is_leaf=1'b1; end
                        18: begin leaf=32'shFFFFFFC3; is_leaf=1'b1; end
                    endcase
                end
                12: begin
                    case(node)
                        0: begin if(f1 < 16'sd948) node=1; else node=2; end
                        1: begin if(f1 < 16'sd944) node=3; else node=4; end
                        2: begin if(f1 < 16'sd1000) node=5; else node=6; end
                        3: begin if(f5 < 16'sd3200) node=7; else node=8; end
                        4: begin leaf=32'shFFFFEC22; is_leaf=1'b1; end
                        5: begin leaf=32'sh000013F8; is_leaf=1'b1; end
                        6: begin if(f0 < 16'sd505) node=9; else node=10; end
                        7: begin if(f3 < 16'sd144) node=11; else node=12; end
                        8: begin if(f3 < 16'sd148) node=13; else node=14; end
                        9: begin if(f0 < 16'sd504) node=15; else node=16; end
                        10: begin if(f0 < 16'sd506) node=17; else node=18; end
                        11: begin leaf=32'sh0000004C; is_leaf=1'b1; end
                        12: begin leaf=32'sh00000861; is_leaf=1'b1; end
                        13: begin leaf=32'shFFFFF6B7; is_leaf=1'b1; end
                        14: begin leaf=32'sh00000474; is_leaf=1'b1; end
                        15: begin leaf=32'sh00000101; is_leaf=1'b1; end
                        16: begin leaf=32'sh000010F7; is_leaf=1'b1; end
                        17: begin leaf=32'shFFFFEF5F; is_leaf=1'b1; end
                        18: begin leaf=32'shFFFFFFC6; is_leaf=1'b1; end
                    endcase
                end
                13: begin
                    case(node)
                        0: begin if(f2 < 16'sd100) node=1; else node=2; end
                        1: begin if(f0 < 16'sd505) node=3; else node=4; end
                        2: begin if(f1 < 16'sd948) node=5; else node=6; end
                        3: begin if(f0 < 16'sd504) node=7; else node=8; end
                        4: begin if(f0 < 16'sd511) node=9; else node=10; end
                        5: begin if(f1 < 16'sd944) node=11; else node=12; end
                        6: begin if(f1 < 16'sd1000) node=13; else node=14; end
                        7: begin if(f3 < 16'sd50) node=15; else node=16; end
                        8: begin if(f7 < 16'sd1200) node=17; else node=18; end
                        9: begin leaf=32'shFFFFEE89; is_leaf=1'b1; end
                        10: begin if(f3 < 16'sd144) node=19; else node=20; end
                        11: begin if(f5 < 16'sd3200) node=21; else node=22; end
                        12: begin leaf=32'shFFFFEC63; is_leaf=1'b1; end
                        13: begin leaf=32'sh000012B3; is_leaf=1'b1; end
                        14: begin if(f0 < 16'sd505) node=23; else node=24; end
                        15: begin leaf=32'shFFFFFF51; is_leaf=1'b1; end
                        16: begin leaf=32'shFFFFF60F; is_leaf=1'b1; end
                        17: begin leaf=32'sh00000335; is_leaf=1'b1; end
                        18: begin leaf=32'sh000011E3; is_leaf=1'b1; end
                        19: begin leaf=32'shFFFFF5F3; is_leaf=1'b1; end
                        20: begin leaf=32'sh00000626; is_leaf=1'b1; end
                        21: begin leaf=32'sh000003D5; is_leaf=1'b1; end
                        22: begin leaf=32'shFFFFFB5D; is_leaf=1'b1; end
                        23: begin leaf=32'sh000005F6; is_leaf=1'b1; end
                        24: begin leaf=32'shFFFFFE39; is_leaf=1'b1; end
                    endcase
                end
                14: begin
                    case(node)
                        0: begin if(f3 < 16'sd148) node=1; else node=2; end
                        1: begin if(f3 < 16'sd125) node=3; else node=4; end
                        2: begin if(f3 < 16'sd149) node=5; else node=6; end
                        3: begin if(f2 < 16'sd100) node=7; else node=8; end
                        4: begin if(f3 < 16'sd144) node=9; else node=10; end
                        5: begin leaf=32'sh000012FC; is_leaf=1'b1; end
                        6: begin if(f4 < 16'sd3836) node=11; else node=12; end
                        7: begin if(f1 < 16'sd948) node=13; else node=14; end
                        8: begin if(f5 < 16'sd3500) node=15; else node=16; end
                        9: begin leaf=32'shFFFFED1E; is_leaf=1'b1; end
                        10: begin leaf=32'shFFFFFDB8; is_leaf=1'b1; end
                        11: begin if(f1 < 16'sd1200) node=17; else node=18; end
                        12: begin if(f4 < 16'sd3900) node=19; else node=20; end
                        13: begin leaf=32'shFFFFF4E4; is_leaf=1'b1; end
                        14: begin leaf=32'shFFFFFE5F; is_leaf=1'b1; end
                        15: begin leaf=32'sh000003CB; is_leaf=1'b1; end
                        16: begin leaf=32'shFFFFF983; is_leaf=1'b1; end
                        17: begin leaf=32'shFFFFF5CF; is_leaf=1'b1; end
                        18: begin leaf=32'sh000006C9; is_leaf=1'b1; end
                        19: begin leaf=32'sh000010D2; is_leaf=1'b1; end
                        20: begin leaf=32'sh0000004D; is_leaf=1'b1; end
                    endcase
                end
                15: begin
                    case(node)
                        0: begin if(f3 < 16'sd148) node=1; else node=2; end
                        1: begin if(f3 < 16'sd125) node=3; else node=4; end
                        2: begin if(f3 < 16'sd149) node=5; else node=6; end
                        3: begin if(f2 < 16'sd100) node=7; else node=8; end
                        4: begin if(f3 < 16'sd144) node=9; else node=10; end
                        5: begin leaf=32'sh0000128A; is_leaf=1'b1; end
                        6: begin if(f0 < 16'sd505) node=11; else node=12; end
                        7: begin if(f1 < 16'sd948) node=13; else node=14; end
                        8: begin if(f5 < 16'sd3500) node=15; else node=16; end
                        9: begin leaf=32'shFFFFED8F; is_leaf=1'b1; end
                        10: begin leaf=32'shFFFFFDCB; is_leaf=1'b1; end
                        11: begin if(f3 < 16'sd2726) node=17; else node=18; end
                        12: begin if(f0 < 16'sd509) node=19; else node=20; end
                        13: begin leaf=32'shFFFFF550; is_leaf=1'b1; end
                        14: begin leaf=32'shFFFFFE73; is_leaf=1'b1; end
                        15: begin leaf=32'sh0000039C; is_leaf=1'b1; end
                        16: begin leaf=32'shFFFFF9D2; is_leaf=1'b1; end
                        17: begin leaf=32'sh00000425; is_leaf=1'b1; end
                        18: begin leaf=32'shFFFFEB9F; is_leaf=1'b1; end
                        19: begin leaf=32'shFFFFEDB9; is_leaf=1'b1; end
                        20: begin leaf=32'sh0000007B; is_leaf=1'b1; end
                    endcase
                end
                16: begin
                    case(node)
                        0: begin if(f1 < 16'sd948) node=1; else node=2; end
                        1: begin if(f1 < 16'sd944) node=3; else node=4; end
                        2: begin if(f1 < 16'sd1000) node=5; else node=6; end
                        3: begin if(f5 < 16'sd3200) node=7; else node=8; end
                        4: begin leaf=32'shFFFFED4F; is_leaf=1'b1; end
                        5: begin leaf=32'sh000012DC; is_leaf=1'b1; end
                        6: begin if(f0 < 16'sd505) node=9; else node=10; end
                        7: begin if(f3 < 16'sd144) node=11; else node=12; end
                        8: begin if(f2 < 16'sd400) node=13; else node=14; end
                        9: begin if(f0 < 16'sd504) node=15; else node=16; end
                        10: begin if(f0 < 16'sd506) node=17; else node=18; end
                        11: begin leaf=32'sh00000047; is_leaf=1'b1; end
                        12: begin leaf=32'sh00000778; is_leaf=1'b1; end
                        13: begin leaf=32'shFFFFF76E; is_leaf=1'b1; end
                        14: begin leaf=32'sh000002E1; is_leaf=1'b1; end
                        15: begin leaf=32'sh000000A3; is_leaf=1'b1; end
                        16: begin leaf=32'sh0000101D; is_leaf=1'b1; end
                        17: begin leaf=32'shFFFFF038; is_leaf=1'b1; end
                        18: begin leaf=32'shFFFFFFE0; is_leaf=1'b1; end
                    endcase
                end
                17: begin
                    case(node)
                        0: begin if(f0 < 16'sd505) node=1; else node=2; end
                        1: begin if(f0 < 16'sd504) node=3; else node=4; end
                        2: begin if(f0 < 16'sd507) node=5; else node=6; end
                        3: begin if(f7 < 16'sd1200) node=7; else node=8; end
                        4: begin if(f3 < 16'sd2369) node=9; else node=10; end
                        5: begin if(f5 < 16'sd4400) node=11; else node=12; end
                        6: begin if(f2 < 16'sd100) node=13; else node=14; end
                        7: begin if(f1 < 16'sd1200) node=15; else node=16; end
                        8: begin if(f6 < 16'sd100) node=17; else node=18; end
                        9: begin if(f3 < 16'sd25) node=19; else node=20; end
                        10: begin leaf=32'sh0000013A; is_leaf=1'b1; end
                        11: begin if(f5 < 16'sd2500) node=21; else node=22; end
                        12: begin leaf=32'sh00000151; is_leaf=1'b1; end
                        13: begin if(f7 < 16'sd1209) node=23; else node=24; end
                        14: begin if(f0 < 16'sd520) node=25; else node=26; end
                        15: begin leaf=32'shFFFFF834; is_leaf=1'b1; end
                        16: begin leaf=32'sh00000798; is_leaf=1'b1; end
                        17: begin leaf=32'sh0000016B; is_leaf=1'b1; end
                        18: begin leaf=32'sh00000C84; is_leaf=1'b1; end
                        19: begin leaf=32'sh00000AD5; is_leaf=1'b1; end
                        20: begin leaf=32'sh000010E1; is_leaf=1'b1; end
                        21: begin leaf=32'shFFFFF826; is_leaf=1'b1; end
                        22: begin leaf=32'shFFFFEF0E; is_leaf=1'b1; end
                        23: begin leaf=32'shFFFFF468; is_leaf=1'b1; end
                        24: begin leaf=32'shFFFFFF52; is_leaf=1'b1; end
                        25: begin leaf=32'sh000008CC; is_leaf=1'b1; end
                        26: begin leaf=32'sh00000073; is_leaf=1'b1; end
                    endcase
                end
                18: begin
                    case(node)
                        0: begin if(f3 < 16'sd148) node=1; else node=2; end
                        1: begin if(f3 < 16'sd125) node=3; else node=4; end
                        2: begin if(f3 < 16'sd149) node=5; else node=6; end
                        3: begin if(f2 < 16'sd100) node=7; else node=8; end
                        4: begin if(f3 < 16'sd144) node=9; else node=10; end
                        5: begin leaf=32'sh000011EA; is_leaf=1'b1; end
                        6: begin if(f4 < 16'sd3836) node=11; else node=12; end
                        7: begin if(f0 < 16'sd505) node=13; else node=14; end
                        8: begin if(f5 < 16'sd3500) node=15; else node=16; end
                        9: begin leaf=32'shFFFFEE29; is_leaf=1'b1; end
                        10: begin leaf=32'shFFFFFD70; is_leaf=1'b1; end
                        11: begin if(f1 < 16'sd1200) node=17; else node=18; end
                        12: begin if(f4 < 16'sd3900) node=19; else node=20; end
                        13: begin leaf=32'shFFFFFE27; is_leaf=1'b1; end
                        14: begin leaf=32'shFFFFF593; is_leaf=1'b1; end
                        15: begin leaf=32'sh00000357; is_leaf=1'b1; end
                        16: begin leaf=32'shFFFFFA24; is_leaf=1'b1; end
                        17: begin leaf=32'shFFFFF665; is_leaf=1'b1; end
                        18: begin leaf=32'sh0000067F; is_leaf=1'b1; end
                        19: begin leaf=32'sh00000FC8; is_leaf=1'b1; end
                        20: begin leaf=32'sh00000046; is_leaf=1'b1; end
                    endcase
                end
                19: begin
                    case(node)
                        0: begin if(f1 < 16'sd948) node=1; else node=2; end
                        1: begin if(f1 < 16'sd944) node=3; else node=4; end
                        2: begin if(f1 < 16'sd1000) node=5; else node=6; end
                        3: begin if(f3 < 16'sd148) node=7; else node=8; end
                        4: begin leaf=32'shFFFFEDE3; is_leaf=1'b1; end
                        5: begin leaf=32'sh0000123B; is_leaf=1'b1; end
                        6: begin if(f0 < 16'sd505) node=9; else node=10; end
                        7: begin if(f3 < 16'sd125) node=11; else node=12; end
                        8: begin if(f3 < 16'sd149) node=13; else node=14; end
                        9: begin if(f0 < 16'sd504) node=15; else node=16; end
                        10: begin if(f0 < 16'sd506) node=17; else node=18; end
                        11: begin leaf=32'shFFFFFF26; is_leaf=1'b1; end
                        12: begin leaf=32'shFFFFEFEB; is_leaf=1'b1; end
                        13: begin leaf=32'sh0000118A; is_leaf=1'b1; end
                        14: begin leaf=32'shFFFFFF77; is_leaf=1'b1; end
                        15: begin leaf=32'sh0000008D; is_leaf=1'b1; end
                        16: begin leaf=32'sh00000F4B; is_leaf=1'b1; end
                        17: begin leaf=32'shFFFFF114; is_leaf=1'b1; end
                        18: begin leaf=32'shFFFFFFEF; is_leaf=1'b1; end
                    endcase
                end
                20: begin
                    case(node)
                        0: begin if(f7 < 16'sd1200) node=1; else node=2; end
                        1: begin if(f7 < 16'sd1180) node=3; else node=4; end
                        2: begin if(f0 < 16'sd505) node=5; else node=6; end
                        3: begin if(f5 < 16'sd3200) node=7; else node=8; end
                        4: begin leaf=32'shFFFFEE4D; is_leaf=1'b1; end
                        5: begin if(f0 < 16'sd504) node=9; else node=10; end
                        6: begin if(f0 < 16'sd507) node=11; else node=12; end
                        7: begin if(f2 < 16'sd100) node=13; else node=14; end
                        8: begin if(f5 < 16'sd3700) node=15; else node=16; end
                        9: begin if(f5 < 16'sd3900) node=17; else node=18; end
                        10: begin if(f3 < 16'sd2369) node=19; else node=20; end
                        11: begin if(f5 < 16'sd2500) node=21; else node=22; end
                        12: begin if(f0 < 16'sd521) node=23; else node=24; end
                        13: begin leaf=32'shFFFFFA17; is_leaf=1'b1; end
                        14: begin leaf=32'sh000002A8; is_leaf=1'b1; end
                        15: begin leaf=32'shFFFFFB7B; is_leaf=1'b1; end
                        16: begin leaf=32'shFFFFF32F; is_leaf=1'b1; end
                        17: begin leaf=32'sh0000033A; is_leaf=1'b1; end
                        18: begin leaf=32'shFFFFF080; is_leaf=1'b1; end
                        19: begin leaf=32'sh000010F0; is_leaf=1'b1; end
                        20: begin leaf=32'sh0000011A; is_leaf=1'b1; end
                        21: begin leaf=32'shFFFFFE79; is_leaf=1'b1; end
                        22: begin leaf=32'shFFFFEFC2; is_leaf=1'b1; end
                        23: begin leaf=32'sh00000A5F; is_leaf=1'b1; end
                        24: begin leaf=32'shFFFFFFE6; is_leaf=1'b1; end
                    endcase
                end
                21: begin
                    case(node)
                        0: begin if(f1 < 16'sd948) node=1; else node=2; end
                        1: begin if(f1 < 16'sd944) node=3; else node=4; end
                        2: begin if(f1 < 16'sd1000) node=5; else node=6; end
                        3: begin if(f5 < 16'sd3200) node=7; else node=8; end
                        4: begin leaf=32'shFFFFEE78; is_leaf=1'b1; end
                        5: begin leaf=32'sh000011CB; is_leaf=1'b1; end
                        6: begin if(f0 < 16'sd505) node=9; else node=10; end
                        7: begin if(f1 < 16'sd600) node=11; else node=12; end
                        8: begin if(f2 < 16'sd400) node=13; else node=14; end
                        9: begin if(f0 < 16'sd504) node=15; else node=16; end
                        10: begin if(f0 < 16'sd506) node=17; else node=18; end
                        11: begin leaf=32'sh0000136E; is_leaf=1'b1; end
                        12: begin leaf=32'sh00000152; is_leaf=1'b1; end
                        13: begin leaf=32'shFFFFF82E; is_leaf=1'b1; end
                        14: begin leaf=32'sh000002CA; is_leaf=1'b1; end
                        15: begin leaf=32'sh0000007D; is_leaf=1'b1; end
                        16: begin leaf=32'sh00000EC0; is_leaf=1'b1; end
                        17: begin leaf=32'shFFFFF1A7; is_leaf=1'b1; end
                        18: begin leaf=32'shFFFFFFE3; is_leaf=1'b1; end
                    endcase
                end
                22: begin
                    case(node)
                        0: begin if(f3 < 16'sd148) node=1; else node=2; end
                        1: begin if(f3 < 16'sd125) node=3; else node=4; end
                        2: begin if(f3 < 16'sd149) node=5; else node=6; end
                        3: begin if(f2 < 16'sd100) node=7; else node=8; end
                        4: begin if(f3 < 16'sd144) node=9; else node=10; end
                        5: begin leaf=32'sh0000113C; is_leaf=1'b1; end
                        6: begin if(f4 < 16'sd3800) node=11; else node=12; end
                        7: begin if(f0 < 16'sd505) node=13; else node=14; end
                        8: begin if(f5 < 16'sd3500) node=15; else node=16; end
                        9: begin leaf=32'shFFFFEED1; is_leaf=1'b1; end
                        10: begin leaf=32'shFFFFFD9C; is_leaf=1'b1; end
                        11: begin if(f1 < 16'sd1200) node=17; else node=18; end
                        12: begin if(f0 < 16'sd548) node=19; else node=20; end
                        13: begin leaf=32'shFFFFFE70; is_leaf=1'b1; end
                        14: begin leaf=32'shFFFFF630; is_leaf=1'b1; end
                        15: begin leaf=32'sh0000030A; is_leaf=1'b1; end
                        16: begin leaf=32'shFFFFFA96; is_leaf=1'b1; end
                        17: begin leaf=32'shFFFFF694; is_leaf=1'b1; end
                        18: begin leaf=32'sh0000064E; is_leaf=1'b1; end
                        19: begin leaf=32'sh0000043C; is_leaf=1'b1; end
                        20: begin leaf=32'shFFFFF4BB; is_leaf=1'b1; end
                    endcase
                end
                23: begin
                    case(node)
                        0: begin if(f7 < 16'sd1200) node=1; else node=2; end
                        1: begin if(f7 < 16'sd1180) node=3; else node=4; end
                        2: begin if(f0 < 16'sd505) node=5; else node=6; end
                        3: begin if(f5 < 16'sd3700) node=7; else node=8; end
                        4: begin leaf=32'shFFFFEF04; is_leaf=1'b1; end
                        5: begin if(f0 < 16'sd504) node=9; else node=10; end
                        6: begin if(f0 < 16'sd507) node=11; else node=12; end
                        7: begin if(f2 < 16'sd100) node=13; else node=14; end
                        8: begin if(f2 < 16'sd400) node=15; else node=16; end
                        9: begin if(f7 < 16'sd1500) node=17; else node=18; end
                        10: begin if(f3 < 16'sd2369) node=19; else node=20; end
                        11: begin if(f5 < 16'sd2500) node=21; else node=22; end
                        12: begin if(f0 < 16'sd521) node=23; else node=24; end
                        13: begin leaf=32'shFFFFFA72; is_leaf=1'b1; end
                        14: begin leaf=32'sh000000D8; is_leaf=1'b1; end
                        15: begin leaf=32'shFFFFF13F; is_leaf=1'b1; end
                        16: begin leaf=32'shFFFFFFA1; is_leaf=1'b1; end
                        17: begin leaf=32'sh00000482; is_leaf=1'b1; end
                        18: begin leaf=32'shFFFFFD1C; is_leaf=1'b1; end
                        19: begin leaf=32'sh00001062; is_leaf=1'b1; end
                        20: begin leaf=32'sh000000EC; is_leaf=1'b1; end
                        21: begin leaf=32'shFFFFFF26; is_leaf=1'b1; end
                        22: begin leaf=32'shFFFFF04D; is_leaf=1'b1; end
                        23: begin leaf=32'sh000009DE; is_leaf=1'b1; end
                        24: begin leaf=32'shFFFFFFE9; is_leaf=1'b1; end
                    endcase
                end
                24: begin
                    case(node)
                        0: begin if(f3 < 16'sd148) node=1; else node=2; end
                        1: begin if(f3 < 16'sd125) node=3; else node=4; end
                        2: begin if(f3 < 16'sd149) node=5; else node=6; end
                        3: begin if(f1 < 16'sd948) node=7; else node=8; end
                        4: begin if(f3 < 16'sd144) node=9; else node=10; end
                        5: begin leaf=32'sh000010E5; is_leaf=1'b1; end
                        6: begin if(f0 < 16'sd481) node=11; else node=12; end
                        7: begin if(f1 < 16'sd944) node=13; else node=14; end
                        8: begin if(f1 < 16'sd1000) node=15; else node=16; end
                        9: begin leaf=32'shFFFFEF25; is_leaf=1'b1; end
                        10: begin leaf=32'shFFFFFD50; is_leaf=1'b1; end
                        11: begin if(f0 < 16'sd441) node=17; else node=18; end
                        12: begin if(f4 < 16'sd3836) node=19; else node=20; end
                        13: begin leaf=32'shFFFFFF2C; is_leaf=1'b1; end
                        14: begin leaf=32'shFFFFEEAD; is_leaf=1'b1; end
                        15: begin leaf=32'sh000011F6; is_leaf=1'b1; end
                        16: begin leaf=32'sh000000E5; is_leaf=1'b1; end
                        17: begin leaf=32'shFFFFF893; is_leaf=1'b1; end
                        18: begin leaf=32'sh000008BA; is_leaf=1'b1; end
                        19: begin leaf=32'shFFFFF96A; is_leaf=1'b1; end
                        20: begin leaf=32'sh000000A1; is_leaf=1'b1; end
                    endcase
                end
                default: begin leaf=32'sd0; is_leaf=1'b1; end
            endcase
        end
    end
    tree_score=leaf;
end
endmodule

`timescale 1ns/1ps
// 25-tree XGBoost inference engine.
// Feature order:
// f0 glucose, f1 m_proc_IM, f2 n_frozen, f3 P,
// f4 m_proc_density, f5 age, f6 m_proc_method, f7 m_proc_NP.
module gbdt_inference (
    input signed [15:0] f0, input signed [15:0] f1,
    input signed [15:0] f2, input signed [15:0] f3,
    input signed [15:0] f4, input signed [15:0] f5,
    input signed [15:0] f6, input signed [15:0] f7,
    output signed [39:0] total_score,
    output prediction
);
wire signed [31:0] t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12;
wire signed [31:0] t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24;
tree_traversal #(.TREE_ID(0))  u0 (.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t0));
tree_traversal #(.TREE_ID(1))  u1 (.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t1));
tree_traversal #(.TREE_ID(2))  u2 (.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t2));
tree_traversal #(.TREE_ID(3))  u3 (.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t3));
tree_traversal #(.TREE_ID(4))  u4 (.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t4));
tree_traversal #(.TREE_ID(5))  u5 (.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t5));
tree_traversal #(.TREE_ID(6))  u6 (.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t6));
tree_traversal #(.TREE_ID(7))  u7 (.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t7));
tree_traversal #(.TREE_ID(8))  u8 (.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t8));
tree_traversal #(.TREE_ID(9))  u9 (.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t9));
tree_traversal #(.TREE_ID(10)) u10(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t10));
tree_traversal #(.TREE_ID(11)) u11(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t11));
tree_traversal #(.TREE_ID(12)) u12(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t12));
tree_traversal #(.TREE_ID(13)) u13(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t13));
tree_traversal #(.TREE_ID(14)) u14(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t14));
tree_traversal #(.TREE_ID(15)) u15(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t15));
tree_traversal #(.TREE_ID(16)) u16(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t16));
tree_traversal #(.TREE_ID(17)) u17(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t17));
tree_traversal #(.TREE_ID(18)) u18(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t18));
tree_traversal #(.TREE_ID(19)) u19(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t19));
tree_traversal #(.TREE_ID(20)) u20(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t20));
tree_traversal #(.TREE_ID(21)) u21(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t21));
tree_traversal #(.TREE_ID(22)) u22(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t22));
tree_traversal #(.TREE_ID(23)) u23(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t23));
tree_traversal #(.TREE_ID(24)) u24(.f0(f0),.f1(f1),.f2(f2),.f3(f3),.f4(f4),.f5(f5),.f6(f6),.f7(f7),.tree_score(t24));

vote_aggregation agg(
 .tree0(t0),.tree1(t1),.tree2(t2),.tree3(t3),.tree4(t4),
 .tree5(t5),.tree6(t6),.tree7(t7),.tree8(t8),.tree9(t9),
 .tree10(t10),.tree11(t11),.tree12(t12),.tree13(t13),.tree14(t14),
 .tree15(t15),.tree16(t16),.tree17(t17),.tree18(t18),.tree19(t19),
 .tree20(t20),.tree21(t21),.tree22(t22),.tree23(t23),.tree24(t24),
 .total_score(total_score),.prediction(prediction));
endmodule

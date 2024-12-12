module wallace_tree
#(
    parameter N = 68
)
(
    input [N - 1 : 0] pp0,
    input [N - 1 : 0] pp1,
    input [N - 1 : 0] pp2,
    input [N - 1 : 0] pp3,
    input [N - 1 : 0] pp4,
    input [N - 1 : 0] pp5,
    input [N - 1 : 0] pp6,
    input [N - 1 : 0] pp7,
    input [N - 1 : 0] pp8,
    input [N - 1 : 0] pp9,
    input [N - 1 : 0] pp10,
    input [N - 1 : 0] pp11,
    input [N - 1 : 0] pp12,
    input [N - 1 : 0] pp13,
    input [N - 1 : 0] pp14,
    input [N - 1 : 0] pp15,
    input [N - 1 : 0] pp16,
    input [N - 1 : 0] sign_compensation,
    output [N - 1 : 0] opdata1,
    output [N - 1 : 0] opdata2
);

    //第一层
    wire [N - 1 : 0] branch1_1;
    wire [N - 1 : 0] branch1_2;
    wire [N - 1 : 0] branch1_3;
    wire [N - 1 : 0] branch1_4;
    wire [N - 1 : 0] branch1_5;
    wire [N - 1 : 0] branch1_6;
    wire [N - 1 : 0] branch1_7;
    wire [N - 1 : 0] branch1_8;
    wire [N - 1 : 0] branch1_9;
    wire [N - 1 : 0] branch1_10;
    wire [N - 1 : 0] branch1_11;
    wire [N - 1 : 0] branch1_12;
    

    N_comp3_2 
    #(
        .N(N)
    )
    comp1_1
    (
        .A(pp0),
        .B(pp1),
        .C(pp2),
        .num1(branch1_1),
        .num2(branch1_2)  
    );
    
    N_comp3_2 
    #(
        .N(N)
    )
    comp1_2
    (
        .A(pp3),
        .B(pp4),
        .C(pp5),
        .num1(branch1_3),
        .num2(branch1_4)  
    );
    
    N_comp3_2 
    #(
        .N(N)
    )
    comp1_3
    (
        .A(pp6),
        .B(pp7),
        .C(pp8),
        .num1(branch1_5),
        .num2(branch1_6)  
    );

    N_comp3_2 
    #(
        .N(N)
    )
    comp1_4
    (
        .A(pp9),
        .B(pp10),
        .C(pp11),
        .num1(branch1_7),
        .num2(branch1_8)  
    );

    N_comp3_2 
    #(
        .N(N)
    )
    comp1_5
    (
        .A(pp12),
        .B(pp13),
        .C(pp14),
        .num1(branch1_9),
        .num2(branch1_10)  
    );
    
    N_comp3_2 
    #(
        .N(N)
    )
    comp1_6
    (
        .A(pp15),
        .B(pp16),
        .C(sign_compensation),
        .num1(branch1_11),
        .num2(branch1_12)  
    );

    //第二层
    wire [N - 1 : 0] branch2_1;
    wire [N - 1 : 0] branch2_2;
    wire [N - 1 : 0] branch2_3;
    wire [N - 1 : 0] branch2_4;
    wire [N - 1 : 0] branch2_5;
    wire [N - 1 : 0] branch2_6;
    wire [N - 1 : 0] branch2_7;
    wire [N - 1 : 0] branch2_8;
    
    
    N_comp3_2 
    #(
        .N(N)
    )
    comp2_1
    (
        .A(branch1_1),
        .B(branch1_2),
        .C(branch1_3),
        .num1(branch2_1),
        .num2(branch2_2)  
    );
    
    N_comp3_2 
    #(
        .N(N)
    )
    comp2_2
    (
        .A(branch1_4),
        .B(branch1_5),
        .C(branch1_6),
        .num1(branch2_3),
        .num2(branch2_4)  
    );

    N_comp3_2 
    #(
        .N(N)
    )
    comp2_3
    (
        .A(branch1_7),
        .B(branch1_8),
        .C(branch1_9),
        .num1(branch2_5),
        .num2(branch2_6)  
    );
    
    N_comp3_2 
    #(
        .N(N)
    )
    comp2_4
    (
        .A(branch1_10),
        .B(branch1_11),
        .C(branch1_12),
        .num1(branch2_7),
        .num2(branch2_8)  
    );

    //第三层
    wire [N - 1 : 0] branch3_1;
    wire [N - 1 : 0] branch3_2;
    wire [N - 1 : 0] branch3_3;
    wire [N - 1 : 0] branch3_4;
    
    N_comp3_2 
    #(
        .N(N)
    )
    comp3_1
    (
        .A(branch2_1),
        .B(branch2_2),
        .C(branch2_3),
        .num1(branch3_1),
        .num2(branch3_2)  
    );
    
    N_comp3_2 
    #(
        .N(N)
    )
    comp3_2
    (
        .A(branch2_4),
        .B(branch2_5),
        .C(branch2_6),
        .num1(branch3_3),
        .num2(branch3_4)  
    );
    
    //第四层
    wire [N - 1 : 0] branch4_1;
    wire [N - 1 : 0] branch4_2;
    wire [N - 1 : 0] branch4_3;
    wire [N - 1 : 0] branch4_4;
    
    N_comp3_2 
    #(
        .N(N)
    )
    comp4_1
    (
        .A(branch3_1),
        .B(branch3_2),
        .C(branch3_3),
        .num1(branch4_1),
        .num2(branch4_2)  
    );
    
    N_comp3_2 
    #(
        .N(N)
    )
    comp4_2
    (
        .A(branch3_4),
        .B(branch2_7),
        .C(branch2_8),
        .num1(branch4_3),
        .num2(branch4_4)  
    );
    
    //第五层
    N_comp4_2 
    #(
        .N(N)
    )
    comp5_1
    (
        .A(branch4_1),
        .B(branch4_2),
        .C(branch4_3),
        .D(branch4_4),
        .num1(opdata1),
        .num2(opdata2)
    );
    

endmodule
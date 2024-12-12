module comp3_2
(
    input a,
    input b,
    input cin,
    output cout,
    output s
);

    assign {cout, s} = a + b + cin;




endmodule 


module N_comp3_2
#(
    parameter N = 8
)
(
    input [N - 1 : 0] A,
    input [N - 1 : 0] B,
    input [N - 1 : 0] C,
    output [N - 1 : 0] num1,
    output [N - 1 : 0] num2
);

    wire [N - 1 : 0] c_temp_int;
    genvar i;
    generate 
        for(i=0;i<N;i=i+1) begin : N_comp
            comp3_2 c
            (
                .a(A[i]),
                .b(B[i]),
                .cin(C[i]),
                .cout(c_temp_int[i]),
                .s(num2[i])
            );
        end
    endgenerate


    assign num1 = {c_temp_int[N - 2 : 0], 1'b0};


endmodule

module comp4_2
(
    input i1,
    input i2,
    input i3,
    input i4,
    input cin,
    output cout,
    output c,
    output s
);

    wire s_temp;
    assign {cout, s_temp} = i1 + i2 + i3;
    assign {c, s} = s_temp + i4 + cin;






endmodule 

module N_comp4_2
#(
    parameter N = 8
)
(
    input [N - 1 : 0] A,
    input [N - 1 : 0] B,
    input [N - 1 : 0] C,
    input [N - 1 : 0] D,
    output [N - 1 : 0] num1,
    output [N - 1 : 0] num2
);

    
    wire [N : 0] c_temp_int;
    assign c_temp_int[0] = 1'b0;
    
    wire [N - 1 : 0] c_temp;
    
    genvar i;
    generate 
        for(i=0;i<N;i=i+1) begin : N_comp
            comp4_2 c
            (
                .i1(A[i]),
                .i2(B[i]),
                .i3(C[i]),
                .i4(D[i]),
                .cin(c_temp_int[i]),
                .cout(c_temp_int[i+1]),
                .c(c_temp[i]),
                .s(num2[i])
            );
        end
    endgenerate

    assign num1 = {c_temp[N - 2 : 0], 1'b0};
endmodule 
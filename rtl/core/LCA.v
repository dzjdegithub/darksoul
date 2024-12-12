//超前进位加法器




module LCA
#(
    parameter N = 32
)
(
    input [N - 1 : 0] opdata1,
    input [N - 1 : 0] opdata2,
    output [N - 1 : 0] sum,
    output cout
);

    wire [N >> 2 : 0] c;
    assign c[0] = 1'b0;
    assign cout = c[N >> 2];
    
    genvar i;
    generate
        for(i=0;i<(N>>2);i=i+1) begin : lca
            LCA_4 LCA_4_inst
            (
                .a(opdata1[i * 4 + 3 : i * 4]),
                .b(opdata2[i * 4 + 3 : i * 4]),
                .cin(c[i]),
                .s(sum[i * 4 + 3 : i * 4]),
                .cout(c[i + 1])
            );
        end
    endgenerate



endmodule




module LCA_4
(
    input [3 : 0] a,
    input [3 : 0] b,
    input cin,
    output [3 : 0] s,
    output cout
);

    wire [3 : 0] P;
    wire [3 : 0] G;
    wire [4 : 0] c;
    
    assign c[0] = cin;
    assign cout = c[4];
    
    genvar i;
    generate 
        for(i=0;i<4;i=i+1) begin : LCA_4
            assign P[i] = a[i] ^ b[i];
            assign G[i] = a[i] & b[i];
            assign c[i+1] = G[i] | (c[i] & P[i]);
            assign s[i] = P[i] ^ c[i];
        end
    endgenerate
 

endmodule
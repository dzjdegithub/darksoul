module booth_encoder
(
    input [33 : 0] multiplier2,
    output [16 : 0] set0,
    output [16 : 0] x2,
    output [16 : 0] inv
);

    wire [34 : 0] mul2;
    assign mul2 = {multiplier2, 1'b0};
    wire [2 : 0] bits [16 : 0];
    
    
    assign bits[0] = mul2[2 : 0];
    assign bits[1] = mul2[4 : 2];
    assign bits[2] = mul2[6 : 4];
    assign bits[3] = mul2[8 : 6];
    assign bits[4] = mul2[10 : 8];
    assign bits[5] = mul2[12 : 10];
    assign bits[6] = mul2[14 : 12];
    assign bits[7] = mul2[16 : 14];
    assign bits[8] = mul2[18 : 16];
    assign bits[9] = mul2[20 : 18];
    assign bits[10] = mul2[22 : 20];
    assign bits[11] = mul2[24 : 22];
    assign bits[12] = mul2[26 : 24];
    assign bits[13] = mul2[28 : 26];
    assign bits[14] = mul2[30 : 28];
    assign bits[15] = mul2[32 : 30];
    assign bits[16] = mul2[34 : 32];

    genvar i;
    generate 
        for(i=0;i<17;i=i+1) begin: encoder
            assign set0[i] = (&bits[i] | (&(~bits[i])));
            assign x2[i] = ((bits[i] == 3'b011) | (bits[i] == 3'b100));
            assign inv[i] = bits[i][2];
        end
    endgenerate

endmodule
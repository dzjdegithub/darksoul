module mul_tb;

    reg [31 : 0] m1, m2;
    wire [33 : 0] multiplier1;
    wire [33 : 0] multiplier2;
    
    // assign multiplier1 = {m1[31], m1[31], m1};
    assign multiplier1 = {2'b00, m1};
    // assign multiplier2 = {m2[31], m2[31], m2};
    assign multiplier2 = {2'b00, m2};
    
    wire [67 : 0] pp0;
    wire [67 : 0] pp1;
    wire [67 : 0] pp2;
    wire [67 : 0] pp3;
    wire [67 : 0] pp4;
    wire [67 : 0] pp5;
    wire [67 : 0] pp6;
    wire [67 : 0] pp7;
    wire [67 : 0] pp8;
    wire [67 : 0] pp9;
    wire [67 : 0] pp10;
    wire [67 : 0] pp11;
    wire [67 : 0] pp12;
    wire [67 : 0] pp13;
    wire [67 : 0] pp14;
    wire [67 : 0] pp15;
    wire [67 : 0] pp16;
    wire [67 : 0] sign_compensation;
    wire [67 : 0] opdata1, opdata2;
    
    wire [16 : 0] set0;
    wire [16 : 0] x2;
    wire [16 : 0] inv;
    wire [67 : 0] sum;
    wire [63:0] sum_64 = sum[63:0];
    
    booth_encoder b1
    (
        .multiplier2(multiplier2),
        .set0(set0),
        .x2(x2),
        .inv(inv)
    );
    
    pp_gen p1
    (
        multiplier1,
        set0,
        x2,
        inv,
        pp0,
        pp1,
        pp2,
        pp3,
        pp4,
        pp5,
        pp6,
        pp7,
        pp8,
        pp9,
        pp10,
        pp11,
        pp12,
        pp13,
        pp14,
        pp15,
        pp16,
        sign_compensation
    );
    
    wallace_tree wt
    (
        pp0,
        pp1,
        pp2,
        pp3,
        pp4,
        pp5,
        pp6,
        pp7,
        pp8,
        pp9,
        pp10,
        pp11,
        pp12,
        pp13,
        pp14,
        pp15,
        pp16,
        sign_compensation,
        opdata1,
        opdata2
    );
    
    LCA
    #(
        .N(68)
    )
    LCA_inst
    (
        opdata1,
        opdata2,
        sum
    );
    
    
    
    initial begin
        m1 = 8;
        m2 = 6;
        #20
        m1 = -10;
        m2 = -15;
        #20
        m1 = -170;
        m2 = 2;
        #20 
        m1 = 60;
        m2 = -30;
        #20
        m1 = 123456789;
        m2 = -10;
        #20
        m1 = 1111111111;
        m2 = -9;
        #20
        m1 = 'hFFFFFFFF;
        m2 = 'hFFFFFFFF;
    end
    
endmodule 
module pp_gen
(
    input [33 : 0] multiplier1,
    input [16 : 0] set0,
    input [16 : 0] x2,
    input [16 : 0] inv,
    output [67 : 0] pp0,
    output [67 : 0] pp1,
    output [67 : 0] pp2,
    output [67 : 0] pp3,
    output [67 : 0] pp4,
    output [67 : 0] pp5,
    output [67 : 0] pp6,
    output [67 : 0] pp7,
    output [67 : 0] pp8,
    output [67 : 0] pp9,
    output [67 : 0] pp10,
    output [67 : 0] pp11,
    output [67 : 0] pp12,
    output [67 : 0] pp13,
    output [67 : 0] pp14,
    output [67 : 0] pp15,
    output [67 : 0] pp16,
    output [67 : 0] sign_compensation
);

    wire [34 : 0] pp_x2 [16 : 0];
    wire [34 : 0] pp_x2_set0 [16 : 0];
    wire [34 : 0] pp_temp [16 : 0];

    // wire [16 : 0] E;
    // wire _E;  //~E
    
    genvar i;
    generate 
        for(i=0;i<17;i=i+1) begin: pp_temp_gen
            assign pp_x2[i] = (x2[i]) ? {multiplier1,1'b0} : {multiplier1[33], multiplier1};   
            assign pp_x2_set0[i] = (set0[i]) ? 35'b0 : pp_x2[i];
            assign pp_temp[i] = (inv[i]) ? ~pp_x2_set0[i] : pp_x2_set0[i];
            // assign E[i] = ~(multiplier1[33] ^ inv[i]);
        end
    endgenerate
    
    // assign _E = ~E[0];
    
    assign pp0 = {{33{pp_temp[0][34]}}, pp_temp[0]}; //68-35
    assign pp1 = {{31{pp_temp[1][34]}}, pp_temp[1], 2'b0};  
    assign pp2 = {{29{pp_temp[2][34]}}, pp_temp[2], 4'b0};
    assign pp3 = {{27{pp_temp[3][34]}}, pp_temp[3], 6'b0};
    assign pp4 = {{25{pp_temp[4][34]}}, pp_temp[4], 8'b0};
    assign pp5 = {{23{pp_temp[5][34]}}, pp_temp[5], 10'b0};
    assign pp6 = {{21{pp_temp[6][34]}}, pp_temp[6], 12'b0};
    assign pp7 = {{19{pp_temp[7][34]}}, pp_temp[7], 14'b0};
    assign pp8 = {{17{pp_temp[8][34]}}, pp_temp[8], 16'b0};
    assign pp9 = {{15{pp_temp[9][34]}}, pp_temp[9], 18'b0};
    assign pp10 = {{13{pp_temp[10][34]}}, pp_temp[10], 20'b0};
    assign pp11 = {{11{pp_temp[11][34]}}, pp_temp[11], 22'b0};
    assign pp12 = {{9{pp_temp[12][34]}}, pp_temp[12], 24'b0};
    assign pp13 = {{7{pp_temp[13][34]}}, pp_temp[13], 26'b0};
    assign pp14 = {{5{pp_temp[14][34]}}, pp_temp[14], 28'b0};//28+34+2
    assign pp15 = {{3{pp_temp[15][34]}}, pp_temp[15], 30'b0};
    assign pp16 = {{1{pp_temp[16][34]}}, pp_temp[16], 32'b0};

    assign sign_compensation = {35'b0, inv[16], 1'b0, inv[15], 1'b0, inv[14], 1'b0, inv[13], 1'b0, inv[12], 1'b0, inv[11], 1'b0, inv[10], 1'b0, inv[9], 1'b0, inv[8], 1'b0, inv[7], 1'b0, inv[6], 1'b0, inv[5], 1'b0, inv[4], 1'b0, inv[3], 1'b0, inv[2], 1'b0, inv[1], 1'b0, inv[0]};



endmodule 
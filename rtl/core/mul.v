`include "defines.v"


module mul
(
    input clk,
    input rst_n,
    
    input pipe_flush,
    
    input ex_is_mul_inst,
    input ex_word_sel,
    
    input [`XLEN - 1 : 0] m1,
    input [`XLEN - 1 : 0] m2,
    input [1 : 0] ex_sign_extend,  
    
    output mul_done,
    output [`XLEN - 1 : 0] mul_res
);

    reg [33 : 0] multiplier1, multiplier2;
    always @(*) begin
        case(ex_sign_extend)
        
            `UNSIGNED_UNSIGNED : begin
                multiplier1 = {2'b00, m1};
                multiplier2 = {2'b00, m2};
            end
            
            `SIGNED_SIGNED : begin
                multiplier1 = {m1[`XLEN - 1], m1[`XLEN - 1], m1};
                multiplier2 = {m2[`XLEN - 1], m2[`XLEN - 1], m2};
            end
            
            `UNSIGNED_SIGNED : begin
                multiplier1 = {m1[`XLEN - 1], m1[`XLEN - 1], m1};
                multiplier2 = {2'b00, m2};
            end
            
            default : begin
                multiplier1 = {2'b00, m1};
                multiplier2 = {2'b00, m2};
            end
        endcase
    end
    
    wire [16 : 0] set0, x2, inv;
    booth_encoder booth_encoder_instance
    (
        .multiplier2(multiplier2),
        .set0(set0),
        .x2(x2),
        .inv(inv)
    );

    reg [33 : 0] multiplier1_reg;
    reg [16 : 0] set0_reg;
    reg [16 : 0] x2_reg;
    reg [16 : 0] inv_reg;
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            multiplier1_reg <= 'b0;
            set0_reg <= 'b0;
            x2_reg <= 'b0;
            inv_reg <= 'b0;
        end
        else if(ex_is_mul_inst) begin
            multiplier1_reg <= multiplier1;
            set0_reg <= set0;
            x2_reg <= x2;
            inv_reg <= inv;
        end
        else begin
            multiplier1_reg <= multiplier1_reg;
            set0_reg <= set0_reg;
            x2_reg <= x2_reg;
            inv_reg <= inv_reg;
        end
    end

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

    pp_gen pp_gen_instance
    (
        .multiplier1(multiplier1_reg),
        .set0(set0_reg),
        .x2(x2_reg),
        .inv(inv_reg),
        .pp0(pp0),
        .pp1(pp1),
        .pp2(pp2),
        .pp3(pp3),
        .pp4(pp4),
        .pp5(pp5),
        .pp6(pp6),
        .pp7(pp7),
        .pp8(pp8),
        .pp9(pp9),
        .pp10(pp10),
        .pp11(pp11),
        .pp12(pp12),
        .pp13(pp13),
        .pp14(pp14),
        .pp15(pp15),
        .pp16(pp16),
        .sign_compensation(sign_compensation)
    );

    reg [67 : 0] pp0_reg;
    reg [67 : 0] pp1_reg;
    reg [67 : 0] pp2_reg;
    reg [67 : 0] pp3_reg;
    reg [67 : 0] pp4_reg;
    reg [67 : 0] pp5_reg;
    reg [67 : 0] pp6_reg;
    reg [67 : 0] pp7_reg;
    reg [67 : 0] pp8_reg;
    reg [67 : 0] pp9_reg;
    reg [67 : 0] pp10_reg;
    reg [67 : 0] pp11_reg;
    reg [67 : 0] pp12_reg;
    reg [67 : 0] pp13_reg;
    reg [67 : 0] pp14_reg;
    reg [67 : 0] pp15_reg;
    reg [67 : 0] pp16_reg;
    reg [67 : 0] sign_compensation_reg;
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            pp0_reg  <= 68'b0;
            pp1_reg  <= 68'b0;
            pp2_reg  <= 68'b0;
            pp3_reg  <= 68'b0;
            pp4_reg  <= 68'b0;
            pp5_reg  <= 68'b0;
            pp6_reg  <= 68'b0;
            pp7_reg  <= 68'b0;
            pp8_reg  <= 68'b0;
            pp9_reg  <= 68'b0;
            pp10_reg <= 68'b0;
            pp11_reg <= 68'b0;
            pp12_reg <= 68'b0;
            pp13_reg <= 68'b0;
            pp14_reg <= 68'b0;
            pp15_reg <= 68'b0;
            pp16_reg <= 68'b0;
            sign_compensation_reg <= 68'b0;
        end
        else if(ex_is_mul_inst) begin
            pp0_reg  <= pp0;
            pp1_reg  <= pp1;
            pp2_reg  <= pp2;
            pp3_reg  <= pp3;
            pp4_reg  <= pp4;
            pp5_reg  <= pp5;
            pp6_reg  <= pp6;
            pp7_reg  <= pp7;
            pp8_reg  <= pp8;
            pp9_reg  <= pp9;
            pp10_reg <= pp10;
            pp11_reg <= pp11;
            pp12_reg <= pp12;
            pp13_reg <= pp13;
            pp14_reg <= pp14;
            pp15_reg <= pp15;
            pp16_reg <= pp16;
            sign_compensation_reg <= sign_compensation;
        end
        else begin
            pp0_reg  <= pp0_reg;
            pp1_reg  <= pp1_reg;
            pp2_reg  <= pp2_reg;
            pp3_reg  <= pp3_reg;
            pp4_reg  <= pp4_reg;
            pp5_reg  <= pp5_reg;
            pp6_reg  <= pp6_reg;
            pp7_reg  <= pp7_reg;
            pp8_reg  <= pp8_reg;
            pp9_reg  <= pp9_reg;
            pp10_reg <= pp10_reg;
            pp11_reg <= pp11_reg;
            pp12_reg <= pp12_reg;
            pp13_reg <= pp13_reg;
            pp14_reg <= pp14_reg;
            pp15_reg <= pp15_reg;
            pp16_reg <= pp16_reg;
            sign_compensation_reg <= sign_compensation_reg;
        end
    end
    
    wire [67 : 0] opdata1, opdata2;
    
    wallace_tree 
    #(
        .N(68)
    )
    wallace_tree_instance
    (
        .pp0(pp0_reg),
        .pp1(pp1_reg),
        .pp2(pp2_reg),
        .pp3(pp3_reg),
        .pp4(pp4_reg),
        .pp5(pp5_reg),
        .pp6(pp6_reg),
        .pp7(pp7_reg),
        .pp8(pp8_reg),
        .pp9(pp9_reg),
        .pp10(pp10_reg),
        .pp11(pp11_reg),
        .pp12(pp12_reg),
        .pp13(pp13_reg),
        .pp14(pp14_reg),
        .pp15(pp15_reg),
        .pp16(pp16_reg),
        .sign_compensation(sign_compensation_reg),
        .opdata1(opdata1),
        .opdata2(opdata2)
    );
    
    reg [67 : 0] opdata1_reg, opdata2_reg;
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            opdata1_reg <= 'b0;
            opdata2_reg <= 'b0;
        end
        else if(ex_is_mul_inst) begin
            opdata1_reg <= opdata1;
            opdata2_reg <= opdata2;
        end
        else begin
            opdata1_reg <= opdata1_reg;
            opdata2_reg <= opdata2_reg;
        end
    end
    
    wire [67 : 0] sum;
    LCA 
    #(
        .N(68)
    )
    LCA_instance
    (
        .opdata1(opdata1_reg),
        .opdata2(opdata2_reg),
        .sum(sum),
        .cout()
    );
    //第一周期0 booth编码 第二周期1 部分积生成 第三周期2 部分积压缩 第四周期3 超前进位加法器
    reg [1 : 0] cnt;
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE)
            cnt <= 'b0;
        else if(pipe_flush == `FLUSH)
            cnt <= 'b0;
        else if(ex_is_mul_inst)
            cnt <= cnt + 1'b1;
        else
            cnt <= 'b0;
    end
    
    
    assign mul_res = (ex_word_sel == `HIGH) ? sum[63 : 32] : sum[31 : 0];
    assign mul_done = (cnt == 2'b11);
endmodule
`include "defines.v"

module div
(
    input clk,
    input rst_n,
    
    input pipe_flush,
    
    input ex_is_div_inst,
    input ex_div_sign,
    input [`XLEN - 1 : 0] dividend,
    input [`XLEN - 1 : 0] divisor,

    output div_done,
    input ex_div_res_sel,
    output [`XLEN - 1 : 0] div_res
);

    wire [`XLEN - 1 : 0] dividend_abs;
    wire [`XLEN - 1 : 0] dividend_abs_neg;
    assign dividend_abs_neg = (~dividend) + 32'd1;
    
    wire [`XLEN - 1 : 0] divisor_abs;
    wire [`XLEN - 1 : 0] divisor_abs_neg;
    assign divisor_abs_neg = (~divisor) + 32'd1;
    
    wire [`XLEN : 0] divisor_ext;
    wire [63 : 0] dividend_ext; //求绝对值后扩展
    
    
    assign dividend_abs = ex_div_sign ? ((dividend[`XLEN - 1]) ? dividend_abs_neg : dividend) : dividend;
    assign divisor_abs = ex_div_sign ? ((divisor[`XLEN - 1]) ? divisor_abs_neg : divisor) : divisor;
    assign dividend_ext = {32'b0, dividend_abs};
    assign divisor_ext = {1'b0, divisor_abs};
    
    
    /*
        被除数 除数 商 余数
        正     正   正  正
        正     负   负  正
        负     正   负  负
        负     负   正  负
    */
    wire quotient_is_neg, remainder_is_neg;
    
    assign quotient_is_neg = (dividend[`XLEN - 1] ^ divisor[`XLEN - 1]);
    assign remainder_is_neg = dividend[`XLEN - 1];

    reg [`XLEN - 1 : 0] quotient_temp;
    reg [63 : 0] dividend_temp, divisor_temp;
    reg [5 : 0] cnt;
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) 
            cnt <= 'b0;
        else if(pipe_flush == `FLUSH)
            cnt <= 'b0;
        else if(cnt == 'd33)
            cnt <= 'b0;
        else if(ex_is_div_inst)
            cnt <= cnt + 1'b1;
        else
            cnt <= 'b0;
    end
    
    assign div_done = (cnt == 6'd33);
    
    wire [63 : 0] sub_res;
    assign sub_res = dividend_temp - divisor_temp;
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            dividend_temp <= 'b0;
            divisor_temp <= 'b0;
            quotient_temp <= 'b0;
        end
        else if(ex_is_div_inst) begin
            if(cnt == 6'b0) begin
                dividend_temp <= dividend_ext;
                divisor_temp <= {divisor_ext, 31'b0};
                quotient_temp <= 'b0;
            end
            else if(cnt != 6'd33) begin
                dividend_temp <= (~sub_res[63]) ? sub_res : dividend_temp;
                divisor_temp <= divisor_temp >> 1;
                quotient_temp <= {quotient_temp[30 : 0], ~sub_res[63]};
            end
            else begin
                dividend_temp <= dividend_temp;
                divisor_temp <= divisor_temp;
                quotient_temp <= quotient_temp;
            end
        end
        else begin
            dividend_temp <= dividend_temp;
            divisor_temp <= divisor_temp;
            quotient_temp <= quotient_temp;
        end
    end

    wire [`XLEN - 1 : 0] remainder_temp;
    assign remainder_temp = dividend_temp[`XLEN - 1 : 0];

    wire [`XLEN - 1 : 0] quotient, remainder, quotient_inv, remainder_inv;
    wire quotient_sign_neq, remainder_sign_neq;
    assign quotient_sign_neq = (quotient_is_neg ^ quotient_temp[`XLEN - 1]);
    assign remainder_sign_neq = (remainder_is_neg ^ remainder_temp[`XLEN - 1]);
    assign quotient_inv = (~quotient_temp) + 32'd1;
    assign remainder_inv = (~remainder_temp) + 32'd1;
    
    assign quotient = divisor == 32'b0 ? 32'hffff_ffff :
                      ex_div_sign ? (quotient_sign_neq ? quotient_inv : quotient_temp) : quotient_temp;
    assign remainder = ex_div_sign ? (remainder_sign_neq ? remainder_inv : remainder_temp) : remainder_temp;
    
    assign div_res = (ex_div_res_sel == `REMAINDER) ? remainder : quotient;
    
endmodule 
module div_tb;
    reg clk, rst_n, ex_is_div_inst, ex_div_sign;
    reg [31 : 0] dividend, divisor;
    wire div_done;
    reg ex_div_res_sel;
    wire [31 : 0] div_res;

    initial begin
        clk = 1;
    end
    always #10 clk = ~clk;
    
    initial begin
        rst_n = 0;
        ex_is_div_inst = 0;
        ex_div_sign = 1;
        ex_div_res_sel = 0;
        #20
        rst_n = 1;
        ex_is_div_inst = 1;
        ex_div_res_sel = 1;
        dividend = -8;
        divisor = -5;
        #680
        ex_div_sign = 0;
        ex_div_res_sel = 0;
        dividend = 99;
        divisor = 11;
        #680
        ex_is_div_inst = 0;
        #1000
        ex_is_div_inst = 1;
        ex_div_res_sel = 0;
        ex_div_sign = 1;
        dividend = 89;
        divisor = -11;
    end

    div div_inst
    (
        clk,
        rst_n,
        ex_is_div_inst,
        ex_div_sign,
        dividend,
        divisor,
        div_done,
        ex_div_res_sel,
        div_res
    );
    

endmodule
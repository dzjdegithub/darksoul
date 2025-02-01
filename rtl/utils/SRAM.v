//将指令中地址的低两位去除 给dram的地址输入,先不考虑非对齐访问

`include "defines.v"

module SRAM
#(
    parameter DEPTH = 4096,
    parameter WIDTH = 32
)
(
    input clk,
    input rst_n,
    
    input cs,
    
    input re1,
    input [`XLEN - 3 : 0] mem_raddr1,   
    output  [`XLEN - 1 : 0] mem_rdata1,
    
    input re2,
    input [`XLEN - 3 : 0] mem_raddr2,   
    output  [`XLEN - 1 : 0] mem_rdata2,  //到mem阶段再进行扩展
    
    input we,
    input [3 : 0] byte_we, //将s_mask 和 地址的低两位做运算生成此信号
    input [`XLEN - 3 : 0] mem_waddr,
    input [`XLEN - 1 : 0] mem_wdata,        //写数据是RS2
    
    output mem_raw_risk
);

    RAM
    #(
        .DEPTH(DEPTH),
        .WIDTH(WIDTH)
    )
    ram_inst
    (
        .clk(clk),
        .rst(rst_n),
        
        .cs(cs),
        
        .we(we),
        .byte_we(byte_we),
        .waddr({2'b00,mem_waddr}),
        .wdata(mem_wdata),
        
        .re1(re1),
        .raddr1({2'b00,mem_raddr1}),
        .rdata1(mem_rdata1),
        
        .re2(re2),
        .raddr2({2'b00,mem_raddr2}),
        .rdata2(mem_rdata2)
    );
    
    assign mem_raw_risk = ((mem_raddr1 == mem_waddr) & we);





endmodule 
//寄存器堆

`include "defines.v"

module regfile
(
    input clk,
    input rst_n,

    input [`RF_ADDR_WIDTH - 1 : 0] rf_raddr1,
    output [`XLEN - 1 : 0] rf_rdata1,
    input [`RF_ADDR_WIDTH - 1 : 0] rf_raddr2,
    output [`XLEN - 1 : 0] rf_rdata2,
    
    input rf_wen,
    input [`RF_ADDR_WIDTH - 1 : 0] rf_waddr,
    input [`XLEN - 1 : 0] rf_wdata
);
    
    reg [`XLEN - 1 : 0] rf [`REG_NUM - 1 : 0];

    assign rf_rdata1 = (rf_raddr1 == `X0) ? `ZEROWORD :
                       (rf_raddr1 == rf_waddr) ? rf_wdata :
                       rf[rf_raddr1];
    
    assign rf_rdata2 = (rf_raddr2 == `X0) ? `ZEROWORD :
                       (rf_raddr2 == rf_waddr) ? rf_wdata :
                       rf[rf_raddr2];
    
    integer i;
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE)
            for(i=0;i<`REG_NUM;i=i+1) begin
                rf[i] <= `ZEROWORD;
            end
        else if(rf_wen == `ENABLE) begin
            if(rf_waddr == `X0)
                rf[rf_waddr] <= `ZEROWORD;
            else
                rf[rf_waddr] <= rf_wdata;
        end 
        else
            rf[rf_waddr] <= rf[rf_waddr];
    end
            

endmodule 
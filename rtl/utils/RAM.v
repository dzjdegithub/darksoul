//TODO 后期合并iram和dram有同时读写相同地址的问题需要更改

`include "../core/defines.v"

module RAM
#(
    parameter DEPTH = 512,
    parameter WIDTH = 32
)
(
    input clk,
    input rst,
    
    input cs,   //片选
    
    input we,
    input [3 : 0] byte_we, 
    input [`XLEN - 1 : 0] waddr,
    input [`XLEN - 1 : 0] wdata,
    
    input re1,
    input [`XLEN - 1 : 0] raddr1,
    output reg [`XLEN - 1 : 0] rdata1,
     
    input re2,
    input [`XLEN - 1 : 0] raddr2,
    output reg [`XLEN - 1 : 0] rdata2
);

    reg [WIDTH - 1 : 0] ram [DEPTH - 1 : 0];
    
    always @(posedge clk or `RST_EDGE rst) begin
        if(rst == `RAM_RST_ENABLE)
            rdata1 <= `ZEROWORD;
        else if((re1&cs) == `RAM_READ_ENABLE)
            rdata1 <= ram[raddr1];
        else
            rdata1 <= rdata1;
    end
            
    always @(posedge clk or `RST_EDGE rst) begin
        if(rst == `RAM_RST_ENABLE)
            rdata2 <= `ZEROWORD;
        else if((re2&cs) == `RAM_READ_ENABLE)
            rdata2 <= ram[raddr2];
        else
            rdata2 <= rdata2;
    end
    
    
    integer i;
    
    always @(posedge clk or `RST_EDGE rst) begin
        if(rst == `RAM_RST_ENABLE) begin
            for(i=0;i<DEPTH;i=i+1) begin
                ram[i] <= `ZEROWORD;
            end 
        end
        else if((we&&cs) == `RAM_WRITE_ENABLE) begin
            if(byte_we == 4'b0001)
                ram[waddr][7:0] <= wdata[7:0];
            else if(byte_we == 4'b0010)
                ram[waddr][15:8] <= wdata[7:0];
            else if(byte_we == 4'b0100)
                ram[waddr][23:16] <= wdata[7:0];
            else if(byte_we == 4'b1000)
                ram[waddr][31:24] <= wdata[7:0];
            else if(byte_we == 4'b0011)
                ram[waddr][15:0] <= wdata[15:0];
            else if(byte_we == 4'b1100)
                ram[waddr][31:16] <= wdata[15:0];
            else if(byte_we == 4'b1111)
                ram[waddr] <= wdata;
            else 
                ram[waddr] <= ram[waddr];
        end
        else begin
            ram[waddr] <= ram[waddr];
        end
    end
            
    




endmodule 
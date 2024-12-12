

`include "defines.v"

module mem_wb
(
    input clk,
    input rst_n,
    
    //hand
    input ex_mem_valid,

    output reg mem_valid,
    output mem_allowin,


    
    //mem 
    input [`XLEN - 1 : 0] mem_pc,
    input [`XLEN - 1 : 0] mem_inst,
    input mem_req_rf,
    input [`RF_ADDR_WIDTH - 1 : 0] mem_rf_waddr,
    input [`XLEN - 1 : 0] mem_wb_data,
    
    //wb
    output reg [`XLEN - 1 : 0] wb_pc,
    output reg [`XLEN - 1 : 0] wb_inst,
    output reg wb_rf_we,
    output reg [`RF_ADDR_WIDTH - 1 : 0] wb_rf_waddr,
    output reg [`XLEN - 1 : 0] wb_wb_data,
    
    output reg wb_valid
);

    wire mem_ready_go;
    wire mem_wb_valid;
    wire wb_allowin;
    
    assign wb_allowin = 1'b1;
    assign mem_ready_go = 1'b1; //目前一周期就能访存
    assign mem_allowin = (mem_ready_go && wb_allowin);
    assign mem_wb_valid = (mem_valid && mem_ready_go);
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE)
            mem_valid <= `FALSE;
        else if(mem_allowin)
            mem_valid <= ex_mem_valid;
        else
            mem_valid <= mem_valid;
    end
    

    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE)
            wb_valid <= `FALSE;
        else if(wb_allowin)
            wb_valid <= mem_wb_valid;
        else
            wb_valid <= wb_valid;
    end 

    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            wb_pc <= `ZEROWORD;
            wb_inst <= `ZEROWORD;
            wb_rf_we <= `DISABLE;
            wb_rf_waddr <= `RF_ADDR_WIDTH'b0;
            wb_wb_data <= `ZEROWORD;
        end
        else if(mem_wb_valid && wb_allowin) begin
            wb_pc <= mem_pc;
            wb_inst <= mem_inst;
            wb_rf_we <= mem_req_rf;
            wb_rf_waddr <= mem_rf_waddr;
            wb_wb_data <= mem_wb_data;
        end
        else begin
            wb_pc <= wb_pc;
            wb_inst <= wb_inst;
            wb_rf_we <= wb_rf_we; //写使能有可能需要更改
            wb_rf_waddr <= wb_rf_waddr;
            wb_wb_data <= wb_wb_data;
        end
        
    end 



endmodule 
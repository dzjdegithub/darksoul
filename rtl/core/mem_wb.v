

`include "defines.v"

module mem_wb
(
    input clk,
    input rst_n,
    
    input pipe_flush,
    
    input mem_we,
    input mem_re,
    input store_hand_suc,
    input load_hand_suc,
    
    //hand
    input ex_mem_valid,

    output reg mem_valid,
    output mem_allowin,
    output mem_wb_valid,

    // input int_flag,
    
    //mem 
    input [`XLEN - 1 : 0] mem_pc,
    input [`XLEN - 1 : 0] mem_inst,
    input mem_req_rf,
    input [`RF_ADDR_WIDTH - 1 : 0] mem_rf_waddr,
    input [`XLEN - 1 : 0] mem_wb_data,
    input mem_exp_flag,
    input mem_int_flag,
    input ex2mem_inst_addr_misal,
    input ex2mem_is_illg_inst,
    input ex2mem_is_ecall_inst,
    input ex2mem_is_ebreak_inst,
    
    //wb
    output reg [`XLEN - 1 : 0] wb_pc,
    output reg [`XLEN - 1 : 0] wb_inst,
    output  wb_rf_we,
    output reg [`RF_ADDR_WIDTH - 1 : 0] wb_rf_waddr,
    output reg [`XLEN - 1 : 0] wb_wb_data,
    
    output wb_exp_flag,
    output wb_int_flag,
    output wb_exp_int_flag,
    output reg wb_inst_addr_misal,
    output reg wb_is_illg_inst,
    output reg wb_is_ecall_inst,
    output reg wb_is_ebreak_inst,
    
    output reg wb_valid
);

    wire mem_ready_go;
    wire wb_allowin;
    
    assign wb_allowin = 1'b1;
    assign mem_ready_go = (mem_we & mem_valid) ? store_hand_suc :
                          (mem_re & mem_valid) ? load_hand_suc  :
                          1'b1;
    assign mem_allowin = (mem_ready_go && wb_allowin);
    assign mem_wb_valid = (mem_valid && mem_ready_go);
    
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE)
            mem_valid <= `FALSE;
        else if(pipe_flush == `FLUSH)
            mem_valid <= `FALSE;
        else if(mem_allowin)
            mem_valid <= ex_mem_valid;
        else
            mem_valid <= mem_valid;
    end
    

    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE)
            wb_valid <= `FALSE;
        else if(pipe_flush == `FLUSH)
            wb_valid <= `FALSE;
        else if(wb_allowin)
            wb_valid <= mem_wb_valid;
        else
            wb_valid <= wb_valid;
    end 

    reg mem2wb_int_flag, mem2wb_exp_flag;
    reg mem2wb_rf_we;
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            wb_pc <= `ZEROWORD;
            wb_inst <= `ZEROWORD;
            mem2wb_rf_we <= `DISABLE;
            wb_rf_waddr <= `RF_ADDR_WIDTH'b0;
            wb_wb_data <= `ZEROWORD;
            mem2wb_int_flag <= `FALSE;
            mem2wb_exp_flag <= `FALSE;
            wb_inst_addr_misal <= `FALSE;
            wb_is_illg_inst <= `FALSE;
            wb_is_ecall_inst <= `FALSE;
            wb_is_ebreak_inst <= `FALSE;
        end
        else if(pipe_flush == `FLUSH) begin
            wb_pc <= `ZEROWORD;
            wb_inst <= `ZEROWORD;
            mem2wb_rf_we <= `DISABLE;
            wb_rf_waddr <= `RF_ADDR_WIDTH'b0;
            wb_wb_data <= `ZEROWORD;
            mem2wb_int_flag <= `FALSE;
            mem2wb_exp_flag <= `FALSE;
            wb_inst_addr_misal <= `FALSE;
            wb_is_illg_inst <= `FALSE;
            wb_is_ecall_inst <= `FALSE;
            wb_is_ebreak_inst <= `FALSE;
        end
        else if(mem_wb_valid && wb_allowin) begin
            wb_pc <= mem_pc;
            wb_inst <= mem_inst;
            mem2wb_rf_we <= mem_req_rf;
            wb_rf_waddr <= mem_rf_waddr;
            wb_wb_data <= mem_wb_data;
            mem2wb_int_flag <= mem_int_flag;
            mem2wb_exp_flag <= mem_exp_flag;
            wb_inst_addr_misal <= ex2mem_inst_addr_misal;
            wb_is_illg_inst <= ex2mem_is_illg_inst;
            wb_is_ecall_inst <= ex2mem_is_ecall_inst;
            wb_is_ebreak_inst <= ex2mem_is_ebreak_inst;
        end
        else begin
            wb_pc <= wb_pc;
            wb_inst <= wb_inst;
            mem2wb_rf_we <= mem2wb_rf_we; //写使能有可能需要更改
            wb_rf_waddr <= wb_rf_waddr;
            wb_wb_data <= wb_wb_data;
            mem2wb_exp_flag <= mem2wb_exp_flag;
            mem2wb_int_flag <= mem2wb_int_flag;
            wb_inst_addr_misal <= wb_inst_addr_misal;
            wb_is_illg_inst <= wb_is_illg_inst;
            wb_is_ecall_inst <= wb_is_ecall_inst;
            wb_is_ebreak_inst <= wb_is_ebreak_inst;
        end
    end 

    assign wb_exp_flag = mem2wb_exp_flag; //目前写回不会产生异常
    assign wb_int_flag = mem2wb_int_flag;
    assign wb_exp_int_flag = wb_exp_flag | wb_int_flag;
    
    assign wb_rf_we = mem2wb_rf_we & (~wb_exp_int_flag) & wb_valid;
    
endmodule 
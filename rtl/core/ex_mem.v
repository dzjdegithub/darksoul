

`include "defines.v"

module ex_mem
(
    input clk,
    input rst_n,

    input pipe_flush,
 
    //hand
    input id_ex_valid,
    input mem_allowin,
    output reg ex_valid,
    output ex_allowin,
    output ex_mem_valid,
    
    input ex_is_mul_inst,
    input ex_mul_done,
    input ex_is_div_inst,
    input ex_div_done,
    
    //ex
    input [`XLEN - 1 : 0] ex_pc,
    input [`XLEN - 1 : 0] ex_inst,
    input ex_req_rf,
    input [`RF_ADDR_WIDTH - 1 : 0] ex_rf_waddr,
    input [`XLEN - 1 : 0] ex_alu_res,
    input ex_is_load,
    input [1 : 0] ex_ls_addr_2low,  //将低两位传给mem阶段，与mask共同算出load指令的数据
    input [4 : 0] ex_l_mask,
    input ex_exp_flag,
    input ex_int_flag,
    input id2ex_inst_addr_misal,
    input id2ex_is_illg_inst,
    input id2ex_is_ecall_inst,
    input id2ex_is_ebreak_inst,
    
    //mem
    output reg [`XLEN - 1 : 0] mem_pc,
    output reg [`XLEN - 1 : 0] mem_inst,
    output reg mem_req_rf,
    output reg [`RF_ADDR_WIDTH - 1 : 0] mem_rf_waddr,
    output reg [`XLEN - 1 : 0] mem_alu_res,
    output reg mem_is_load,
    output reg [1 : 0] mem_ls_addr_2low,
    output reg [4 : 0] mem_l_mask,
    output reg ex2mem_exp_flag,
    output reg ex2mem_int_flag,
    output reg ex2mem_inst_addr_misal,
    output reg ex2mem_is_illg_inst,
    output reg ex2mem_is_ecall_inst,
    output reg ex2mem_is_ebreak_inst
);

    wire ex_ready_go;
    
    assign ex_ready_go = ex_is_mul_inst ? ex_mul_done :
                         ex_is_div_inst ? ex_div_done :
                                          1'b1; 
    assign ex_allowin = (ex_ready_go && mem_allowin);
    assign ex_mem_valid = (ex_valid && ex_ready_go);
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE)
            ex_valid <= `FALSE;
        else if(pipe_flush == `FLUSH)
            ex_valid <= `FALSE;
        else if(ex_allowin)
            ex_valid <= id_ex_valid;
        else
            ex_valid <= ex_valid;
    end 
    
    
            

    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            mem_pc <= `ZEROWORD;
            mem_inst <= `ZEROWORD;
            mem_req_rf <= `FALSE;
            mem_rf_waddr <= `RF_ADDR_WIDTH'b0;
            mem_alu_res <= `ZEROWORD;
            mem_is_load <= `FALSE;
            mem_ls_addr_2low <= 2'b00;
            mem_l_mask <= 5'b00000;
            ex2mem_exp_flag <= `FALSE;
            ex2mem_int_flag <= `FALSE;
            ex2mem_inst_addr_misal <= `FALSE;
            ex2mem_is_illg_inst <= `FALSE;
            ex2mem_is_ecall_inst <= `FALSE;
            ex2mem_is_ebreak_inst <= `FALSE;
        end
        else if(pipe_flush == `FLUSH) begin
            mem_pc <= `ZEROWORD;
            mem_inst <= `ZEROWORD;
            mem_req_rf <= `FALSE;
            mem_rf_waddr <= `RF_ADDR_WIDTH'b0;
            mem_alu_res <= `ZEROWORD;
            mem_is_load <= `FALSE;
            mem_ls_addr_2low <= 2'b00;
            mem_l_mask <= 5'b00000;
            ex2mem_exp_flag <= `FALSE;
            ex2mem_int_flag <= `FALSE;
            ex2mem_inst_addr_misal <= `FALSE;
            ex2mem_is_illg_inst <= `FALSE;
            ex2mem_is_ecall_inst <= `FALSE;
            ex2mem_is_ebreak_inst <= `FALSE;
        end
        else if(ex_mem_valid && mem_allowin) begin
            mem_pc <= ex_pc;
            mem_inst <= ex_inst;
            mem_req_rf <= ex_req_rf;
            mem_rf_waddr <= ex_rf_waddr;
            mem_alu_res <= ex_alu_res;
            mem_is_load <= ex_is_load;
            mem_ls_addr_2low <= ex_ls_addr_2low;
            mem_l_mask <= ex_l_mask;
            ex2mem_exp_flag <= ex_exp_flag;
            ex2mem_int_flag <= ex_int_flag;
            ex2mem_inst_addr_misal <= id2ex_inst_addr_misal;
            ex2mem_is_illg_inst <= id2ex_is_illg_inst;
            ex2mem_is_ecall_inst <= id2ex_is_ecall_inst;
            ex2mem_is_ebreak_inst <= id2ex_is_ebreak_inst;
        end
        else begin
            mem_pc <= mem_pc;
            mem_inst <= mem_inst;
            mem_req_rf <= mem_req_rf;
            mem_rf_waddr <= mem_rf_waddr;
            mem_alu_res <= mem_alu_res;
            mem_is_load <= mem_is_load;
            mem_ls_addr_2low <= mem_ls_addr_2low;
            mem_l_mask <= mem_l_mask;
            ex2mem_exp_flag        <= ex2mem_exp_flag;
            ex2mem_int_flag        <= ex2mem_int_flag;
            ex2mem_inst_addr_misal <= ex2mem_inst_addr_misal;
            ex2mem_is_illg_inst    <= ex2mem_is_illg_inst;
            ex2mem_is_ecall_inst   <= ex2mem_is_ecall_inst;
            ex2mem_is_ebreak_inst  <= ex2mem_is_ebreak_inst;
        end
      
    end







endmodule 
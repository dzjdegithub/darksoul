


`include "defines.v"


module id_ex
(
    input clk,
    input rst_n,
    
    input pipe_flush,
    
    input ld_risk,  //load冒险
    //hand
    input if_id_valid,
    input ex_allowin,
    output reg id_valid,
    output id_allowin,
    output id_ex_valid,
    
    
    
    //id
    input [`XLEN - 1 : 0] id_pc,
    input [`XLEN - 1 : 0] id_inst,
    input id_is_bj_inst,
    input id_is_j_inst,
    input id_is_mul_inst,
    input id_is_div_inst,
    input [1 : 0] id_sign_extend,
    input id_word_sel,
    input id_div_sign,
    input id_div_res_sel,
    input [`BJU_SRC_TYPE_WIDTH - 1 : 0] id_bju_src_tp,
    input id_req_mem,
    input id_is_load,
    input [4 : 0] id_l_mask,
    input id_is_store,
    input [3 : 0] id_s_mask,
    input [`ALU_OP_WIDTH - 1 : 0] id_alu_op,
    input [`ALU_SRC_TYPE_WIDTH - 1 : 0] id_alu_src_tp,
    input [`XLEN - 1 : 0] id_rs1,
    input [`XLEN - 1 : 0] id_rs2,
    input id_req_rf,
    input [`RF_ADDR_WIDTH - 1 : 0] id_rf_waddr,
    input [`XLEN - 1 : 0] id_imm,
    input id_is_csr_inst,
    input [2 : 0] id_csr_op,
    input id_csr_src_tp,
    input id_rd_is_x0,
    input id_rs1_is_x0,
    input id_exp_flag,
    input id_int_flag,
    // input id_exp_int_flag,
    input if2id_inst_addr_misal,
    input id_is_illg_inst,
    input id_is_ecall_inst,
    input id_is_ebreak_inst,
    
    input id_is_mret_inst,

    
    //ex
    output reg [`XLEN - 1 : 0] ex_pc,
    output reg [`XLEN - 1 : 0] ex_inst,
    output reg ex_is_bj_inst,
    output reg ex_is_j_inst,
    output reg ex_is_mul_inst,
    output reg ex_is_div_inst,
    output reg [1 : 0] ex_sign_extend,
    output reg ex_word_sel,
    output reg ex_div_sign,
    output reg ex_div_res_sel,
    output reg [`BJU_SRC_TYPE_WIDTH - 1 : 0] ex_bju_src_tp,
    output reg ex_req_mem,
    output reg ex_is_load,
    output reg [4 : 0] ex_l_mask,
    output reg ex_is_store,
    output reg [3 : 0] ex_s_mask,
    output reg [`ALU_OP_WIDTH - 1 : 0] ex_alu_op,
    output reg [`ALU_SRC_TYPE_WIDTH - 1 : 0] ex_alu_src_tp,
    output reg [`XLEN - 1 : 0] ex_rs1,
    output reg [`XLEN - 1 : 0] ex_rs2,
    output reg ex_req_rf,
    output reg [`RF_ADDR_WIDTH - 1 : 0] ex_rf_waddr,
    output reg [`XLEN - 1 : 0] ex_imm,
    output reg ex_is_csr_inst,
    output reg [2 : 0] ex_csr_op,
    output reg ex_csr_src_tp,
    output reg ex_rd_is_x0,
    output reg ex_rs1_is_x0,
    output reg id2ex_exp_flag,
    output reg id2ex_int_flag,
    // output reg id2ex_exp_int_flag,
    output reg id2ex_inst_addr_misal,
    output reg id2ex_is_illg_inst,
    output reg id2ex_is_ecall_inst,
    output reg id2ex_is_ebreak_inst,
    output reg id2ex_is_mret_inst
    
);


    wire id_ready_go;
    
    assign id_ready_go = (~ld_risk);
    assign id_allowin = (id_ready_go && ex_allowin);
    assign id_ex_valid = (id_valid && id_ready_go);
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE)
            id_valid <= `FALSE;
        else if(pipe_flush == `FLUSH)
            id_valid <= `FALSE;
        else if(id_allowin)
            id_valid <= if_id_valid;
        else
            id_valid <= id_valid;
    end 
    
    
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            ex_pc <= `ZEROWORD;
            ex_inst <= `ZEROWORD;
            ex_is_bj_inst <= `FALSE;
            ex_is_j_inst <= `FALSE;
            ex_is_mul_inst <= `FALSE;
            ex_is_div_inst <= `FALSE;
            ex_sign_extend <= `UNSIGNED_UNSIGNED;
            ex_word_sel <= `LOW;
            ex_div_sign <= `TRUE;
            ex_div_res_sel <= `QUOTIENT;
            ex_bju_src_tp <= `BJU_NO_SRC;
            ex_req_mem <= `FALSE;
            ex_is_load <= `FALSE;
            ex_l_mask <= 5'b00000;
            ex_is_store <= `FALSE;
            ex_s_mask <= 4'b0000;
            ex_alu_op <= `ALU_OP_NOP;
            ex_alu_src_tp <= `ALU_NO_SRC;
            ex_rs1 <= `ZEROWORD;
            ex_rs2 <= `ZEROWORD;
            ex_req_rf <= `FALSE;
            ex_rf_waddr <= `RF_ADDR_WIDTH'b0;
            ex_imm <= `ZEROWORD;
            ex_is_csr_inst <= `FALSE;
            ex_csr_op <= `CSR_NONE;
            ex_csr_src_tp <= `CSR_RS1;
            ex_rd_is_x0 <= `FALSE;
            ex_rs1_is_x0 <= `FALSE;
            id2ex_exp_flag <= `FALSE;
            id2ex_int_flag <= `FALSE;
            // id2ex_exp_int_flag <= `FALSE;
            id2ex_inst_addr_misal <= `FALSE;
            id2ex_is_illg_inst <= `FALSE;
            id2ex_is_ecall_inst <= `FALSE;
            id2ex_is_ebreak_inst <= `FALSE; 
            id2ex_is_mret_inst <= `FALSE;
        end
        else if(pipe_flush == `FLUSH) begin
            ex_pc <= `ZEROWORD;
            ex_inst <= `ZEROWORD;
            ex_is_bj_inst <= `FALSE;
            ex_is_j_inst <= `FALSE;
            ex_is_mul_inst <= `FALSE;
            ex_is_div_inst <= `FALSE;
            ex_sign_extend <= `UNSIGNED_UNSIGNED;
            ex_word_sel <= `LOW;
            ex_div_sign <= `TRUE;
            ex_div_res_sel <= `QUOTIENT;
            ex_bju_src_tp <= `BJU_NO_SRC;
            ex_req_mem <= `FALSE;
            ex_is_load <= `FALSE;
            ex_l_mask <= 5'b00000;
            ex_is_store <= `FALSE;
            ex_s_mask <= 4'b0000;
            ex_alu_op <= `ALU_OP_NOP;
            ex_alu_src_tp <= `ALU_NO_SRC;
            ex_rs1 <= `ZEROWORD;
            ex_rs2 <= `ZEROWORD;
            ex_req_rf <= `FALSE;
            ex_rf_waddr <= `RF_ADDR_WIDTH'b0;
            ex_imm <= `ZEROWORD;
            ex_is_csr_inst <= `FALSE;
            ex_csr_op <= `CSR_NONE;
            ex_csr_src_tp <= `CSR_RS1;
            ex_rd_is_x0 <= `FALSE;
            ex_rs1_is_x0 <= `FALSE;
            id2ex_exp_flag <= `FALSE;
            id2ex_int_flag <= `FALSE;
            // id2ex_exp_int_flag <= `FALSE;
            id2ex_inst_addr_misal <= `FALSE;
            id2ex_is_illg_inst <= `FALSE;
            id2ex_is_ecall_inst <= `FALSE;
            id2ex_is_ebreak_inst <= `FALSE; 
            id2ex_is_mret_inst <= `FALSE;
        end
        else if(id_ex_valid && ex_allowin) begin
            ex_pc <= id_pc;
            ex_inst <= id_inst;
            ex_is_bj_inst <= id_is_bj_inst;
            ex_is_j_inst <= id_is_j_inst;
            ex_is_mul_inst <= id_is_mul_inst;
            ex_is_div_inst <= id_is_div_inst;
            ex_sign_extend <= id_sign_extend;
            ex_word_sel <= id_word_sel;
            ex_div_sign <= id_div_sign;
            ex_div_res_sel <= id_div_res_sel;
            ex_bju_src_tp <= id_bju_src_tp;
            ex_req_mem <= id_req_mem;
            ex_is_load <= id_is_load;
            ex_l_mask <= id_l_mask;
            ex_is_store <= id_is_store;
            ex_s_mask <= id_s_mask;
            ex_alu_op <= id_alu_op;
            ex_alu_src_tp <= id_alu_src_tp;
            ex_rs1 <= id_rs1;
            ex_rs2 <= id_rs2;
            ex_req_rf <= id_req_rf;
            ex_rf_waddr <= id_rf_waddr;
            ex_imm <= id_imm;
            ex_is_csr_inst <= id_is_csr_inst;
            ex_csr_op <= id_csr_op;
            ex_csr_src_tp <= id_csr_src_tp;
            ex_rd_is_x0 <= id_rd_is_x0;
            ex_rs1_is_x0 <= id_rs1_is_x0;
            id2ex_exp_flag <= id_exp_flag;
            id2ex_int_flag <= id_int_flag;
            // id2ex_exp_int_flag <= id_exp_int_flag;
            id2ex_inst_addr_misal <= if2id_inst_addr_misal;
            id2ex_is_illg_inst   <= id_is_illg_inst;
            id2ex_is_ecall_inst  <= id_is_ecall_inst;
            id2ex_is_ebreak_inst <= id_is_ebreak_inst;
            id2ex_is_mret_inst <= id_is_mret_inst;
        end
        else begin
            ex_pc <= ex_pc;
            ex_inst <= ex_inst;
            ex_is_bj_inst <= ex_is_bj_inst;
            ex_is_j_inst <= ex_is_j_inst;
            ex_is_mul_inst <= ex_is_mul_inst;
            ex_is_div_inst <= ex_is_div_inst;
            ex_sign_extend <= ex_sign_extend;
            ex_word_sel <= ex_word_sel;
            ex_div_sign <= ex_div_sign;
            ex_div_res_sel <= ex_div_res_sel;
            ex_bju_src_tp <= ex_bju_src_tp;
            ex_req_mem <= ex_req_mem;
            ex_is_load <= ex_is_load;
            ex_l_mask <= ex_l_mask;
            ex_is_store <= ex_is_store;
            ex_s_mask <= ex_s_mask;
            ex_alu_op <= ex_alu_op;
            ex_alu_src_tp <= ex_alu_src_tp;
            ex_rs1 <= ex_rs1;
            ex_rs2 <= ex_rs2;
            ex_req_rf <= ex_req_rf;
            ex_rf_waddr <= ex_rf_waddr;
            ex_imm <= ex_imm;
            ex_is_csr_inst <= ex_is_csr_inst;
            ex_csr_op <= ex_csr_op;
            ex_csr_src_tp <= ex_csr_src_tp;
            ex_rd_is_x0 <= ex_rd_is_x0;
            ex_rs1_is_x0 <= ex_rs1_is_x0;
            id2ex_exp_flag <= id2ex_exp_flag;
            id2ex_int_flag <= id2ex_int_flag;
            // id2ex_exp_int_flag <= id2ex_exp_int_flag;
            id2ex_inst_addr_misal <= id2ex_inst_addr_misal;
            id2ex_is_illg_inst    <= id2ex_is_illg_inst;
            id2ex_is_ecall_inst   <= id2ex_is_ecall_inst;
            id2ex_is_ebreak_inst  <= id2ex_is_ebreak_inst;
            id2ex_is_mret_inst <= id2ex_is_mret_inst;
        end
    end 
    











endmodule 
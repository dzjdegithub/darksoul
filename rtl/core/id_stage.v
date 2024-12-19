//TODO 和寄存器堆交互，并把译码的信息交给id_ex寄存器域 ,后期加上直通的数据,进行多路选择


`include "defines.v"
    
    
module id_stage
(
    input id_valid,
    input ld_risk,
    
    input [`XLEN - 1 : 0] id_pc_i,
    output [`XLEN - 1 : 0] id_pc_o,
    input [`XLEN - 1 : 0] id_inst_i,
    output [`XLEN - 1 : 0] id_inst_o,
    
    output id_is_j_inst,
    output id_is_i_inst,
    output id_is_u_inst,
    
    //mul div
    output id_is_mul_inst,
    output id_is_div_inst,
    output [1 : 0] id_sign_extend,
    output id_word_sel,
    output id_div_sign,
    output id_div_res_sel,
    
    //bju
    output id_is_bj_inst,
    output [`BJU_SRC_TYPE_WIDTH - 1 : 0] id_bju_src_tp,
    
    //mem
    output id_req_mem,
    output id_is_load,
    output [4 : 0] id_l_mask,
    output id_is_store,
    output [3 : 0] id_s_mask, 
    
    //alu
    output [`ALU_OP_WIDTH - 1 : 0] id_alu_op,
    output [`ALU_SRC_TYPE_WIDTH - 1 : 0] id_alu_src_tp, 
    
    //fw
    //from ex
    input ex_req_rf,
    input [`RF_ADDR_WIDTH - 1 : 0] ex_fw_rd_addr,
    input [`XLEN - 1 : 0] ex_fw_data,
    //from mem
    input mem_req_rf,
    input [`RF_ADDR_WIDTH - 1 : 0] mem_fw_rd_addr,
    input [`XLEN - 1 : 0] mem_fw_data,
    //wb 阶段rf同时读写直接读出要写入的数据
    
    
    //regfile
    output [`RF_ADDR_WIDTH - 1 : 0] id_rf_raddr1,
    input [`XLEN - 1 : 0] rf_rdata1,
    output [`XLEN - 1 : 0] id_rs1,
    output [`RF_ADDR_WIDTH - 1 : 0] id_rf_raddr2,
    input [`XLEN - 1 : 0] rf_rdata2,
    output [`XLEN - 1 : 0] id_rs2,
    
    output id_req_rf,
    output [`RF_ADDR_WIDTH - 1 : 0] rf_waddr,
    
    //imm
    output [`XLEN - 1 : 0] imm,
    
    //csr
    output id_is_csr_inst,
    output [2 : 0] id_csr_op,
    output id_csr_src_tp,
    output id_rd_is_x0,
    output id_rs1_is_x0,
    
    //fence
    output id_is_fence_inst,
    output id_fence_tp,
    
    // input int_flag,
    // input if2id_int_flag,
    input if2id_exp_flag,
    output id_exp_flag,
    // output id_int_flag,
    // output id_exp_int_flag,
    
    output id_is_illg_inst,
    output id_is_ecall_inst,
    output id_is_ebreak_inst,
    
    output id_is_mret_inst
);

    assign id_exp_flag = (if2id_exp_flag    |
                          id_is_illg_inst   |
                          id_is_ecall_inst  |
                          id_is_ebreak_inst );
    // assign id_int_flag = (if2id_int_flag | int_flag);
    // assign id_exp_int_flag = (id_exp_flag | id_int_flag);
    
    wire [`XLEN - 1 : 0] inst;
    wire is_bj_inst;
    wire is_j_inst;
    wire is_i_inst;
    wire is_u_inst;
    wire is_mul_inst;
    wire is_div_inst;
    wire req_mem;
    wire is_load;
    wire is_store;
    wire req_rf;
    wire is_csr_inst;
    wire is_fence_inst;
    wire is_illg_inst;
    wire is_ecall_inst;
    wire is_ebreak_inst;
    wire is_mret_inst;
    
    
    assign id_is_bj_inst = (is_bj_inst && id_valid);
    assign id_is_j_inst = (is_j_inst && id_valid);
    assign id_is_i_inst = (is_i_inst && id_valid);
    assign id_is_u_inst = (is_u_inst && id_valid);
    assign id_is_mul_inst = (is_mul_inst && id_valid);
    assign id_is_div_inst = (is_div_inst && id_valid);
    assign id_req_mem = (req_mem && id_valid);
    assign id_is_load = (is_load && id_valid);
    assign id_is_store = (is_store && id_valid);
    assign id_req_rf = (req_rf && id_valid);
    assign id_is_csr_inst = (is_csr_inst && id_valid);
    assign id_is_fence_inst = (is_fence_inst && id_valid);
    assign id_is_illg_inst = (is_illg_inst && id_valid);
    assign id_is_ecall_inst = (is_ecall_inst && id_valid);
    assign id_is_ebreak_inst = (is_ebreak_inst && id_valid);
    assign id_is_mret_inst = (is_mret_inst && id_valid);
    
    decoder decoder_inst
    (
        .inst_i(id_inst_i),
        .inst_o(inst),
        .is_bj_inst(is_bj_inst),
        .is_j_inst(is_j_inst),
        .is_i_inst(is_i_inst),
        .is_u_inst(is_u_inst),
        .is_mul_inst(is_mul_inst),
        .is_div_inst(is_div_inst),
        .sign_extend(id_sign_extend),
        .word_sel(id_word_sel),
        .div_sign(id_div_sign),
        .div_res_sel(id_div_res_sel),
        .bju_src_tp(id_bju_src_tp),
        .req_mem(req_mem),
        .is_load(is_load),
        .l_mask(id_l_mask),
        .is_store(is_store),
        .s_mask(id_s_mask),
        .alu_op(id_alu_op),
        .alu_src_tp(id_alu_src_tp),
        .rf_raddr1(id_rf_raddr1),
        .rf_raddr2(id_rf_raddr2),
        .req_rf(req_rf),
        .rf_waddr(rf_waddr),
        .imm(imm),
        .is_csr_inst(is_csr_inst),
        .csr_op(id_csr_op),
        .csr_src_tp(id_csr_src_tp),
        .rd_is_x0(id_rd_is_x0),
        .rs1_is_x0(id_rs1_is_x0),
        .is_fence_inst(is_fence_inst),
        .fence_tp(id_fence_tp),
        .is_illg_inst(is_illg_inst),
        .is_ecall_inst(is_ecall_inst),
        .is_ebreak_inst(is_ebreak_inst),
        .is_mret_inst(is_mret_inst)
    );

    //id2ex pipereg
    assign id_pc_o = id_pc_i;
    assign id_inst_o = id_inst_i;

    
    wire ex_fw_rs1_valid, ex_fw_rs2_valid;
    wire mem_fw_rs1_valid, mem_fw_rs2_valid;   
    assign ex_fw_rs1_valid = ((ex_req_rf == `TRUE) && (ex_fw_rd_addr == id_rf_raddr1) && (~ld_risk)) ? `TRUE : `FALSE;
    assign ex_fw_rs2_valid = ((ex_req_rf == `TRUE) && (ex_fw_rd_addr == id_rf_raddr2) && (~ld_risk)) ? `TRUE : `FALSE;
    assign mem_fw_rs1_valid = ((mem_req_rf == `TRUE) && (mem_fw_rd_addr == id_rf_raddr1)) ? `TRUE : `FALSE;
    assign mem_fw_rs2_valid = ((mem_req_rf == `TRUE) && (mem_fw_rd_addr == id_rf_raddr2)) ? `TRUE : `FALSE;
    
    assign id_rs1 = (id_rf_raddr1 == `X0) ? `ZEROWORD :
                    (ex_fw_rs1_valid == `TRUE) ? ex_fw_data :
                    (mem_fw_rs1_valid == `TRUE) ? mem_fw_data :
                                                  rf_rdata1;
                                                  
    assign id_rs2 = (id_rf_raddr2 == `X0) ? `ZEROWORD :
                    (ex_fw_rs2_valid == `TRUE) ? ex_fw_data :
                    (mem_fw_rs2_valid == `TRUE) ? mem_fw_data :
                                                  rf_rdata2;
    







endmodule
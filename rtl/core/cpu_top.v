

`include "defines.v"

module cpu_top
(
    input clk,
    input rst_n,
    output clk_gate,
    
    input m_sip,
    input m_tip,
    output mtime_cnt_en,
    
    output          axi_ar_valid,
    input           axi_ar_ready,
    output [3:0]    axi_ar_payload_id,
    output [31:0]   axi_ar_payload_addr,
    output [7:0]    axi_ar_payload_len,
    output [2:0]    axi_ar_payload_size,
    output [1:0]    axi_ar_payload_burst,
    output [1:0]    axi_ar_payload_lock,
    output [3:0]    axi_ar_payload_cache,
    output [2:0]    axi_ar_payload_prot,
    input           axi_r_valid,
    output          axi_r_ready,
    input  [3:0]    axi_r_payload_id,
    input  [31:0]   axi_r_payload_data,
    input  [1:0]    axi_r_payload_resp,
    input           axi_r_payload_last,
    output          axi_aw_valid,
    input           axi_aw_ready,
    output [3:0]    axi_aw_payload_id,
    output [31:0]   axi_aw_payload_addr,
    output [7:0]    axi_aw_payload_len,
    output [2:0]    axi_aw_payload_size,
    output [1:0]    axi_aw_payload_burst,
    output [1:0]    axi_aw_payload_lock,
    output [3:0]    axi_aw_payload_cache,
    output [2:0]    axi_aw_payload_prot,
    output          axi_w_valid,
    input           axi_w_ready,
    output [3:0]    axi_w_payload_id,
    output [31:0]   axi_w_payload_data,
    output [3:0]    axi_w_payload_strb,
    output          axi_w_payload_last,
    input           axi_b_valid,
    output          axi_b_ready,
    input  [3:0]    axi_b_payload_id,
    input  [1:0]    axi_b_payload_resp
);


    wire if_valid;
    wire pipe_stall;
    wire iram_en;
    wire [`XLEN - 1 : 0] inst_raddr;
    // wire [`XLEN - 1 : 0] inst;
    wire [`XLEN - 1 : 0] inst_reg;
    wire [`XLEN - 1 : 0] if_pc;
    wire [`XLEN - 1 : 0] if_inst;
    wire ex_bj_flag;
    wire [`XLEN - 1 : 0] ex_bj_addr;
    wire id_allowin;
    wire if_id_valid;
    wire [`XLEN - 1 : 0] id_pc;
    wire [`XLEN - 1 : 0] id_inst;
    wire id_valid;
    wire ld_risk;
    wire [`XLEN - 1 : 0] id_pc_o;
    wire [`XLEN - 1 : 0] id_inst_o;
    wire id_is_j_inst;
    wire id_is_i_inst;
    wire id_is_u_inst;
    wire id_is_mul_inst;
    wire id_is_div_inst;
    wire [1 : 0] id_sign_extend;
    wire id_word_sel;
    wire id_div_sign;
    wire id_div_res_sel;
    wire id_is_bj_inst;
    wire [`BJU_SRC_TYPE_WIDTH - 1 : 0] id_bju_src_tp;
    wire id_req_mem;
    wire id_is_load;
    wire [4:0] id_l_mask;
    wire id_is_store;
    wire [3:0] id_s_mask;
    wire [`ALU_OP_WIDTH - 1 : 0] id_alu_op;
    wire [`ALU_SRC_TYPE_WIDTH - 1 : 0] id_alu_src_tp;
    wire ex_req_rf_o;
    wire [`RF_ADDR_WIDTH - 1 : 0] ex_fw_rd_addr;
    wire [`XLEN - 1 : 0] ex_fw_data;
    wire mem_req_rf_o;
    wire [`RF_ADDR_WIDTH - 1 : 0] mem_fw_rd_addr;
    wire [`XLEN - 1 : 0] mem_fw_data;
    wire [`RF_ADDR_WIDTH - 1 : 0] id_rf_raddr1;
    wire [`XLEN - 1 : 0] rf_rdata1;
    wire [`XLEN - 1 : 0] id_rs1;
    wire [`RF_ADDR_WIDTH - 1 : 0] id_rf_raddr2;
    wire [`XLEN - 1 : 0] rf_rdata2;
    wire [`XLEN - 1 : 0] id_rs2;
    wire id_req_rf;
    wire [`RF_ADDR_WIDTH - 1 : 0] rf_waddr;
    wire [`XLEN - 1 : 0] imm;
    wire ex_allowin;
    wire id_ex_valid;
    wire [`XLEN - 1 : 0] ex_pc;
    wire [`XLEN - 1 : 0] ex_inst;
    wire ex_is_bj_inst;
    wire ex_is_j_inst;
    wire ex_is_mul_inst;
    wire ex_is_div_inst;
    wire ex_word_sel;
    wire [1 : 0] ex_sign_extend;
    wire ex_div_sign;
    wire ex_div_res_sel;
    wire [`BJU_SRC_TYPE_WIDTH - 1 : 0] ex_bju_src_tp;
    wire ex_req_mem;
    wire ex_is_load;
    wire [4 : 0] ex_l_mask;
    wire ex_is_store;
    wire [3 : 0] ex_s_mask;
    wire [`ALU_OP_WIDTH - 1 : 0] ex_alu_op;
    wire [`ALU_SRC_TYPE_WIDTH - 1 : 0] ex_alu_src_tp;
    wire [`XLEN - 1 : 0] ex_rs1;
    wire [`XLEN - 1 : 0] ex_rs2;
    wire ex_req_rf;
    wire [`RF_ADDR_WIDTH - 1 : 0] ex_rf_waddr;
    wire [`XLEN - 1 : 0] ex_imm;
    wire ex_valid;
    wire [`XLEN - 1 : 0] ex_pc_o;
    wire [`XLEN - 1 : 0] ex_inst_o;
    wire [`RF_ADDR_WIDTH - 1 : 0] ex_rf_waddr_o;
    wire [`XLEN - 1 : 0] ex_alu_res;
    wire ex_loading;
    wire ex_mem_re;
    wire ex_mem_we;
    wire [`XLEN - 1 : 0] ex_ls_addr;
    wire [4 : 0] ex_l_mask_o;
    wire [3 : 0] ex_byte_we;
    // wire [`XLEN - 1 : 0] mem_load_data;
    wire [`XLEN - 1 : 0] ex_rs2_o;
    wire mem_allowin;
    wire ex_mem_valid;
    wire [`XLEN - 1 : 0] mem_pc;
    wire [`XLEN - 1 : 0] mem_inst;
    wire mem_req_rf;
    wire [`RF_ADDR_WIDTH - 1 : 0] mem_rf_waddr;
    wire [`XLEN - 1 : 0] mem_alu_res;
    wire mem_is_load;
    wire [1 : 0] mem_ls_addr_2low;
    wire [4 : 0] mem_l_mask;
    wire mem_valid;
    wire [`XLEN - 1 : 0] mem_pc_o;
    wire [`XLEN - 1 : 0] mem_inst_o;
    wire [`RF_ADDR_WIDTH - 1 : 0] mem_rf_waddr_o;
    wire [`XLEN - 1 : 0] mem_wb_data;
    wire [`XLEN - 1 : 0] wb_pc;
    wire [`XLEN - 1 : 0] wb_inst;
    wire wb_rf_we;
    wire [`RF_ADDR_WIDTH - 1 : 0] wb_rf_waddr;
    wire [`XLEN - 1 : 0] wb_wb_data;
    wire wb_exp_int_flag;
    wire [`XLEN - 1 : 0] meh_addr;
    wire ex_is_mret_inst;
    wire [`XLEN - 1 : 0] mret_addr;
    wire pipe_flush;
    // wire m_sip, m_tip;
    wire ex_is_wfi_inst_o;
    wire mem_is_wfi_inst;
    wire mem_is_wfi_inst_o;
    wire mem_wb_valid;
 
    reg reg_m_tip; //将中断信号打一拍防止时钟门控的时序问题
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            reg_m_tip <= 1'b0;
        else
            reg_m_tip <= m_tip;
    end
    wire int_flag = (csr_instance.mstatus_MIE & (   
                    (csr_instance.mie_MSIE & m_sip) |
                    (csr_instance.mie_MTIE & m_tip))); 
    assign clk_gate = mem_is_wfi_inst_o ? (reg_m_tip & clk) : clk; 
    
    wire if_exp_flag;
    wire if_inst_addr_misal;
    wire fetch_hand_suc;
    wire jump2exp;
    if_stage if_stage_instance
    (
        .if_valid(if_valid),
        .clk(clk_gate),
        .rst_n(rst_n),
        
        .bj_flag(ex_bj_flag),
        .bj_addr(ex_bj_addr),
        
        .pipe_stall(pipe_stall),
        
        // .fetch_hand_suc(fetch_hand_suc),
        .if_id_valid(if_id_valid),
        .id_allowin(id_allowin),
        
        .jump2exp(jump2exp),
        .meh_addr(meh_addr),
        .ex_is_mret_inst(ex_is_mret_inst),
        .mret_addr(mret_addr),
        
        .iram_en(iram_en),
        .inst_raddr(inst_raddr),
        .inst(inst_reg),
        
        .if_pc(if_pc),
        .if_inst(if_inst),
        
        // .int_flag(int_flag),
        // .if_int_flag(if_int_flag),
        .if_exp_flag(if_exp_flag),
        
        .if_inst_addr_misal(if_inst_addr_misal)
    );

    

    wire if2id_exp_flag;
    wire if2id_inst_addr_misal;
    wire inst_valid;
    wire inst_useless;
    if_id if_id_instance
    (
        .clk(clk_gate),
        .rst_n(rst_n),
        
        .pipe_stall(pipe_stall),
        .pipe_flush(pipe_flush),
        .ex_bj_flag(ex_bj_flag),
        .ex_is_mret_inst(ex_is_mret_inst),
        
        .inst_valid(inst_valid),
        .fetch_hand_suc(fetch_hand_suc),
        .inst_useless(inst_useless),
        
        .id_allowin(id_allowin),
        .if_valid(if_valid),
        .if_id_valid(if_id_valid),
        
        .if_pc(if_pc),
        .if_inst(if_inst),
        // .if_int_flag(if_int_flag),
        .if_exp_flag(if_exp_flag),
        .if_inst_addr_misal(if_inst_addr_misal),
        
        .id_pc(id_pc),
        .id_inst(id_inst),
        // .if2id_int_flag(if2id_int_flag),
        .if2id_exp_flag(if2id_exp_flag),
        .if2id_inst_addr_misal(if2id_inst_addr_misal)
    );

    wire id_is_csr_inst;
    wire [2 : 0] id_csr_op;
    wire id_csr_src_tp;
    wire id_rd_is_x0;
    wire id_rs1_is_x0;
    wire id_is_fence_inst;
    wire id_fence_tp;
    wire id_exp_flag;
    // wire id_int_flag;
    wire id_is_illg_inst;
    wire id_is_ecall_inst;
    wire id_is_ebreak_inst;
    wire id_is_mret_inst;
    wire id_is_wfi_inst;
    wire mem_fw_valid;
    wire [1 : 0] size;
    id_stage id_stage_instance
    (
        .id_valid(id_valid),
        .ld_risk(ld_risk),
        
        .id_pc_i(id_pc),
        .id_pc_o(id_pc_o),
        .id_inst_i(id_inst),
        .id_inst_o(id_inst_o),
        
        .id_is_j_inst(id_is_j_inst),
        .id_is_i_inst(id_is_i_inst),
        .id_is_u_inst(id_is_u_inst),
        
        .id_is_mul_inst(id_is_mul_inst),
        .id_is_div_inst(id_is_div_inst),
        .id_sign_extend(id_sign_extend),
        .id_word_sel(id_word_sel),
        .id_div_sign(id_div_sign),
        .id_div_res_sel(id_div_res_sel),
        
        .id_is_bj_inst(id_is_bj_inst),
        .id_bju_src_tp(id_bju_src_tp),
        
        .id_req_mem(id_req_mem),
        .id_is_load(id_is_load),
        .id_l_mask(id_l_mask),
        .id_is_store(id_is_store),
        .id_s_mask(id_s_mask),
        .size(size),
        
        .id_alu_op(id_alu_op),
        .id_alu_src_tp(id_alu_src_tp),
        
        .ex_req_rf(ex_req_rf_o),
        .ex_fw_rd_addr(ex_fw_rd_addr),
        .ex_fw_data(ex_fw_data),
        
        .mem_req_rf(mem_req_rf_o),
        .mem_wb_valid(mem_wb_valid),
        .mem_fw_valid(mem_fw_valid),
        .mem_fw_rd_addr(mem_fw_rd_addr),
        .mem_fw_data(mem_fw_data),
        
        .id_rf_raddr1(id_rf_raddr1),
        .rf_rdata1(rf_rdata1),
        .id_rs1(id_rs1),
        .id_rf_raddr2(id_rf_raddr2),
        .rf_rdata2(rf_rdata2),
        .id_rs2(id_rs2),
        
        .id_req_rf(id_req_rf),
        .rf_waddr(rf_waddr),
        
        .imm(imm),
        
        .id_is_csr_inst(id_is_csr_inst),
        .id_csr_op(id_csr_op),
        .id_csr_src_tp(id_csr_src_tp),
        .id_rd_is_x0(id_rd_is_x0),
        .id_rs1_is_x0(id_rs1_is_x0),
        
        .id_is_fence_inst(id_is_fence_inst),
        .id_fence_tp(id_fence_tp),
        
        // .int_flag(int_flag),
        // .if2id_int_flag(if2id_int_flag),
        .if2id_exp_flag(if2id_exp_flag),
        .id_exp_flag(id_exp_flag),
        // .id_int_flag(id_int_flag),
        
        .id_is_illg_inst(id_is_illg_inst),
        .id_is_ecall_inst(id_is_ecall_inst),
        .id_is_ebreak_inst(id_is_ebreak_inst),
        
        .id_is_mret_inst(id_is_mret_inst),
        
        .id_is_wfi_inst(id_is_wfi_inst)
    );
    
    regfile regfile_instance
    (
        .clk(clk_gate),
        .rst_n(rst_n),
        
        .rf_raddr1(id_rf_raddr1),
        .rf_rdata1(rf_rdata1),
        .rf_raddr2(id_rf_raddr2),
        .rf_rdata2(rf_rdata2),
        
        .rf_wen(wb_rf_we),
        .rf_waddr(wb_rf_waddr),
        .rf_wdata(wb_wb_data)
    );
    
    wire ex_is_csr_inst;
    wire [2 : 0] ex_csr_op;
    wire ex_csr_src_tp;
    wire ex_rd_is_x0;
    wire ex_rs1_is_x0;
    wire id2ex_exp_flag;
    // wire id2ex_int_flag;
    wire id2ex_inst_addr_misal;
    wire id2ex_is_illg_inst;
    wire id2ex_is_ecall_inst;
    wire id2ex_is_ebreak_inst;
    wire id2ex_is_mret_inst;
    wire ex_is_wfi_inst;
    wire [1 : 0] ex_size;
    id_ex id_ex_instance
    (
        .clk(clk_gate),
        .rst_n(rst_n),
        
        .pipe_flush(pipe_flush),
        
        .ld_risk(ld_risk),
        
        .if_id_valid(if_id_valid),
        .ex_allowin(ex_allowin),
        .id_valid(id_valid),
        .id_allowin(id_allowin),
        .id_ex_valid(id_ex_valid),
        
        .mem_fw_valid(mem_fw_valid),
        
        .id_pc(id_pc_o),
        .id_inst(id_inst_o),
        .id_is_bj_inst(id_is_bj_inst),
        .id_is_j_inst(id_is_j_inst),
        .id_is_mul_inst(id_is_mul_inst),
        .id_is_div_inst(id_is_div_inst),
        .id_sign_extend(id_sign_extend),
        .id_word_sel(id_word_sel),
        .id_div_sign(id_div_sign),
        .id_div_res_sel(id_div_res_sel),
        .id_bju_src_tp(id_bju_src_tp),
        .id_req_mem(id_req_mem),
        .id_is_load(id_is_load),
        .id_l_mask(id_l_mask),
        .id_is_store(id_is_store),
        .id_s_mask(id_s_mask),
        .id_size(size),
        .id_alu_op(id_alu_op),
        .id_alu_src_tp(id_alu_src_tp),
        .id_rs1(id_rs1),
        .id_rs2(id_rs2),
        .id_req_rf(id_req_rf),
        .id_rf_waddr(rf_waddr),
        .id_imm(imm),
        .id_is_csr_inst(id_is_csr_inst),
        .id_csr_op(id_csr_op),
        .id_csr_src_tp(id_csr_src_tp),
        .id_rd_is_x0(id_rd_is_x0),
        .id_rs1_is_x0(id_rs1_is_x0),
        .id_exp_flag(id_exp_flag),
        // .id_int_flag(id_int_flag),
        .if2id_inst_addr_misal(if2id_inst_addr_misal),
        .id_is_illg_inst(id_is_illg_inst),
        .id_is_ecall_inst(id_is_ecall_inst),
        .id_is_ebreak_inst(id_is_ebreak_inst),
        
        .id_is_mret_inst(id_is_mret_inst),
        .id_is_wfi_inst(id_is_wfi_inst),
        
        
        .ex_pc(ex_pc),
        .ex_inst(ex_inst),
        .ex_is_bj_inst(ex_is_bj_inst),
        .ex_is_j_inst(ex_is_j_inst),
        .ex_is_mul_inst(ex_is_mul_inst),
        .ex_is_div_inst(ex_is_div_inst),
        .ex_sign_extend(ex_sign_extend),
        .ex_word_sel(ex_word_sel),
        .ex_div_sign(ex_div_sign),
        .ex_div_res_sel(ex_div_res_sel),
        .ex_bju_src_tp(ex_bju_src_tp),
        .ex_req_mem(ex_req_mem),
        .ex_is_load(ex_is_load),
        .ex_l_mask(ex_l_mask),
        .ex_is_store(ex_is_store),
        .ex_s_mask(ex_s_mask),
        .ex_size(ex_size),
        .ex_alu_op(ex_alu_op),
        .ex_alu_src_tp(ex_alu_src_tp),
        .ex_rs1(ex_rs1),
        .ex_rs2(ex_rs2),
        .ex_req_rf(ex_req_rf),
        .ex_rf_waddr(ex_rf_waddr),
        .ex_imm(ex_imm),
        .ex_is_csr_inst(ex_is_csr_inst),
        .ex_csr_op(ex_csr_op),
        .ex_csr_src_tp(ex_csr_src_tp),
        .ex_rd_is_x0(ex_rd_is_x0),
        .ex_rs1_is_x0(ex_rs1_is_x0),
        .id2ex_exp_flag(id2ex_exp_flag),
        // .id2ex_int_flag(id2ex_int_flag),
        .id2ex_inst_addr_misal(id2ex_inst_addr_misal),
        .id2ex_is_illg_inst(id2ex_is_illg_inst),
        .id2ex_is_ecall_inst(id2ex_is_ecall_inst),
        .id2ex_is_ebreak_inst(id2ex_is_ebreak_inst),
        .id2ex_is_mret_inst(id2ex_is_mret_inst),
        
        .ex_is_wfi_inst(ex_is_wfi_inst)
    );
    
    wire ex_is_mul_inst_o;
    wire ex_is_div_inst_o;
    wire ex_mul_done;
    wire ex_div_done;
    wire [11 : 0] ex_csr_addr;
    wire ex_csr_ren;
    wire [`XLEN - 1 : 0] ex_csr_rdata;
    wire ex_csr_wen;
    wire [`XLEN - 1 : 0] ex_csr_wdata;
    wire ex_is_store_o;
    wire ex_exp_flag;
    wire mem_exp_int_flag;
    wire [1 : 0] ex_size_o;
    wire [`XLEN - 1 : 0] ex_mem_wdata;

    ex_stage ex_stage_instance
    (
        .clk(clk_gate),
        .rst_n(rst_n),
        .ex_valid(ex_valid),
        .pipe_flush(pipe_flush),
        .ex_pc_i(ex_pc),
        .ex_pc_o(ex_pc_o),
        .ex_inst_i(ex_inst),
        .ex_inst_o(ex_inst_o),
        
        .ex_alu_src_tp(ex_alu_src_tp),
        .ex_rs1_i(ex_rs1),
        .ex_rs2_i(ex_rs2),
        .ex_imm(ex_imm),
        .ex_alu_op(ex_alu_op),
        .ex_req_rf_i(ex_req_rf),
        .ex_rf_waddr_i(ex_rf_waddr),
        
        .ex_req_rf_o(ex_req_rf_o),
        .ex_rf_waddr_o(ex_rf_waddr_o),
        .ex_alu_res(ex_alu_res),
        
        .ex_is_mul_inst_i(ex_is_mul_inst),
        .ex_is_div_inst_i(ex_is_div_inst),
        .ex_is_mul_inst_o(ex_is_mul_inst_o),
        .ex_is_div_inst_o(ex_is_div_inst_o),
        .ex_sign_extend(ex_sign_extend),
        .ex_word_sel(ex_word_sel),
        .ex_div_sign(ex_div_sign),
        .ex_div_res_sel(ex_div_res_sel),
        
        .mul_done(ex_mul_done),
        .div_done(ex_div_done),
        
        .ex_is_bj_inst(ex_is_bj_inst),
        .ex_is_j_inst(ex_is_j_inst),
        .ex_bju_src_tp(ex_bju_src_tp),
        
        .ex_bj_flag(ex_bj_flag),
        .ex_bj_addr(ex_bj_addr),
        
        .ex_is_load(ex_is_load),
        .ex_loading(ex_loading),
        .ex_is_store(ex_is_store),
        .ex_is_store_o(ex_is_store_o),
        
        .ex_l_mask_i(ex_l_mask),
        .ex_s_mask_i(ex_s_mask),
        
        .ex_mem_re(ex_mem_re),
        .ex_mem_we(ex_mem_we),
        .ex_ls_addr(ex_ls_addr),
        .ex_l_mask_o(ex_l_mask_o),
        .ex_byte_we(ex_byte_we),
        // .ex_rs2_o(ex_rs2_o),
        .ex_mem_wdata(ex_mem_wdata),
        .ex_size_i(ex_size),
        .ex_size_o(ex_size_o),
        
        .ex_fw_rd_addr(ex_fw_rd_addr),
        .ex_fw_data(ex_fw_data),
        
        .ex_is_csr_inst(ex_is_csr_inst),
        .ex_csr_op(ex_csr_op),
        .ex_csr_src_tp(ex_csr_src_tp),
        .ex_rd_is_x0(ex_rd_is_x0),
        .ex_rs1_is_x0(ex_rs1_is_x0),
        
        .ex_csr_addr(ex_csr_addr),
        .ex_csr_ren(ex_csr_ren),
        .ex_csr_rdata(ex_csr_rdata),
        .ex_csr_wen(ex_csr_wen),
        .ex_csr_wdata(ex_csr_wdata),
        
        // .int_flag(int_flag),
        // .id2ex_int_flag(id2ex_int_flag),
        .id2ex_exp_flag(id2ex_exp_flag),
        // .ex_int_flag(ex_int_flag),
        .ex_exp_flag(ex_exp_flag),
        
        .mem_exp_int_flag(mem_exp_int_flag),
        .wb_exp_int_flag(wb_exp_int_flag),
        
        .id2ex_is_mret_inst(id2ex_is_mret_inst),
        .ex_is_mret_inst(ex_is_mret_inst),
        
        .ex_is_wfi_inst_i(ex_is_wfi_inst),
        .ex_is_wfi_inst_o(ex_is_wfi_inst_o),
        .mem_is_wfi_inst(mem_is_wfi_inst_o),
        .cpu_mie(csr_instance.mstatus_MIE)
    );
    
    wire wb_valid;
    wire wb_exp_flag, wb_int_flag;
    wire wb_inst_addr_misal;
    wire wb_is_illg_inst;
    wire wb_is_ecall_inst;
    wire wb_is_ebreak_inst;

    csr csr_instance
    (
        .clk(clk_gate),
        .rst_n(rst_n),
        .csr_addr(ex_csr_addr),
        .csr_rdata(ex_csr_rdata),
        .csr_ren(ex_csr_ren),
        .csr_wen(ex_csr_wen),
        .csr_wdata(ex_csr_wdata),
        
        .wb_valid(wb_valid),
        .wb_pc(wb_pc),
        .wb_inst(wb_inst),
        
        .exp_flag(wb_exp_flag),
        .int_flag(wb_int_flag),
        .exp_int_flag(wb_exp_int_flag),
        .ex_is_mret_inst(ex_is_mret_inst),
        
        .inst_addr_misal(wb_inst_addr_misal),
        .is_illg_inst(wb_is_illg_inst),
        .is_ecall_inst(wb_is_ecall_inst),
        .is_ebreak_inst(wb_is_ebreak_inst),
        
        .m_sip(m_sip),
        .m_tip(m_tip),
        
        .meh_addr(meh_addr),
        .mret_addr(mret_addr),
        
        .mtime_cnt_en(mtime_cnt_en)
    );
    
    // wire [`XLEN - 1 : 0] clint_rdata;

    // clint clint_instance
    // (
        // .clk(clk),
        // .rtc_clk(rtc_clk),
        // .rst_n(rst_n),
        // .mtime_cnt_en(mtime_cnt_en),
        
        // .raddr(ex_ls_addr),
        // .re(ex_mem_re),
        // .rdata(clint_rdata),
        // .waddr(ex_ls_addr),
        // .byte_we(ex_byte_we),
        // .wdata(ex_rs2_o),
        
        // .m_sip(m_sip),
        // .m_tip(m_tip)
    // );
    
    // wire mem_raw_risk;
    // wire sram_cs = ex_ls_addr[31 : 24] == 8'h00;
    // SRAM sram_instance
    // (
        // .clk(clk_gate),
        // .rst_n(1'b1),
        
        // .cs(sram_cs),
        
        // .re1(iram_en),
        // .mem_raddr1(inst_raddr),
        // .mem_rdata1(inst),
        
        // .re2(ex_mem_re),
        // .mem_raddr2(ex_ls_addr[31:2]),
        // .mem_rdata2(mem_load_data),
        
        // .we(ex_mem_we),
        // .byte_we(ex_byte_we),
        // .mem_waddr(ex_ls_addr[31:2]),
        // .mem_wdata(ex_rs2_o),
        
        // .mem_raw_risk(mem_raw_risk)
    // );
    
    wire ex2mem_exp_flag;
    wire ex2mem_inst_addr_misal;
    wire ex2mem_is_illg_inst;
    wire ex2mem_is_ecall_inst;
    wire ex2mem_is_ebreak_inst;
    wire store_req_ok;
    wire load_req_ok;
    wire mem_we;
    wire mem_re;
    ex_mem ex_mem_instance
    (
        .clk(clk_gate),
        .rst_n(rst_n),
        
        .pipe_flush(pipe_flush),
        
        .ex_mem_we(ex_mem_we),
        .ex_mem_re(ex_mem_re),
        .store_req_ok(store_req_ok),
        .load_req_ok(load_req_ok),
        
        .id_ex_valid(id_ex_valid),
        .mem_allowin(mem_allowin),
        .ex_valid(ex_valid),
        .ex_allowin(ex_allowin),
        .ex_mem_valid(ex_mem_valid),
        
        .ex_is_mul_inst(ex_is_mul_inst_o),
        .ex_mul_done(ex_mul_done),
        .ex_is_div_inst(ex_is_div_inst_o),
        .ex_div_done(ex_div_done),
        
        .ex_pc(ex_pc_o),
        .ex_inst(ex_inst_o),
        .ex_req_rf(ex_req_rf_o),
        .ex_rf_waddr(ex_rf_waddr_o),
        .ex_alu_res(ex_alu_res),
        .ex_is_load(ex_loading),  
        .ex_ls_addr_2low(ex_ls_addr[1:0]),
        .ex_l_mask(ex_l_mask_o),
        .ex_exp_flag(ex_exp_flag),
        // .ex_int_flag(ex_int_flag),
        .id2ex_inst_addr_misal(id2ex_inst_addr_misal),
        .id2ex_is_illg_inst(id2ex_is_illg_inst),
        .id2ex_is_ecall_inst(id2ex_is_ecall_inst),
        .id2ex_is_ebreak_inst(id2ex_is_ebreak_inst),
        .ex_is_wfi_inst(ex_is_wfi_inst_o),
        
        .mem_pc(mem_pc),
        .mem_inst(mem_inst),
        .mem_req_rf(mem_req_rf),
        .mem_rf_waddr(mem_rf_waddr),
        .mem_alu_res(mem_alu_res),
        .mem_is_load(mem_is_load),
        .mem_ls_addr_2low(mem_ls_addr_2low),
        .mem_l_mask(mem_l_mask),
        .ex2mem_exp_flag(ex2mem_exp_flag),
        // .ex2mem_int_flag(ex2mem_int_flag),
        .ex2mem_inst_addr_misal(ex2mem_inst_addr_misal),
        .ex2mem_is_illg_inst(ex2mem_is_illg_inst),
        .ex2mem_is_ecall_inst(ex2mem_is_ecall_inst),
        .ex2mem_is_ebreak_inst(ex2mem_is_ebreak_inst),
        .mem_is_wfi_inst(mem_is_wfi_inst),
        .mem_we(mem_we),
        .mem_re(mem_re)
    );
    
    
    wire mem_int_flag, mem_exp_flag;
    wire [`XLEN - 1 : 0] axi_read_data;
    // assign mem_load_data_i = sram_cs ? mem_load_data : clint_rdata; //后面需要更改
    mem_stage mem_stage
    (
        .mem_valid(mem_valid),
        .mem_pc_i(mem_pc),
        .mem_inst_i(mem_inst),
        
        .mem_is_load_i(mem_is_load),
        .mem_load_data_i(axi_read_data),
        .mem_ls_addr_2low_i(mem_ls_addr_2low),
        .mem_l_mask_i(mem_l_mask),
        
        .mem_req_rf_i(mem_req_rf),
        .mem_rf_waddr_i(mem_rf_waddr),
        .mem_alu_res_i(mem_alu_res),
        
        .mem_pc_o(mem_pc_o),
        .mem_inst_o(mem_inst_o),
        
        .mem_req_rf_o(mem_req_rf_o),
        .mem_rf_waddr_o(mem_rf_waddr_o),
        .mem_wb_data(mem_wb_data),
        
        .mem_fw_rd_addr(mem_fw_rd_addr),
        .mem_fw_data(mem_fw_data),
        
        .int_flag(int_flag),
        .ex2mem_exp_flag(ex2mem_exp_flag),
        // .ex2mem_int_flag(ex2mem_int_flag),
        .mem_exp_flag(mem_exp_flag),
        .mem_int_flag(mem_int_flag),
        .mem_exp_int_flag(mem_exp_int_flag),
        
        .mem_is_wfi_inst_i(mem_is_wfi_inst),
        .mem_is_wfi_inst_o(mem_is_wfi_inst_o)
    );
    

    mem_wb mem_wb_instance
    (
        .clk(clk_gate),
        .rst_n(rst_n),
        
        .pipe_flush(pipe_flush),
        
        .mem_we(mem_we),
        .mem_re(mem_re),
        .store_hand_suc(store_hand_suc),
        .load_hand_suc(load_hand_suc),
        
        .ex_mem_valid(ex_mem_valid),
        
        .mem_valid(mem_valid),
        .mem_allowin(mem_allowin),
        .mem_wb_valid(mem_wb_valid),
        
        // .int_flag(int_flag),
        
        .mem_pc(mem_pc_o),
        .mem_inst(mem_inst_o),
        .mem_req_rf(mem_req_rf_o),
        .mem_rf_waddr(mem_rf_waddr_o),
        .mem_wb_data(mem_wb_data),
        .mem_exp_flag(mem_exp_flag),
        .mem_int_flag(mem_int_flag),
        .ex2mem_inst_addr_misal(ex2mem_inst_addr_misal),
        .ex2mem_is_illg_inst(ex2mem_is_illg_inst),
        .ex2mem_is_ecall_inst(ex2mem_is_ecall_inst),
        .ex2mem_is_ebreak_inst(ex2mem_is_ebreak_inst),
        
        .wb_pc(wb_pc),
        .wb_inst(wb_inst),
        .wb_rf_we(wb_rf_we),
        .wb_rf_waddr(wb_rf_waddr),
        .wb_wb_data(wb_wb_data),
        
        .wb_exp_flag(wb_exp_flag),
        .wb_int_flag(wb_int_flag),
        .wb_exp_int_flag(wb_exp_int_flag),
        .wb_inst_addr_misal(wb_inst_addr_misal),
        .wb_is_illg_inst(wb_is_illg_inst),
        .wb_is_ecall_inst(wb_is_ecall_inst),
        .wb_is_ebreak_inst(wb_is_ebreak_inst),
        
        
        .wb_valid(wb_valid)
    );
    
    pipe_ctrl pipe_ctrl_instance
    (
        .id_is_bj_inst(id_is_bj_inst),
        .pipe_stall(pipe_stall),
        
        // .ex_is_mul_inst(ex_is_mul_inst_o),
        // .mul_done(ex_mul_done),
        
        // .ex_is_div_inst(ex_is_div_inst_o),
        // .div_done(ex_div_done),
        
        .id_is_j_inst(id_is_j_inst),
        .id_is_u_inst(id_is_u_inst),
        .id_is_i_inst(id_is_i_inst),
        .id_rf_raddr1(id_rf_raddr1),
        .id_rf_raddr2(id_rf_raddr2),
        .ex_loading(ex_loading),
        .ex_rf_waddr(ex_rf_waddr),
        .ld_risk(ld_risk),
        
        .id_is_fence_inst(id_is_fence_inst),
        .id_fence_tp(id_fence_tp),
        .ex_is_store(ex_is_store_o),
        
        .id_is_mret_inst(id_is_mret_inst),
        
        .wb_exp_int_flag(wb_exp_int_flag),
        .pipe_flush(pipe_flush)
    );
    

    bus_if bus_if_inst
    (
        .aclk(clk_gate),
        .aresetn(rst_n),
        .ex_mem_we(ex_mem_we),
        .ex_mem_re(ex_mem_re),
        .ex_mem_valid(ex_mem_valid),
        .if_id_valid(if_id_valid),
        .mem_allowin(mem_allowin),
        .id_allowin(id_allowin),
        .store_req_ok(store_req_ok),
        .load_req_ok(load_req_ok),
        .store_hand_suc(store_hand_suc),
        .load_hand_suc(load_hand_suc),
        .fetch_hand_suc(fetch_hand_suc),
        .ex_ls_addr(ex_ls_addr),
        .store_data(ex_mem_wdata),
        .axi_read_data(axi_read_data),
        .ex_byte_we(ex_byte_we),
        .size(ex_size_o),
        .inst_req(iram_en),
        .pc(inst_raddr),
        .wb_exp_int_flag(wb_exp_int_flag),
        .jump2exp(jump2exp),
        .inst_useless(inst_useless),
        .inst_valid(inst_valid),
        .inst_reg(inst_reg),
        
        .axi_ar_payload_id(axi_ar_payload_id),
        .axi_ar_payload_addr(axi_ar_payload_addr),
        .axi_ar_payload_len(axi_ar_payload_len),
        .axi_ar_payload_size(axi_ar_payload_size),
        .axi_ar_payload_burst(axi_ar_payload_burst),
        .axi_ar_payload_lock(axi_ar_payload_lock),
        .axi_ar_payload_cache(axi_ar_payload_cache),
        .axi_ar_payload_prot(axi_ar_payload_prot),
        
        .axi_ar_valid(axi_ar_valid),
        .axi_ar_ready(axi_ar_ready),
        
        .axi_r_payload_id(axi_r_payload_id),
        .axi_r_payload_data(axi_r_payload_data),
        .axi_r_payload_resp(axi_r_payload_resp),
        .axi_r_payload_last(axi_r_payload_last),
        
        .axi_r_valid(axi_r_valid),
        .axi_r_ready(axi_r_ready),
        
        .axi_aw_payload_id(axi_aw_payload_id),
        .axi_aw_payload_addr(axi_aw_payload_addr),
        .axi_aw_payload_len(axi_aw_payload_len),
        .axi_aw_payload_size(axi_aw_payload_size),
        .axi_aw_payload_burst(axi_aw_payload_burst),
        .axi_aw_payload_lock(axi_aw_payload_lock),
        .axi_aw_payload_cache(axi_aw_payload_cache),
        .axi_aw_payload_prot(axi_aw_payload_prot),
        
        .axi_aw_valid(axi_aw_valid),
        .axi_aw_ready(axi_aw_ready),
        
        .axi_w_payload_id(axi_w_payload_id),
        .axi_w_payload_data(axi_w_payload_data),
        .axi_w_payload_strb(axi_w_payload_strb),
        .axi_w_payload_last(axi_w_payload_last),
        
        .axi_w_valid(axi_w_valid),
        .axi_w_ready(axi_w_ready),
        
        .axi_b_payload_id(axi_b_payload_id),
        .axi_b_payload_resp(axi_b_payload_resp),
        
        .axi_b_valid(axi_b_valid),
        .axi_b_ready(axi_b_ready)
    );
    
endmodule 
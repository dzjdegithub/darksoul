

`include "defines.v"

module cpu_top
(
    input clk,
    input rst_n
);


    wire if_valid;
    wire pipe_stall;
    wire iram_en;
    wire [`XLEN - 3 : 0] inst_raddr;
    wire [`XLEN - 1 : 0] inst;
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
    wire [`XLEN - 1 : 0] mem_load_data;
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
 
 
    if_stage if_stage_instance
    (
        .if_valid(if_valid),
        .clk(clk),
        .rst_n(rst_n),
        
        .bj_flag(ex_bj_flag),
        .bj_addr(ex_bj_addr),
        
        .pipe_stall(pipe_stall),
        
        .iram_en(iram_en),
        .inst_raddr(inst_raddr),
        .inst(inst),
        
        .if_pc(if_pc),
        .if_inst(if_inst)
    );

    // IRAM iram_instance
    // (
        // .clk(clk),
        // .iram_en(iram_en),
        // .raddr(inst_raddr),
        // .inst(inst)
    // );

    if_id if_id_instance
    (
        .clk(clk),
        .rst_n(rst_n),
        
        .pipe_stall(pipe_stall),
        
        .ex_bj_flag(ex_bj_flag),
        
        .id_allowin(id_allowin),
        .if_valid(if_valid),
        .if_id_valid(if_id_valid),
        
        .if_pc(if_pc),
        .if_inst(if_inst),
        
        .id_pc(id_pc),
        .id_inst(id_inst)
    );

    wire id_is_csr_inst;
    wire [2 : 0] id_csr_op;
    wire id_csr_src_tp;
    wire id_rd_is_x0;
    wire id_rs1_is_x0;
    wire id_is_fence_inst;
    wire id_fence_tp;
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
        
        .id_alu_op(id_alu_op),
        .id_alu_src_tp(id_alu_src_tp),
        
        .ex_req_rf(ex_req_rf_o),
        .ex_fw_rd_addr(ex_fw_rd_addr),
        .ex_fw_data(ex_fw_data),
        
        .mem_req_rf(mem_req_rf_o),
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
        .id_fence_tp(id_fence_tp)
    );
    
    regfile regfile_instance
    (
        .clk(clk),
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
    id_ex id_ex_instance
    (
        .clk(clk),
        .rst_n(rst_n),
        
        .ld_risk(ld_risk),
        
        .if_id_valid(if_id_valid),
        .ex_allowin(ex_allowin),
        .id_valid(id_valid),
        .id_allowin(id_allowin),
        .id_ex_valid(id_ex_valid),
        
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
        .ex_rs1_is_x0(ex_rs1_is_x0)
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
    ex_stage ex_stage_instance
    (
        .clk(clk),
        .rst_n(rst_n),
        .ex_valid(ex_valid),
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
        .ex_rs2_o(ex_rs2_o),
        
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
        .ex_csr_wdata(ex_csr_wdata)
    );
    
    wire wb_valid;
    csr csr_instance
    (
        .clk(clk),
        .rst_n(rst_n),
        .csr_addr(ex_csr_addr),
        .csr_rdata(ex_csr_rdata),
        .csr_ren(ex_csr_ren),
        .csr_wen(ex_csr_wen),
        .csr_wdata(ex_csr_wdata),
        
        .wb_valid(wb_valid)
    );
    
    wire mem_raw_risk;
    SRAM sram_instance
    (
        .clk(clk),
        .rst_n(1'b1),
        
        .cs(1'b1),
        
        .re1(iram_en),
        .mem_raddr1(inst_raddr),
        .mem_rdata1(inst),
        
        .re2(ex_mem_re),
        .mem_raddr2(ex_ls_addr[31:2]),
        .mem_rdata2(mem_load_data),
        
        .we(ex_mem_we),
        .byte_we(ex_byte_we),
        .mem_waddr(ex_ls_addr[31:2]),
        .mem_wdata(ex_rs2_o),
        
        .mem_raw_risk(mem_raw_risk)
    );
    
    ex_mem ex_mem_instance
    (
        .clk(clk),
        .rst_n(rst_n),
        
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
        
        .mem_pc(mem_pc),
        .mem_inst(mem_inst),
        .mem_req_rf(mem_req_rf),
        .mem_rf_waddr(mem_rf_waddr),
        .mem_alu_res(mem_alu_res),
        .mem_is_load(mem_is_load),
        .mem_ls_addr_2low(mem_ls_addr_2low),
        .mem_l_mask(mem_l_mask)
    );
    
    mem_stage mem_stage
    (
        .mem_valid(mem_valid),
        .mem_pc_i(mem_pc),
        .mem_inst_i(mem_inst),
        
        .mem_is_load_i(mem_is_load),
        .mem_load_data_i(mem_load_data),
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
        .mem_fw_data(mem_fw_data)
    );
    
    mem_wb mem_wb_instance
    (
        .clk(clk),
        .rst_n(rst_n),
        
        .ex_mem_valid(ex_mem_valid),
        
        .mem_valid(mem_valid),
        .mem_allowin(mem_allowin),
        
        .mem_pc(mem_pc_o),
        .mem_inst(mem_inst_o),
        .mem_req_rf(mem_req_rf_o),
        .mem_rf_waddr(mem_rf_waddr_o),
        .mem_wb_data(mem_wb_data),
        
        .wb_pc(wb_pc),
        .wb_inst(wb_inst),
        .wb_rf_we(wb_rf_we),
        .wb_rf_waddr(wb_rf_waddr),
        .wb_wb_data(wb_wb_data),
        
        .wb_valid(wb_valid)
    );
    
    pipe_ctrl pipe_ctrl_instance
    (
        .id_is_bj_inst(id_is_bj_inst),
        .pipe_stall(pipe_stall),
        
        .ex_is_mul_inst(ex_is_mul_inst_o),
        .mul_done(ex_mul_done),
        
        .ex_is_div_inst(ex_is_div_inst_o),
        .div_done(ex_div_done),
        
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
        
        .mem_raw_risk(mem_raw_risk)
    );
    
endmodule 
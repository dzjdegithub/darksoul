//例化所有exu 将转移指令的信息发送出去 并将访问存储器的控制信号发送给存储器


`include "defines.v"
    
    
module ex_stage
(
    input clk,
    input rst_n,
    input ex_valid,
    input pipe_flush,
    input [`XLEN - 1 : 0] ex_pc_i,
    output [`XLEN - 1 : 0] ex_pc_o,
    input [`XLEN - 1 : 0] ex_inst_i,
    output [`XLEN - 1 : 0] ex_inst_o,
    
    input [`ALU_SRC_TYPE_WIDTH - 1 :0] ex_alu_src_tp,
    input [`XLEN - 1 : 0] ex_rs1_i,
    input [`XLEN - 1 : 0] ex_rs2_i,
    input [`XLEN - 1 : 0] ex_imm,
    input [`ALU_OP_WIDTH - 1 : 0] ex_alu_op,
    input ex_req_rf_i,
    input [`RF_ADDR_WIDTH - 1 : 0] ex_rf_waddr_i,
    
    output ex_req_rf_o,
    output [`RF_ADDR_WIDTH - 1 : 0] ex_rf_waddr_o,
    output [`XLEN - 1 : 0] ex_alu_res,
    
    input ex_is_mul_inst_i,
    output ex_is_mul_inst_o,
    input ex_is_div_inst_i,
    output ex_is_div_inst_o,
    input [1 : 0] ex_sign_extend,
    input ex_word_sel,
    input ex_div_sign,
    input ex_div_res_sel,
    
    output mul_done,
    output div_done,
    
    input ex_is_bj_inst,
    input ex_is_j_inst,
    input [`BJU_SRC_TYPE_WIDTH - 1 : 0] ex_bju_src_tp,
    //to pc_reg
    output ex_bj_flag,
    output [`XLEN - 1 : 0] ex_bj_addr,
    
    input ex_is_load,
    output ex_loading,
    input ex_is_store,
    output ex_is_store_o,

    input [4 : 0] ex_l_mask_i,
    input [3 : 0] ex_s_mask_i,
    
    //to mem
    output ex_mem_re,
    output ex_mem_we,
    output [`XLEN - 1 : 0] ex_ls_addr,
    output [4 : 0] ex_l_mask_o,
    output reg [3 : 0] ex_byte_we,
    output [`XLEN - 1 : 0] ex_rs2_o,
    input [1 : 0] ex_size_i,
    output [1 : 0] ex_size_o,
    
    //fwdata
    output [`RF_ADDR_WIDTH - 1 : 0] ex_fw_rd_addr,
    output [`XLEN - 1 : 0] ex_fw_data,
    
    //csr
    input ex_is_csr_inst,
    input [2 : 0] ex_csr_op,
    input ex_csr_src_tp,
    input ex_rd_is_x0,
    input ex_rs1_is_x0,
    
    output [11 : 0] ex_csr_addr,
    output ex_csr_ren,
    input [`XLEN - 1 : 0] ex_csr_rdata,
    output ex_csr_wen,
    output [`XLEN - 1 : 0] ex_csr_wdata,
    
    // input int_flag,
    // input id2ex_int_flag,
    input id2ex_exp_flag,
    // output ex_int_flag,
    output ex_exp_flag,
    // output ex_exp_int_flag,
    
    input mem_exp_int_flag,
    input wb_exp_int_flag,
    
    input id2ex_is_mret_inst,
    output ex_is_mret_inst,
    
    input ex_is_wfi_inst_i,
    output ex_is_wfi_inst_o,
    input mem_is_wfi_inst,
    input cpu_mie
);
    
    // wire ex_exp_int_flag;
    wire ex_ok; //由中断和异常引起的，使ex段不能写rf 不能访存，不能访问csr

    // assign ex_int_flag = (int_flag | id2ex_int_flag);
    assign ex_exp_flag = id2ex_exp_flag; //ex阶段暂时不会产生异常
    // assign ex_exp_int_flag = ex_int_flag | ex_exp_flag;
    assign ex_ok = ~(ex_exp_flag                  | 
                     mem_exp_int_flag             | 
                     wb_exp_int_flag              |
                     (mem_is_wfi_inst & cpu_mie)  );   //全局中断使能打开则wfi能响应中断，后续指令不能执行，若全局中断未响应，则继续执行后面的指令流
                     
    assign ex_is_mret_inst = (id2ex_is_mret_inst & ex_ok & ex_valid);

    assign ex_is_wfi_inst_o = (ex_is_wfi_inst_i & ex_ok & ex_valid);
    
    assign ex_size_o = ex_size_i;
    
    wire [`XLEN - 1 : 0] alu_src1, alu_src2;
    mux_alu mux_alu_inst
    (
        .alu_src_tp(ex_alu_src_tp),
        .rs1(ex_rs1_i),
        .rs2(ex_rs2_i),
        .imm(ex_imm),
        .pc(ex_pc_i),
        
        .alu_src1(alu_src1),
        .alu_src2(alu_src2)
    );

    wire [`XLEN - 1 : 0] alu_res;
    wire ex_br_taken;
    alu alu_inst
    (
        .alu_op(ex_alu_op),
        
        .alu_src1(alu_src1),
        .alu_src2(alu_src2),
        
        .alu_res(alu_res),
        .br_taken(ex_br_taken)
    );
    assign ex_bj_flag = ((ex_br_taken || ex_is_j_inst) && ex_valid);
    
    bju bju_inst
    (
        .is_bj_inst(ex_is_bj_inst),
        .bju_src_tp(ex_bju_src_tp),
        .pc(ex_pc_i),
        .rs1(ex_rs1_i),
        .imm(ex_imm),
        
        .bj_addr(ex_bj_addr)
    );

    agu agu_inst
    (
        .is_load(ex_is_load),
        .is_store(ex_is_store),
        .rs1(ex_rs1_i),
        .imm(ex_imm),
        
        .ls_addr(ex_ls_addr)
    );
    
    wire [`XLEN - 1 : 0] mul_res;
    mul mul_inst
    (
        .clk(clk),
        .rst_n(rst_n),
        .pipe_flush(pipe_flush),
        .ex_is_mul_inst(ex_is_mul_inst_o),
        .ex_word_sel(ex_word_sel),
        .m1(ex_rs1_i),
        .m2(ex_rs2_i),
        .ex_sign_extend(ex_sign_extend),
        .mul_done(mul_done),
        .mul_res(mul_res)
    );
    
    wire [`XLEN - 1 : 0] div_res;
    div div_inst
    (
        .clk(clk),
        .rst_n(rst_n),
        .pipe_flush(pipe_flush),
        .ex_is_div_inst(ex_is_div_inst_o),
        .ex_div_sign(ex_div_sign),
        .dividend(ex_rs1_i),
        .divisor(ex_rs2_i),
        .div_done(div_done),
        .ex_div_res_sel(ex_div_res_sel),
        .div_res(div_res)
    );
    
    wire csr_ren;
    wire csr_wen;
    csru csru_inst
    (
        .csr_op(ex_csr_op),
        .csr_src_tp(ex_csr_src_tp),
        .rd_is_x0(ex_rd_is_x0),
        .rs1_is_x0(ex_rs1_is_x0),
        .rs1(ex_rs1_i),
        .imm(ex_imm),
        .csr_rdata(ex_csr_rdata),
        .csr_ren(csr_ren),
        .csr_wen(csr_wen),
        .csr_wdata(ex_csr_wdata)
    );
    assign ex_csr_addr = ex_inst_i[31 : 20];
    assign ex_csr_ren = ((csr_ren & ex_valid) & ex_ok);
    assign ex_csr_wen = ((csr_wen & ex_valid) & ex_ok);

    assign ex_pc_o = ex_pc_i;
    assign ex_inst_o = ex_inst_i;
    
    assign ex_is_mul_inst_o = (ex_is_mul_inst_i && ex_valid);
    assign ex_is_div_inst_o = (ex_is_div_inst_i && ex_valid);
    
    assign ex_req_rf_o = ((ex_is_csr_inst ? ex_csr_ren : (ex_req_rf_i & ex_valid)) & ex_ok);
    assign ex_rf_waddr_o = ex_rf_waddr_i;
    assign ex_alu_res = (ex_is_mul_inst_o) ? mul_res:
                        (ex_is_div_inst_o) ? div_res:
                        (ex_is_csr_inst)   ? ex_csr_rdata:
                                             alu_res;
    
    assign ex_mem_re = ((ex_is_load == `TRUE ) & ex_valid & ex_ok);
    assign ex_mem_we = ((ex_is_store == `TRUE) & ex_valid & ex_ok);
    assign ex_l_mask_o = ex_l_mask_i;
    
    always @(*) begin
        case(ex_s_mask_i)
            4'b0001 :   ex_byte_we = (ex_ls_addr[1 : 0] == 2'b00) ? 4'b0001 :
                                   (ex_ls_addr[1 : 0] == 2'b01) ? 4'b0010 :
                                   (ex_ls_addr[1 : 0] == 2'b10) ? 4'b0100 : 
                                                                  4'b1000;
            4'b0011 :   ex_byte_we = (ex_ls_addr[1 : 0] == 2'b00) ? 4'b0011 : 4'b1100;
            4'b1111 :   ex_byte_we = 4'b1111;
            default :   ex_byte_we = 4'b0000;
        endcase
    end
    
    assign ex_fw_rd_addr = ex_rf_waddr_i;
    assign ex_fw_data = ex_alu_res; 
    
    assign ex_loading = (ex_is_load && ex_valid);
    
    assign ex_rs2_o = ex_rs2_i;
    
    assign ex_is_store_o = (ex_is_store && ex_valid);
    
endmodule 








`include "defines.v"

module decoder
(
    input [`XLEN - 1 : 0] inst_i,
    
    output [`XLEN - 1 : 0] inst_o,
    
    output reg is_bj_inst,
    output is_j_inst,
    //判定是否需要中通的信号，不需要传递到下一级流水
    output is_i_inst,
    output is_u_inst,
    
    output reg is_mul_inst,
    output reg is_div_inst,
    output reg [1 : 0] sign_extend,
    output reg word_sel,
    output reg div_sign,
    output reg div_res_sel,
    
    output reg [`BJU_SRC_TYPE_WIDTH - 1 : 0] bju_src_tp,
    
    output reg req_mem,
    output reg is_load,
    output reg [4 : 0] l_mask,       //最高位为符号位 ，1代表有符号，0代表无符号， 低四位1111为word 0011为半字 0001为字节
    output reg is_store,
    output reg [3 : 0] s_mask, 
    
    output reg [`ALU_OP_WIDTH - 1 : 0] alu_op,
    output reg [`ALU_SRC_TYPE_WIDTH - 1 : 0] alu_src_tp, 
    
    output [`RF_ADDR_WIDTH - 1 : 0] rf_raddr1,
    output [`RF_ADDR_WIDTH - 1 : 0] rf_raddr2,
    
    output reg req_rf,
    output [`RF_ADDR_WIDTH - 1 : 0] rf_waddr,
    
    output [`XLEN - 1 : 0] imm,
    
    output reg is_csr_inst,
    output reg [2 : 0] csr_op,
    output reg csr_src_tp,
    output rd_is_x0,
    output rs1_is_x0,
    
    output reg is_fence_inst,
    output reg fence_tp,

    output reg is_illg_inst,
    output reg is_ecall_inst,
    output reg is_ebreak_inst,
    
    output reg is_mret_inst
);

    assign inst_o = inst_i;
    
    
    
    wire [`OPCODE_WIDTH - 1 : 0] opcode;
    wire [`FUNCT3_WIDTH - 1 : 0] funct3;
    wire [`FUNCT7_WIDTH - 1 : 0] funct7;
    
    
    reg [`IMM_GEN_OP_WIDTH - 1 : 0] imm_gen_op;
    imm_gen imm_gen_inst
    (
        .inst(inst_i),
        .imm_gen_op(imm_gen_op),
        .imm(imm)
    );
    
    assign opcode = inst_i[`OPCODE_BASE];
    assign funct3 = inst_i[`FUNCT3_BASE];
    assign funct7 = inst_i[`FUNCT7_BASE];
    
    assign rf_raddr1 = inst_i[`RS1_BASE];
    assign rf_raddr2 = inst_i[`RS2_BASE];
    assign rf_waddr = inst_i[`RD_BASE];
    
    assign is_j_inst = ((opcode == `INST_JAL) || (opcode == `INST_JALR)) ? `TRUE : `FALSE;
    assign is_i_inst = ((opcode == `INST_TYPE_I) || (opcode == `INST_TYPE_IL)) ? `TRUE : `FALSE;
    assign is_u_inst = ((opcode == `INST_LUI) || (opcode == `INST_AUIPC)) ? `TRUE : `FALSE;
    
    assign rd_is_x0 = (rf_waddr == `X0);
    assign rs1_is_x0 = (rf_raddr1 == `X0);
    
    //记得先赋默认值
    always @(*) begin
    
        alu_op = `ALU_OP_NOP;
        alu_src_tp = `ALU_NO_SRC;
        is_bj_inst = `FALSE;
        bju_src_tp = `BJU_NO_SRC;
        is_load = `FALSE;
        l_mask = 5'b00000;
        is_store = `FALSE;  
        s_mask = 4'b0000;
        imm_gen_op = `IMM_GEN_NONE;
        is_mul_inst = `FALSE;
        is_div_inst = `FALSE;
        sign_extend = `SIGNED_SIGNED;
        word_sel = `LOW;
        div_sign = `TRUE;
        div_res_sel = `QUOTIENT;
        req_rf = `FALSE;
        is_csr_inst = `FALSE;
        csr_op = `CSR_NONE;
        csr_src_tp = `CSR_RS1;
        is_fence_inst = `FALSE;
        fence_tp = `FENCE;
        is_illg_inst = `FALSE;
        is_ecall_inst = `FALSE;
        is_ebreak_inst = `FALSE;
        is_mret_inst = `FALSE;
        req_mem = `FALSE;
        case(opcode) 
           
            
            `INST_TYPE_R : begin
                imm_gen_op = `IMM_GEN_NONE;
                case(funct3)
                
                    `INST_ADD_SUB_MUL : begin
                    
                        case(funct7)
                        
                            //ADD
                            `FUNCT7_TYPE_A : begin              
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_ADD;
                                alu_src_tp = `RS_RS;
                                req_rf = `TRUE;
                            end
                            
                            //SUB
                            `FUNCT7_TYPE_B : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_SUB;
                                alu_src_tp = `RS_RS;
                                req_rf = `TRUE;
                            end
                            
                            //MUL
                            `FUNCT7_TYPE_C : begin
                                is_mul_inst = `TRUE;
                                sign_extend = `UNSIGNED_UNSIGNED;
                                word_sel = `LOW;
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_NOP;
                                alu_src_tp = `ALU_NO_SRC;
                                req_rf = `TRUE;
                            end
                            
                            default : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_NOP;
                                alu_src_tp = `RS_RS;
                                req_rf = `FALSE;
                                is_illg_inst = `TRUE;
                            end
                        
                        endcase
                            
                    end
                    
                    `INST_SLL_MULH : begin
                        case(funct7)
                            //sll
                            `FUNCT7_TYPE_A : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_SLL;
                                alu_src_tp = `RS_RS;
                                req_rf = `TRUE;
                            end
                            //mulh
                            `FUNCT7_TYPE_C : begin
                                is_mul_inst = `TRUE;
                                sign_extend = `SIGNED_SIGNED;
                                word_sel = `HIGH;
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_NOP;
                                alu_src_tp = `ALU_NO_SRC;
                                req_rf = `TRUE;
                            end
                            
                            default : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_NOP;
                                alu_src_tp = `ALU_NO_SRC;
                                req_rf = `FALSE;
                                is_illg_inst = `TRUE;
                            end
                            
                        endcase
                    end
                    
                    `INST_SLT_MULHSU : begin
                        case(funct7)
                            //slt
                            `FUNCT7_TYPE_A : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_SLT;
                                alu_src_tp = `RS_RS;
                                req_rf = `TRUE;
                            end
                            //mulhsu
                            `FUNCT7_TYPE_C : begin
                                is_mul_inst = `TRUE;
                                sign_extend = `UNSIGNED_SIGNED;
                                word_sel = `HIGH;
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_NOP;
                                alu_src_tp = `ALU_NO_SRC;
                                req_rf = `TRUE;
                            end
                            
                            default : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_NOP;
                                alu_src_tp = `ALU_NO_SRC;
                                req_rf = `FALSE;
                                is_illg_inst = `TRUE;
                            end
                        endcase
                    end
                    
                    `INST_SLTU_MULHU : begin
                        case(funct7)
                            //sltu
                            `FUNCT7_TYPE_A : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_SLTU;
                                alu_src_tp = `RS_RS;
                                req_rf = `TRUE;
                            end
                            //mulhu
                            `FUNCT7_TYPE_C : begin
                                is_mul_inst = `TRUE;
                                sign_extend = `UNSIGNED_UNSIGNED;
                                word_sel = `HIGH;
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_NOP;
                                alu_src_tp = `ALU_NO_SRC;
                                req_rf = `TRUE;
                            end
                            
                            default : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_NOP;
                                alu_src_tp = `ALU_NO_SRC;
                                req_rf = `FALSE;
                                is_illg_inst = `TRUE;
                            end
                        endcase
                    end
                    
                    `INST_XOR_DIV : begin
                        case(funct7)
                        
                        //xor
                        `FUNCT7_TYPE_A : begin
                            is_bj_inst = `FALSE;
                            req_mem = `FALSE;
                            alu_op = `ALU_OP_XOR;
                            alu_src_tp = `RS_RS;
                            req_rf = `TRUE;
                        end
                        
                        //div
                        `FUNCT7_TYPE_C : begin
                            is_div_inst = `TRUE;
                            div_sign = `TRUE;
                            div_res_sel = `QUOTIENT;
                            is_bj_inst = `FALSE;
                            req_mem = `FALSE;
                            alu_op = `ALU_OP_NOP;
                            alu_src_tp = `ALU_NO_SRC;
                            req_rf = `TRUE;
                        end
                        
                        default : begin
                            is_bj_inst = `FALSE;
                            req_mem = `FALSE;
                            alu_op = `ALU_OP_NOP;
                            alu_src_tp = `ALU_NO_SRC;
                            req_rf = `FALSE;
                            is_illg_inst = `TRUE;
                        end
                        
                        endcase
                    end
                    
                    `INST_SRL_SRA_DIVU : begin
                    
                        case(funct7)
                        
                            //srl
                            `FUNCT7_TYPE_A : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_SRL;
                                alu_src_tp = `RS_RS;
                                req_rf = `TRUE;
                            end
                            
                            //sra
                            `FUNCT7_TYPE_B : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_SRA;
                                alu_src_tp = `RS_RS;
                                req_rf = `TRUE;
                            end
                            
                            //divu
                            `FUNCT7_TYPE_C : begin
                                is_div_inst = `TRUE;
                                div_sign = `FALSE;
                                div_res_sel = `QUOTIENT;
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_NOP;
                                alu_src_tp = `ALU_NO_SRC;
                                req_rf = `TRUE;
                            end
                            
                            default : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_NOP;
                                alu_src_tp = `RS_RS;
                                req_rf = `FALSE;
                                is_illg_inst = `TRUE;
                            end
                        
                        
                        endcase
                    
                    end
                    
                    `INST_OR_REM : begin
                        case(funct7)
                        
                        `FUNCT7_TYPE_A : begin
                            is_bj_inst = `FALSE;
                            req_mem = `FALSE;
                            alu_op = `ALU_OP_OR;
                            alu_src_tp = `RS_RS;
                            req_rf = `TRUE;
                        end
                        
                        `FUNCT7_TYPE_C : begin
                            is_div_inst = `TRUE;
                            div_sign = `TRUE;
                            div_res_sel = `REMAINDER;
                            is_bj_inst = `FALSE;
                            req_mem = `FALSE;
                            alu_op = `ALU_OP_NOP;
                            alu_src_tp = `ALU_NO_SRC;
                            req_rf = `TRUE;
                        end
                        
                        default : begin
                            is_bj_inst = `FALSE;
                            req_mem = `FALSE;
                            alu_op = `ALU_OP_NOP;
                            alu_src_tp = `ALU_NO_SRC;
                            req_rf = `FALSE;
                            is_illg_inst = `TRUE;
                        end
                        
                        endcase
                       
                    end
                    
                    `INST_AND_REMU : begin
                        case(funct7)
                        
                        `FUNCT7_TYPE_A : begin
                            is_bj_inst = `FALSE;
                            req_mem = `FALSE;
                            alu_op = `ALU_OP_AND;
                            alu_src_tp = `RS_RS;
                            req_rf = `TRUE;
                        end
                        
                        `FUNCT7_TYPE_C : begin
                            is_div_inst = `TRUE;
                            div_sign = `FALSE;
                            div_res_sel = `REMAINDER;
                            is_bj_inst = `FALSE;
                            req_mem = `FALSE;
                            alu_op = `ALU_OP_NOP;
                            alu_src_tp = `ALU_NO_SRC;
                            req_rf = `TRUE;
                        end
                        
                        default : begin
                            is_bj_inst = `FALSE;
                            req_mem = `FALSE;
                            alu_op = `ALU_OP_NOP;
                            alu_src_tp = `ALU_NO_SRC;
                            req_rf = `FALSE;
                            is_illg_inst = `TRUE;
                        end
                        
                        endcase
                    end
                    
                    default : begin
                        is_bj_inst = `FALSE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `RS_RS;
                        req_rf = `FALSE;
                        is_illg_inst = `TRUE;
                    end
                    
                endcase
            
            end
            
            `INST_TYPE_I : begin 
                imm_gen_op = `IMM_GEN_I;
                case(funct3)
                
                    `INST_ADDI : begin
                        is_bj_inst = `FALSE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_ADD;
                        alu_src_tp = `RS_IMM;
                        req_rf = `TRUE;
                    end
                    
                    `INST_SLTI : begin
                        is_bj_inst = `FALSE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_SLT;
                        alu_src_tp = `RS_IMM;
                        req_rf = `TRUE;
                    end
                    
                    `INST_SLTIU : begin
                        is_bj_inst = `FALSE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_SLTU;
                        alu_src_tp = `RS_IMM;
                        req_rf = `TRUE;
                    end
                    
                    `INST_XORI : begin
                        is_bj_inst = `FALSE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_XOR;
                        alu_src_tp = `RS_IMM;
                        req_rf = `TRUE;
                    end
                    
                    `INST_ORI : begin
                        is_bj_inst = `FALSE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_OR;
                        alu_src_tp = `RS_IMM;
                        req_rf = `TRUE;
                    end
                    
                    `INST_ANDI : begin
                        is_bj_inst = `FALSE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_AND;
                        alu_src_tp = `RS_IMM;
                        req_rf = `TRUE;
                    end 
                    
                    `INST_SLLI : begin
                        is_bj_inst = `FALSE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_SLL;
                        alu_src_tp = `RS_IMM;
                        req_rf = `TRUE;
                    end
                    
                    `INST_SRLI_SRAI : begin
                    
                        case(funct7)
                        
                            //SRLI
                            `FUNCT7_TYPE_A : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_SRL;
                                alu_src_tp = `RS_IMM;
                                req_rf = `TRUE;
                            end
                        
                            //SRAI
                            `FUNCT7_TYPE_B : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_SRA;
                                alu_src_tp = `RS_IMM;
                                req_rf = `TRUE;
                            end
                            
                            default : begin
                                is_bj_inst = `FALSE;
                                req_mem = `FALSE;
                                alu_op = `ALU_OP_NOP;
                                alu_src_tp = `RS_IMM;
                                req_rf = `FALSE;
                                is_illg_inst = `TRUE;
                            end
                        endcase
                        
                    end
                    
                    default : begin
                        is_bj_inst = `FALSE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `RS_IMM;
                        req_rf = `FALSE;
                        imm_gen_op = `IMM_GEN_NONE;
                        is_illg_inst = `TRUE;
                    end
                    
                    
                endcase
                
                
            end 
            
            `INST_TYPE_IL : begin
                imm_gen_op = `IMM_GEN_I;
                is_load = `TRUE;
                case(funct3)
                
                    `INST_LB : begin
                        is_bj_inst = `FALSE;
                        req_mem = `TRUE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        req_rf = `TRUE;
                        l_mask = 5'b10001;
                    end
                    
                    `INST_LH : begin
                        is_bj_inst = `FALSE;
                        req_mem = `TRUE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        req_rf = `TRUE;
                        l_mask = 5'b10011;
                    end
                    
                    `INST_LW : begin
                        is_bj_inst = `FALSE;
                        req_mem = `TRUE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        req_rf = `TRUE;
                        l_mask = 5'b11111;
                    end
                    
                    `INST_LBU : begin
                        is_bj_inst = `FALSE;
                        req_mem = `TRUE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        req_rf = `TRUE;
                        l_mask = 5'b00001;
                    end
                    
                    `INST_LHU : begin
                        is_bj_inst = `FALSE;
                        req_mem = `TRUE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        req_rf = `TRUE;
                        l_mask = 5'b00011;
                    end
                
                    default : begin
                        is_bj_inst = `FALSE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        req_rf = `FALSE;
                        l_mask = 5'b00000;
                        is_load = `FALSE;
                        imm_gen_op = `IMM_GEN_NONE;
                        is_illg_inst = `TRUE;
                    end
                
                
                
                
                endcase
            
            
            
            
            
            end 
            
            `INST_TYPE_S : begin
                imm_gen_op = `IMM_GEN_S;
                is_store = `TRUE;
                case(funct3)
                
                    `INST_SB : begin
                        is_bj_inst = `FALSE;
                        req_mem = `TRUE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        req_rf = `FALSE;
                        s_mask = 4'b0001;
                    end
                    
                    `INST_SH : begin
                        is_bj_inst = `FALSE;
                        req_mem = `TRUE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        req_rf = `FALSE;
                        s_mask = 4'b0011;
                    end
                    
                    `INST_SW : begin
                        is_bj_inst = `FALSE;
                        req_mem = `TRUE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        req_rf = `FALSE;
                        s_mask = 4'b1111;
                    end
                
                    default : begin
                        is_bj_inst = `FALSE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        req_rf = `FALSE;
                        s_mask = 4'b0000;
                        imm_gen_op = `IMM_GEN_NONE;
                        is_store = `FALSE;
                        is_illg_inst = `TRUE;
                    end
                
                endcase 
            
            
            
            
            
            end
            
            `INST_TYPE_B : begin
                imm_gen_op = `IMM_GEN_B;
                bju_src_tp = `BJU_PC_IMM;
                case(funct3)
                    
                    `INST_BEQ : begin
                        is_bj_inst = `TRUE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_EQ;
                        alu_src_tp = `RS_RS;
                        req_rf = `FALSE;
                    end
                    
                    `INST_BNE : begin
                        is_bj_inst = `TRUE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_NE;
                        alu_src_tp = `RS_RS;
                        req_rf = `FALSE;
                    end
                    
                    `INST_BLT : begin
                        is_bj_inst = `TRUE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_LT;
                        alu_src_tp = `RS_RS;
                        req_rf = `FALSE;
                    end
                    
                    `INST_BGE : begin
                        is_bj_inst = `TRUE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_GE;
                        alu_src_tp = `RS_RS;
                        req_rf = `FALSE;
                    end
                    
                    `INST_BLTU : begin
                        is_bj_inst = `TRUE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_LTU;
                        alu_src_tp = `RS_RS;
                        req_rf = `FALSE;
                    end
                    
                    `INST_BGEU : begin
                        is_bj_inst = `TRUE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_GEU;
                        alu_src_tp = `RS_RS;
                        req_rf = `FALSE;
                    end
                
                    default : begin
                        is_bj_inst = `FALSE;
                        req_mem = `FALSE;
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        req_rf = `FALSE;
                        imm_gen_op = `IMM_GEN_NONE;
                        bju_src_tp = `BJU_NO_SRC;
                        is_illg_inst = `TRUE;
                    end
                
                endcase
            
            end 
            
            `INST_LUI : begin
                imm_gen_op = `IMM_GEN_U;
                is_bj_inst = `FALSE;
                req_mem = `FALSE;
                alu_op = `ALU_OP_ADD;
                alu_src_tp = `ZERO_IMM;
                req_rf = `TRUE;
            end
            
            `INST_AUIPC : begin
                imm_gen_op = `IMM_GEN_U;
                is_bj_inst = `FALSE;
                req_mem = `FALSE;
                alu_op = `ALU_OP_ADD;
                alu_src_tp = `PC_IMM;
                req_rf = `TRUE;
            end
            
            `INST_JAL : begin
                imm_gen_op = `IMM_GEN_J;
                is_bj_inst = `TRUE;
                bju_src_tp = `BJU_PC_IMM;
                req_mem = `FALSE;
                alu_op = `ALU_OP_ADD;
                alu_src_tp = `PC_4;
                req_rf = `TRUE;
            end
            
            `INST_JALR : begin
                imm_gen_op = `IMM_GEN_I;
                is_bj_inst = `TRUE;
                bju_src_tp = `BJU_RS_IMM;
                req_mem = `FALSE;
                alu_op = `ALU_OP_ADD;
                alu_src_tp = `PC_4;
                req_rf = `TRUE;
            end
            
            `INST_CSR_E : begin
                case(funct3)
                    
                    `INST_E_TYPE : begin
                        case(inst_i[31 : 7])
                        
                            `INST_ECALL : begin
                                is_ecall_inst = `TRUE;
                                req_rf = `FALSE;
                            end
                            
                            `INST_EBREAK : begin
                                is_ebreak_inst = `TRUE;
                                req_rf = `FALSE;
                            end
                            
                            `INST_MRET : begin
                                req_rf = `FALSE;
                                is_mret_inst = `TRUE;
                            end
                            
                            default : begin
                                is_illg_inst = `TRUE;
                                req_rf = `FALSE;
                            end
                        
                        endcase
                    end

                    `INST_CSRRW : begin
                        is_csr_inst = `TRUE;
                        req_rf = `TRUE;
                        csr_op = `CSR_RW;
                        csr_src_tp = `CSR_RS1;
                    end
                    
                    `INST_CSRRS : begin
                        is_csr_inst = `TRUE;
                        req_rf = `TRUE;
                        csr_op = `CSR_RS;
                        csr_src_tp = `CSR_RS1;
                    end
                    
                    `INST_CSRRC : begin
                        is_csr_inst = `TRUE;
                        req_rf = `TRUE;
                        csr_op = `CSR_RC;
                        csr_src_tp = `CSR_RS1;
                    end
                    
                    `INST_CSRRWI : begin
                        is_csr_inst = `TRUE;
                        req_rf = `TRUE;
                        csr_op = `CSR_RW;
                        imm_gen_op = `IMM_GEN_CSR;
                        csr_src_tp = `CSR_IMM;
                    end
                    
                    `INST_CSRRSI : begin
                        is_csr_inst = `TRUE;
                        req_rf = `TRUE;
                        csr_op = `CSR_RS;
                        imm_gen_op = `IMM_GEN_CSR;
                        csr_src_tp = `CSR_IMM;
                    end
                    
                    `INST_CSRRCI : begin
                        is_csr_inst = `TRUE;
                        req_rf = `TRUE;
                        csr_op = `CSR_RC;
                        imm_gen_op = `IMM_GEN_CSR;
                        csr_src_tp = `CSR_IMM;
                    end             
                
                    default : begin
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        is_bj_inst = `FALSE;
                        bju_src_tp = `BJU_NO_SRC;
                        is_load = `FALSE;
                        l_mask = 5'b00000;
                        is_store = `FALSE;  
                        s_mask = 4'b0000;
                        imm_gen_op = `IMM_GEN_NONE;
                        is_mul_inst = `FALSE;
                        is_div_inst = `FALSE;
                        sign_extend = `SIGNED_SIGNED;
                        word_sel = `LOW;
                        div_sign = `TRUE;
                        div_res_sel = `QUOTIENT;
                        req_rf = `FALSE;
                        is_csr_inst = `FALSE;
                        csr_op = `CSR_NONE;
                        csr_src_tp = `CSR_RS1;
                        is_illg_inst = `TRUE;
                    end
                endcase
            end
            
            `INST_TYPE_FENCE : begin
                case(funct3)
                
                    `INST_FENCE : begin
                        is_fence_inst = `TRUE;
                        fence_tp = `FENCE;
                    end
                    
                    `INST_FENCE_I : begin
                        is_fence_inst = `TRUE;
                        fence_tp = `FENCE_I;
                    end
                    
                    default : begin
                        alu_op = `ALU_OP_NOP;
                        alu_src_tp = `ALU_NO_SRC;
                        is_bj_inst = `FALSE;
                        bju_src_tp = `BJU_NO_SRC;
                        is_load = `FALSE;
                        l_mask = 5'b00000;
                        is_store = `FALSE;  
                        s_mask = 4'b0000;
                        imm_gen_op = `IMM_GEN_NONE;
                        is_mul_inst = `FALSE;
                        is_div_inst = `FALSE;
                        sign_extend = `SIGNED_SIGNED;
                        word_sel = `LOW;
                        div_sign = `TRUE;
                        div_res_sel = `QUOTIENT;
                        req_rf = `FALSE;
                        is_csr_inst = `FALSE;
                        csr_op = `CSR_NONE;
                        csr_src_tp = `CSR_RS1;
                        is_illg_inst = `TRUE;
                    end
                endcase
            end
        
            default : begin
                alu_op = `ALU_OP_NOP;
                alu_src_tp = `ALU_NO_SRC;
                is_bj_inst = `FALSE;
                bju_src_tp = `BJU_NO_SRC;
                is_load = `FALSE;
                l_mask = 5'b00000;
                is_store = `FALSE;  
                s_mask = 4'b0000;
                imm_gen_op = `IMM_GEN_NONE;
                is_mul_inst = `FALSE;
                is_div_inst = `FALSE;
                sign_extend = `SIGNED_SIGNED;
                word_sel = `LOW;
                div_sign = `TRUE;
                div_res_sel = `QUOTIENT;
                req_rf = `FALSE;
                is_csr_inst = `FALSE;
                csr_op = `CSR_NONE;
                csr_src_tp = `CSR_RS1;
                is_illg_inst = `TRUE;
            end
        
        
        endcase
        
    end 
    
    
endmodule
        
        
    



`include "defines.v"



module mux_alu
(
    input [`ALU_SRC_TYPE_WIDTH - 1 : 0] alu_src_tp,
    input [`XLEN - 1 : 0] rs1,
    input [`XLEN - 1 : 0] rs2,
    input [`XLEN - 1 : 0] imm,
    input [`XLEN - 1 : 0] pc,
    
    output reg [`XLEN - 1 : 0] alu_src1,
    output reg [`XLEN - 1 : 0] alu_src2
);

    always @(*) begin
        
        alu_src1 = `ZEROWORD;
        alu_src2 = `ZEROWORD;
        
        case(alu_src_tp)
        
            `ALU_NO_SRC : begin
                alu_src1 = `ZEROWORD;
                alu_src2 = `ZEROWORD;
            end
        
            `RS_RS : begin
                alu_src1 = rs1;
                alu_src2 = rs2;
            end 
            
            `RS_IMM : begin
                alu_src1 = rs1;
                alu_src2 = imm;
            end
            
            `PC_IMM : begin
                alu_src1 = pc;
                alu_src2 = imm;
            end
            
            `PC_4 : begin
                alu_src1 = pc;
                alu_src2 = `XLEN'd`INST_BYTE_NUM;
            end
            
            `ZERO_IMM : begin
                alu_src1 = `ZEROWORD;
                alu_src2 = imm;
            end
        
            default : begin
                alu_src1 = `ZEROWORD;
                alu_src2 = `ZEROWORD;
            end
            
        endcase
    
    end
     



endmodule 
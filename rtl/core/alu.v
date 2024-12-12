


`include "defines.v"


module alu
(
    input [`ALU_OP_WIDTH - 1 : 0] alu_op,
    
    input [`XLEN - 1 : 0] alu_src1,
    input [`XLEN - 1 : 0] alu_src2,
    
    output reg [`XLEN - 1 : 0] alu_res,
    output reg br_taken
);

    always @(*) begin
                    
        alu_res = `ZEROWORD;
        br_taken = `FALSE;
        
        case(alu_op)

        
            `ALU_OP_NOP : 
                alu_res = `ZEROWORD;
                
            `ALU_OP_ADD :
                alu_res = alu_src1 + alu_src2;
                
            `ALU_OP_SUB :
                alu_res = alu_src1 - alu_src2;
                
            `ALU_OP_SLL :
                alu_res = alu_src1 << alu_src2[4 : 0];
                
            `ALU_OP_SLT :        //verilog 默认是无符号比较
                alu_res = ($signed(alu_src1) < $signed(alu_src2)) ? `XLEN'd1 : `XLEN'd0;
                
            `ALU_OP_SLTU :
                alu_res = (alu_src1 < alu_src2) ? `XLEN'd1 : `XLEN'd0;
                
            `ALU_OP_XOR :
                alu_res = alu_src1 ^ alu_src2;
                
            `ALU_OP_SRL :
                alu_res = alu_src1 >> alu_src2[4 : 0];
                
            `ALU_OP_SRA :
                alu_res = $signed(alu_src1) >>> alu_src2[4 : 0];
                
            `ALU_OP_OR :
                alu_res = alu_src1 | alu_src2;
                
            `ALU_OP_AND :
                alu_res = alu_src1 & alu_src2;
            
            `ALU_OP_EQ :
                br_taken = (alu_src1 == alu_src2) ? `TRUE : `FALSE;
                
            `ALU_OP_NE :
                br_taken = (alu_src1 != alu_src2) ? `TRUE : `FALSE;
                
            `ALU_OP_LT :   
                br_taken = ($signed(alu_src1) < $signed(alu_src2)) ? `TRUE : `FALSE;
                
            `ALU_OP_GE :
                br_taken = ($signed(alu_src1) >= $signed(alu_src2)) ? `TRUE : `FALSE;
                
            `ALU_OP_LTU :
                br_taken = (alu_src1 < alu_src2) ? `TRUE : `FALSE;
            
            `ALU_OP_GEU :
                br_taken = (alu_src1 >= alu_src2) ? `TRUE : `FALSE;
        
            default : begin
                alu_res = `ZEROWORD;
                br_taken = `FALSE;
            end
        
        endcase
    end
        










endmodule
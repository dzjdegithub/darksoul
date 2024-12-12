



`include "defines.v"

module bju
(
    input is_bj_inst,
    input [`BJU_SRC_TYPE_WIDTH - 1 : 0] bju_src_tp,
    input [`XLEN - 1 : 0] pc,
    input [`XLEN - 1 : 0] rs1,
    input [`XLEN - 1 : 0] imm,
    
    output reg [`XLEN - 1 : 0] bj_addr
);

    always @(*) begin
    
        if(is_bj_inst == `FALSE) begin
            bj_addr = `ZEROWORD;
        end
        
        else begin
            case(bju_src_tp)
                `BJU_NO_SRC : bj_addr = `ZEROWORD;
                `BJU_PC_IMM : bj_addr = pc + imm;
                `BJU_RS_IMM : bj_addr = rs1 + imm;
                default     : bj_addr = `ZEROWORD;
            endcase
        end
            
    
    
    end




endmodule 
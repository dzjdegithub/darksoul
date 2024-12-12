`include "defines.v"

module csru
(
    input [2 : 0] csr_op,
    input csr_src_tp,
    input rd_is_x0,
    input rs1_is_x0,
    input [`XLEN - 1 : 0] rs1,
    input [`XLEN - 1 : 0] imm,
    
    input [`XLEN - 1 : 0] csr_rdata,
     
    output reg csr_ren, //产生寄存器堆写使能

    output reg csr_wen,
    output reg [`XLEN - 1 : 0] csr_wdata
);

    wire [`XLEN - 1 : 0] csr_opdata;
    assign csr_opdata = (csr_src_tp == `CSR_RS1) ? rs1 : imm;
    
    always @(*) begin
        case(csr_op)
        
            `CSR_NONE : begin
                csr_ren = `DISABLE;
                csr_wen = `DISABLE;
                csr_wdata = `ZEROWORD;
            end
        
            `CSR_RW : begin
                csr_ren = (rd_is_x0 == `TRUE) ? `DISABLE : `ENABLE;
                csr_wen = `ENABLE;
                csr_wdata = csr_opdata;
            end
            
            `CSR_RS : begin
                csr_ren = `ENABLE;
                csr_wen = (csr_src_tp == `CSR_RS1) ? ((rs1_is_x0 == `TRUE) ? `DISABLE : `ENABLE) :
                                                     ((imm == `XLEN'b0) ? `DISABLE : `ENABLE);
                csr_wdata = csr_opdata | csr_rdata;
            end
            
            `CSR_RC : begin
                csr_ren = `ENABLE;
                csr_wen = (csr_src_tp == `CSR_RS1) ? ((rs1_is_x0 == `TRUE) ? `DISABLE : `ENABLE) :
                                                     ((imm == `XLEN'b0) ? `DISABLE : `ENABLE);
                csr_wdata = ~csr_opdata & csr_rdata;                                    
            end
            
            default : begin
                csr_ren = `DISABLE;
                csr_wen = `DISABLE;
                csr_wdata = `ZEROWORD;
            end
        endcase
    end






endmodule
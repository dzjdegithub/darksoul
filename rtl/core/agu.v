



`include "defines.v"

module agu
(
    input is_load,
    input is_store,
    input [`XLEN - 1 : 0] rs1,
    input [`XLEN - 1 : 0] imm,
    
    output [`XLEN - 1 : 0] ls_addr
);

    wire is_ls;
    
    assign is_ls = is_load | is_store;

    assign ls_addr = (is_ls == `TRUE) ? (rs1 + imm) : `ZEROWORD;



endmodule 
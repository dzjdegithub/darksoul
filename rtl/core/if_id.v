`include "defines.v"


module if_id
(
    input clk,
    input rst_n,
    
    //pipe_ctrl
    input pipe_stall,
    input pipe_flush,
    input ex_bj_flag,
    input ex_is_mret_inst,
    
    input inst_valid,
    input fetch_hand_suc,
    input inst_useless,
    
    //hand
    input id_allowin,
    output if_valid, //这个valid复位为有效
    output if_id_valid,
    
    
    //if 
    input [`XLEN - 1 : 0] if_pc,
    input [`XLEN - 1 : 0] if_inst,
    // input if_int_flag,
    input if_exp_flag,
    // input if_exp_int_flag,
    input if_inst_addr_misal,

    
    //id
    output reg [`XLEN - 1 : 0] id_pc,
    output [`XLEN - 1 : 0] id_inst, //从ram中读出已经打了一拍，无需再打拍
    // output reg if2id_int_flag,
    output reg if2id_exp_flag,
    // output reg if2id_exp_int_flag,
    output reg if2id_inst_addr_misal
);

    
    

    wire if_ready_go;
    assign if_valid = ((~pipe_stall) & (~ex_bj_flag) & (~ex_is_mret_inst));
    assign if_ready_go = (fetch_hand_suc & ~inst_useless) | inst_valid;
    assign if_id_valid = (if_valid & if_ready_go);
    
    
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            id_pc <= `CPU_RST_ADDR;
            // if2id_int_flag <= `FALSE;
            if2id_exp_flag <= `FALSE;
            // if2id_exp_int_flag <= `FALSE;
            if2id_inst_addr_misal <= `FALSE;
        end
        else if(pipe_flush == `FLUSH) begin
            id_pc <= `CPU_RST_ADDR;
            // if2id_int_flag <= `FALSE;
            if2id_exp_flag <= `FALSE;
            // if2id_exp_int_flag <= `FALSE;
            if2id_inst_addr_misal <= `FALSE;
        end
        else if(if_id_valid && id_allowin) begin
            id_pc <= if_pc;
            // if2id_int_flag <= if_int_flag;
            if2id_exp_flag <= if_exp_flag;
            // if2id_exp_int_flag <= if_exp_int_flag;
            if2id_inst_addr_misal <= if_inst_addr_misal;
        end
        else begin
            id_pc <= id_pc;
            // if2id_int_flag <= if2id_int_flag;
            if2id_exp_flag <= if2id_exp_flag;
            // if2id_exp_int_flag <= if2id_exp_int_flag;
            if2id_inst_addr_misal <= if2id_inst_addr_misal;
        end
    end
    
    
    assign id_inst = if_inst;







endmodule









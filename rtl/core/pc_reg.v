`include "defines.v"

module pc_reg
(
    input if_valid,
    input clk,
    input rst_n,
    
    input bj_flag,
    input [`XLEN - 1 : 0] bj_addr,
    
    input pipe_stall,
    
    // input fetch_hand_suc,
    input if_id_valid,
    input id_allowin,
    
    input jump2exp,
    input [`XLEN - 1 : 0] meh_addr,
    input ex_is_mret_inst,
    input [`XLEN - 1 : 0] mret_addr,
                                
    output iram_en, //inst_req
    output reg [`XLEN - 1 : 0] pc_o
);

    wire [`XLEN - 1 : 0] pc_nxt;
    
    assign iram_en = (if_valid == `TRUE) ? rst_n : 1'b0;
    
    assign pc_nxt = jump2exp                    ?       meh_addr              :
                    ex_is_mret_inst             ?       mret_addr             :   
                    bj_flag                     ?       bj_addr               :     
                    (if_id_valid & id_allowin)  ?       pc_o + `INST_BYTE_NUM :
                    pc_o; 
                
              
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE)
            pc_o <= `CPU_RST_ADDR;
        else
            pc_o <= pc_nxt;
    end
            

endmodule
`include "defines.v"

module pc_reg
(
    input if_valid,
    input clk,
    input rst_n,
    
    input bj_flag,
    input [`XLEN - 1 : 0] bj_addr,
    
    input pipe_stall,
    //有没有flush以后在加
    
    input wb_exp_int_flag,
    input [`XLEN - 1 : 0] meh_addr,
    input id_is_mret_inst,
    input [`XLEN - 1 : 0] mret_addr,
                                
    output iram_en,
    output reg [`XLEN - 1 : 0] pc_o
);

    wire [`XLEN - 1 : 0] pc_nxt;
    
    assign iram_en = (if_valid == `TRUE) ? 1'b1 : 1'b0;
    
    assign pc_nxt = wb_exp_int_flag         ?       meh_addr    :
                    id_is_mret_inst         ?       mret_addr   :   
                    bj_flag                 ?       bj_addr     :     
                    (pipe_stall == `STALL)  ?       pc_o        :
                    pc_o + `INST_BYTE_NUM; 
                
              
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE)
            pc_o <= `CPU_RST_ADDR;
        else 
            pc_o <= pc_nxt;
    end
            

endmodule
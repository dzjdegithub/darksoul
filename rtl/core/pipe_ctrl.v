
`include "defines.v"

module pipe_ctrl
(
    //bj
    input id_is_bj_inst,
    output pipe_stall,
    
    input ex_is_mul_inst,
    input mul_done,
    
    input ex_is_div_inst,
    input div_done,
    
    //load_risk
    input id_is_j_inst,
    input id_is_u_inst,
    input id_is_i_inst,
    input [`RF_ADDR_WIDTH - 1 : 0] id_rf_raddr1,
    input [`RF_ADDR_WIDTH - 1 : 0] id_rf_raddr2,
    input ex_loading,
    input [`RF_ADDR_WIDTH - 1 : 0] ex_rf_waddr,
    output reg ld_risk,
    
    //fence.i
    input id_is_fence_inst,
    input id_fence_tp,
    input ex_is_store,
    
    input mem_raw_risk,
    
    input id_is_mret_inst,
    
    input wb_exp_int_flag,
    output pipe_flush  
);

    always @(*) begin
        if(~ex_loading) begin
            ld_risk = `FALSE;
        end
        else begin
            if(id_is_u_inst || id_is_j_inst)
                ld_risk = `FALSE;
            else if(id_is_i_inst)
                ld_risk = (ex_rf_waddr == id_rf_raddr1) ? `TRUE : `FALSE;
            else 
                ld_risk = ((ex_rf_waddr == id_rf_raddr1) || (ex_rf_waddr == id_rf_raddr2)) ? `TRUE : `FALSE;
        end
    end

    assign pipe_stall = (id_is_bj_inst                                                | 
                         id_is_mret_inst                                              |
                         ld_risk                                                      | 
                         (ex_is_mul_inst & (~mul_done))                               |
                         (ex_is_div_inst & (~div_done))                               |
                         (ex_is_store & id_is_fence_inst & (id_fence_tp == `FENCE_I)) |
                         mem_raw_risk
                         );

    assign pipe_flush = wb_exp_int_flag;
    
endmodule 
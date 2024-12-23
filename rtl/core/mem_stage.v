


`include "defines.v"


module mem_stage
(
    input mem_valid,
    input [`XLEN - 1 : 0] mem_pc_i,
    input [`XLEN - 1 : 0] mem_inst_i,
    
    input mem_is_load_i,
    input [`XLEN - 1 : 0] mem_load_data_i, //需要进行扩展
    input [1 : 0] mem_ls_addr_2low_i,
    input [4 : 0] mem_l_mask_i,
    
    input mem_req_rf_i,
    input [`RF_ADDR_WIDTH - 1 : 0] mem_rf_waddr_i,
    input [`XLEN - 1 : 0] mem_alu_res_i,
    
    output [`XLEN - 1 : 0] mem_pc_o,
    output [`XLEN - 1 : 0] mem_inst_o,
    
    output mem_req_rf_o,
    output [`RF_ADDR_WIDTH - 1 : 0] mem_rf_waddr_o,
    output [`XLEN - 1 : 0] mem_wb_data,
    
    //fw
    output [`RF_ADDR_WIDTH - 1 : 0] mem_fw_rd_addr,
    output [`XLEN - 1 : 0] mem_fw_data,
    
    input int_flag,
    input ex2mem_exp_flag,
    // input ex2mem_int_flag,
    output mem_exp_flag,
    output mem_int_flag,
    output mem_exp_int_flag,
    
    input mem_is_wfi_inst_i,
    input mem_is_wfi_inst_o
);

    assign mem_int_flag = int_flag;
    assign mem_exp_flag = ex2mem_exp_flag; //mem阶段暂时不会产生异常
    assign mem_exp_int_flag = mem_int_flag | mem_exp_flag;

    assign mem_is_wfi_inst_o = mem_is_wfi_inst_i & mem_valid;

    assign mem_fw_rd_addr = mem_rf_waddr_i;
    assign mem_fw_data = mem_wb_data;

    reg [`XLEN - 1 : 0] load_data;
    
    always @(*) begin
        case(mem_l_mask_i)
        
            5'b10001 : begin
                load_data = (mem_ls_addr_2low_i == 2'b00) ? {{24{mem_load_data_i[7]}}, mem_load_data_i[7 : 0]} :
                            (mem_ls_addr_2low_i == 2'b01) ? {{24{mem_load_data_i[15]}}, mem_load_data_i[15 : 8]} :
                            (mem_ls_addr_2low_i == 2'b10) ? {{24{mem_load_data_i[23]}}, mem_load_data_i[23 : 16]} :
                                                            {{24{mem_load_data_i[31]}}, mem_load_data_i[31 : 24]};  
            end
            
            5'b10011 : begin
                load_data = (mem_ls_addr_2low_i == 2'b00) ? {{16{mem_load_data_i[15]}}, mem_load_data_i[15 : 0]} :
                                                            {{16{mem_load_data_i[31]}}, mem_load_data_i[31 : 16]};
            end
            
            5'b11111 : begin
                load_data = mem_load_data_i;
            end
            
            5'b00001 : begin
                load_data = (mem_ls_addr_2low_i == 2'b00) ? {{24{1'b0}}, mem_load_data_i[7 : 0]} :
                            (mem_ls_addr_2low_i == 2'b01) ? {{24{1'b0}}, mem_load_data_i[15 : 8]} :
                            (mem_ls_addr_2low_i == 2'b10) ? {{24{1'b0}}, mem_load_data_i[23 : 16]} :
                                                            {{24{1'b0}}, mem_load_data_i[31 : 24]};
            end
            
            5'b00011 : begin
                load_data = (mem_ls_addr_2low_i == 2'b00) ? {{16{1'b0}}, mem_load_data_i[15 : 0]} :
                                                            {{16{1'b0}}, mem_load_data_i[31 : 16]};
            end
            
            default : begin
                load_data = `ZEROWORD;
            end
        endcase
        
    end

    assign mem_pc_o= mem_pc_i;
    assign mem_inst_o = mem_inst_i;
    
    assign mem_req_rf_o = (mem_req_rf_i && mem_valid);
    assign mem_rf_waddr_o = mem_rf_waddr_i;
    assign mem_wb_data = (mem_is_load_i == `TRUE) ? load_data : mem_alu_res_i;
    

endmodule 
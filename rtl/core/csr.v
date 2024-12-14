`include "defines.v"

module csr
(
    input clk,
    input rst_n,
    input [11 : 0] csr_addr,
    output [`XLEN - 1 : 0] csr_rdata,
    input csr_ren,
    input csr_wen,
    input [`XLEN - 1 : 0] csr_wdata,
    
    input wb_valid,
    input [`XLEN - 1 : 0] wb_pc,
    input [`XLEN - 1 : 0] wb_inst,
    
    input exp_flag,//狭义异常标志
    input int_flag,//狭义中断标志
    input exp_int_flag,
    input ex_is_mret_inst,
    
    input inst_addr_misal, //指令地址未对齐
    input is_illg_inst, //非法指令
    input is_ecall_inst,
    input is_ebreak_inst,
    
    output [`XLEN - 1 : 0] meh_addr,  //机器异常处理入口地址
    output [`XLEN - 1 : 0] mret_addr //机器模式异常返回地址
);
    
    
    
    //misa 32'b01_0000_00000000000001000100000000 
    //                 ZYXWVUTSRQPONMLKJIHGFEDCBA
    wire sel_misa = (csr_addr == 12'h301);
    wire wr_misa_en = `DISABLE;
    wire rd_misa = (sel_misa & csr_ren);
    wire [`XLEN - 1 : 0] misa, misa_nxt;
    assign misa_nxt = csr_wdata;
    csr_reg misa_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(32'b01_0000_00000000000001000100000000), .csr_reg_ena(wr_misa_en), .csr_reg_wdata(misa_nxt), .csr_reg_rdata(misa));
    
    //mvendorid
    wire sel_mvendorid = (csr_addr == 12'hf11);
    wire wr_mvendorid_en = `DISABLE;
    wire rd_mvendorid = (sel_mvendorid & csr_ren);
    wire [`XLEN - 1 : 0] mvendorid, mvendorid_nxt;
    assign mvendorid_nxt = csr_wdata;
    csr_reg mvendorid_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(`ZEROWORD), .csr_reg_ena(wr_mvendorid_en), .csr_reg_wdata(mvendorid_nxt), .csr_reg_rdata(mvendorid));

    //marchid
    wire sel_marchid = (csr_addr == 12'hf12);
    wire wr_marchid_en = `DISABLE;
    wire rd_marchid = (sel_marchid & csr_ren);
    wire [`XLEN - 1 : 0] marchid, marchid_nxt;
    assign marchid_nxt = csr_wdata;
    csr_reg marchid_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(32'b1), .csr_reg_ena(wr_marchid_en), .csr_reg_wdata(marchid_nxt), .csr_reg_rdata(marchid));
    
    //mimpid
    wire sel_mimpid = (csr_addr == 12'hf13);
    wire wr_mimpid_en = `DISABLE;
    wire rd_mimpid = (sel_mimpid & csr_ren);
    wire [`XLEN - 1 : 0] mimpid, mimpid_nxt;
    assign mimpid_nxt = csr_wdata;
    csr_reg mimpid_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(32'b1), .csr_reg_ena(wr_mimpid_en), .csr_reg_wdata(mimpid_nxt), .csr_reg_rdata(mimpid));
 
    //mhartid
    wire sel_mhartid = (csr_addr == 12'hf14);
    wire wr_mhartid_en = `DISABLE;
    wire rd_mhartid = (sel_mhartid & csr_ren);
    wire [`XLEN - 1 : 0] mhartid, mhartid_nxt;
    assign mhartid_nxt = csr_wdata;
    csr_reg mhartid_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(`ZEROWORD), .csr_reg_ena(wr_mhartid_en), .csr_reg_wdata(mhartid_nxt), .csr_reg_rdata(mhartid));

    //mscratch
    wire sel_mscratch = (csr_addr == 12'h340);
    wire wr_mscratch_en = (sel_mscratch & csr_wen);
    wire rd_mscratch = (sel_mscratch & csr_ren);
    wire [`XLEN - 1 : 0] mscratch, mscratch_nxt;
    assign mscratch_nxt = csr_wdata;
    csr_reg mscratch_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(`ZEROWORD), .csr_reg_ena(wr_mscratch_en), .csr_reg_wdata(mscratch_nxt), .csr_reg_rdata(mscratch));

    //自定义csr mcounterstop 1为停止工作     2:mtime 1:minstret 0:mcycle
    wire sel_mcounterstop = (csr_addr == 12'hBFF);
    wire wr_mcounterstop_en = (sel_mcounterstop & csr_wen);
    wire rd_mcounterstop = (sel_mcounterstop & csr_ren);
    wire [`XLEN - 1 : 0] mcounterstop, mcounterstop_nxt;
    assign mcounterstop_nxt = csr_wdata;
    csr_reg mcounterstop_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(`ZEROWORD), .csr_reg_ena(wr_mcounterstop_en), .csr_reg_wdata(mcounterstop_nxt), .csr_reg_rdata(mcounterstop));

    //mcycle mcycleh
    wire sel_mcycle = (csr_addr == 12'hB00);
    wire sel_mcycleh = (csr_addr == 12'hB80);
    wire wr_mcycle_en = (sel_mcycle & csr_wen);
    wire rd_mcycle = (sel_mcycle & csr_ren);
    wire wr_mcycleh_en = (sel_mcycleh & csr_wen);
    wire rd_mcycleh = (sel_mcycleh & csr_ren);
    wire [`XLEN - 1 : 0] mcycle, mcycleh, mcycle_nxt, mcycleh_nxt;
    assign mcycle_nxt = csr_wdata;
    assign mcycleh_nxt = csr_wdata;
    wire [63 : 0] mcycle_64, mcycle_64_nxt, mcycle_cnt_nxt;
    assign mcycle_cnt_nxt = mcycle_64 + 1'b1;
    assign mcycle_64_nxt = (wr_mcycle_en) ? {mcycle_64[63 : 32], mcycle_nxt} : 
                           (wr_mcycleh_en) ? {mcycleh_nxt, mcycle_64[31 : 0]} :
                           (mcounterstop[0]) ? mcycle_64 :
                                                mcycle_cnt_nxt;                                          
    csr_reg #(.CSR_REG_WIDTH(64)) mcycle_64_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(64'b0), .csr_reg_ena(1'b1), .csr_reg_wdata(mcycle_64_nxt), .csr_reg_rdata(mcycle_64));
    assign mcycle = mcycle_64[31 : 0];
    assign mcycleh = mcycle_64[63 : 32];
    
    //minstret minstreth
    wire sel_minstret = (csr_addr == 12'hB02);
    wire sel_minstreth = (csr_addr == 12'hB82);
    wire wr_minstret_en = (sel_minstret & csr_wen);
    wire rd_minstret = (sel_minstret & csr_ren);
    wire wr_minstreth_en = (sel_minstreth & csr_wen);
    wire rd_minstreth = (sel_minstreth & csr_ren);
    wire [`XLEN - 1 : 0] minstret, minstreth, minstret_nxt, minstreth_nxt;
    assign minstret_nxt = csr_wdata;
    assign minstreth_nxt = csr_wdata;
    wire [63 : 0] minstret_64, minstret_64_nxt, minstret_cnt_nxt;
    assign minstret_cnt_nxt = minstret_64 + 1'b1;
    assign minstret_64_nxt = (wr_minstret_en) ? {minstret_64[63 : 32], minstret_nxt} :
                             (wr_minstreth_en) ? {minstreth_nxt, minstret_64[31 : 0]} :
                             (mcounterstop[1]) ? minstret_64 :
                             (wb_valid) ? minstret_cnt_nxt :
                                            minstret_64;
    csr_reg #(.CSR_REG_WIDTH(64)) minstret_64_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(64'b0), .csr_reg_ena(1'b1), .csr_reg_wdata(minstret_64_nxt), .csr_reg_rdata(minstret_64));
    assign minstret = minstret_64[31 : 0];
    assign minstreth = minstret_64[63 : 32];
    
    //mtvec
    wire sel_mtvec = (csr_addr == 12'h305);
    wire rd_mtvec = (sel_mtvec & csr_ren);
    wire wr_mtvec_en = (sel_mtvec & csr_wen);
    wire [`XLEN - 1 : 2] mtvec_BASE, mtvec_BASE_nxt;
    assign mtvec_BASE_nxt = csr_wdata[`XLEN - 1 : 2];
    csr_reg #(.CSR_REG_WIDTH(`XLEN-2)) mtvec_BASE_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(`MTVEC_BASE_ADDR), .csr_reg_ena(wr_mtvec_en), .csr_reg_wdata(mtvec_BASE_nxt), .csr_reg_rdata(mtvec_BASE));
    wire [1 : 0] mtvec_MODE, mtvec_MODE_nxt;
    assign mtvec_MODE_nxt = {1'b0, csr_wdata[0]};
    csr_reg #(.CSR_REG_WIDTH(2)) mtvec_MODE_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(2'b0), .csr_reg_ena(wr_mtvec_en), .csr_reg_wdata(mtvec_MODE_nxt), .csr_reg_rdata(mtvec_MODE));
    wire [`XLEN - 1 : 0] mtvec;
    assign mtvec = {mtvec_BASE, mtvec_MODE};
    
    //mcause
    wire sel_mcause = (csr_addr == 12'h342);
    wire rd_mcause = (sel_mcause & csr_ren);
    //暂时只实现部分原因 
    //ecall ebreak 非法指令 取指令未对齐
    wire [`XLEN - 1 : 0] int_mc, exp_mc;
    assign int_mc[31] = 1'b1;
    assign int_mc[30 : 4] = 27'b0;
    assign int_mc[3 : 0] = 4'b0;//支持中断后需要更改
    assign exp_mc[31 : 5] = 27'b0;
    assign exp_mc[4 : 0] = is_illg_inst     ? 5'd2  :
                           is_ecall_inst    ? 5'd11 :
                           is_ebreak_inst   ? 5'd3  :
                           inst_addr_misal  ? 5'd0  :
                           5'd16;
    wire [`XLEN - 1 : 0] mcause_nxt = exp_flag ? exp_mc : int_mc;
    wire wr_mcause_en = exp_int_flag;
    wire [`XLEN - 1 : 0] mcause;
    csr_reg mcause_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(32'h0000_0010), .csr_reg_ena(wr_mcause_en), .csr_reg_wdata(mcause_nxt), .csr_reg_rdata(mcause));
    
    assign meh_addr = (mtvec_MODE[0] == 1'b0) ? {mtvec_BASE, 2'b00} :
                                               {mtvec_BASE, 2'b00} + ({1'b0, mcause_nxt[30 : 0]} << 2);
    
    //mepc
    wire sel_mepc = (csr_addr == 12'h341);
    wire rd_mepc = (sel_mepc & csr_ren);
    wire csrw_mepc = (sel_mepc & csr_wen);
    wire wr_mepc_en = (csrw_mepc | exp_int_flag);
    wire [`XLEN - 1 : 0] mepc, mepc_nxt;
    assign mepc_nxt = csrw_mepc ? csr_wdata :
                      exp_flag  ? wb_pc     :
                      int_flag  ? wb_pc + 4 :
                      mepc;
    csr_reg mepc_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(`ZEROWORD), .csr_reg_ena(wr_mepc_en), .csr_reg_wdata(mepc_nxt), .csr_reg_rdata(mepc));
    
    assign mret_addr = mepc;
    
    //mtval 若为存储器访问产生异常则更新为访存地址，非法指令则更新为指令编码
    wire sel_mtval = (csr_addr == 12'h343);
    wire rd_mtval = (sel_mtval & csr_ren);
    wire wr_mtval_en = exp_int_flag;
    wire [`XLEN - 1 : 0] mtval, mtval_nxt;
    assign mtval_nxt = is_illg_inst ? wb_inst :
                        `ZEROWORD;  //后期需要更改
    csr_reg mtval_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(`ZEROWORD), .csr_reg_ena(wr_mtval_en), .csr_reg_wdata(mtval_nxt), .csr_reg_rdata(mtval));
    
    //mstatus 目前某些域用不上，以后需要更改
    wire sel_mstatus = (csr_addr == 12'h300);
    wire rd_mstatus = (sel_mstatus & csr_ren);
    wire csrw_mstatus = (sel_mstatus & csr_wen);
    //SD
    wire mstatus_SD, mstatus_SD_nxt;
    assign mstatus_SD_nxt = mstatus_SD;
    wire wr_mstatus_SD_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_SD_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_SD_en), .csr_reg_wdata(mstatus_SD_nxt), .csr_reg_rdata(mstatus_SD));
    //TSR
    wire mstatus_TSR, mstatus_TSR_nxt;
    assign mstatus_TSR_nxt = mstatus_TSR;
    wire wr_mstatus_TSR_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_TSR_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_TSR_en), .csr_reg_wdata(mstatus_TSR_nxt), .csr_reg_rdata(mstatus_TSR));
    //TW
    wire mstatus_TW, mstatus_TW_nxt;
    assign mstatus_TW_nxt = mstatus_TW;
    wire wr_mstatus_TW_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_TW_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_TW_en), .csr_reg_wdata(mstatus_TW_nxt), .csr_reg_rdata(mstatus_TW));
    //TVM
    wire mstatus_TVM, mstatus_TVM_nxt;
    assign mstatus_TVM_nxt = mstatus_TVM;
    wire wr_mstatus_TVM_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_TVM_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_TVM_en), .csr_reg_wdata(mstatus_TVM_nxt), .csr_reg_rdata(mstatus_TVM));
    //MXR
    wire mstatus_MXR, mstatus_MXR_nxt;
    assign mstatus_MXR_nxt = mstatus_MXR;
    wire wr_mstatus_MXR_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_MXR_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_MXR_en), .csr_reg_wdata(mstatus_MXR_nxt), .csr_reg_rdata(mstatus_MXR));
    //SUM
    wire mstatus_SUM, mstatus_SUM_nxt;
    assign mstatus_SUM_nxt = mstatus_SUM;
    wire wr_mstatus_SUM_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_SUM_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_SUM_en), .csr_reg_wdata(mstatus_SUM_nxt), .csr_reg_rdata(mstatus_SUM));
    //MPRV
    wire mstatus_MPRV, mstatus_MPRV_nxt;
    assign mstatus_MPRV_nxt = mstatus_MPRV;
    wire wr_mstatus_MPRV_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_MPRV_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_MPRV_en), .csr_reg_wdata(mstatus_MPRV_nxt), .csr_reg_rdata(mstatus_MPRV));
    //XS FS
    wire [1 : 0] mstatus_XS, mstatus_FS, mstatus_XS_nxt, mstatus_FS_nxt;
    assign mstatus_XS_nxt = mstatus_XS;
    assign mstatus_FS_nxt = mstatus_FS;
    wire wr_mstatus_XS_en = `DISABLE;
    wire wr_mstatus_FS_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(2)) mstatus_XS_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(2'b0), .csr_reg_ena(wr_mstatus_XS_en), .csr_reg_wdata(mstatus_XS_nxt), .csr_reg_rdata(mstatus_XS));
    csr_reg #(.CSR_REG_WIDTH(2)) mstatus_FS_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(2'b0), .csr_reg_ena(wr_mstatus_FS_en), .csr_reg_wdata(mstatus_FS_nxt), .csr_reg_rdata(mstatus_FS));
    //MPP
    wire [1 : 0] mstatus_MPP, mstatus_MPP_nxt;
    assign mstatus_MPP_nxt = mstatus_MPP;
    wire wr_mstatus_MPP_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(2)) mstatus_MPP_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(2'b11), .csr_reg_ena(wr_mstatus_MPP_en), .csr_reg_wdata(mstatus_MPP_nxt), .csr_reg_rdata(mstatus_MPP));
    //SPP
    wire mstatus_SPP, mstatus_SPP_nxt;
    assign mstatus_SPP_nxt = mstatus_SPP;
    wire wr_mstatus_SPP_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_SPP_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_SPP_en), .csr_reg_wdata(mstatus_SPP_nxt), .csr_reg_rdata(mstatus_SPP));
    //MPIE
    wire mstatus_MPIE, mstatus_MPIE_nxt;
    wire mstatus_MIE, mstatus_MIE_nxt;
    assign mstatus_MPIE_nxt = mstatus_MIE;
    wire wr_mstatus_MPIE_en = exp_int_flag;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_MPIE_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_MPIE_en), .csr_reg_wdata(mstatus_MPIE_nxt), .csr_reg_rdata(mstatus_MPIE));
    //SPIE
    wire mstatus_SPIE, mstatus_SPIE_nxt;
    assign mstatus_SPIE_nxt = mstatus_SPIE;
    wire wr_mstatus_SPIE_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_SPIE_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_SPIE_en), .csr_reg_wdata(mstatus_SPIE_nxt), .csr_reg_rdata(mstatus_SPIE));
    //UPIE
    wire mstatus_UPIE, mstatus_UPIE_nxt;
    assign mstatus_UPIE_nxt = mstatus_UPIE;
    wire wr_mstatus_UPIE_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_UPIE_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_UPIE_en), .csr_reg_wdata(mstatus_UPIE_nxt), .csr_reg_rdata(mstatus_UPIE));
    //MIE
    assign mstatus_MIE_nxt = ex_is_mret_inst ? mstatus_MPIE :
                             exp_int_flag ? 1'b0         :
                             csrw_mstatus ? csr_wdata[3] :
                             mstatus_MIE;
    wire wr_mstatus_MIE_en = (ex_is_mret_inst | exp_int_flag | csrw_mstatus);
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_MIE_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_MIE_en), .csr_reg_wdata(mstatus_MIE_nxt), .csr_reg_rdata(mstatus_MIE));
    //SIE
    wire mstatus_SIE, mstatus_SIE_nxt;
    assign mstatus_SIE_nxt = mstatus_SIE;
    wire wr_mstatus_SIE_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_SIE_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_SIE_en), .csr_reg_wdata(mstatus_SIE_nxt), .csr_reg_rdata(mstatus_SIE));
    //UIE
    wire mstatus_UIE, mstatus_UIE_nxt;
    assign mstatus_UIE_nxt = mstatus_UIE;
    wire wr_mstatus_UIE_en = `DISABLE;
    csr_reg #(.CSR_REG_WIDTH(1)) mstatus_UIE_csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(1'b0), .csr_reg_ena(wr_mstatus_UIE_en), .csr_reg_wdata(mstatus_UIE_nxt), .csr_reg_rdata(mstatus_UIE));
    wire [`XLEN - 1 : 0] mstatus;
    assign mstatus = {mstatus_SD, 8'b0, mstatus_TSR, mstatus_TW, mstatus_TVM, mstatus_MXR, mstatus_SUM, mstatus_MPRV, mstatus_XS, mstatus_FS, mstatus_MPP, 2'b00, mstatus_SPP, mstatus_MPIE, 1'b0, mstatus_SPIE, mstatus_UPIE, mstatus_MIE, 1'b0, mstatus_SIE, mstatus_UIE};
    
    //csr_rdata
    assign csr_rdata = (`ZEROWORD                                 )    |
                       ({`XLEN{rd_misa          }} & misa         )    |
                       ({`XLEN{rd_mvendorid     }} & mvendorid    )    |
                       ({`XLEN{rd_marchid       }} & marchid      )    |
                       ({`XLEN{rd_mimpid        }} & mimpid       )    |
                       ({`XLEN{rd_mhartid       }} & mhartid      )    |
                       ({`XLEN{rd_mscratch      }} & mscratch     )    |
                       ({`XLEN{rd_mcounterstop  }} & mcounterstop )    |
                       ({`XLEN{rd_mcycle        }} & mcycle       )    |
                       ({`XLEN{rd_mcycleh       }} & mcycleh      )    |
                       ({`XLEN{rd_minstret      }} & minstret     )    |
                       ({`XLEN{rd_minstreth     }} & minstreth    )    |
                       ({`XLEN{rd_mtvec         }} & mtvec        )    |
                       ({`XLEN{rd_mcause        }} & mcause       )    |
                       ({`XLEN{rd_mepc          }} & mepc         )    |
                       ({`XLEN{rd_mtval         }} & mtval        )    |
                       ({`XLEN{rd_mstatus       }} & mstatus      )    ;
                       // ({`XLEN{rd_}} & ) ;
    
    
    
    
    
 
    
endmodule 


//csr_reg _csr_reg(.clk(clk), .rst_n(rst_n), .rst_val(), .csr_reg_ena(), .csr_reg_wdata(), .csr_reg_rdata());

module csr_reg
#(
    parameter CSR_REG_WIDTH = 32
)
(
    input clk,
    input rst_n,
    input [CSR_REG_WIDTH - 1 : 0] rst_val,
    input csr_reg_ena,
    input [CSR_REG_WIDTH - 1 : 0] csr_reg_wdata,
    output reg [CSR_REG_WIDTH - 1 : 0] csr_reg_rdata
);

    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE)
            csr_reg_rdata <= rst_val;
        else if(csr_reg_ena)
            csr_reg_rdata <= csr_reg_wdata;
        else
            csr_reg_rdata <= csr_reg_rdata;
    end
    
endmodule
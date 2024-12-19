`include "defines.v"


module clint
(
    input clk,
    input rtc_clk,
    input rst_n,
    input mtime_cnt_en,
    
    input [`XLEN - 1 : 0] raddr,
    input re,
    output reg [`XLEN - 1 : 0] rdata,
    input [`XLEN - 1 : 0] waddr,
    input [3 : 0] byte_we,
    input [`XLEN - 1 : 0] wdata,
    
    output m_sip,
    output m_tip
);

    reg rtc_clk_reg1, rtc_clk_reg2;
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            rtc_clk_reg1 <= 'b0;
            rtc_clk_reg2 <= 'b0;
        end
        else begin
            rtc_clk_reg1 <= rtc_clk;
            rtc_clk_reg2 <= rtc_clk_reg1;
        end
    end
    wire rtc_tick = rtc_clk_reg1 ^ rtc_clk_reg2;
    
    reg [`XLEN - 1 : 0] mtimecmp_l, mtimecmp_h;
    reg [`XLEN - 1 : 0] mtimecmp_l_nxt, mtimecmp_h_nxt;
    
    always @(*) begin
        case(byte_we)
            4'b0001 : mtimecmp_l_nxt = {mtimecmp_l[31:8], wdata[7:0]};
            4'b0010 : mtimecmp_l_nxt = {mtimecmp_l[31:16], wdata[7:0], mtimecmp_l[7:0]};
            4'b0100 : mtimecmp_l_nxt = {mtimecmp_l[31:24], wdata[7:0], mtimecmp_l[15:0]};
            4'b1000 : mtimecmp_l_nxt = {wdata[7:0], mtimecmp_l[23:0]};
            4'b0011 : mtimecmp_l_nxt = {mtimecmp_l[31:16], wdata[15:0]};
            4'b1100 : mtimecmp_l_nxt = {wdata[15:0], mtimecmp_l[15:0]};
            4'b1111 : mtimecmp_l_nxt = wdata;
            default : mtimecmp_l_nxt = mtimecmp_l;
        endcase
    end
    
    always @(*) begin
        case(byte_we)
            4'b0001 : mtimecmp_h_nxt = {mtimecmp_h[31:8], wdata[7:0]};
            4'b0010 : mtimecmp_h_nxt = {mtimecmp_h[31:16], wdata[7:0], mtimecmp_h[7:0]};
            4'b0100 : mtimecmp_h_nxt = {mtimecmp_h[31:24], wdata[7:0], mtimecmp_h[15:0]};
            4'b1000 : mtimecmp_h_nxt = {wdata[7:0], mtimecmp_h[23:0]};
            4'b0011 : mtimecmp_h_nxt = {mtimecmp_h[31:16], wdata[15:0]};
            4'b1100 : mtimecmp_h_nxt = {wdata[15:0], mtimecmp_h[15:0]};
            4'b1111 : mtimecmp_h_nxt = wdata;
            default : mtimecmp_h_nxt = mtimecmp_h;
        endcase
    end
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            mtimecmp_l <= `ZEROWORD;
        end
        else if(waddr == `MTIMECMP_L) begin
            mtimecmp_l <= mtimecmp_l_nxt;
        end
        else begin
            mtimecmp_l <= mtimecmp_l;
        end
    end
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            mtimecmp_h <= `ZEROWORD;
        end
        else if(waddr == `MTIMECMP_H) begin
            mtimecmp_h <= mtimecmp_h_nxt;
        end
        else begin
            mtimecmp_h <= mtimecmp_h;
        end
    end
    
    wire [63 : 0] mtimecmp = {mtimecmp_h, mtimecmp_l};
    

    reg [63 : 0] mtime;
    wire [`XLEN - 1 : 0] mtime_l, mtime_h;
    assign mtime_l = mtime[31:0];
    assign mtime_h = mtime[63:32];
    reg [`XLEN - 1 : 0] mtime_l_nxt, mtime_h_nxt; 
    
    always @(*) begin
        case(byte_we)
            4'b0001 : mtime_l_nxt = {mtime_l[31:8], wdata[7:0]};
            4'b0010 : mtime_l_nxt = {mtime_l[31:16], wdata[7:0], mtime_l[7:0]};
            4'b0100 : mtime_l_nxt = {mtime_l[31:24], wdata[7:0], mtime_l[15:0]};
            4'b1000 : mtime_l_nxt = {wdata[7:0], mtime_l[23:0]};
            4'b0011 : mtime_l_nxt = {mtime_l[31:16], wdata[15:0]};
            4'b1100 : mtime_l_nxt = {wdata[15:0], mtime_l[15:0]};
            4'b1111 : mtime_l_nxt = wdata;
            default : mtime_l_nxt = mtime_l;
        endcase
    end
    
    always @(*) begin
        case(byte_we)
            4'b0001 : mtime_h_nxt = {mtime_h[31:8], wdata[7:0]};
            4'b0010 : mtime_h_nxt = {mtime_h[31:16], wdata[7:0], mtime_h[7:0]};
            4'b0100 : mtime_h_nxt = {mtime_h[31:24], wdata[7:0], mtime_h[15:0]};
            4'b1000 : mtime_h_nxt = {wdata[7:0], mtime_h[23:0]};
            4'b0011 : mtime_h_nxt = {mtime_h[31:16], wdata[15:0]};
            4'b1100 : mtime_h_nxt = {wdata[15:0], mtime_h[15:0]};
            4'b1111 : mtime_h_nxt = wdata;
            default : mtime_h_nxt = mtime_h;
        endcase
    end
    
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) begin
            mtime <= 64'b0;
        end
        else if(waddr == `MTIME_L) begin
            mtime <= {mtime_h, mtime_l_nxt};
        end
        else if(waddr == `MTIME_H) begin
            mtime <= {mtime_h_nxt, mtime_l};
        end
        else if(mtime_cnt_en & rtc_tick) begin
            mtime <= mtime + 1'b1;
        end
        else begin
            mtime <= mtime;
        end
    end

    reg msip_bit;
    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE)
            msip_bit <= 1'b0;
        else if(waddr == `MSIP & byte_we[0])
            msip_bit <= wdata[0];
        else 
            msip_bit <= msip_bit;
    end
    wire [`XLEN - 1 : 0] msip = {31'b0, msip_bit};


    reg [`XLEN - 1 : 0] rdata_nxt;
    always @(*) begin
        case(raddr)
            `MTIMECMP_L : rdata_nxt = mtimecmp_l;
            `MTIMECMP_H : rdata_nxt = mtimecmp_h;
            `MTIME_L    : rdata_nxt = mtime_l;
            `MTIME_H    : rdata_nxt = mtime_h;
            `MSIP       : rdata_nxt = msip;
            default     : rdata_nxt = `ZEROWORD;
        endcase
    end

    always @(posedge clk or `RST_EDGE rst_n) begin
        if(rst_n == `DFF_RST_ENABLE) 
            rdata <= `ZEROWORD;
        else if(re) 
            rdata <= rdata_nxt;
        else 
            rdata <= rdata;
    end
    
    assign m_sip = msip_bit; //还要注意外部中断的优先级高于软件中断
    assign m_tip = ((~m_sip) & (mtime >= mtimecmp));


endmodule 
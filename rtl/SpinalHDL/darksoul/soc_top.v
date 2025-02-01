// Generator : SpinalHDL v1.9.4    git head : 270018552577f3bb8e5339ee2583c9c22d324215
// Component : soc_top
// Git hash  : e3ea5f547f0decf12019aad961aad55193ec1260

`timescale 1ns/1ps

module soc_top (
  input  wire          clk,
  input  wire          rst_n,
  input  wire          rtc_clk
);

  wire                cpu_top_inst_clk_gate;
  wire                cpu_top_inst_mtime_cnt_en;
  wire                cpu_top_inst_axi_ar_valid;
  wire       [3:0]    cpu_top_inst_axi_ar_payload_id;
  wire       [31:0]   cpu_top_inst_axi_ar_payload_addr;
  wire       [7:0]    cpu_top_inst_axi_ar_payload_len;
  wire       [2:0]    cpu_top_inst_axi_ar_payload_size;
  wire       [1:0]    cpu_top_inst_axi_ar_payload_burst;
  wire       [1:0]    cpu_top_inst_axi_ar_payload_lock;
  wire       [3:0]    cpu_top_inst_axi_ar_payload_cache;
  wire       [2:0]    cpu_top_inst_axi_ar_payload_prot;
  wire                cpu_top_inst_axi_aw_valid;
  wire       [3:0]    cpu_top_inst_axi_aw_payload_id;
  wire       [31:0]   cpu_top_inst_axi_aw_payload_addr;
  wire       [7:0]    cpu_top_inst_axi_aw_payload_len;
  wire       [2:0]    cpu_top_inst_axi_aw_payload_size;
  wire       [1:0]    cpu_top_inst_axi_aw_payload_burst;
  wire       [1:0]    cpu_top_inst_axi_aw_payload_lock;
  wire       [3:0]    cpu_top_inst_axi_aw_payload_cache;
  wire       [2:0]    cpu_top_inst_axi_aw_payload_prot;
  wire                cpu_top_inst_axi_w_valid;
  wire       [3:0]    cpu_top_inst_axi_w_payload_id;
  wire       [31:0]   cpu_top_inst_axi_w_payload_data;
  wire       [3:0]    cpu_top_inst_axi_w_payload_strb;
  wire                cpu_top_inst_axi_w_payload_last;
  wire                cpu_top_inst_axi_r_ready;
  wire                cpu_top_inst_axi_b_ready;
  wire                axi_xbar_inst_masters_ar_ready;
  wire                axi_xbar_inst_masters_aw_ready;
  wire                axi_xbar_inst_masters_w_ready;
  wire                axi_xbar_inst_masters_r_valid;
  wire       [3:0]    axi_xbar_inst_masters_r_payload_id;
  wire       [31:0]   axi_xbar_inst_masters_r_payload_data;
  wire       [1:0]    axi_xbar_inst_masters_r_payload_resp;
  wire                axi_xbar_inst_masters_r_payload_last;
  wire                axi_xbar_inst_masters_b_valid;
  wire       [3:0]    axi_xbar_inst_masters_b_payload_id;
  wire       [1:0]    axi_xbar_inst_masters_b_payload_resp;
  wire                axi_xbar_inst_slaves_0_ar_valid;
  wire       [3:0]    axi_xbar_inst_slaves_0_ar_payload_id;
  wire       [31:0]   axi_xbar_inst_slaves_0_ar_payload_addr;
  wire       [7:0]    axi_xbar_inst_slaves_0_ar_payload_len;
  wire       [2:0]    axi_xbar_inst_slaves_0_ar_payload_size;
  wire       [1:0]    axi_xbar_inst_slaves_0_ar_payload_burst;
  wire       [1:0]    axi_xbar_inst_slaves_0_ar_payload_lock;
  wire       [3:0]    axi_xbar_inst_slaves_0_ar_payload_cache;
  wire       [2:0]    axi_xbar_inst_slaves_0_ar_payload_prot;
  wire                axi_xbar_inst_slaves_0_aw_valid;
  wire       [3:0]    axi_xbar_inst_slaves_0_aw_payload_id;
  wire       [31:0]   axi_xbar_inst_slaves_0_aw_payload_addr;
  wire       [7:0]    axi_xbar_inst_slaves_0_aw_payload_len;
  wire       [2:0]    axi_xbar_inst_slaves_0_aw_payload_size;
  wire       [1:0]    axi_xbar_inst_slaves_0_aw_payload_burst;
  wire       [1:0]    axi_xbar_inst_slaves_0_aw_payload_lock;
  wire       [3:0]    axi_xbar_inst_slaves_0_aw_payload_cache;
  wire       [2:0]    axi_xbar_inst_slaves_0_aw_payload_prot;
  wire                axi_xbar_inst_slaves_0_w_valid;
  wire       [3:0]    axi_xbar_inst_slaves_0_w_payload_id;
  wire       [31:0]   axi_xbar_inst_slaves_0_w_payload_data;
  wire       [3:0]    axi_xbar_inst_slaves_0_w_payload_strb;
  wire                axi_xbar_inst_slaves_0_w_payload_last;
  wire                axi_xbar_inst_slaves_0_r_ready;
  wire                axi_xbar_inst_slaves_0_b_ready;
  wire                axi_xbar_inst_slaves_1_ar_valid;
  wire       [3:0]    axi_xbar_inst_slaves_1_ar_payload_id;
  wire       [31:0]   axi_xbar_inst_slaves_1_ar_payload_addr;
  wire       [7:0]    axi_xbar_inst_slaves_1_ar_payload_len;
  wire       [2:0]    axi_xbar_inst_slaves_1_ar_payload_size;
  wire       [1:0]    axi_xbar_inst_slaves_1_ar_payload_burst;
  wire       [1:0]    axi_xbar_inst_slaves_1_ar_payload_lock;
  wire       [3:0]    axi_xbar_inst_slaves_1_ar_payload_cache;
  wire       [2:0]    axi_xbar_inst_slaves_1_ar_payload_prot;
  wire                axi_xbar_inst_slaves_1_aw_valid;
  wire       [3:0]    axi_xbar_inst_slaves_1_aw_payload_id;
  wire       [31:0]   axi_xbar_inst_slaves_1_aw_payload_addr;
  wire       [7:0]    axi_xbar_inst_slaves_1_aw_payload_len;
  wire       [2:0]    axi_xbar_inst_slaves_1_aw_payload_size;
  wire       [1:0]    axi_xbar_inst_slaves_1_aw_payload_burst;
  wire       [1:0]    axi_xbar_inst_slaves_1_aw_payload_lock;
  wire       [3:0]    axi_xbar_inst_slaves_1_aw_payload_cache;
  wire       [2:0]    axi_xbar_inst_slaves_1_aw_payload_prot;
  wire                axi_xbar_inst_slaves_1_w_valid;
  wire       [3:0]    axi_xbar_inst_slaves_1_w_payload_id;
  wire       [31:0]   axi_xbar_inst_slaves_1_w_payload_data;
  wire       [3:0]    axi_xbar_inst_slaves_1_w_payload_strb;
  wire                axi_xbar_inst_slaves_1_w_payload_last;
  wire                axi_xbar_inst_slaves_1_r_ready;
  wire                axi_xbar_inst_slaves_1_b_ready;
  wire                axi2sram_inst0_slave_axi_ar_ready;
  wire                axi2sram_inst0_slave_axi_aw_ready;
  wire                axi2sram_inst0_slave_axi_w_ready;
  wire                axi2sram_inst0_slave_axi_r_valid;
  wire       [3:0]    axi2sram_inst0_slave_axi_r_payload_id;
  wire       [31:0]   axi2sram_inst0_slave_axi_r_payload_data;
  wire       [1:0]    axi2sram_inst0_slave_axi_r_payload_resp;
  wire                axi2sram_inst0_slave_axi_r_payload_last;
  wire                axi2sram_inst0_slave_axi_b_valid;
  wire       [3:0]    axi2sram_inst0_slave_axi_b_payload_id;
  wire       [1:0]    axi2sram_inst0_slave_axi_b_payload_resp;
  wire                axi2sram_inst0_ena;
  wire       [3:0]    axi2sram_inst0_wea;
  wire       [31:0]   axi2sram_inst0_addra;
  wire       [31:0]   axi2sram_inst0_dina;
  wire                axi2sram_inst0_enb;
  wire       [31:0]   axi2sram_inst0_addrb;
  wire       [31:0]   SRAM_inst_doutb;
  wire                axi2sram_inst1_slave_axi_ar_ready;
  wire                axi2sram_inst1_slave_axi_aw_ready;
  wire                axi2sram_inst1_slave_axi_w_ready;
  wire                axi2sram_inst1_slave_axi_r_valid;
  wire       [3:0]    axi2sram_inst1_slave_axi_r_payload_id;
  wire       [31:0]   axi2sram_inst1_slave_axi_r_payload_data;
  wire       [1:0]    axi2sram_inst1_slave_axi_r_payload_resp;
  wire                axi2sram_inst1_slave_axi_r_payload_last;
  wire                axi2sram_inst1_slave_axi_b_valid;
  wire       [3:0]    axi2sram_inst1_slave_axi_b_payload_id;
  wire       [1:0]    axi2sram_inst1_slave_axi_b_payload_resp;
  wire                axi2sram_inst1_ena;
  wire       [3:0]    axi2sram_inst1_wea;
  wire       [31:0]   axi2sram_inst1_addra;
  wire       [31:0]   axi2sram_inst1_dina;
  wire                axi2sram_inst1_enb;
  wire       [31:0]   axi2sram_inst1_addrb;
  wire                clint_inst_m_sip;
  wire                clint_inst_m_tip;
  wire       [31:0]   clint_inst_doutb;

  cpu_top cpu_top_inst (
    .clk                  (clk                                       ), //i
    .rst_n                (rst_n                                     ), //i
    .clk_gate             (cpu_top_inst_clk_gate                     ), //o
    .m_sip                (clint_inst_m_sip                          ), //i
    .m_tip                (clint_inst_m_tip                          ), //i
    .mtime_cnt_en         (cpu_top_inst_mtime_cnt_en                 ), //o
    .axi_ar_valid         (cpu_top_inst_axi_ar_valid                 ), //o
    .axi_ar_ready         (axi_xbar_inst_masters_ar_ready            ), //i
    .axi_ar_payload_id    (cpu_top_inst_axi_ar_payload_id[3:0]       ), //o
    .axi_ar_payload_addr  (cpu_top_inst_axi_ar_payload_addr[31:0]    ), //o
    .axi_ar_payload_len   (cpu_top_inst_axi_ar_payload_len[7:0]      ), //o
    .axi_ar_payload_size  (cpu_top_inst_axi_ar_payload_size[2:0]     ), //o
    .axi_ar_payload_burst (cpu_top_inst_axi_ar_payload_burst[1:0]    ), //o
    .axi_ar_payload_lock  (cpu_top_inst_axi_ar_payload_lock[1:0]     ), //o
    .axi_ar_payload_cache (cpu_top_inst_axi_ar_payload_cache[3:0]    ), //o
    .axi_ar_payload_prot  (cpu_top_inst_axi_ar_payload_prot[2:0]     ), //o
    .axi_r_valid          (axi_xbar_inst_masters_r_valid             ), //i
    .axi_r_ready          (cpu_top_inst_axi_r_ready                  ), //o
    .axi_r_payload_id     (axi_xbar_inst_masters_r_payload_id[3:0]   ), //i
    .axi_r_payload_data   (axi_xbar_inst_masters_r_payload_data[31:0]), //i
    .axi_r_payload_resp   (axi_xbar_inst_masters_r_payload_resp[1:0] ), //i
    .axi_r_payload_last   (axi_xbar_inst_masters_r_payload_last      ), //i
    .axi_aw_valid         (cpu_top_inst_axi_aw_valid                 ), //o
    .axi_aw_ready         (axi_xbar_inst_masters_aw_ready            ), //i
    .axi_aw_payload_id    (cpu_top_inst_axi_aw_payload_id[3:0]       ), //o
    .axi_aw_payload_addr  (cpu_top_inst_axi_aw_payload_addr[31:0]    ), //o
    .axi_aw_payload_len   (cpu_top_inst_axi_aw_payload_len[7:0]      ), //o
    .axi_aw_payload_size  (cpu_top_inst_axi_aw_payload_size[2:0]     ), //o
    .axi_aw_payload_burst (cpu_top_inst_axi_aw_payload_burst[1:0]    ), //o
    .axi_aw_payload_lock  (cpu_top_inst_axi_aw_payload_lock[1:0]     ), //o
    .axi_aw_payload_cache (cpu_top_inst_axi_aw_payload_cache[3:0]    ), //o
    .axi_aw_payload_prot  (cpu_top_inst_axi_aw_payload_prot[2:0]     ), //o
    .axi_w_valid          (cpu_top_inst_axi_w_valid                  ), //o
    .axi_w_ready          (axi_xbar_inst_masters_w_ready             ), //i
    .axi_w_payload_id     (cpu_top_inst_axi_w_payload_id[3:0]        ), //o
    .axi_w_payload_data   (cpu_top_inst_axi_w_payload_data[31:0]     ), //o
    .axi_w_payload_strb   (cpu_top_inst_axi_w_payload_strb[3:0]      ), //o
    .axi_w_payload_last   (cpu_top_inst_axi_w_payload_last           ), //o
    .axi_b_valid          (axi_xbar_inst_masters_b_valid             ), //i
    .axi_b_ready          (cpu_top_inst_axi_b_ready                  ), //o
    .axi_b_payload_id     (axi_xbar_inst_masters_b_payload_id[3:0]   ), //i
    .axi_b_payload_resp   (axi_xbar_inst_masters_b_payload_resp[1:0] )  //i
  );
  axi_xbar axi_xbar_inst (
    .masters_ar_valid          (cpu_top_inst_axi_ar_valid                    ), //i
    .masters_ar_ready          (axi_xbar_inst_masters_ar_ready               ), //o
    .masters_ar_payload_id     (cpu_top_inst_axi_ar_payload_id[3:0]          ), //i
    .masters_ar_payload_addr   (cpu_top_inst_axi_ar_payload_addr[31:0]       ), //i
    .masters_ar_payload_len    (cpu_top_inst_axi_ar_payload_len[7:0]         ), //i
    .masters_ar_payload_size   (cpu_top_inst_axi_ar_payload_size[2:0]        ), //i
    .masters_ar_payload_burst  (cpu_top_inst_axi_ar_payload_burst[1:0]       ), //i
    .masters_ar_payload_lock   (cpu_top_inst_axi_ar_payload_lock[1:0]        ), //i
    .masters_ar_payload_cache  (cpu_top_inst_axi_ar_payload_cache[3:0]       ), //i
    .masters_ar_payload_prot   (cpu_top_inst_axi_ar_payload_prot[2:0]        ), //i
    .masters_r_valid           (axi_xbar_inst_masters_r_valid                ), //o
    .masters_r_ready           (cpu_top_inst_axi_r_ready                     ), //i
    .masters_r_payload_id      (axi_xbar_inst_masters_r_payload_id[3:0]      ), //o
    .masters_r_payload_data    (axi_xbar_inst_masters_r_payload_data[31:0]   ), //o
    .masters_r_payload_resp    (axi_xbar_inst_masters_r_payload_resp[1:0]    ), //o
    .masters_r_payload_last    (axi_xbar_inst_masters_r_payload_last         ), //o
    .masters_aw_valid          (cpu_top_inst_axi_aw_valid                    ), //i
    .masters_aw_ready          (axi_xbar_inst_masters_aw_ready               ), //o
    .masters_aw_payload_id     (cpu_top_inst_axi_aw_payload_id[3:0]          ), //i
    .masters_aw_payload_addr   (cpu_top_inst_axi_aw_payload_addr[31:0]       ), //i
    .masters_aw_payload_len    (cpu_top_inst_axi_aw_payload_len[7:0]         ), //i
    .masters_aw_payload_size   (cpu_top_inst_axi_aw_payload_size[2:0]        ), //i
    .masters_aw_payload_burst  (cpu_top_inst_axi_aw_payload_burst[1:0]       ), //i
    .masters_aw_payload_lock   (cpu_top_inst_axi_aw_payload_lock[1:0]        ), //i
    .masters_aw_payload_cache  (cpu_top_inst_axi_aw_payload_cache[3:0]       ), //i
    .masters_aw_payload_prot   (cpu_top_inst_axi_aw_payload_prot[2:0]        ), //i
    .masters_w_valid           (cpu_top_inst_axi_w_valid                     ), //i
    .masters_w_ready           (axi_xbar_inst_masters_w_ready                ), //o
    .masters_w_payload_id      (cpu_top_inst_axi_w_payload_id[3:0]           ), //i
    .masters_w_payload_data    (cpu_top_inst_axi_w_payload_data[31:0]        ), //i
    .masters_w_payload_strb    (cpu_top_inst_axi_w_payload_strb[3:0]         ), //i
    .masters_w_payload_last    (cpu_top_inst_axi_w_payload_last              ), //i
    .masters_b_valid           (axi_xbar_inst_masters_b_valid                ), //o
    .masters_b_ready           (cpu_top_inst_axi_b_ready                     ), //i
    .masters_b_payload_id      (axi_xbar_inst_masters_b_payload_id[3:0]      ), //o
    .masters_b_payload_resp    (axi_xbar_inst_masters_b_payload_resp[1:0]    ), //o
    .slaves_0_ar_valid         (axi_xbar_inst_slaves_0_ar_valid              ), //o
    .slaves_0_ar_ready         (axi2sram_inst0_slave_axi_ar_ready            ), //i
    .slaves_0_ar_payload_id    (axi_xbar_inst_slaves_0_ar_payload_id[3:0]    ), //o
    .slaves_0_ar_payload_addr  (axi_xbar_inst_slaves_0_ar_payload_addr[31:0] ), //o
    .slaves_0_ar_payload_len   (axi_xbar_inst_slaves_0_ar_payload_len[7:0]   ), //o
    .slaves_0_ar_payload_size  (axi_xbar_inst_slaves_0_ar_payload_size[2:0]  ), //o
    .slaves_0_ar_payload_burst (axi_xbar_inst_slaves_0_ar_payload_burst[1:0] ), //o
    .slaves_0_ar_payload_lock  (axi_xbar_inst_slaves_0_ar_payload_lock[1:0]  ), //o
    .slaves_0_ar_payload_cache (axi_xbar_inst_slaves_0_ar_payload_cache[3:0] ), //o
    .slaves_0_ar_payload_prot  (axi_xbar_inst_slaves_0_ar_payload_prot[2:0]  ), //o
    .slaves_0_r_valid          (axi2sram_inst0_slave_axi_r_valid             ), //i
    .slaves_0_r_ready          (axi_xbar_inst_slaves_0_r_ready               ), //o
    .slaves_0_r_payload_id     (axi2sram_inst0_slave_axi_r_payload_id[3:0]   ), //i
    .slaves_0_r_payload_data   (axi2sram_inst0_slave_axi_r_payload_data[31:0]), //i
    .slaves_0_r_payload_resp   (axi2sram_inst0_slave_axi_r_payload_resp[1:0] ), //i
    .slaves_0_r_payload_last   (axi2sram_inst0_slave_axi_r_payload_last      ), //i
    .slaves_0_aw_valid         (axi_xbar_inst_slaves_0_aw_valid              ), //o
    .slaves_0_aw_ready         (axi2sram_inst0_slave_axi_aw_ready            ), //i
    .slaves_0_aw_payload_id    (axi_xbar_inst_slaves_0_aw_payload_id[3:0]    ), //o
    .slaves_0_aw_payload_addr  (axi_xbar_inst_slaves_0_aw_payload_addr[31:0] ), //o
    .slaves_0_aw_payload_len   (axi_xbar_inst_slaves_0_aw_payload_len[7:0]   ), //o
    .slaves_0_aw_payload_size  (axi_xbar_inst_slaves_0_aw_payload_size[2:0]  ), //o
    .slaves_0_aw_payload_burst (axi_xbar_inst_slaves_0_aw_payload_burst[1:0] ), //o
    .slaves_0_aw_payload_lock  (axi_xbar_inst_slaves_0_aw_payload_lock[1:0]  ), //o
    .slaves_0_aw_payload_cache (axi_xbar_inst_slaves_0_aw_payload_cache[3:0] ), //o
    .slaves_0_aw_payload_prot  (axi_xbar_inst_slaves_0_aw_payload_prot[2:0]  ), //o
    .slaves_0_w_valid          (axi_xbar_inst_slaves_0_w_valid               ), //o
    .slaves_0_w_ready          (axi2sram_inst0_slave_axi_w_ready             ), //i
    .slaves_0_w_payload_id     (axi_xbar_inst_slaves_0_w_payload_id[3:0]     ), //o
    .slaves_0_w_payload_data   (axi_xbar_inst_slaves_0_w_payload_data[31:0]  ), //o
    .slaves_0_w_payload_strb   (axi_xbar_inst_slaves_0_w_payload_strb[3:0]   ), //o
    .slaves_0_w_payload_last   (axi_xbar_inst_slaves_0_w_payload_last        ), //o
    .slaves_0_b_valid          (axi2sram_inst0_slave_axi_b_valid             ), //i
    .slaves_0_b_ready          (axi_xbar_inst_slaves_0_b_ready               ), //o
    .slaves_0_b_payload_id     (axi2sram_inst0_slave_axi_b_payload_id[3:0]   ), //i
    .slaves_0_b_payload_resp   (axi2sram_inst0_slave_axi_b_payload_resp[1:0] ), //i
    .slaves_1_ar_valid         (axi_xbar_inst_slaves_1_ar_valid              ), //o
    .slaves_1_ar_ready         (axi2sram_inst1_slave_axi_ar_ready            ), //i
    .slaves_1_ar_payload_id    (axi_xbar_inst_slaves_1_ar_payload_id[3:0]    ), //o
    .slaves_1_ar_payload_addr  (axi_xbar_inst_slaves_1_ar_payload_addr[31:0] ), //o
    .slaves_1_ar_payload_len   (axi_xbar_inst_slaves_1_ar_payload_len[7:0]   ), //o
    .slaves_1_ar_payload_size  (axi_xbar_inst_slaves_1_ar_payload_size[2:0]  ), //o
    .slaves_1_ar_payload_burst (axi_xbar_inst_slaves_1_ar_payload_burst[1:0] ), //o
    .slaves_1_ar_payload_lock  (axi_xbar_inst_slaves_1_ar_payload_lock[1:0]  ), //o
    .slaves_1_ar_payload_cache (axi_xbar_inst_slaves_1_ar_payload_cache[3:0] ), //o
    .slaves_1_ar_payload_prot  (axi_xbar_inst_slaves_1_ar_payload_prot[2:0]  ), //o
    .slaves_1_r_valid          (axi2sram_inst1_slave_axi_r_valid             ), //i
    .slaves_1_r_ready          (axi_xbar_inst_slaves_1_r_ready               ), //o
    .slaves_1_r_payload_id     (axi2sram_inst1_slave_axi_r_payload_id[3:0]   ), //i
    .slaves_1_r_payload_data   (axi2sram_inst1_slave_axi_r_payload_data[31:0]), //i
    .slaves_1_r_payload_resp   (axi2sram_inst1_slave_axi_r_payload_resp[1:0] ), //i
    .slaves_1_r_payload_last   (axi2sram_inst1_slave_axi_r_payload_last      ), //i
    .slaves_1_aw_valid         (axi_xbar_inst_slaves_1_aw_valid              ), //o
    .slaves_1_aw_ready         (axi2sram_inst1_slave_axi_aw_ready            ), //i
    .slaves_1_aw_payload_id    (axi_xbar_inst_slaves_1_aw_payload_id[3:0]    ), //o
    .slaves_1_aw_payload_addr  (axi_xbar_inst_slaves_1_aw_payload_addr[31:0] ), //o
    .slaves_1_aw_payload_len   (axi_xbar_inst_slaves_1_aw_payload_len[7:0]   ), //o
    .slaves_1_aw_payload_size  (axi_xbar_inst_slaves_1_aw_payload_size[2:0]  ), //o
    .slaves_1_aw_payload_burst (axi_xbar_inst_slaves_1_aw_payload_burst[1:0] ), //o
    .slaves_1_aw_payload_lock  (axi_xbar_inst_slaves_1_aw_payload_lock[1:0]  ), //o
    .slaves_1_aw_payload_cache (axi_xbar_inst_slaves_1_aw_payload_cache[3:0] ), //o
    .slaves_1_aw_payload_prot  (axi_xbar_inst_slaves_1_aw_payload_prot[2:0]  ), //o
    .slaves_1_w_valid          (axi_xbar_inst_slaves_1_w_valid               ), //o
    .slaves_1_w_ready          (axi2sram_inst1_slave_axi_w_ready             ), //i
    .slaves_1_w_payload_id     (axi_xbar_inst_slaves_1_w_payload_id[3:0]     ), //o
    .slaves_1_w_payload_data   (axi_xbar_inst_slaves_1_w_payload_data[31:0]  ), //o
    .slaves_1_w_payload_strb   (axi_xbar_inst_slaves_1_w_payload_strb[3:0]   ), //o
    .slaves_1_w_payload_last   (axi_xbar_inst_slaves_1_w_payload_last        ), //o
    .slaves_1_b_valid          (axi2sram_inst1_slave_axi_b_valid             ), //i
    .slaves_1_b_ready          (axi_xbar_inst_slaves_1_b_ready               ), //o
    .slaves_1_b_payload_id     (axi2sram_inst1_slave_axi_b_payload_id[3:0]   ), //i
    .slaves_1_b_payload_resp   (axi2sram_inst1_slave_axi_b_payload_resp[1:0] ), //i
    .clk_gate                  (cpu_top_inst_clk_gate                        ), //i
    .rst_n                     (rst_n                                        )  //i
  );
  AXI2SRAM axi2sram_inst0 (
    .slave_axi_ar_valid         (axi_xbar_inst_slaves_0_ar_valid              ), //i
    .slave_axi_ar_ready         (axi2sram_inst0_slave_axi_ar_ready            ), //o
    .slave_axi_ar_payload_id    (axi_xbar_inst_slaves_0_ar_payload_id[3:0]    ), //i
    .slave_axi_ar_payload_addr  (axi_xbar_inst_slaves_0_ar_payload_addr[31:0] ), //i
    .slave_axi_ar_payload_len   (axi_xbar_inst_slaves_0_ar_payload_len[7:0]   ), //i
    .slave_axi_ar_payload_size  (axi_xbar_inst_slaves_0_ar_payload_size[2:0]  ), //i
    .slave_axi_ar_payload_burst (axi_xbar_inst_slaves_0_ar_payload_burst[1:0] ), //i
    .slave_axi_ar_payload_lock  (axi_xbar_inst_slaves_0_ar_payload_lock[1:0]  ), //i
    .slave_axi_ar_payload_cache (axi_xbar_inst_slaves_0_ar_payload_cache[3:0] ), //i
    .slave_axi_ar_payload_prot  (axi_xbar_inst_slaves_0_ar_payload_prot[2:0]  ), //i
    .slave_axi_r_valid          (axi2sram_inst0_slave_axi_r_valid             ), //o
    .slave_axi_r_ready          (axi_xbar_inst_slaves_0_r_ready               ), //i
    .slave_axi_r_payload_id     (axi2sram_inst0_slave_axi_r_payload_id[3:0]   ), //o
    .slave_axi_r_payload_data   (axi2sram_inst0_slave_axi_r_payload_data[31:0]), //o
    .slave_axi_r_payload_resp   (axi2sram_inst0_slave_axi_r_payload_resp[1:0] ), //o
    .slave_axi_r_payload_last   (axi2sram_inst0_slave_axi_r_payload_last      ), //o
    .slave_axi_aw_valid         (axi_xbar_inst_slaves_0_aw_valid              ), //i
    .slave_axi_aw_ready         (axi2sram_inst0_slave_axi_aw_ready            ), //o
    .slave_axi_aw_payload_id    (axi_xbar_inst_slaves_0_aw_payload_id[3:0]    ), //i
    .slave_axi_aw_payload_addr  (axi_xbar_inst_slaves_0_aw_payload_addr[31:0] ), //i
    .slave_axi_aw_payload_len   (axi_xbar_inst_slaves_0_aw_payload_len[7:0]   ), //i
    .slave_axi_aw_payload_size  (axi_xbar_inst_slaves_0_aw_payload_size[2:0]  ), //i
    .slave_axi_aw_payload_burst (axi_xbar_inst_slaves_0_aw_payload_burst[1:0] ), //i
    .slave_axi_aw_payload_lock  (axi_xbar_inst_slaves_0_aw_payload_lock[1:0]  ), //i
    .slave_axi_aw_payload_cache (axi_xbar_inst_slaves_0_aw_payload_cache[3:0] ), //i
    .slave_axi_aw_payload_prot  (axi_xbar_inst_slaves_0_aw_payload_prot[2:0]  ), //i
    .slave_axi_w_valid          (axi_xbar_inst_slaves_0_w_valid               ), //i
    .slave_axi_w_ready          (axi2sram_inst0_slave_axi_w_ready             ), //o
    .slave_axi_w_payload_id     (axi_xbar_inst_slaves_0_w_payload_id[3:0]     ), //i
    .slave_axi_w_payload_data   (axi_xbar_inst_slaves_0_w_payload_data[31:0]  ), //i
    .slave_axi_w_payload_strb   (axi_xbar_inst_slaves_0_w_payload_strb[3:0]   ), //i
    .slave_axi_w_payload_last   (axi_xbar_inst_slaves_0_w_payload_last        ), //i
    .slave_axi_b_valid          (axi2sram_inst0_slave_axi_b_valid             ), //o
    .slave_axi_b_ready          (axi_xbar_inst_slaves_0_b_ready               ), //i
    .slave_axi_b_payload_id     (axi2sram_inst0_slave_axi_b_payload_id[3:0]   ), //o
    .slave_axi_b_payload_resp   (axi2sram_inst0_slave_axi_b_payload_resp[1:0] ), //o
    .ena                        (axi2sram_inst0_ena                           ), //o
    .wea                        (axi2sram_inst0_wea[3:0]                      ), //o
    .addra                      (axi2sram_inst0_addra[31:0]                   ), //o
    .dina                       (axi2sram_inst0_dina[31:0]                    ), //o
    .enb                        (axi2sram_inst0_enb                           ), //o
    .addrb                      (axi2sram_inst0_addrb[31:0]                   ), //o
    .doutb                      (SRAM_inst_doutb[31:0]                        ), //i
    .clk_gate                   (cpu_top_inst_clk_gate                        ), //i
    .rst_n                      (rst_n                                        )  //i
  );
  blk_mem_gen_0 SRAM_inst (
    .clka  (cpu_top_inst_clk_gate     ), //i
    .clkb  (cpu_top_inst_clk_gate     ), //i
    .ena   (axi2sram_inst0_ena        ), //i
    .wea   (axi2sram_inst0_wea[3:0]   ), //i
    .addra (axi2sram_inst0_addra[31:0]), //i
    .dina  (axi2sram_inst0_dina[31:0] ), //i
    .enb   (axi2sram_inst0_enb        ), //i
    .addrb (axi2sram_inst0_addrb[31:0]), //i
    .doutb (SRAM_inst_doutb[31:0]     )  //o
  );
  AXI2SRAM_1 axi2sram_inst1 (
    .slave_axi_ar_valid         (axi_xbar_inst_slaves_1_ar_valid              ), //i
    .slave_axi_ar_ready         (axi2sram_inst1_slave_axi_ar_ready            ), //o
    .slave_axi_ar_payload_id    (axi_xbar_inst_slaves_1_ar_payload_id[3:0]    ), //i
    .slave_axi_ar_payload_addr  (axi_xbar_inst_slaves_1_ar_payload_addr[31:0] ), //i
    .slave_axi_ar_payload_len   (axi_xbar_inst_slaves_1_ar_payload_len[7:0]   ), //i
    .slave_axi_ar_payload_size  (axi_xbar_inst_slaves_1_ar_payload_size[2:0]  ), //i
    .slave_axi_ar_payload_burst (axi_xbar_inst_slaves_1_ar_payload_burst[1:0] ), //i
    .slave_axi_ar_payload_lock  (axi_xbar_inst_slaves_1_ar_payload_lock[1:0]  ), //i
    .slave_axi_ar_payload_cache (axi_xbar_inst_slaves_1_ar_payload_cache[3:0] ), //i
    .slave_axi_ar_payload_prot  (axi_xbar_inst_slaves_1_ar_payload_prot[2:0]  ), //i
    .slave_axi_r_valid          (axi2sram_inst1_slave_axi_r_valid             ), //o
    .slave_axi_r_ready          (axi_xbar_inst_slaves_1_r_ready               ), //i
    .slave_axi_r_payload_id     (axi2sram_inst1_slave_axi_r_payload_id[3:0]   ), //o
    .slave_axi_r_payload_data   (axi2sram_inst1_slave_axi_r_payload_data[31:0]), //o
    .slave_axi_r_payload_resp   (axi2sram_inst1_slave_axi_r_payload_resp[1:0] ), //o
    .slave_axi_r_payload_last   (axi2sram_inst1_slave_axi_r_payload_last      ), //o
    .slave_axi_aw_valid         (axi_xbar_inst_slaves_1_aw_valid              ), //i
    .slave_axi_aw_ready         (axi2sram_inst1_slave_axi_aw_ready            ), //o
    .slave_axi_aw_payload_id    (axi_xbar_inst_slaves_1_aw_payload_id[3:0]    ), //i
    .slave_axi_aw_payload_addr  (axi_xbar_inst_slaves_1_aw_payload_addr[31:0] ), //i
    .slave_axi_aw_payload_len   (axi_xbar_inst_slaves_1_aw_payload_len[7:0]   ), //i
    .slave_axi_aw_payload_size  (axi_xbar_inst_slaves_1_aw_payload_size[2:0]  ), //i
    .slave_axi_aw_payload_burst (axi_xbar_inst_slaves_1_aw_payload_burst[1:0] ), //i
    .slave_axi_aw_payload_lock  (axi_xbar_inst_slaves_1_aw_payload_lock[1:0]  ), //i
    .slave_axi_aw_payload_cache (axi_xbar_inst_slaves_1_aw_payload_cache[3:0] ), //i
    .slave_axi_aw_payload_prot  (axi_xbar_inst_slaves_1_aw_payload_prot[2:0]  ), //i
    .slave_axi_w_valid          (axi_xbar_inst_slaves_1_w_valid               ), //i
    .slave_axi_w_ready          (axi2sram_inst1_slave_axi_w_ready             ), //o
    .slave_axi_w_payload_id     (axi_xbar_inst_slaves_1_w_payload_id[3:0]     ), //i
    .slave_axi_w_payload_data   (axi_xbar_inst_slaves_1_w_payload_data[31:0]  ), //i
    .slave_axi_w_payload_strb   (axi_xbar_inst_slaves_1_w_payload_strb[3:0]   ), //i
    .slave_axi_w_payload_last   (axi_xbar_inst_slaves_1_w_payload_last        ), //i
    .slave_axi_b_valid          (axi2sram_inst1_slave_axi_b_valid             ), //o
    .slave_axi_b_ready          (axi_xbar_inst_slaves_1_b_ready               ), //i
    .slave_axi_b_payload_id     (axi2sram_inst1_slave_axi_b_payload_id[3:0]   ), //o
    .slave_axi_b_payload_resp   (axi2sram_inst1_slave_axi_b_payload_resp[1:0] ), //o
    .ena                        (axi2sram_inst1_ena                           ), //o
    .wea                        (axi2sram_inst1_wea[3:0]                      ), //o
    .addra                      (axi2sram_inst1_addra[31:0]                   ), //o
    .dina                       (axi2sram_inst1_dina[31:0]                    ), //o
    .enb                        (axi2sram_inst1_enb                           ), //o
    .addrb                      (axi2sram_inst1_addrb[31:0]                   ), //o
    .doutb                      (clint_inst_doutb[31:0]                       ), //i
    .clk_gate                   (cpu_top_inst_clk_gate                        ), //i
    .rst_n                      (rst_n                                        )  //i
  );
  clint clint_inst (
    .clk          (clk                       ), //i
    .rtc_clk      (rtc_clk                   ), //i
    .rst_n        (rst_n                     ), //i
    .mtime_cnt_en (cpu_top_inst_mtime_cnt_en ), //i
    .m_sip        (clint_inst_m_sip          ), //o
    .m_tip        (clint_inst_m_tip          ), //o
    .ena          (axi2sram_inst1_ena        ), //i
    .wea          (axi2sram_inst1_wea[3:0]   ), //i
    .addra        (axi2sram_inst1_addra[31:0]), //i
    .dina         (axi2sram_inst1_dina[31:0] ), //i
    .enb          (axi2sram_inst1_enb        ), //i
    .addrb        (axi2sram_inst1_addrb[31:0]), //i
    .doutb        (clint_inst_doutb[31:0]    )  //o
  );

endmodule

module AXI2SRAM_1 (
  input  wire          slave_axi_ar_valid,
  output wire          slave_axi_ar_ready,
  input  wire [3:0]    slave_axi_ar_payload_id,
  input  wire [31:0]   slave_axi_ar_payload_addr,
  input  wire [7:0]    slave_axi_ar_payload_len,
  input  wire [2:0]    slave_axi_ar_payload_size,
  input  wire [1:0]    slave_axi_ar_payload_burst,
  input  wire [1:0]    slave_axi_ar_payload_lock,
  input  wire [3:0]    slave_axi_ar_payload_cache,
  input  wire [2:0]    slave_axi_ar_payload_prot,
  output wire          slave_axi_r_valid,
  input  wire          slave_axi_r_ready,
  output wire [3:0]    slave_axi_r_payload_id,
  output wire [31:0]   slave_axi_r_payload_data,
  output wire [1:0]    slave_axi_r_payload_resp,
  output wire          slave_axi_r_payload_last,
  input  wire          slave_axi_aw_valid,
  output wire          slave_axi_aw_ready,
  input  wire [3:0]    slave_axi_aw_payload_id,
  input  wire [31:0]   slave_axi_aw_payload_addr,
  input  wire [7:0]    slave_axi_aw_payload_len,
  input  wire [2:0]    slave_axi_aw_payload_size,
  input  wire [1:0]    slave_axi_aw_payload_burst,
  input  wire [1:0]    slave_axi_aw_payload_lock,
  input  wire [3:0]    slave_axi_aw_payload_cache,
  input  wire [2:0]    slave_axi_aw_payload_prot,
  input  wire          slave_axi_w_valid,
  output wire          slave_axi_w_ready,
  input  wire [3:0]    slave_axi_w_payload_id,
  input  wire [31:0]   slave_axi_w_payload_data,
  input  wire [3:0]    slave_axi_w_payload_strb,
  input  wire          slave_axi_w_payload_last,
  output wire          slave_axi_b_valid,
  input  wire          slave_axi_b_ready,
  output wire [3:0]    slave_axi_b_payload_id,
  output wire [1:0]    slave_axi_b_payload_resp,
  output wire          ena,
  output wire [3:0]    wea,
  output wire [31:0]   addra,
  output wire [31:0]   dina,
  output wire          enb,
  output wire [31:0]   addrb,
  input  wire [31:0]   doutb,
  input  wire          clk_gate,
  input  wire          rst_n
);
  localparam myClockingArea_read_cmd_enumDef_IDLE = 1'd0;
  localparam myClockingArea_read_cmd_enumDef_READ = 1'd1;
  localparam myClockingArea_write_cmd_enumDef_IDLE = 2'd0;
  localparam myClockingArea_write_cmd_enumDef_ADDR_OK = 2'd1;
  localparam myClockingArea_write_cmd_enumDef_WRITE = 2'd2;

  wire                myClockingArea_read_cmd_wantExit;
  reg                 myClockingArea_read_cmd_wantStart;
  wire                myClockingArea_read_cmd_wantKill;
  reg        [3:0]    myClockingArea_read_cmd_rid_reg;
  wire                myClockingArea_write_cmd_wantExit;
  reg                 myClockingArea_write_cmd_wantStart;
  wire                myClockingArea_write_cmd_wantKill;
  reg        [3:0]    myClockingArea_write_cmd_bid_reg;
  reg        [31:0]   myClockingArea_write_cmd_addr_reg;
  reg        [0:0]    myClockingArea_read_cmd_stateReg;
  reg        [0:0]    myClockingArea_read_cmd_stateNext;
  reg        [1:0]    myClockingArea_write_cmd_stateReg;
  reg        [1:0]    myClockingArea_write_cmd_stateNext;

  assign myClockingArea_read_cmd_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    myClockingArea_read_cmd_wantStart = 1'b0; // @ StateMachine.scala l152
    case(myClockingArea_read_cmd_stateReg)
      myClockingArea_read_cmd_enumDef_READ : begin
      end
      default : begin
        myClockingArea_read_cmd_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign myClockingArea_read_cmd_wantKill = 1'b0; // @ StateMachine.scala l153
  assign slave_axi_r_valid = (myClockingArea_read_cmd_stateReg == myClockingArea_read_cmd_enumDef_READ); // @ AXI2SRAM.scala l30
  assign slave_axi_ar_ready = (myClockingArea_read_cmd_stateReg == myClockingArea_read_cmd_enumDef_IDLE); // @ AXI2SRAM.scala l31
  assign slave_axi_r_payload_id = myClockingArea_read_cmd_rid_reg; // @ AXI2SRAM.scala l33
  assign slave_axi_r_payload_data = doutb; // @ AXI2SRAM.scala l34
  assign slave_axi_r_payload_last = 1'b1; // @ AXI2SRAM.scala l35
  assign slave_axi_r_payload_resp = 2'b00; // @ AXI2SRAM.scala l36
  assign enb = (((myClockingArea_read_cmd_stateNext == myClockingArea_read_cmd_enumDef_READ) && (myClockingArea_read_cmd_stateReg != myClockingArea_read_cmd_enumDef_READ)) ? 1'b1 : 1'b0); // @ AXI2SRAM.scala l38
  assign addrb = slave_axi_ar_payload_addr; // @ AXI2SRAM.scala l42
  assign myClockingArea_write_cmd_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    myClockingArea_write_cmd_wantStart = 1'b0; // @ StateMachine.scala l152
    case(myClockingArea_write_cmd_stateReg)
      myClockingArea_write_cmd_enumDef_ADDR_OK : begin
      end
      myClockingArea_write_cmd_enumDef_WRITE : begin
      end
      default : begin
        myClockingArea_write_cmd_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign myClockingArea_write_cmd_wantKill = 1'b0; // @ StateMachine.scala l153
  assign slave_axi_aw_ready = (myClockingArea_write_cmd_stateReg == myClockingArea_write_cmd_enumDef_IDLE); // @ AXI2SRAM.scala l65
  assign slave_axi_w_ready = (myClockingArea_write_cmd_stateReg == myClockingArea_write_cmd_enumDef_ADDR_OK); // @ AXI2SRAM.scala l66
  assign slave_axi_b_payload_id = myClockingArea_write_cmd_bid_reg; // @ AXI2SRAM.scala l68
  assign slave_axi_b_valid = (myClockingArea_write_cmd_stateReg == myClockingArea_write_cmd_enumDef_WRITE); // @ AXI2SRAM.scala l69
  assign slave_axi_b_payload_resp = 2'b00; // @ AXI2SRAM.scala l70
  assign ena = (((myClockingArea_write_cmd_stateNext == myClockingArea_write_cmd_enumDef_WRITE) && (myClockingArea_write_cmd_stateReg != myClockingArea_write_cmd_enumDef_WRITE)) ? 1'b1 : 1'b0); // @ AXI2SRAM.scala l72
  assign wea = slave_axi_w_payload_strb; // @ AXI2SRAM.scala l73
  assign addra = myClockingArea_write_cmd_addr_reg; // @ AXI2SRAM.scala l78
  assign dina = slave_axi_w_payload_data; // @ AXI2SRAM.scala l80
  always @(*) begin
    myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_stateReg; // @ StateMachine.scala l217
    case(myClockingArea_read_cmd_stateReg)
      myClockingArea_read_cmd_enumDef_READ : begin
        if((slave_axi_r_ready && slave_axi_r_valid)) begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_IDLE; // @ Enum.scala l151
        end else begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_READ; // @ Enum.scala l151
        end
      end
      default : begin
        if((slave_axi_ar_valid && slave_axi_ar_ready)) begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_READ; // @ Enum.scala l151
        end else begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_IDLE; // @ Enum.scala l151
        end
      end
    endcase
    if(myClockingArea_read_cmd_wantKill) begin
      myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(*) begin
    myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_stateReg; // @ StateMachine.scala l217
    case(myClockingArea_write_cmd_stateReg)
      myClockingArea_write_cmd_enumDef_ADDR_OK : begin
        if((slave_axi_w_valid && slave_axi_w_ready)) begin
          myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_WRITE; // @ Enum.scala l151
        end
      end
      myClockingArea_write_cmd_enumDef_WRITE : begin
        if((slave_axi_b_valid && slave_axi_b_ready)) begin
          myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_IDLE; // @ Enum.scala l151
        end
      end
      default : begin
        if((slave_axi_aw_valid && slave_axi_aw_ready)) begin
          myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_ADDR_OK; // @ Enum.scala l151
        end
      end
    endcase
    if(myClockingArea_write_cmd_wantKill) begin
      myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(posedge clk_gate or negedge rst_n) begin
    if(!rst_n) begin
      myClockingArea_read_cmd_rid_reg <= 4'b0000; // @ Data.scala l403
      myClockingArea_write_cmd_bid_reg <= 4'b0001; // @ Data.scala l403
      myClockingArea_write_cmd_addr_reg <= 32'h00000000; // @ Data.scala l403
      myClockingArea_read_cmd_stateReg <= myClockingArea_read_cmd_enumDef_IDLE; // @ Data.scala l403
      myClockingArea_write_cmd_stateReg <= myClockingArea_write_cmd_enumDef_IDLE; // @ Data.scala l403
    end else begin
      if(((myClockingArea_read_cmd_stateNext == myClockingArea_read_cmd_enumDef_READ) && (myClockingArea_read_cmd_stateReg != myClockingArea_read_cmd_enumDef_READ))) begin
        myClockingArea_read_cmd_rid_reg <= slave_axi_ar_payload_id; // @ AXI2SRAM.scala l32
      end
      if(((myClockingArea_write_cmd_stateNext == myClockingArea_write_cmd_enumDef_WRITE) && (myClockingArea_write_cmd_stateReg != myClockingArea_write_cmd_enumDef_WRITE))) begin
        myClockingArea_write_cmd_bid_reg <= slave_axi_w_payload_id; // @ AXI2SRAM.scala l67
      end
      if(((myClockingArea_write_cmd_stateNext == myClockingArea_write_cmd_enumDef_ADDR_OK) && (myClockingArea_write_cmd_stateReg != myClockingArea_write_cmd_enumDef_ADDR_OK))) begin
        myClockingArea_write_cmd_addr_reg <= slave_axi_aw_payload_addr; // @ AXI2SRAM.scala l74
      end
      myClockingArea_read_cmd_stateReg <= myClockingArea_read_cmd_stateNext; // @ StateMachine.scala l212
      myClockingArea_write_cmd_stateReg <= myClockingArea_write_cmd_stateNext; // @ StateMachine.scala l212
    end
  end


endmodule

module AXI2SRAM (
  input  wire          slave_axi_ar_valid,
  output wire          slave_axi_ar_ready,
  input  wire [3:0]    slave_axi_ar_payload_id,
  input  wire [31:0]   slave_axi_ar_payload_addr,
  input  wire [7:0]    slave_axi_ar_payload_len,
  input  wire [2:0]    slave_axi_ar_payload_size,
  input  wire [1:0]    slave_axi_ar_payload_burst,
  input  wire [1:0]    slave_axi_ar_payload_lock,
  input  wire [3:0]    slave_axi_ar_payload_cache,
  input  wire [2:0]    slave_axi_ar_payload_prot,
  output wire          slave_axi_r_valid,
  input  wire          slave_axi_r_ready,
  output wire [3:0]    slave_axi_r_payload_id,
  output wire [31:0]   slave_axi_r_payload_data,
  output wire [1:0]    slave_axi_r_payload_resp,
  output wire          slave_axi_r_payload_last,
  input  wire          slave_axi_aw_valid,
  output wire          slave_axi_aw_ready,
  input  wire [3:0]    slave_axi_aw_payload_id,
  input  wire [31:0]   slave_axi_aw_payload_addr,
  input  wire [7:0]    slave_axi_aw_payload_len,
  input  wire [2:0]    slave_axi_aw_payload_size,
  input  wire [1:0]    slave_axi_aw_payload_burst,
  input  wire [1:0]    slave_axi_aw_payload_lock,
  input  wire [3:0]    slave_axi_aw_payload_cache,
  input  wire [2:0]    slave_axi_aw_payload_prot,
  input  wire          slave_axi_w_valid,
  output wire          slave_axi_w_ready,
  input  wire [3:0]    slave_axi_w_payload_id,
  input  wire [31:0]   slave_axi_w_payload_data,
  input  wire [3:0]    slave_axi_w_payload_strb,
  input  wire          slave_axi_w_payload_last,
  output wire          slave_axi_b_valid,
  input  wire          slave_axi_b_ready,
  output wire [3:0]    slave_axi_b_payload_id,
  output wire [1:0]    slave_axi_b_payload_resp,
  output wire          ena,
  output wire [3:0]    wea,
  output wire [31:0]   addra,
  output wire [31:0]   dina,
  output wire          enb,
  output wire [31:0]   addrb,
  input  wire [31:0]   doutb,
  input  wire          clk_gate,
  input  wire          rst_n
);
  localparam myClockingArea_read_cmd_enumDef_IDLE = 1'd0;
  localparam myClockingArea_read_cmd_enumDef_READ = 1'd1;
  localparam myClockingArea_write_cmd_enumDef_IDLE = 2'd0;
  localparam myClockingArea_write_cmd_enumDef_ADDR_OK = 2'd1;
  localparam myClockingArea_write_cmd_enumDef_WRITE = 2'd2;

  wire                myClockingArea_read_cmd_wantExit;
  reg                 myClockingArea_read_cmd_wantStart;
  wire                myClockingArea_read_cmd_wantKill;
  reg        [3:0]    myClockingArea_read_cmd_rid_reg;
  wire                myClockingArea_write_cmd_wantExit;
  reg                 myClockingArea_write_cmd_wantStart;
  wire                myClockingArea_write_cmd_wantKill;
  reg        [3:0]    myClockingArea_write_cmd_bid_reg;
  reg        [31:0]   myClockingArea_write_cmd_addr_reg;
  reg        [0:0]    myClockingArea_read_cmd_stateReg;
  reg        [0:0]    myClockingArea_read_cmd_stateNext;
  reg        [1:0]    myClockingArea_write_cmd_stateReg;
  reg        [1:0]    myClockingArea_write_cmd_stateNext;

  assign myClockingArea_read_cmd_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    myClockingArea_read_cmd_wantStart = 1'b0; // @ StateMachine.scala l152
    case(myClockingArea_read_cmd_stateReg)
      myClockingArea_read_cmd_enumDef_READ : begin
      end
      default : begin
        myClockingArea_read_cmd_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign myClockingArea_read_cmd_wantKill = 1'b0; // @ StateMachine.scala l153
  assign slave_axi_r_valid = (myClockingArea_read_cmd_stateReg == myClockingArea_read_cmd_enumDef_READ); // @ AXI2SRAM.scala l30
  assign slave_axi_ar_ready = (myClockingArea_read_cmd_stateReg == myClockingArea_read_cmd_enumDef_IDLE); // @ AXI2SRAM.scala l31
  assign slave_axi_r_payload_id = myClockingArea_read_cmd_rid_reg; // @ AXI2SRAM.scala l33
  assign slave_axi_r_payload_data = doutb; // @ AXI2SRAM.scala l34
  assign slave_axi_r_payload_last = 1'b1; // @ AXI2SRAM.scala l35
  assign slave_axi_r_payload_resp = 2'b00; // @ AXI2SRAM.scala l36
  assign enb = (((myClockingArea_read_cmd_stateNext == myClockingArea_read_cmd_enumDef_READ) && (myClockingArea_read_cmd_stateReg != myClockingArea_read_cmd_enumDef_READ)) ? 1'b1 : 1'b0); // @ AXI2SRAM.scala l38
  assign addrb = {2'b00,slave_axi_ar_payload_addr[31 : 2]}; // @ AXI2SRAM.scala l40
  assign myClockingArea_write_cmd_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    myClockingArea_write_cmd_wantStart = 1'b0; // @ StateMachine.scala l152
    case(myClockingArea_write_cmd_stateReg)
      myClockingArea_write_cmd_enumDef_ADDR_OK : begin
      end
      myClockingArea_write_cmd_enumDef_WRITE : begin
      end
      default : begin
        myClockingArea_write_cmd_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign myClockingArea_write_cmd_wantKill = 1'b0; // @ StateMachine.scala l153
  assign slave_axi_aw_ready = (myClockingArea_write_cmd_stateReg == myClockingArea_write_cmd_enumDef_IDLE); // @ AXI2SRAM.scala l65
  assign slave_axi_w_ready = (myClockingArea_write_cmd_stateReg == myClockingArea_write_cmd_enumDef_ADDR_OK); // @ AXI2SRAM.scala l66
  assign slave_axi_b_payload_id = myClockingArea_write_cmd_bid_reg; // @ AXI2SRAM.scala l68
  assign slave_axi_b_valid = (myClockingArea_write_cmd_stateReg == myClockingArea_write_cmd_enumDef_WRITE); // @ AXI2SRAM.scala l69
  assign slave_axi_b_payload_resp = 2'b00; // @ AXI2SRAM.scala l70
  assign ena = (((myClockingArea_write_cmd_stateNext == myClockingArea_write_cmd_enumDef_WRITE) && (myClockingArea_write_cmd_stateReg != myClockingArea_write_cmd_enumDef_WRITE)) ? 1'b1 : 1'b0); // @ AXI2SRAM.scala l72
  assign wea = slave_axi_w_payload_strb; // @ AXI2SRAM.scala l73
  assign addra = {2'b00,myClockingArea_write_cmd_addr_reg[31 : 2]}; // @ AXI2SRAM.scala l76
  assign dina = slave_axi_w_payload_data; // @ AXI2SRAM.scala l80
  always @(*) begin
    myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_stateReg; // @ StateMachine.scala l217
    case(myClockingArea_read_cmd_stateReg)
      myClockingArea_read_cmd_enumDef_READ : begin
        if((slave_axi_r_ready && slave_axi_r_valid)) begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_IDLE; // @ Enum.scala l151
        end else begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_READ; // @ Enum.scala l151
        end
      end
      default : begin
        if((slave_axi_ar_valid && slave_axi_ar_ready)) begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_READ; // @ Enum.scala l151
        end else begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_IDLE; // @ Enum.scala l151
        end
      end
    endcase
    if(myClockingArea_read_cmd_wantKill) begin
      myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(*) begin
    myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_stateReg; // @ StateMachine.scala l217
    case(myClockingArea_write_cmd_stateReg)
      myClockingArea_write_cmd_enumDef_ADDR_OK : begin
        if((slave_axi_w_valid && slave_axi_w_ready)) begin
          myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_WRITE; // @ Enum.scala l151
        end
      end
      myClockingArea_write_cmd_enumDef_WRITE : begin
        if((slave_axi_b_valid && slave_axi_b_ready)) begin
          myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_IDLE; // @ Enum.scala l151
        end
      end
      default : begin
        if((slave_axi_aw_valid && slave_axi_aw_ready)) begin
          myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_ADDR_OK; // @ Enum.scala l151
        end
      end
    endcase
    if(myClockingArea_write_cmd_wantKill) begin
      myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(posedge clk_gate or negedge rst_n) begin
    if(!rst_n) begin
      myClockingArea_read_cmd_rid_reg <= 4'b0000; // @ Data.scala l403
      myClockingArea_write_cmd_bid_reg <= 4'b0001; // @ Data.scala l403
      myClockingArea_write_cmd_addr_reg <= 32'h00000000; // @ Data.scala l403
      myClockingArea_read_cmd_stateReg <= myClockingArea_read_cmd_enumDef_IDLE; // @ Data.scala l403
      myClockingArea_write_cmd_stateReg <= myClockingArea_write_cmd_enumDef_IDLE; // @ Data.scala l403
    end else begin
      if(((myClockingArea_read_cmd_stateNext == myClockingArea_read_cmd_enumDef_READ) && (myClockingArea_read_cmd_stateReg != myClockingArea_read_cmd_enumDef_READ))) begin
        myClockingArea_read_cmd_rid_reg <= slave_axi_ar_payload_id; // @ AXI2SRAM.scala l32
      end
      if(((myClockingArea_write_cmd_stateNext == myClockingArea_write_cmd_enumDef_WRITE) && (myClockingArea_write_cmd_stateReg != myClockingArea_write_cmd_enumDef_WRITE))) begin
        myClockingArea_write_cmd_bid_reg <= slave_axi_w_payload_id; // @ AXI2SRAM.scala l67
      end
      if(((myClockingArea_write_cmd_stateNext == myClockingArea_write_cmd_enumDef_ADDR_OK) && (myClockingArea_write_cmd_stateReg != myClockingArea_write_cmd_enumDef_ADDR_OK))) begin
        myClockingArea_write_cmd_addr_reg <= slave_axi_aw_payload_addr; // @ AXI2SRAM.scala l74
      end
      myClockingArea_read_cmd_stateReg <= myClockingArea_read_cmd_stateNext; // @ StateMachine.scala l212
      myClockingArea_write_cmd_stateReg <= myClockingArea_write_cmd_stateNext; // @ StateMachine.scala l212
    end
  end


endmodule

module axi_xbar (
  input  wire          masters_ar_valid,
  output wire          masters_ar_ready,
  input  wire [3:0]    masters_ar_payload_id,
  input  wire [31:0]   masters_ar_payload_addr,
  input  wire [7:0]    masters_ar_payload_len,
  input  wire [2:0]    masters_ar_payload_size,
  input  wire [1:0]    masters_ar_payload_burst,
  input  wire [1:0]    masters_ar_payload_lock,
  input  wire [3:0]    masters_ar_payload_cache,
  input  wire [2:0]    masters_ar_payload_prot,
  output wire          masters_r_valid,
  input  wire          masters_r_ready,
  output wire [3:0]    masters_r_payload_id,
  output wire [31:0]   masters_r_payload_data,
  output wire [1:0]    masters_r_payload_resp,
  output wire          masters_r_payload_last,
  input  wire          masters_aw_valid,
  output wire          masters_aw_ready,
  input  wire [3:0]    masters_aw_payload_id,
  input  wire [31:0]   masters_aw_payload_addr,
  input  wire [7:0]    masters_aw_payload_len,
  input  wire [2:0]    masters_aw_payload_size,
  input  wire [1:0]    masters_aw_payload_burst,
  input  wire [1:0]    masters_aw_payload_lock,
  input  wire [3:0]    masters_aw_payload_cache,
  input  wire [2:0]    masters_aw_payload_prot,
  input  wire          masters_w_valid,
  output wire          masters_w_ready,
  input  wire [3:0]    masters_w_payload_id,
  input  wire [31:0]   masters_w_payload_data,
  input  wire [3:0]    masters_w_payload_strb,
  input  wire          masters_w_payload_last,
  output wire          masters_b_valid,
  input  wire          masters_b_ready,
  output wire [3:0]    masters_b_payload_id,
  output wire [1:0]    masters_b_payload_resp,
  output wire          slaves_0_ar_valid,
  input  wire          slaves_0_ar_ready,
  output wire [3:0]    slaves_0_ar_payload_id,
  output wire [31:0]   slaves_0_ar_payload_addr,
  output wire [7:0]    slaves_0_ar_payload_len,
  output wire [2:0]    slaves_0_ar_payload_size,
  output wire [1:0]    slaves_0_ar_payload_burst,
  output wire [1:0]    slaves_0_ar_payload_lock,
  output wire [3:0]    slaves_0_ar_payload_cache,
  output wire [2:0]    slaves_0_ar_payload_prot,
  input  wire          slaves_0_r_valid,
  output wire          slaves_0_r_ready,
  input  wire [3:0]    slaves_0_r_payload_id,
  input  wire [31:0]   slaves_0_r_payload_data,
  input  wire [1:0]    slaves_0_r_payload_resp,
  input  wire          slaves_0_r_payload_last,
  output wire          slaves_0_aw_valid,
  input  wire          slaves_0_aw_ready,
  output wire [3:0]    slaves_0_aw_payload_id,
  output wire [31:0]   slaves_0_aw_payload_addr,
  output wire [7:0]    slaves_0_aw_payload_len,
  output wire [2:0]    slaves_0_aw_payload_size,
  output wire [1:0]    slaves_0_aw_payload_burst,
  output wire [1:0]    slaves_0_aw_payload_lock,
  output wire [3:0]    slaves_0_aw_payload_cache,
  output wire [2:0]    slaves_0_aw_payload_prot,
  output wire          slaves_0_w_valid,
  input  wire          slaves_0_w_ready,
  output wire [3:0]    slaves_0_w_payload_id,
  output wire [31:0]   slaves_0_w_payload_data,
  output wire [3:0]    slaves_0_w_payload_strb,
  output wire          slaves_0_w_payload_last,
  input  wire          slaves_0_b_valid,
  output wire          slaves_0_b_ready,
  input  wire [3:0]    slaves_0_b_payload_id,
  input  wire [1:0]    slaves_0_b_payload_resp,
  output wire          slaves_1_ar_valid,
  input  wire          slaves_1_ar_ready,
  output wire [3:0]    slaves_1_ar_payload_id,
  output wire [31:0]   slaves_1_ar_payload_addr,
  output wire [7:0]    slaves_1_ar_payload_len,
  output wire [2:0]    slaves_1_ar_payload_size,
  output wire [1:0]    slaves_1_ar_payload_burst,
  output wire [1:0]    slaves_1_ar_payload_lock,
  output wire [3:0]    slaves_1_ar_payload_cache,
  output wire [2:0]    slaves_1_ar_payload_prot,
  input  wire          slaves_1_r_valid,
  output wire          slaves_1_r_ready,
  input  wire [3:0]    slaves_1_r_payload_id,
  input  wire [31:0]   slaves_1_r_payload_data,
  input  wire [1:0]    slaves_1_r_payload_resp,
  input  wire          slaves_1_r_payload_last,
  output wire          slaves_1_aw_valid,
  input  wire          slaves_1_aw_ready,
  output wire [3:0]    slaves_1_aw_payload_id,
  output wire [31:0]   slaves_1_aw_payload_addr,
  output wire [7:0]    slaves_1_aw_payload_len,
  output wire [2:0]    slaves_1_aw_payload_size,
  output wire [1:0]    slaves_1_aw_payload_burst,
  output wire [1:0]    slaves_1_aw_payload_lock,
  output wire [3:0]    slaves_1_aw_payload_cache,
  output wire [2:0]    slaves_1_aw_payload_prot,
  output wire          slaves_1_w_valid,
  input  wire          slaves_1_w_ready,
  output wire [3:0]    slaves_1_w_payload_id,
  output wire [31:0]   slaves_1_w_payload_data,
  output wire [3:0]    slaves_1_w_payload_strb,
  output wire          slaves_1_w_payload_last,
  input  wire          slaves_1_b_valid,
  output wire          slaves_1_b_ready,
  input  wire [3:0]    slaves_1_b_payload_id,
  input  wire [1:0]    slaves_1_b_payload_resp,
  input  wire          clk_gate,
  input  wire          rst_n
);

  reg                 _zz_masters_ar_ready;
  reg        [3:0]    _zz_masters_r_payload_id;
  reg        [31:0]   _zz_masters_r_payload_data;
  reg        [1:0]    _zz_masters_r_payload_resp;
  reg                 _zz_masters_r_payload_last;
  reg                 _zz_masters_r_valid;
  reg                 _zz_masters_aw_ready;
  reg                 _zz_masters_w_ready;
  reg        [3:0]    _zz_masters_b_payload_id;
  reg        [1:0]    _zz_masters_b_payload_resp;
  reg                 _zz_masters_b_valid;
  reg        [0:0]    myClockingArea_arSlaveSelect;
  reg        [0:0]    myClockingArea_rSlaveSelect;
  reg        [0:0]    myClockingArea_awSlaveSelect;
  reg        [0:0]    myClockingArea_bSlaveSelect;

  always @(*) begin
    case(myClockingArea_arSlaveSelect)
      1'b0 : _zz_masters_ar_ready = slaves_0_ar_ready;
      default : _zz_masters_ar_ready = slaves_1_ar_ready;
    endcase
  end

  always @(*) begin
    case(myClockingArea_rSlaveSelect)
      1'b0 : begin
        _zz_masters_r_payload_id = slaves_0_r_payload_id;
        _zz_masters_r_payload_data = slaves_0_r_payload_data;
        _zz_masters_r_payload_resp = slaves_0_r_payload_resp;
        _zz_masters_r_payload_last = slaves_0_r_payload_last;
        _zz_masters_r_valid = slaves_0_r_valid;
      end
      default : begin
        _zz_masters_r_payload_id = slaves_1_r_payload_id;
        _zz_masters_r_payload_data = slaves_1_r_payload_data;
        _zz_masters_r_payload_resp = slaves_1_r_payload_resp;
        _zz_masters_r_payload_last = slaves_1_r_payload_last;
        _zz_masters_r_valid = slaves_1_r_valid;
      end
    endcase
  end

  always @(*) begin
    case(myClockingArea_awSlaveSelect)
      1'b0 : begin
        _zz_masters_aw_ready = slaves_0_aw_ready;
        _zz_masters_w_ready = slaves_0_w_ready;
      end
      default : begin
        _zz_masters_aw_ready = slaves_1_aw_ready;
        _zz_masters_w_ready = slaves_1_w_ready;
      end
    endcase
  end

  always @(*) begin
    case(myClockingArea_bSlaveSelect)
      1'b0 : begin
        _zz_masters_b_payload_id = slaves_0_b_payload_id;
        _zz_masters_b_payload_resp = slaves_0_b_payload_resp;
        _zz_masters_b_valid = slaves_0_b_valid;
      end
      default : begin
        _zz_masters_b_payload_id = slaves_1_b_payload_id;
        _zz_masters_b_payload_resp = slaves_1_b_payload_resp;
        _zz_masters_b_valid = slaves_1_b_valid;
      end
    endcase
  end

  always @(*) begin
    myClockingArea_arSlaveSelect = 1'b0; // @ axi_xbar.scala l24
    if(((32'h00000000 <= masters_ar_payload_addr) && (masters_ar_payload_addr < 32'h02000000))) begin
      myClockingArea_arSlaveSelect = 1'b0; // @ axi_xbar.scala l27
    end
    if(((32'h02000000 <= masters_ar_payload_addr) && (masters_ar_payload_addr < 32'h03000000))) begin
      myClockingArea_arSlaveSelect = 1'b1; // @ axi_xbar.scala l27
    end
  end

  assign slaves_0_ar_valid = (masters_ar_valid && (myClockingArea_arSlaveSelect == 1'b0)); // @ axi_xbar.scala l36
  assign slaves_0_ar_payload_id = masters_ar_payload_id; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_addr = masters_ar_payload_addr; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_len = masters_ar_payload_len; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_size = masters_ar_payload_size; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_burst = masters_ar_payload_burst; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_lock = masters_ar_payload_lock; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_cache = masters_ar_payload_cache; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_prot = masters_ar_payload_prot; // @ axi_xbar.scala l37
  assign slaves_1_ar_valid = (masters_ar_valid && (myClockingArea_arSlaveSelect == 1'b1)); // @ axi_xbar.scala l36
  assign slaves_1_ar_payload_id = masters_ar_payload_id; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_addr = masters_ar_payload_addr; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_len = masters_ar_payload_len; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_size = masters_ar_payload_size; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_burst = masters_ar_payload_burst; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_lock = masters_ar_payload_lock; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_cache = masters_ar_payload_cache; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_prot = masters_ar_payload_prot; // @ axi_xbar.scala l37
  assign masters_ar_ready = _zz_masters_ar_ready; // @ axi_xbar.scala l39
  assign masters_r_payload_id = _zz_masters_r_payload_id; // @ axi_xbar.scala l43
  assign masters_r_payload_data = _zz_masters_r_payload_data; // @ axi_xbar.scala l43
  assign masters_r_payload_resp = _zz_masters_r_payload_resp; // @ axi_xbar.scala l43
  assign masters_r_payload_last = _zz_masters_r_payload_last; // @ axi_xbar.scala l43
  assign masters_r_valid = _zz_masters_r_valid; // @ axi_xbar.scala l44
  assign slaves_0_r_ready = masters_r_ready; // @ axi_xbar.scala l46
  assign slaves_1_r_ready = masters_r_ready; // @ axi_xbar.scala l46
  always @(*) begin
    myClockingArea_awSlaveSelect = 1'b0; // @ axi_xbar.scala l24
    if(((32'h00000000 <= masters_aw_payload_addr) && (masters_aw_payload_addr < 32'h02000000))) begin
      myClockingArea_awSlaveSelect = 1'b0; // @ axi_xbar.scala l27
    end
    if(((32'h02000000 <= masters_aw_payload_addr) && (masters_aw_payload_addr < 32'h03000000))) begin
      myClockingArea_awSlaveSelect = 1'b1; // @ axi_xbar.scala l27
    end
  end

  assign slaves_0_aw_valid = (masters_aw_valid && (myClockingArea_awSlaveSelect == 1'b0)); // @ axi_xbar.scala l52
  assign slaves_0_w_valid = (masters_w_valid && (myClockingArea_awSlaveSelect == 1'b0)); // @ axi_xbar.scala l53
  assign slaves_0_aw_payload_id = masters_aw_payload_id; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_addr = masters_aw_payload_addr; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_len = masters_aw_payload_len; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_size = masters_aw_payload_size; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_burst = masters_aw_payload_burst; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_lock = masters_aw_payload_lock; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_cache = masters_aw_payload_cache; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_prot = masters_aw_payload_prot; // @ axi_xbar.scala l54
  assign slaves_0_w_payload_id = masters_w_payload_id; // @ axi_xbar.scala l55
  assign slaves_0_w_payload_data = masters_w_payload_data; // @ axi_xbar.scala l55
  assign slaves_0_w_payload_strb = masters_w_payload_strb; // @ axi_xbar.scala l55
  assign slaves_0_w_payload_last = masters_w_payload_last; // @ axi_xbar.scala l55
  assign slaves_1_aw_valid = (masters_aw_valid && (myClockingArea_awSlaveSelect == 1'b1)); // @ axi_xbar.scala l52
  assign slaves_1_w_valid = (masters_w_valid && (myClockingArea_awSlaveSelect == 1'b1)); // @ axi_xbar.scala l53
  assign slaves_1_aw_payload_id = masters_aw_payload_id; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_addr = masters_aw_payload_addr; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_len = masters_aw_payload_len; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_size = masters_aw_payload_size; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_burst = masters_aw_payload_burst; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_lock = masters_aw_payload_lock; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_cache = masters_aw_payload_cache; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_prot = masters_aw_payload_prot; // @ axi_xbar.scala l54
  assign slaves_1_w_payload_id = masters_w_payload_id; // @ axi_xbar.scala l55
  assign slaves_1_w_payload_data = masters_w_payload_data; // @ axi_xbar.scala l55
  assign slaves_1_w_payload_strb = masters_w_payload_strb; // @ axi_xbar.scala l55
  assign slaves_1_w_payload_last = masters_w_payload_last; // @ axi_xbar.scala l55
  assign masters_aw_ready = _zz_masters_aw_ready; // @ axi_xbar.scala l57
  assign masters_w_ready = _zz_masters_w_ready; // @ axi_xbar.scala l58
  assign masters_b_payload_id = _zz_masters_b_payload_id; // @ axi_xbar.scala l62
  assign masters_b_payload_resp = _zz_masters_b_payload_resp; // @ axi_xbar.scala l62
  assign masters_b_valid = _zz_masters_b_valid; // @ axi_xbar.scala l63
  assign slaves_0_b_ready = masters_b_ready; // @ axi_xbar.scala l65
  assign slaves_1_b_ready = masters_b_ready; // @ axi_xbar.scala l65
  always @(posedge clk_gate or negedge rst_n) begin
    if(!rst_n) begin
      myClockingArea_rSlaveSelect <= 1'b0; // @ Data.scala l403
      myClockingArea_bSlaveSelect <= 1'b0; // @ Data.scala l403
    end else begin
      if((masters_ar_valid && masters_ar_ready)) begin
        myClockingArea_rSlaveSelect <= myClockingArea_arSlaveSelect; // @ axi_xbar.scala l42
      end
      if((masters_aw_valid && masters_aw_ready)) begin
        myClockingArea_bSlaveSelect <= myClockingArea_awSlaveSelect; // @ axi_xbar.scala l61
      end
    end
  end


endmodule

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
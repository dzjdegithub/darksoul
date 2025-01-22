// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jan 20 21:50:11 2025
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    rstb,
    enb,
    addrb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.280324 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[11:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 36992)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

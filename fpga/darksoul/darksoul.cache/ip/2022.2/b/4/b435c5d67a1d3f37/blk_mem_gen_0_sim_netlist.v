// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jan 20 21:52:37 2025
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
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
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
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33200)
`pragma protect data_block
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
ShaBoJCkDxSt/QNHbBF5/J6ryoe6gs3PSk4=
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

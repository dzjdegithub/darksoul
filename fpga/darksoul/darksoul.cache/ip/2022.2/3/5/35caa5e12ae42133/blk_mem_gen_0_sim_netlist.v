// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:22:21 2025
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
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
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
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.958601 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 46832)
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:43:15 2025
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

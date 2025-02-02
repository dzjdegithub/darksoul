// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:48:26 2025
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

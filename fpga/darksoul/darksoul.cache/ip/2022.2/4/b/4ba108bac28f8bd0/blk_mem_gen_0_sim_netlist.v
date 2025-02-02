// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:40:24 2025
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
piT41Ex6gTp+DUUrEjcPr7qv1Vpt85yDsA4aVv3qGcoIlvv2vr01OPJQeHgjNfpqFyLOBqR2Pnxk
U2mixsSAG85c1AVFhs1MmyYubHvSjGMh4JfGss1Up4fGZgdQAq/bqJxMDfik1wnUgle5V8n9vHr1
RA1pHZM7HGWuDZJo+tLhmjQfJX2OxXsvNFpptB0i2BINXpaw99/Ufqa7GCyXOaojzrJ9ICIAPeks
gGhK67TLPUXmuv8gq4affcQ7eC8R9jOyiZ6aODkXzXsz2hk1U5HtNjrWI6zxAtjwT53jULWU0r0S
fhZM+LHQ+YRfN6g12giMmxrpGlxayiNHc4NN7Ar5avTgrn4u+42gsjDS9ibw5hPcH6Qz4c3oD/M3
/4ExcxfrddyGdKsChkxRgexLub+tnq8GL5FkuasfVhq4WYbxdOO6hCZtIvKMtlS4SpFtaCLqU8Pp
m1D4CtBdqN7gx+bInHfTTFjeTmT2Y/loDr5ek04BpFV3mKVwX/fYgbLmkwGAWb87lEnpyOndMOgq
cOe4XYQQQkKkbi3I/fWy3zM5yJyU6pZ0hhw+JuUv9HqIoN+BNylwIhy82iVS9xwxuUsF4AzkEaCz
1B1UaxaNxn13obTufjNyopceIWmuXBUKtWE0+FhNQqVEVEHxRLWBLFbZmSgcqc4VGolp5KjIVmmB
sS340FuFrLOjLYf2C3FNOI7D1aQWssP8ksxnMHYQs22Uc5l0m10FxmlSHZfmuYLaj1VEYS6dFV0+
bYuorPR4QBKnINW9iYSqGEcZBLYdMHhfBskZ649Aw4RrTfIutMLhqXQMzEZpvogyXdvGl+illZA6
genenlxy+a4x2fxvv7z6KVrBRBtDq/JeJAKDrVePDlK/Ly2kX/nuW5Pe3EGwoO0Ef6q8ntqCQReN
P6VVCbRkn6ykuT2KUl0EMRIpmAmoatkf/GuMFdf26wAGLQaU4H/xA6aEtV0VNPh0/mdGusIgYn4b
yJva0ORjpz9BbvVW6ur731rw9FyP9g67EwTYgZ2L11QdF9AMkQUPXjMCxwhzR7ezIjdE4gYBnHIa
JeE7jrOnpr/jyYOlCZ0gI0G6nayCS5sTQhMXDnz2/qE/8hc4K4uDd3eGbKb38LlD0n2hg8CF+Llp
WPaZWzIfkz+yarOJhktvWlVtyX5G/W1Ti068hyIbrOuUaCsQoHtSU37WqmxEwV8UhDfxJTNIt/oA
grClCfY1FJlFjy0XrEnEjn5RX1TZOzWnp1VmTtBLZXSmfpKb7h5/Sqygz5tTql99gGhLtYCKi/Pe
oAL59T8rstv2MW2ErGrhXBNPaPWpSMIKd7FLNXSP4IHaBFw6VkG+i/P3/9UdCKW7/cQ38AsZxun6
MqXAhvTfXzRc/S3lSumQ1A3LNTWbD8wvRej7Wf4sSe3ZQRfacTffOR3n4NoGxndJ2zhYZh/oMt6X
IeVqhk8OqAUCa5AtKRG1oKOxrEdjwtrxdLUt2TLsfQfGOc8s6lKOxAYD+1Zznwj3FxIxSxNPvn5R
zDscVfTZROusYC/7qRkQ3/PkMqnBS1Rq+2nL5UeB3eApiIKb4InFBcJ3tXfpzND7nKTZZgVJcAX9
GunJHJTKUFqq3kr8Arb6SOiekeo82FsS9yRKF3RD9jFoYz6Jnj+DWhG+uV6SKhwa5QIyKj3juEtf
5/6XJoDjkz/h5Giib6eCDLi13JUfvPG00mgIiDte0otLwh9MWAat6ESi1H7yDugjFJ8pIbQ5Q0Bk
NzSK7nl33+q4COyFWntjZiE5a6YcJiu6LLbTBXyIZfqWcZ8cE06kodTlOnnGEvCdcoR6afX2h4kH
RLd2K9EqXoEfiOwelQRpW0wVxTyZOYhKDt+Qu51a39c/YWkehBZRlS/RNbxNqKWvcdrR9N5eGfqc
Fge8J40+3zS4D9Pe6Dyw9n/Sv69tjIT5AVZ43qGBIvqKnYyZTpynAcrvz+KQ6CFtqf9u73zb5fUd
MNz0u8ltDMDrDAIbM1xQX1T2Pku7TXCSt7YRR+q0Lk+kgAwJEhQs+/nJNUv2ddBeuoRTH/5GgyAb
Gdx1MASFtEUIYiTQlxHMzTCBuEdRrZp8MhbZwyWItrOLDMpIIbo2Ils8dQdeczMW7KFRUvDEomHh
hLNosJuVYwEAVU/pJQQDRtk9xMoD6DQF4hafhD5riDugordRtAAIOEqCNQplABabq4r8To2wNu2W
WUXUaHZdSU5mvuJzTh5yfZDsbWlXTrR6PcfGYjqyQS6IfPysthW1pW+wi98EZlPl5Y8Gzd01bpoX
eBSOv6FMU/yzWaoCSD4K5F9aRAJlJYOsNCZjK5KpV3ZHZEmeguknNivcDutkxuad3y1MlpsCfN46
9K6719+UzHJ2QsG9W9Dc0DSCxEFHAVmnwxr5aQeNiDvzNz5mD4P2UaNj9C1RoNsqukJuUgUtK1WO
ZryT0nFC9WhU5OhWmexbQe/k/Hcc344VAsPz0sUQrVsWjPh7r4N67vNpz0FZ8LgbTWulMNS0KGoB
Jvq+TvEg6Xuq1+bTD37e7r9ZrrTzz+wcSwg7J9xrKyiz08nrG2XTSWfJ0oIci24VistLHm2Tevte
sdUtr6TcpioF1C2REqlVAv5QYmXvpn5i1OJYDJTeqpe4zP1F5a/igaVKdo/Iclq6H47OmJPKSmch
eqBprMuG9ChMqgyBkCBwxBAAGStYDmw4exKpb/Pwqe4MgqFzWeP2IOpf4SAg7OlQgK8KTbaCvlZI
6iHVV92iVK9ZtrQyjFa891HbsuFyyQJHm7GmeCL7N7qugtlYI5gCWqLbq26GpCdqGnf1S4JMKfNy
NMKdplHKM9qDWwtHIHsRg3LxX3ipax6FybU8mv6AEUxm/m3sJo5Y+sJ8dAePToe82abHWgtI4eu3
fcOV5IduvWOKNRduz70mdcd9bgpsM/+5eTqEB0J7FRW4LN0f8CjD0vBQlYSPb9401LE2wq6bgdMu
RTkbKfMSiE4asNjYl8G9FXghfINXnZeXAesmBGOyxITSNcAicaUhyuoKZAUqnYxAFDsziIUIhBzq
7oxZT12m1Be0cVaol8lYB3whW2hzGAUDADSpYyoRMQYDgzz/1oPy3zNJG4IIHOW+8wfF7zzWQ/Wm
KsNedci+epc1QePTO4meZeLORR89/KNjdgP+iml0Qd45/tQw6NzZVohQd9KK34fYkWdh3+fCvuCG
d/P4FzVeXMv4tNgmNvX/xO2HMIJtxkNL8fw5vYawjr1TIOKXvCx9ayfLdsFABPqHQJXP5Onvok4g
7QxyBsAafY7lV9hzp3wPyEo2hLdaWO9ss+gu2oCSFbPHVjXAcfdjsA3XJ6MtRFrysYCnHGJNoexh
czuyRIvLT9zLL9aAJl+ANL4k4hk8oCa4jMDOJv19TFmtlWNPg9y1GBKsTBvO8Xf+VfWqLEmMwbzU
ynMBuK7d4uXMGZV32y/2ugTM3GlBybaiW3JJma5KjSreofQvX+VfAqc96YQ2mLshOzFz/BbiXLYm
aCbo48S5nWsAOXOdGIBG0tHBtEkkaujCqlwBf7RdJRzm3oYwsrzfJxBnwATR3+5dbuXGX8IL/3n/
syCic367v0ry3AgHcJYQJK3SAGZctx2NheszIqarKpz/zRXfGaB2CKwT6aXhlWphgZbdC0ekc/S0
HDK/b0mE+RDJ5ZkFuwGS/pWS76xRNMzjrVJHsAFaKHfLUGAm2rn/XxSS7ctBbpG0eJi4KPc1Uwb5
MGY4Pn0ITVv+kFXb4Me/UtJ4SDm26fSk9tYn/TWEr5Dje2cq+fQxL/2QigOfyiJbQJLub2+t+QBv
YdfM8vEEWPHFnXUlJVVKhAX9rfvg0wIk1pw1xK7Nh8O5UnwkiQxkHsAX39WGkdxw52vARhUiZUaM
F8fcWya+jUDsX2FgkhPzX7CsgLDpEpP4tB6apkusF0uk7PbtaEnPKyAfHCerYcKBj3PnK9Tb5rL5
ImUyY0J20f3s+5gZEIS6ccvBFXO7Hzpw4lCIHsdcD9E0rwWHYXT3jwcFacS/BQsp3gQ4hpGoJLnb
V0B+kWnPluKCz9pz5heT+AysHLM0w5l4ed3sWzNsYatYpwwy4Gpo84AkXGpr3zb0DZ3b94GCxa4h
okVmuclIQU6qDKdd/QWQ2PMCCrKdhIU29nFQtdr5kwWdgCEZHe+8IGSPPzy+dgsUFvcX6WxUN+lL
7XUoLThJ7xIvcmjY4wU8G9WiR4thlREI0c1q3DQfuMakaRDKi+2hg1F6Tv5WZ/VXCwjmUKZKg0HR
8sI0m+4RLxWVgsHVrm8B44+NK3JgRhb0dYIe9zOYRWGQuo+LF7SMVE6lLXPYYKxokSEAGblKtMwy
iSinuDhdxTrDuJynpziZm5sBDqLjUuGNM6Ylj7LEc0N16XwzVjV1qWaYN7M5HoIp4PfI4lyzKF1+
5gTOEF3uKAwaZ0N3Tv47ZvvfWvm20qwJo0VMsai5p8QlTKvg5AvXWbPMwzrzF8flfwF/KxPBFcDh
EolV+DVTJP1UgXLqJydJAcG6ePhZ9lZ+y14KyYYY6gJw6sbvwyEEFTbs4maehJ0T6WcdgarCHJuf
f6crnv3b6dQhKglQnxwoNTZmcko9uzVzYc+gEvgu/Z18WTDJvFGehAb5Vsao3XJS+wswekuTbwMg
xcSEdYwbDUcEQ5yKP6voi4q7J6Ww/Df00LugWtNh81vH0avjWXobcNsLE7+AF2dqIcGUfDKKhy5I
kIOOOnM7G4HEbN/6otwPX1iDhneOghSwUQYCkpLD+jBMZ2qHGQir9ySF1Vk8lyTnA+xe0Sw0FXuz
FcyyEdR23VyiKt671J+HBMycXk8hf0ziUrw6lkmgpRR0U+tR9oQKbP/0C9mhX0x2Y3EMFRJDe+j3
tAGNFBu0RlNJQ3aFFlmWFZdbVMwiz3DNEZW+7geGr+4QPp1ug8owgQdPAyW2EsU1zayEsfysVxBg
fkK5bx1S9N0YQD/I2QY2GI4mJqNjIB/olO6D8Yo4c3tuqIlVsyPtPPxINl5/xonPvp6X7kdzmj84
5MFo9tkSfo9TbB3+GctUahbG1XS2AD1PK1rqwP5IcyvWgQpyAX+p8aCrwqSTCpgDriB0xhh5EU7g
4OnZt7Sb1eZhMAkzqn9CV+yoMoVYjvUJeeKVac25F+kjwuzCVrImJxm9l5819Xiu57oaoOamncjp
QDNHK2mqov9aSlJ0gpAz3wGNmPhUM5ZmsvAPZ38521hqqZQxW4Xs/U1CR/3ZfNJHy7nphTa1HP8o
O+lOqfwOO4x24uhsrmV9qBscBQvWPixG1dAGGC3+knHGDFIExJv7leYKMR10oJBFFfDac3t8mGmq
DokJeBNT/Aw6Ap/8JkQfCWsz3sCQ/osH9ECMhtAk0+HojJcizlRvmOdlw2wiQQjkHO2Td50sxtRz
FlSpo+KzxqojS4dMdlNVzYpeqZiysLQngvTsRBzxvO0IrqsULpQfiEFLQZGJscySMmTQK972kDu0
zwr6OKeV6l3vtgAIsGP3cI6JbwwGuOStEDFUZQciu98bBT4Gs0qJ6At+YsStS+5PK9wy4nXBCYHC
w04oO5wTt/kua7so+dOqcQZBc2O1vEyMKm0FtYb0dTNTQpB2ryY7QtLPNMAw6L4VYgGOYxiLw32F
KL6Wmfbi3SNbzP9ePRaMYQjbqfM8S4pbKu7TnfHWqnnBAhDIbUUoL6ugHZdLFoiOJIArx7Rd8IqG
zFi4gckcC+eS/DUX31xX87w+RPPtxAwPUUT8FKbP7aCMqkYqT9IZ6gpom1F8ATz90bSAmSSC6Y+G
BUm214C72SVHin2I5XN39UsuGGrnIqfA6LlAAku7iRqxDxHoDOTe/jQChVIoIhXiM3c/MttB5kxo
q1vxncVYAV1PHPvkjqmD6j3PpsED1eX1EChWXxWhaYKxKz5vE955+1dllikAh8DQekc1DBUw2bPe
LanWtegtbrgb0Ilbop4MURFJeH/MvYndE9Vm6T0e3Mb5IKTzi4z+MTgzjEXmi87iyDTWOuyUfvbx
8v/oHIcEAtpXTpqCjB0ztmeOUIadEBXVON9jHcV4LPztOsiHcXO0RXvJRq6EEBT1WdeLSWcALCRN
7flCKyU24nxVaHCZehG6SErgme5UeBfOdyxBHtGqmNlCpVU/iYlIna8938X1QP2f/EuWuI/Rocjn
NiG3/m5rOSHeM39/Z4VlzQF9dHXy4ywhgNzLe6MV600awLw59V2ZFVgcT046YC/9Kq07clpKvUVS
C7M7Bt+FKLYMZ/6QIrImYMselGGpMwsCX+HJGTQiL6kHfft+qTJC8/KVwXV/d1RUBc4AXqIVyOWf
cYLuCQxqk2gE4digd2fLJvZVlLMJHy/5llB6J1IM/m+vOZO2OaVYwiRfc9VnUr0HETO36YPTrmTK
5OyEqHWmOyf9muYXFkZSvtwIGGEv77UexDf17BNJiuqLXuMZkfeG4RhloO+gX+YjUSgvKSvjtD1K
8bBj3XD/ySah0uXuz0RP0bfI0/HaUTq5PTfi9qmlPnpUUzjtJ95UTvno4mLg8tuYPAoKvCul6iml
WIyQ58iDkN0LAMPCLRA6K3PkLF+YucZEJ4oHRpWGVPgjhUVEu5rRpCsO2leU0U3hnLWp5xzpMhW3
IkcP+ngyWgUfLISRDcbv9Kpz+3APepA6FRbRj37T72fNTifosaldgt3X7CtKuhxnkPZ9MUA9tXI+
1id7YGepNr71xLJ2g9dHjfTcqD3MBggm9sYYr7nMuwRg344iAFdLze+ymELWVgqw9UJggjRyj22j
gGzuW+9a/aD92pzcmK417USZRRBZXWGFWQwC+AF+HHQlXC83/ohXF37g/ssWXmESihaKgbn+zAR+
BX7ZNMouZVKAC6KS3kHfMSEbNvgwkdnBctxGKxkimteqnZeqAYcyO1GbhucFlLjSYnET8gESpX/S
G5YfYawhubR5gPcVbpcVdgA4FXlCVvGr5ftyyAOSZU5YT8BADhZxWiJLuzAfKEk6AzZkK+nf6wel
xSQcEj8wOh/eRXkg1G9ouF4v1rIANj+ohn9pzDEctwRErDJm9x7eHKcScDjQuCuWyuh4+FB6sY9E
qZubDPybqHVhsA2/PZuMr+IKLGDDIJ35OJpVxZAPXyPqQ4mwIsDHO6v/3KOLNXaKLvgmOclPz/yv
MvItLJQznqUrF8HdweMkuB/O7zDpbvgZHG4//euoT8rmGOO6h3mNPes72QoYYmoRKLdu1+oCVFBP
srBReAMfaq/Q3KH6xpDArQSCPofo0aE+bwEnw7ou7JO7038ruqers7qtCLhv2bI4+6aS9FTWYfay
Ug2qtVS4v3ZzWSUdLOry8TKqeTuWeVfKsUxvCJP0mullO2tDg6sljk/rk+UpEQ33O2yxXzvoI29S
i9PEVYpgGK6G2YoyVDm82VOJNOPSIlrJrFbZPzB730SuQR4JXk/JHBGbQWeKF171hjb1UBhJFonz
SVwp7cTQYRvRxI+OOorEv6hR61mSSgo+G29Vm5kSqgELuwIFoGRTHRh1C4ejJEtNYS4N1/vCHk0N
8vEZPk4EKcdl0V6uL2hEI6MQge4/C+heDDuCqdTjDuVoRZeuIV7c5pzwB4FAszf5YEPiab5Y9BNQ
9RY6M+FPswe20ekVW8QLanOrjxu/+UFIsCBdEmQe7svuU19Uc8I5iQqR5u+nmfMiwMBFdUPmyXVw
mFTBccwws9cm5XZgLF2gbpuP9OqsI10tuYeIiIWO9yWs4p5wCkUJajpK/tjtiq+h2bu/+RsVn/+m
ydAuWfMvapZUcziC6f8HQuFpsb5emYoFoPsPEkmejrti7w4XnJLOoJUKNG8V/YK1hrJJh5dxWYe2
zcZJEOiGI/XxGIBod3XI0uBFoASnbhoeKAIGieMVPmL+iyiN4WWmeHeg+unCI/HmywI75uwFHhzi
g5kvx9GVCBI/6Y3pHETdrku2NSKMdQueWrG6xghOaPaYW64ESAmddlJ1OiyNRHicNlR0BaR1VNSC
bzlcyQnKpS1+qAi9IdLSLfs/7xiEx+nSorM3LXdDazIb2ceBWs82wgSWifwmvWR1yr4LVTNEPbwB
1Q9HP0n8NCCY4XWOeHN5vI4QD0dYj2GyFD+aIGC/sLjJKYXLTvPrNgV5h1Yq1dRud75gY1K2Nt80
Hhq6X9YhxpZ7lyECmQ8+qk9PTMGEA4eg2bmNLgTFTB/jfLJelbM28woXaAv7lmnR4+DR7liHLzIs
U8GlyE2Jq3STy7rueJPgZKBYM7+27XFkaXdxtqOdIJPMHUOIHT9oQO7yXNnMOz+MxZuuqVrM8kyb
70xgdwNVXClgd+f8mf5TYjz/eCCXmfyh5OJBnFeDUwEfOXugZwalzf1TBDXtD7/v/hE/okZSNNXM
X6qNX7eeWJeeP3ZIvgdwk8kocLbF8xGvDs2/OrqLpvDdCjo9VgC3izdBJ8wBSpJ6EytYq5QzKmSV
c98ZUgAr1asEdUCWFqvrNauvGucLGAEQWFof9Zr2+MODgFBqYXyey3Rx5oKxIu78VKIN4utLAlqy
Fukyq0wyv8W77sWyKOWsjyo5c5CYz+4Ct/qzPOv+WsKa6QmXInI8FVOtopHbi1Lh/uf5JBY+gXvE
cn13Y/h5SZQ30XgjoPNaaML4tym98iMoG9mpAvcR+l2/et6uSYK6mkh9meNAjj/Tz7jGv8hR5ycI
3XQRldcGypPIJEJ58hUJDN5/rsBHSsZY/KnY2VBmewedIFvh+Pukg9kEPAy+0spQ24bOaVWM3dac
UJbGl+bylP0JWSpfxDjb7Ma/5t+GQmDtb9M68/JzkdGoN4Fz12eYzsGCykdz4QuFw0NlFKzxIxsp
2XAa7HYRkzOSIwAG1UCfzxqur+90AXxQv3kwyajQNgKd3gGXZ8ikiI8FLp7tvj+NRmq8VgHjWOzZ
ELk2tBLl10StP4tQj2ALLV0mirHHYNrdsLoSA7YgJBhG4JEPFMugFRov+Kzw579OvYdpLo+O10AF
E/gZ/vvrBJb6DS+WDHmb7fMghQO7f9neyQtzc/JVd1FabpYXBMmIZ5wz9Nsyu/sDyRraKMGL/zl4
YjfBl0lwyK5HOS+oL61aHl2G/mEsTvQ1hEJJjYWpqYeEwjPSQXu6X1dJyVqWqh9eNZmCLWGqsZ94
c9+08llL/n0VBCiS/gL6c8a9l3xzRVMglYvpGMt8cvsw9n2U+XV1FfOcZVIAZjHgRQ8X3hI/QHN9
d7o57EdnJQrJKDbQi/3TapA97EecGwGljavuLOcvSQ9kiz8azrN9mvsHWPt2TFbOrVmjNcGEGGeZ
BUaSgnf/sS2bf3PZFlc4HDQUcg1R4oRUIFFhXpAewyoHa3ezpt4nwhWhGU3BlGRg+vNAXPznuCOV
jEd2gwlaUJXLhLiUeBrO85sBZoCunN1mCacYcIBByit5lUfh7EkY7ylT49xfcmpXQ6bN1kKdm3SU
4rxQU/CHp2+WsLSv/VNA3gQ783LxMqe0on0GLDwV8Y9F7qyPLUFW7uHBEWxRw98LGVMzCXCQ5yn8
jB1qeCOUYnavyN1FzbBBWRcgMB2GvYGxEiCVWjBWtYXjFXaDhMHR2cLDxqkei5hMEcikxGKFxa/A
fjEOpaJJ8yqw0pJvEYYdTmiip2thrsBrkeDpsJw2RntHXrZxYvWorD1hmX+KVNzxF+9KgPlnUA70
lSN0BenFvuS1mXJkiIkI2TkUUHbNu7TsW7nGsDrwXCFf++qgaPxN7p3chmDi845/3UWYbKPAqOKh
7Csvs2H6fMZeUwwBNIBttWsSV6xspZoW9jBy1tJ1d3e5mS6DAPdVjFvfb/k34P9pRwWGkK+MCvsG
SVmhK6CPK/nGDy1U7pH7C5VmCW0+NfCD0ObVBpH3qXP2INaG0ugQA4NEq6q2SVdu0FweDniWA0WX
rbHBufn1bg9mnVMvtAa/otl/rDQwn7eIUjXKn7u55nGIrhNLkASIl1cWtMJvaEQIvZYtWhwJE2r0
27Wq5DTDhY3mgKATWziP7Fudg4te0XqODIKkE/ifhZIyOKbkn+sMTdhh8dbwtr2qOg7MSmy1xDYR
0DjJASoOi2/B3/sfjk1EmLjixZSM5ilJsnM1YGTmeQKXt4pQTTZHetmHiMiYkv5X5Re+65fY19iS
1zLqu4N2n+G4mUG/KM+uZi9lSSDYXNp+29yQeKjJMIr2eiaIe2IzzN7h5joY+Cm4jv9XzBdor5xH
P2GVKIbZLdZPYVL1h7oRDe2ZxDpxZUOn/VT0PGfcse9/SM28ce1fvBe1JCZa4kmyNx7WQdaPgERi
2t5HQQrZrkJo0qCd1bVhBnjqkgIW7eha+8INfmqyFE6MtdXmSIVlTDAFrFuyUAjiTFLtd55RI3A5
PeCCxjF9BRHnA2gb6qPaR23R35s27mXwwSqiM30bw7A2/3I03KqCP9mNpwgqGX32IUs0FcjVP+lf
cHuZzzquJK/RlBo0il9SLOeaOwgjFunhum/Y8GdzEbu1zL6HkK9CPyENh8bh74zw1mHyc8RpeG9p
AG0hMT5o3NAPgEQh4oj+0XpFZu31y+qitcmFGP+1sRYfsjSMa4YkbR72AkY0x2cZFTwwDd+jiYo9
1L83QUz+jbX+RfWq8qG6m5OBrAsCt3It/rdM23BVADESv3SpqUJY255+qbjzd/gT3lFmhH/DFn6Z
HnQtyyo2r7ptMou7wD8XAY25hogElkJzBUW4VrxMS8vZ1m7QRSiScAEcbdvQUVSA6et7JuFUfDOC
5vIG5WpZio2wLU3xZVuwxG/TS0h87xem+Qk9rtr5L7KIb+JFPsfGdKscFYv7WHLALGmhvpgCZA2E
PuhWVFwGtqFHcoPbj7tAI2/LZgpzKkBeQ+6ON0WKwaAxhoaI9YFaiE8hk17NRyDOieeQN+sZrK/j
/Xw7SbsH4QWxyPq/iki8joBvZcQO+3i8ikGC4tnGFKqqGJG5uQNVA438ZXQExK8fQtMwYndew7Qi
0QtRC2lwz0qaoG9EI/27eivgtxR1kFuuKWAXEgUIwBOW0qwuTYEr+bV2vhdrTevgKJlCBURIt3q0
o489H4iEFx35r2zbvrOdHVTVO5QU1hnwlZVHsH4LB7X41jmgWdjIzjshcIK3uOJMwNmd5jppsqQR
O5icp/xsxx4un7t3bMEfZPAYv14lfc7QmrCA7j9DjNEmPjLO8drYDVasgnMergiRr/G94DpeKuRg
hnQw6vsPIJllzcbkGI8EmwKkcmqPr1vp4HVkHH9Ij46tIDMzz8S/moZstldyomp2ykgX+wc8pg0u
ZRBroaXlDiD7vjPrvXKfOHzf1gBP2WmuWMyVgdQBLXMB9qya84vXxNXJ/g2sHI4PcoXa59RP11Uk
fG3VmfbIMtmfgHaxLqEx/LzblOc9fawbMub2th7EqwFPpgAxg48A7R4Y6ZxPbVTnOvvI/IDGCQ/v
qKKtPrjC4J2gdP503J5d7JNEQwUuiW4Zs72pCsSXnjw0Cz3M11aTbw92IuhhlnOCca57c7lAXfaV
QkwLO/RPulWjzarvhD5p5OaejqI7ThW8YaxPISBcBULQ+On5PEW/44kPlAeTAFWN8Vg2HEAVTBDk
h9rQ/doqnv6mjLNO4UkHPZZLbMjMDbq6OJQrOUUth6qxBwzAmLDcpzQweYBLEDT2uPD2720b/YLS
XDdZIDUKw8kzP5KtCdz4uVLfku8fenPIEJsU20NPo6pcN4qRUvqBTP9F6fInCxadzkiMyZaMRS8b
r6pI0sRT+OOw90NUHzNBbkvFCF6zKMkrAR0/zpfKCbWOeWhqeczJKgGmTJFdDD2TjCdJ48gWwzfP
wAF4yRGMI3cciXdIGS7X2OggVM4AXxCCVdNxPpobh/H/z4WGhBpi0KgkFHHzhslHJD3pl6fIcF0/
HFvzh/6inusO8F6bZHGTok1ToLM3DH4E0Teq1uo2xYqgdAmcqD+yRAKRwlkbaFFUov2vRbVCLDUq
CwEmqm5YhcWbRAmu4TrxAzotvw7bCq+A3JF4ngdAraQrb3ZCc7QxF1VVkobcdGum9gPoncW/0UR/
LoYiF7WZ7iuyMFWmkE6m5vm9b4zfVeMtCxxvJgqy0l7GywbKXeQ6X1tvHFxahFfdkAYONv9tMPb9
CJ0snF/5P5MeDFI86KMT0+tlthM8Ugnt2djxfO9peC88Q546f00kt8OfCw/pGpS1YkhgO3lWH+H1
PmDUGUCd/H8Co2OdvwT6NgZm1jnLE60+0tx1ewIA3Fmnd6KMfSh4dBKPjSjDyCUPL2//D8QQrZkQ
YWbleHsJW3/lniXrGgBmkg47htgm+s4D2jQuyC7bSvddieAix/GYhi8czvEKHgO1PSfxr6hU8kMw
hvwBcGS6Rcy28J5yR3kKaevompWA826cfawOtStAIGSBAVjgUX4oEBGs5Fk1kuigR6C/xHhLkYVX
SN3JDvudwlijc9/lPltduU/Jak7EWAkLEWNOwqIaNoZ0NCPZS+9B2Hw6xIIKXXp10B5zjMWaij9K
r7pbjnfgtSom+5JJhFxq7pIbYaKYxhZIzu2eml6KKRh1CXUcd+KCh/y7LoS/TkBEWy2nAwBEHd69
I8PFtXP1DiN1s0tvDLxwLtvCeFh8HJJCOCQcJMt6Y2T6wWUzsf85C4HFReOjLdejRzi3BYLL49tA
07DtMjmtYQwJ4nlNmoiLzu6gZgqsAhCBRXM2iZOyNKrF5DhTuxMHPf4KPFfb/CrxyZnrJ5nt5ZDa
tSJoU0eaCNLfRvUKLTpL+z3PBj82LPR7DbeB8SHUBGbe+p0LlplsGaiVLZAQsFEfveM/vMcA6QBH
mKoaI5knxbyEUMM0RWZh9iE/brYcFzNW6Tf0hjdHkcmO8jGyRe4REtUPiVbmA9PIEPGoX/P1F2Eu
k8X+OcLhklIq5SdQmy2D3T62AypULrQjlrUDmSCCSZIRAmGdzhjupt0dNw8Y7z82qOCLXPi7pIsP
l7XHuMne8B9eQZx0NP+wXV8B6FT7Dg08f6zCF83CdztV7rVva2vUom5OAcnAB1GLlccrmqjBAQbX
z0jSosyyEOn36ZhS5Txl2+T4Fa8U42gYCfVbdSFlsqX1kA6S0gJ202sKNue4ooYhrr1Sxx/1y0K9
P37j2aacV4NwtRfYofNo7yYMf901Q1ZcPyDz2kMB3y8zAICJO84ZOerwxAXXND34kw7qFaeogk3Z
vu4pMabgfSbboLSISyY2aNzKZRMEwh+2qvKua61PChoWaqTG3hk1ZWX41ARsn25KCWcW62cuqOkk
mWwRpae1tAkBSr/7gU0ayHgvhs31WknppuMdsYmrmWWuPmPQzrxZSs5TUYeEqTImD/WM/xrH8b9W
G3GQEq9Umv6leYHYRIL8A/RSZDDnT1MbxWr1fsKhO1atAVw1g1+bhmAEDu/ZleWfaRw7yTFPT5FN
PIwlbuUisU3fUU7+b/wJsh873RpOxkVkim/8A050CYBWPW5hPmZcoQdlHRPp3qTKDYO+EGGOb/oz
GlWGKVv0B2gvbrVelLmstzF1HLaX5AJlsH4+2BXt4CGPPFGeCu4OAExQ3TDzDLsQNMFR/RYKpm51
nwnR1M/RsX1ENYB1OSMtWmOicpcquSgmVgCelDLTyvSTN/uZ52amXKnWN0Bp35KOTLHXFpYOntTs
seLpO54l4zcTuNJvPeozCCfxI2FbcIeMSG+ceCwCpOLxDMlPK53sKVrDCMmvE25IUB/FiLzuM3xK
NO60yQZpGICytTm6apfJooXfWLqIPbKE9ysWtIe+f9OIjjRo7zdVv4GVVxGYB390p6nwtHa50VJP
JnIF/LsGK+fGCkCWpjUENCb7VRwXJvCyvH50aEuReRuGRoP0o+AzZVqGDC5T8lc69VO50ZiHLQZv
Y97he8oLjCss4rxz3B6bHn7wfp0F9ooomu3oIJECrvoLOQNaIn9HmVhohX25Ohl1SgcwU7TyBzME
YpLcERnrPKgEMsall18786X5T6mY7qEDN3DFIlDb6PldvDeMkCKjxVszM6nh8gXItnRDeJbQJWmA
NILI3UyAbevo1bgW+8QuwuXKVJEEOvoREVIle950O1OMyUD02XeL1ymDPt+LD2nLjuRueZE9o9Tg
vDBO1W+IYJAAv6wHj6jOwq3Mlr5oeCfoIOKtHmQx4c4IjOOmbnJBDieR9WPO8I+KaceTQxWtGqqM
5TlF87NXs6H4u18L66eqjnhIbxkyWJ/9E6vDmwZU9sE6LpNChmPyoPsE0HXS5Moj/taa62iWs1qU
3uFAKREeM+nB7eqEVFLOeq1EYqGCso6nPE9Fywd3OQZo+aHuYkONFH1CaayxtRMT7G2wRVaCgGkG
Munf4gYonzcaxy+spH3J+RwrN2iioqOSGzMQ/vvPdMD5EIb/XaUJHPjfWgV2mAm2YkTnbsM0OYTZ
tMwTs85GVDaMVsK2jZdhRKAcz7GcvWpmHLg5rXRGl9cr0bq9ybF1sZb3zuZovPj4urw8VoeT3win
3fvuLxs0OxDsla7RECTjeStoIy5mhUPRyaM4MBpjaD3n9ejyBYBmvv6qkvpdVBXqy9G1zANrbOHC
xtT6ZSweUIK+spyAWAZGBw8pg/csvwILY3qKY4nTaRVutkPdmgdCxI54+/byNkDktaZGlqN9XEcw
god9Yi+18BjqXsvD5VPZBpoFqzgkJa2ufh8sO1rEb27HBTy8us0h7igyqw1p+LiESoBZyNhaQ2Xe
vSUGXtxCSbDjtd1OKWxtDTBr6rRHuAPxQ6tzbUKRI4CMsziBP4bSIc2wVh5RUs60XwWe8ya3bnYc
v+Js2x7EQdStklbclNMzUNoP5RRMd155EAo/zaHyZzb8jyrwAhLWm5bcAwlcvu5thaAJISezkpxx
M7pSXdM9NiNCZ2ipCNKp/89jMovTDMDGSq6/6VrroQzLNzItNOJFju8CE0y2DtAs4efIohyx+LPp
J72aZAZ+bjbO3iuOrDkza7q3i3oxAdxAvANzcKjCJc/bCQQZa5whG5g/jCbLm76afeRJp1oJHziQ
g0tzej/kxVh+JpCmYJugS8SfyV0RyCvC8NGkJ8vZ2vLT/1go80yYbvD/4QxMaDqrDWFmI9/TZucC
kJWFtVAjfhfwZ7vvG3U6sK8NXp778Ry6FB99thPK3eV23Wlw6OyiXca/W9bcGaa1JRSflhefaPJk
ZcsWmpdgnpe3Bf3xCe4KU3Nx2z9sHSfcdn69w49MRX+teuJhWPoFylaxEaaSs1Xuo26vG9aMehiJ
rnX9TkRFT7eORaGRBeRXASiUTzRXGUut2Q/yD6MOiUcxIEHd29C9nZXK9auNE3DPu28MzIW+Bwl2
5r80NZpEXfw6Jsj0H0S3eKBRLlU80AoLrxUZhTz26WzLuffzDsXP8qfbKNn+qhyLsvMYlHvHc6TY
tS2hDLonXMO04BFwBbFUDN5R/AB/fA4rnx/u19DB9iHMZ4WC5xcqgiWQQlQRlWmuuqLaX7T9U+4i
Epv7rIv7obhrRpkdBUNcZBW7ASvzAN2B7gUx3qntEkQqULCbcZC7bQYPHmTSV1zQvMiVyOdn8Ht8
k8/N/k2qdYNH59DCtpRziOGKXMSM8a4FhsH1eTxS9CYrJTdRHj4YNst5gOJ8eHYBNRiZEmsVnEKT
tzHi8dzjMJDTJL6HyAQ3NFqUjR+3ItY0q+2FTa8k2nc0HUYXocvuq5NWO5WN7k3LOqWoEIRF0385
PJ76LyW0nsK4DNU0Ae6kRMh2rYy1awlkHaRnuL855fPMUcDHbvkvJ4aC0aAB56Vss1gfOIN4xUzj
gOglRrz4MV3YQ1xYzXjFqjO1P7L8Ov4r5s/SEYu0dMoTF0GeR4KEAW6yHX1uUzCsl1y+/vGvAdxf
CxZJOZco493+vBKQZEPlwbnKBN7dQSxxddq9XT2/P49uy1CVlLAuSOon12++2bFT05h/wiWyJV6C
jKZSI2oi2ysLjHGA9VoO1JckcX5iB8mQ9tx+9naxnRTNGj0i/nNb0oa03jskNDsUTPtf0at0aXLt
o5DcmgFm3joK+lEup2j1o9YtSIVSvy01/M/zqo6smPVnhGJtDl9lAUb/gdS8JmMUPnrWMCoeH+HB
+dbvkibEJp7NzlFJafIKe2gARS8tFLGK9qzTo8eOvFUTJhDVM5K8Ol+RykT6E9y/zg5/ji14REYO
0WgveIzdf/vbLtpkvjM2xLAKnXujtgiahfWhoNsa24Fo3jpwMQre5pVU6+cVQgw1UYjTI58R50eR
iHDeSAZ+XotbTo0F1OKzrZe0cFM+S2ngapjDYSXJYq0gp9b3Hyhno03o9sz3Y31nT9BASUAuKi+7
Wt00v0Z4sPYnSbnZU1l/mBBqI19kQeqNIuikiO/fA8a4EtWHWobTQbJKynXYHunVD00DOxS6X0Sc
qTVfjfp0VTenk1FQxcFrFNMw9uyu897shIsL4Qim+Wm41k7wRlefMtqWExNyvMXZ84zxkDCjpNbk
6jgVothPv7khGu+Jhmkf3iNXWRva15za82xKjJRKYEBxNXGKLG1aXVrN0AaWqM1rVXFeFNuT8W+R
ADbCKmMSG/MjVnwC9ZJsoimjickHilE4qSmjvTPGZsFxcCWVBJlBY8g0tVnzTESaaaprbXtygoAM
R7VHP8sE2vtUqUtS/Oc1QozSxb3o49Xyz2YHQLOtEuLbeW5Baq+Z4FLQA6pFwCRH0ppsI3Q1ASu5
8edPCbF0TFlETZFyQpVcjQSTsP+c/AUZtcPjnujLaacuEJ1NCpWjuil3aVglSfZVT6BlAA8daKOE
Dg95tavB8BbWOm+CISozp2cbjBPsIyFx6bDytEMBIqghYfzUHaHpbZeKXwGGWDkxPcu/MuFB4tHp
WxGgcC58KsR+j+z2QpBPk4NnhWG8HH1BOCscgcG2L3FGVuMgNbLU+hP2vpWTP0fqlwDtynXKfrle
3q+FpxgzHGgfrCfxjWFbfNJvmp3rbnWvlPN5iI9EjyVDMFcutrEPGo4/7YFgqU4TV5pBm4u7MWDT
KGLswUFmqJNusf1dmD+gs8KwocqwhzRdnEaIPpwYfWnfO1w+dQGjsJqlj9HsjXrUfqfHocHFwg1g
nP/GU2UU02iQExuT3LyTlMo1ypebcaDG3ijo8elrNgIkPAwpUIA6WggqLYlq9UP22r2VEjItN/C9
f9xY3jdyRwx//Yn/Zz0JwzZusWWXKWlIXwmrbNtDDhyj+BuTiDNrMiJ8xsjl5DlNRpPvBzSOORLy
1MOfW+iK/0cU++V5luieYNRZo9JZ3vS+cUdpeVkGuceHB36jpKqQQNY7qZOhzdCGDPkwEWnlXWrB
0YE+VBkW/FceJIOdnYR5zQXcOV4Fm9ReWxCcyTuUbP2lWAGhuxxdCrfz+WJ+VrVzOKJoLfjzXgfv
ymMm9bzM3oJKca9dWsnejsgQD0915aeQ27vgDPhFRQJ0gsWv1ixoUvhW6dbtiC8xjHsxy4BDgoLh
vSZV9hY71DiqILrBch0TWBf5XOFguoUojHKFSpa3UM3qmi3i22p+cmVv28J6vdBtk2aF2LytKkbl
v2+mMVDqRknnR1xK8ZdaBr6HcvOj660k9IW8mU4YLa72opEcjVHa7vj5Qs3/uVtFGY9/KHwxRTfn
eF50biS9htlDfKq1UI9QXjR3vYPXOK6J8/akOHxoTraSjE99iuEYKMTl3xAS6wp7PAzFZtg/FP4x
K5igepW5lcT/CA/Ip1T8zgpEv2WZbNKZp9Zx85ZxrtbUaIc867Cv/1RAhFrnhO3MewNAsv8COOuV
+7N7S3OZ9JKf/JA9pG3USkYTHtmSpLwGBa3p99r1eyKlf0F8tr9YiBm70MepDBhI0CtIlMjGk6Eh
Z7eCR42ky+5kRDEwTEkXNuT3Au+u4WaKuWXzVSzP1ejBTsdq4xQUkxAgjzZtR8Cu/fTtJf5vhMJE
Erduz1qFWUMQxH1rXRH7ceb1cUblTp2YTYXNTEERyzY5Mzd4SFZzUhQpkXNC6CIURM3JqBQR3UJc
ITTPpVgLutoX1EWEf2FODuUYeAvShPKi/j0cAxVvXls1ZpZ2B2lSaJb4WUOnP+FdLJN5iMuZ/+L0
U4fq4fT2YqrtnRJl3UhnGYpHALT8ZErcE7CwADkpdXqe0KwcPCiiVdKKOlU5YDgAofsKO3F9TfNH
6Iw2ubctyUHZEs9es21iJZBNQrsO1ZqUi5JNDVqZagAE7QFDKHXed1tuy0Bpmqp41PiTSkWkgUGG
q8wCIQa6wdUB7/5ffzvGI+vL2WhJiRTEKgi67AupbPmPiPEZu3Nt+XwIaZ35u5P9AbQ1JG/H7ekE
cDfb0tve67TkaO654NTCZBfp/GxQCMiXGJPrijdhUuZb0h/edx+T+oMaDMtvEbdmYTUyWFgyeKfg
ZTUA2Ux+4ogUMI7WbEoFed1t/SCdVdTR8WEKJfTFOtSPs9w15hGc+rxFj28uH9egHWbsZEm8Gpxa
R3uAze9NPiW7xsg104Nqx9xcJ2++kJmvkVc8e98ZnLfChtdtJ2q7UOpffwlzI74BKwTMSjmPwGdc
7SbeYonTUC7EGp6BgIxGjKidK9EUYYzB+p50wnHuJYZBzoEm5gNvluTgwWt6ADBLfmtYggIZrLc0
nmtaTHPKieNeGb6MiQCS2Y+b1TiibGtuu/Uwe4RGePoOs1dlOAkFxUXceHAiEy5951NJypqi2gAU
pLX9YI/T7lxrX7I1XbWlp2hhFQoE1CWhAPk5b12v3DA2sSke6LWNEOdjVD9vxe2n+KdV3pXrntdx
UhNKSzNpUIOfcDU5x+u+siGVqWf1NxG5eBgxog+t13lhvqdo7rxdk34nbSLtMJmy58e2Ds6urzDW
sqOHELMZofZ2tekd2rmwc+/jDRrHhkiLh8yQ0oblo8ATqAI6QrwqutLpM8paiy3Rnptt5h7FWZuP
AP9hXi6L3s+zOnLgnGtcYMN0FER+FJX5zVWKxRrRkA67tYT2ijL+zwxNd/jhu1/1Ayg4a9agIrGk
cOfhTF58rJnLMBKnYmrq84WR+Eh1RD3sCCSr+aoy95cAdK9z9vVv37p+4N2WciFAut4PkBSMgrTp
U+bfS2Xi7Gfmc3eIyI8NGNyx/zOx35NKKI0WlHXbjTbzJY647MvMuu1ZToEkd1DttjGylHp6hVMA
s6zaxR6PNL1Btw2zHAzmrbazTigJbZ31xMXGhjwMLaIQmbCEgIe6Td6wXle5LvLOvNCqP++gNDhj
5GeC+BljlYnldMboCCo9ZXkn2VT71NmPOpGzj9ss964jqMbVzQhlJq0niiPDemOeUD60qBBQf9CS
dHeTNNn2+ac+D5pmfpL1JnZ0EQ3EtHsKsfw8BjABBqa93cWF6tknjfz8Keg+RB4oGdNQOpEmiVMd
Oz1EuUSGCPy3CeCNt1VXb7WCESjGPWLag95B+xZdvIhBkSBfJrC2hxy7XRGL4lx5gEHzHJMq1iGF
gbiDxcVf31bPjQ8Q0VYFn1+3wLw+W2nvyTiefDqQ1aY+A+XjkNuSXbpZbhYBNlEl2S3gqsXVKNcT
NuYfS/qPu49Z+XcyFZ0EMGYThhncgBVLN7GZ5uEWMCshnfcPdF6rreAK5X8BBuCzBIbgCVeBLTGZ
VVQUo4a6HeLmUHnhcA6+YbHhZu9fMNWvo3a5Muu8ITBHS7rYPmTr55Kp6+sAZU8UJkdvwGdG22wf
oftQvq4WMVPQ8CtkILG6wJHXF9LCm+tP+30sc3Gq78/RgV0yVmza+EnoCA7Gfuq7+9RyC6q4Wt7E
T5fUhN+hCJNYHwGxUKurd8uU+AT7HFAb7pGvRA+JtbBFqjdB4hv3jzk0l1HLC3hCADWs8qChhkEh
Pe7Mis85lk3CDzzviZ39SmufhxmDALhl0xtZWp2qPVTJEzj/49QZXUuSCKQsHljEY/9QcVBKoWH6
2iKzbYA5vrS/RVRlYXbSsLwU2KJwjkiYkqAZ2B/JISTca8bmqSUrk8ho7fxe8eFtEisdQWDfBg5b
ajdskysk6T+hFbg09sQTg/3k11xKCe/I02ZME7PjGMgD/+CsnGWJFXfx06oFIIv6vZW65t9AOSmx
5tI8p+Ath+qms6n4G/0uwc9WHoR+ZGQV2oNMxUA/MCt9f6wdUkF6aJji+SxBi2wZiYJj3LKTTDDZ
Y0pk5FwZ5mCZLMdtfzVpzNNGNgnlt4q9a51tdDphLJDB6usvzcK8R0CTa2loWTqj9v6ugHwwRj9l
zgLfVeDIftlmf5BzafEreP6PYI+XzMKCOaQKu/QEED/gmZ2Q9zpfAob+eNEs9tfzqPsz0dX4IhJD
pZYylLyACqv6OBPcQm/czh+uC49Uq+v2pF06UeNCdOLGBLdkm7N7CfY3/r5Pa92DZa+deCMI7O+2
zO08tTBIP7ccHnrOdvG2UFOfI6mx8whqYx0mB5Cyl5cSwHvBra1Zp4zQg7C1LlP0NemxcpkD2h1D
b99nxzMDGKMCgLqSS5PbMWvlv84ND9Sq0bLBAvXsv3zO1o3z4CSBZb3/suCqpn/Evik4ECz4yUzP
oWnM+IAg6F71otV9GzjrDpo0JVWuCZrueAuLDZ+RqszywnAIwnTq+tq1XRKvFBFTFG9Q18hdAfy1
jP7xBBm+xpd1gz9x0TAO1yicx9+Ebc4P+J5MtvCUZMw0I2Co7cJU6fxjt6XH/wsP30Zd96/AZwfk
0PyJE61iHEhousexUcaPaCcOKPeBG9QmyZxt5jBpo/HHlo3eaYGngsFyn9qrkIxpD6yz0Cj+c1Nf
DjwtfUixClS3ZCfbt+K9eSheokcRrlr8UqOVwx37sR8ZovobBQ6VWmVBUJFNSP7uiI8veVXpzq0t
0q7DKqddatkJyVe/aKQy1VprVx3veDxwYT9MCjU0UVXZR/1XrmYDIa66LsJlS28s2HQ3/FwRadlm
OuLcOO1AkG07Sf4khK11DtNcZXCVrvz5ntZwaU9VvnB/AMBixB03gwEDMdWZZrW+lCJdoj7ls3RV
wTWe94zFXSYIsma1EgqOF6M0R4oHmMldSrTUGwg11WyNiGwCkbtYMUcrykzD7ZJ0s+vhnhbye3bI
JQCH53CNijxCOqe43mwQkSR318I4Ndc/a0ufBpZePVPf5P9IuI1sQpqfz0QxMwC6z77D9of68M1q
H79EBOptK1DWu9frbQuhOttmNlRfCak4YDegxTz1lHyU+F76ckR+yJT6HG9EiA6sf8Wt2Qi+nJQu
Gf3xAOMxx+g8V4C1PDFp1dafIIcG/0+6EzfgIZwwe1FPtz5K9SNOGLxQRH9O/O3fNKd20UZ6ySz2
kGMPOm/QhoFeeeNju4XYG9hG9ZY1ipW3WzjHoNfz8fBEfDSBvqm1DJCY1j+3EKk53xduJSHZjBLz
yj0fKtDJiM1izI2RdwdoVWq1mIjHVgNPvpNbDZGqJ14glk7lxHm6UcJo6m7FQQ0KlZECzcnN5H0E
ut+zDux2t4P/PdxatsvJoP3MEqhLQNArDO4P94QTya9z42B1KLT08Wtp+6926LnzoyrahuBqYY1c
ZSH27q2Erhodo9c/NYTAIgxXFMADBvUEpqeiXRvf7ZqC1tTSqTmWXLTeEfFKuDBWMkQhlHDRnmqE
dAY8WAtIyIjEFqk1pbhGaTDfnyTb5HXC+gYbxBEXbeoI2RkNqMcXzexZPSinwA/Pt56PJ19xJKXE
iVgN0SvYJtgh5AwlZt3QTiEmuFoolDPNwrhA6mSuasbt2V5u6u26UzmoGvc9yh+tgU2I9yeSa2LV
4uB2gl1nIpyHRVZbHgwtRQB0GReuxTKVw8XAhSwrvoPufYT3nNhIVl/5wRsZaTe9QHIEz8d+GvJB
fEeuPVDEHt+jmSe+OTmTG2DOpzTmf6GKH3HTrHGTIyoaBwZqRV/ofmYTxfiyAWOmkAtxmuIRqACr
HXujTco1McbIMTviZLXoLzU9AL5cyr+yHgUHVCnUK5POosHigrMIaDvt/ytEwcavB+LbciejuMb5
CcGujrTbcXlDGevqmoScvE9USOAPZfCnBZM46+1P1RRfgHBFlY6lKSEibw4U5dVdDpvK0dIWb8qJ
vzmQjZZfvMmikSAdFJagcjIsCY09LZeP70y4jsiC0H41ZA0e5QPRxm45vlvlM5rsm7gJX6Lhj6Wa
abxTI5nrMDqMe4sZwuyNk5h3I/Wq/sNusyLL98eZY02RnonJ0Luy6x6g03KYIC0CvqFTnlieqTqi
f+sfQQxwMPP0zp/BO+aD71DvXfbWi0zPVQhURhX+BRKPraDmhpqVToKFCaWfJCDhX8X9G5NdRJEG
ue5xrv3P6whEirERiyQYt5mXOB47626/hmQl/ggp2ErXI0l9cen/gznU/KcUmZ3gb6BfNJ1Krd54
GOAghFjNw6u51DL2K+1qp7wWDsmP2xRqSGQeLJgwszn6qj0fTIPrRBVhkqYyscXfLiv8I/9g6bdi
rVPp9iYBub7GPjNQTFhsnJazMsCc+Vjezp6p/cKivLf1DtZ381ZfB16ppjg9Bu7rTaomWOJCgp8t
HVKgU/nDikp5/vKJ4r859jDtUv88LwVhAs01xfXXc43MU9pi2F5xE7nId5wP20FY0cbDIQ3wwJXF
Yl3/g82TPcqKL0vDPoT/ABARKxkLyZ/cWwAkfTgypPHtzgSAsX3UfJZLX3/kiWZomYRauD6WCLXh
GrE0zRG2gVkccNuhGUUzBFpftDPlKrlPdLEiV+l75YRCwNp8Q2voibr3QzdWS6vwURlGJ5U4Cn7E
gQSev7OR2Py3fxxIf2SaSRVtKnbk8FE2PH45OSWQMIj4kYQp/TDRwsNl5EkniSxRulSzbvkNe1Uk
QEyoTJ1DlRYJv2+j19fgQ/2wuJwFPI0qIU94GPz0nO0DMaHK53Ja7jRD+onsUAV/+THjyL9b8crF
GW3yG1uFqqLydqqf4kiKJTCMBOvoFTj+u+J6cVyzfckAg2llgzQHxfJrexLjuOHba0ntV56074mP
RMR2107dV2yhsvPvOLNvRXoKl0Yo8ljniDiPvrdqXhoiVi4strBBWmgvDdM/sfNAhl1vCZx+8SXQ
/JRrVdt94qpSTqx5L5roeFgNnmcXEltwWeDspBm/WVk5GInTVDcPm26yCIiUU5WpMvPxG/ZY481S
pMbyvB24j7u1dtmu21MKfN+nkW5gSsirle/uEAUdWTB6uPRRXrGtwOBs2RIrAL+FskA7RAhO/+Xx
O6u8LMryCGym6S/dmwNlDPASWXELDiTiWP1pnrXflle4ql1inUfsxSCoKcYnqhbfhVq9sjsOhaHN
YARd6Q9Znb1mR6dOgY6Jid2I8x16TvTAa+9eKCfAQpHMp3xhHdqJNSapQ5p3nHTsaMkAvStn6nEd
/tysoN1ybw02sup73puCTVSEOnj0TIMYIdebcUdZruvminD4Ra3SNxS4ISnAgTacIK/ZbgOCM9xG
0Lqq6ZfFovsPJAIOGcw0MC33BuMf0UELaop47H39PflViVT2W7rLYkwajlI+ANV01xbedbX38+Fg
FYsqruxe8hn9DMoEO8M101u8HV1MQogoeXjpAaMtHJl4pUMopoBWsziUk5o6cseHKFrYbo08PjNb
qMAdKs0kQjhvpakpRFInQSLJlaB9SbypddpUJaxXzRlFBMjZ3/va0BDIciDMhPbEK+zaiJVHNMr5
ozZt8Nl9YcdUmYzb57VITCHXebX210pEVV98C1YHXox2WzJxtLa5+mxlTCWUtTeVLlLfbswzqOxZ
BNQDdEEDg6NqLF4mSuMahqYKoRGw3FRB57sbcskch8IaiGnOxcMGY9uOJMzb7B0OG1r7pqqcj0w7
gCAVoZmsq2/Pw9k0BsIkc4qciKbJL8ugvFrwipkYUmmGzXkhLWcT3cs437iA4EBODePJbOFBhJ0j
OXnWQhP3/Q1EU3EaRb393ClduIxrBiQpB5urq5y8RcDCVZLAJRzGRXysbQ6fXwItpENZTenpRheR
X/dn+bSIJrDPbFEHDEFrazWExdcXkEhnBNpAho1go7BuOBWEwOmQKSs3SfbvVgZoZgzDeOzeEEUm
FxM/KL1fGq6mdnyXIvMzKVFfhDiWEReVVRzp+jMv1xN94leOzDr8AL6LcgGZq5Oy5aelShN2YAfK
vsmAVnAd+XLJVTQSG9PFdQtG3Gl4nXuzllbiA8HaE1d22VRZHU83nxsPO7b0nHSJTcI1fh2sOIJj
0TIdHkuhutdmRadCyrrwYzZsK5RpjLizqB4wAxXkpT5kqAMNXOrK/6VeexMYVIR1F22q8qpfks7R
TbRxaC9ZqJejx3AlwJGixgeAVfr5o3KT6N0kiSEmQXt6pr8X6/x6KFEEcnd18WJmYLzRdV5VIbOR
sgSLtIh3F1epLDqvQ1RZzZzKClSFQWjP4kSJ4lXu/joC35ky7L49symMvTEm7zS+UCE4lJLNPnoA
lQhqZfWcdlu9rzUz22aSpxLvkxCEjCy52Yhcum1x+Gj+whCSqU7+/oV+T3ekkezaHktLxTXaMI1i
v+xAPPTeld9JQl0ykqbOQgggHy520p+hnP1GhfvRu9WK6P+of0CfpPe7y3xb8+sWtShkiFrmL7CM
Om72oe2OS5odl7uMWsG4wIihVdVjilF9IkLK9zVwnYtsTtIsN1FJ6g+Mo3YThT7XQeB0R34J3ehu
LFUACmEVWqoj4j3z5wtuIH04rCI3tcE+Y3Thc5utGoum5sUDtwkiX51dJqAWUGTx0BBKkbmTcj55
grx6oSxLFMa4do8BxIQdDO6w8KumpYblRIZLTCYa3SIkz9zObDyY7V9OcSWrvPUMCWCqs47UdhT9
rYvaoom/5x443LxB2RFPjpNgBE2/GfUUyLkoKl444Rm+PeHVom6cHyXB51rEybalEQvg9GhOf08X
2j8t/eVBsWEzOiowRHRWTFz0iWiKh0WbgmuwMySBmwnEiIAASB3PWKto5AVAOvQdhaZlPhUPx3mf
gyEh93kaiFOg1hHUmgyNqmyDpuCxkjDhKAtdiqUB81ubTUN0J/8RqYG7CeFHsKR0E7zcOuZ0+Eny
UaD13goQ3/aIT6EYSmlNrscEQURB8zXclrWtdG5jBi8Ki94f8oT++OA+RuDMtteDJZpB/lMoM+uT
kA1sGWTHj3ziqfbNleQ+FL/sk1slVX5jyGwyug83f3U1LBkG+3nnGX0bY1chU6qk17xh8g3pT2vx
OFceCm0I3loGT1YcDjW+sriz6qAigzg4PquvUs4/B23vrm4wmAiQqVN3RFvtl+05+horLuq9KJwD
+BchxxFq5irYjTAHNIJzyTqaXF9ILw/8dtAmtQFUuSWLdO81cj9qZHLHLIqHQB5jDyaKnO7rwiHO
7zryrbH/CFdLwKjqDnaNi9f8rIJOiZ22+s3oSAAJj3kUABHqvmrynWc9xwAu4d88VxULZd+5AN8/
fKr48LrbJgwrdyWqD8idB50UR7qEGqelNNHu8cvO1nDAv7CC445QY483L3zFZKrV7ShYpJDiB73B
/igjY7OcBY1a6RAk/Ifm7G2mgDy+yqijNg+ihJzhtt0LE3WzF1aRzc0E1+CqLvMmqgE1QKXB4H6x
ArezItQ9+ySjfBIx1a3XVi4uXUxL7Vu06en/zWIb3GSnHpxpSRyJfYZktsIrTIrWNFTjWfaq4Uig
TSpzJN09DJajTTEoSKZeVkpoT6/ohEA0qBN6gEXigIP2Vh4BJmmTTJ7EzMRjSe6S2cv5+15E27ei
0ft0kD6+9Riaq9yic/7Rx2PQenfaAYpSm7YgX70hRPu4Q9y38Jxe8FjyyPD/MYSXxQriLtedAdbN
s9NnTzwivCfHJs1l6TBFsl2cNnN+4KB67a3ZpU8pcefEw5M1gE2BvXw1N4mT9i6NU6I1bRuNsJgX
88HDq/dX8eaCWAGFnOl70H+5SDfICMV6wNuPrtPh22rb/sAmJB4ERO4dML45hY2CL4ghudSvR9Ec
M/v9oj/E4PXi1m22iuTAMcsMLylVQaeuprzAI+olRpq8BUfQUi8OL94P4Jrdnj1ZGCROl1/GrCYD
15kxlC0daIfgntbIRvnQ9S3HIrxovbYcu2y/pF1Snu7CsCsRCwBGM2VSPg1uCkvZVPYBr8om9nvK
sI5JLmVs8LlmC7gTdO5uvrkOvwt81G208H2ohx6c8H0vmcNjL7hB7thzgO84rP4EJ1QhxxF/dYwH
/T4ODeii1NE+OEUM0dc6bwghjrd1jkG1neATotAJ31r+0GkQy1fcPKJDhoqRsRLKzRXUoGL3teF3
DnbLdN9FOL7SumWNpZvAzwRjdXnBm0LmUCVd35im8y5Png54GrCeaewVvqIt+/78IZQJVroMtdVd
9AtmD+ODzbyXj0h3UuwCYfNCN4ifsp0IKIq1elaW+/ST/vaz/CG70B2QD6Qms+O01d4SNFXvccia
JgL9jiIGv1U/5XCgBRf2xMStNtlfN0utvykZ0oYjHvqEdge7yjrURmY4myCVYv6roxoyvmkhdhwI
0tpRKcKr5vH9Zok9OEDYaK275sERHkHHJfzyfuZS4htLuJ+mjKTgImECx9Vc2o4VVPU43Ih0D6OU
56Fbk5hwyaEU+om3nk/sFfqo0u18mfQjJ7NiNOrEXp3WJMIfz0aatGBH3V5LujMy1PM5mXfhUvW5
2qRwNTrnR94gJXyYZ3RZC37bUmtTF3DUaLAGIq9wir1BPa01uLoRlk9RkO/K0fF2VAQAh7qE+n5Z
pgd3viucbNX8NRVK+5RTDlMe+ZSr0HN++kDfnW/4NFEYnxZ1O+Oor2YE2lLXOteKBKQgBud4LHMD
hSR4N46ihorbLSfn5facW+X1FTKAN9pceocHsBe8tzOAnLAfkcxMtWtn44Fua3QyQmjs3L/1HoBo
e/62i1/6JJwg0CThPK7NDAebv6wvBxDI8xOz2VegOhNZbFA3Q1MsW59WMzpzXUeX/c95RafiaqKU
2DRrC7onwZ2mqy3vkZQ6faS8Y2dqOE0z/GZnpxcn5/uPtc8DX93pFF55mz0DUJ/u/cRLwB56IyWa
FrT3h2JGx5lpU5oA85Xjzdvy6aVgJzvbDM4mx0Dwbt9FfzmpZCkAUopXHCbmH+qa2x9mvrR0w4bh
uO9uCt0Cdvgey/cZ4GGO38cD0vAbIUr5D4uc94z46hmRoHQaW06WPuyBwFOAqwIRg1cnieAW/C/V
R7xo4LFZnfWGI6qSiT6bRw750sf5WGl7h2HZWCLdBKbcYfTm0LEkrbSupTriljxlTYqDMWLbXWEY
+kwUtOroGWKFO2GCqlYGxiDk3Lcjgw7Abqv/guBbGnOCixyn2q4rwC0QbE58qEC5VNCCZHm5i/Ym
r7dGDjMxuLgZNhqHj/mW3N+7W/s4W0uLTy1EoKzZz6n6hO8yYzeqycFC8l4BHqqMHr/T37bPY5uH
SRRk306oUNUtolZh0vOYHHPOmYNcLptG/SP70Rw+fPHxPGtfhntYQNrZpchRY73aDi9lRTbzjifl
1m3VFoIxysOtVftj51nY7ZrwVP855klSA5gz6uuOrhZwxySXSblLcAYmDtmNUWBAoSglKCgcbAQ4
ED1WwlZ3AhqxqAi28gr/y8VOhoZkSqXRNtceGBlc9vq1AOf8fEjc0dKr8leVjjfu8BJI1VzfW5dh
O3r1twJ5AKzCowW15i99XWZLYNrKzLFMgLoJQUG/UmTN/y+gQEAWyK9XksCN9m0FuAjYIhDxby1h
JwUt3V5wV7zWznoAvV+SxBdo468r+gZIG7mZAEL2vvtY5/QlfSO0tJ5xepcGTixQv+c5HLhktgoN
cvgWCmRm4WBmHUghWLGCysJHei8VMVwgkPy1X7sf/if2NTPT5kgZjQ/fZw0Mks2yhipvoiQhNWm1
jgcJVytrPWBW6tTiGipJTJVpwotlZjCB5mEcAMO65zw3AH2/x8Jb3pL+JdbXuVzIiA0EfBJBBdd5
EVmlZVIHBmE4mK1jlVdCm5z5auz5e85JANQNV9SpwECt7R2Dx2S0iWxC36Ja8Xu+O+hyRf8mjjb1
RaLrOou2LyTOc5eszUtgrctQ2r2FM2CW3EWs3kukPxzkhd+G9kKIfVyrpxMK5x2G0GM/vYb3OvZ/
3Hx0BPm0XV+0Fmi0lWBtMLN5hAUGAQMblWUqUB2PbxOzqTTBvlBkCe3u8RTGUnQXst+7Vt6Lv+As
U2BhZ2sZ4BZ6fg4ODiSuEa2MKwa3KZQA+X/lQ1Z4xcjuQzvBvrSl2ZCl62PbtE2illUTWBBpFi8D
gi9T4OjAI0XpiyIZjEXuTAziEXZAjZGKHM0nJ9JvUsJ4svylsb/PVoPy8q3DU1Mu1ZjIIgcRX/6U
OwMYhELWhRfoLe7Ng3JWDWPyIoJP/5mi2eidKq1AIsZ4+UbHiEWXirHKSaO8vZ0kIWskjDs4Jxg8
BaYbFHto+HHI1/q/xLopOHRmOUzerlUPGBQt4j9l02dQ0WOLeWG++QX1HsIy4QHWE2cCTCqEDAAV
WV5iI0ieCKZPNfMKxY4dVY8CIWvSB+2SPj4FvAFxqdax/+e1mdm/vNN/YAYIRqFVka+d9lRy6DmK
W78xtjH4YZao5aWL2jfFNkr9mxMVXmbiV9PYnuZ0WL8WsCacakR1SZ+fDJ5L7wuQV8EX75aBZRfY
+h/gNDxORtVEikIu5ZCASQgj7h/AelzW5UkobQj8BImY4djO5tRfOpdec4G16mShVxyZO/2rAZel
ihMbCyC8oS7aFkZ8Uad4STzPczhqpF6rNPFd1GJdkfnF9ihrE+PmtzkVOy8eHcz3UeC/szqpQ/bN
Y4V//YpBPoLNWnoHIE2sEXb/1QcsixZ+Wq+4/OnVxUrHDqDH57StgbJaJ+1NFlNBTgdWJkAWzCs3
uBtDn3trsvhqua62+VsUAwR9MCniKCU0vD/eewMPzeQuIwvK5SMsRz+rKJyhgvdkOBB/3gSQQVoj
TfkARaxxzB9BJ25/mya+4YCYz8nPvI661xlEAyAmPbknJH5k2B7RcI+ElnUZeLQr1Igxuqpt15Yo
vicRVrCw2wljp25JaPjDy5AbtkVB+ppcXzCZQXVRU3fOU1F7Kkpg0eVZdOBRnjyyxinTa10YgXf/
ho4/NJtBMewsAnLoP1msORkqu0FtwYQ5RrfhTXi9dekLvbGY1Cbb2kF4LALLSqzXB2W7KFRvRdct
Ab5MfF08DMwKQMZ8TNCqvZhD2SD8023cS+QCaFLNVNhFmKQiW2nra40R+vycCQxVk+47sD65KJeX
oVF/Edik5HueKd19xA+DzMtcygOAvsRzJLqevXNWXUdepXauDQ9DKXx25CU1nfnubggTXQhy65P3
zwOBWGYJgXJdLfcMeigItCyddMKeK0Vq5Bt5QjA+HA+b4DkaqeHQSmiHkDjqUEBJsF5YdKfp/kkq
/SivosBF0dacR/YxOmRG3ALc/d3C8QWd59GsqCzGTIcHY1fssr2LfiOLdkOXGnTFVvJQEL0yZxFi
Z5JWUjJ3Q0EGJrgH5r5LN7iijR+sM0SV9/d2wIDUE+MpuohzcrVa5toBqVG/us3ZFim4hyUmBB71
Y9KQ+Cwjuuv8tIVZOnv9zIO6xDjRDOus3QIlcIKEgeeCuNIVYGC/S9nwURDJoSOZckCJwJJzInNg
rKA8n3WlZ8BieXBsYzMsBBMSU+2cXolluwXV+UT0zrcIciEVOgdU+fOJ8FFvkpFnm2UwEQJCLoxm
YXRCSGXV+EzTQn2duQ93w5gs+/KW13xHsKJNho5Z+ji3v3yFiNayumPsOAwzFGiOtAojExqmmYX2
/mV2eIy2yo7XrdxB2gXa3+YT7EBl+X3oWqz6S68TGK/IYV95WBmiSS07ec6gXGJ3FOlcmkkxWp1W
EBZKhSHXDUapZzoiNsiwVkpZhK2AG8vnHQ+QnkGQh2PH7a+i9t6qKatIkCFfnuG7KWq+3Vi8beWW
HKKsn0mdg9IhhcGKn0IaN4gdb2ohyKHoD/7mJ8Qr3pm1OgXX2b8iGXNJinWSTxJ7Yv4933gRZQ+Z
alufbrnoTybsLl7UriIttVrbHZX59No0PftNNAOMqdQbFU2HZCmECOAoZCXxC6Bn9I0knzZF70Q3
ZX5oK407Lz1yMJHafYhOyv1SlZl3jE0sd6k0DarF4oLvI55tbKEZ0uuKBOKEhu6WS0TFhsi6t4Jx
x1ClYN6LqzvN8ora6zHMnaX8VhcHoarxioAOrE//lCHPIbW+YAla+Ki9tU/g4wMlblRbwKEKFJg/
C4uqhj/Pe1Mh4B5YgcVrdxT3hpbxJvHRbqM6Lpux8X1g+rd+J0KJFVJVYEkOI04WOMyH63rLKZPE
iYc1HeqVhsqTpATUhqgddMXu0Dx3t0Vm/eJDanYbXuqmLyvcIZQOvE2ZQjAoovIG/KzhgLrle9Na
sp1vDA9Sb44TKNSY6wPEHlA1GAIqEqfYoPTho3x+CJPYJ1xExhE9x0M2Rllf2BPP15gOwsIiMM3H
YV9S4CIaMvIrrQ3ANkSuKDxeqCm78x2sFGA5pZ5kXjm9tKmGt7zjp7evohscg4YxLdwfRixKb/Lk
0zqv9XHCeqffchrH5xDFX82XUlLNGZbPYh7835bNV5V5y2bDxSKRWC6KPLNE/kGv9mWhRY7I3mIG
NT0rCQX+a0BOExinKz/ME13GfQc5MH/MmtKZXgs//UYLcz1IS2bLISdEPvVrSkJVnFEOShwVjzV+
j1VVUy0RBVcylnj2VobIKULdstjjBb1Iq2C7PGFdTlV6yTtHJ6XP+vGDT1NgxHuSBcehleqy/PsS
UnqO9bIGkuKH6L777aOCffPfKeiSbU7HPxpi0cQiZFyTv81Bns4P2bd4xg1xqynI5FFsBDHHcNJy
rfBQqO+8C5lvBQ82SBsgsEASAeD5yUUSJXW3c9fZ50VNBWo/mQ5VGUAodK3s4hskfxCEx0lR5oVB
qbArDU7Ov9OBVN80ImDxJfSsaAseTdj2389H5ZdUMu8Qz8c+xw2nsNUWvgsXsOS42VwD6tHpB5Y2
B5mngojK9BA/u/8RwnJtlCoFlyGI9fouR7sW02AgBJv7ixujTRf+0OC8ef2lLeE6VXbB8Y6aiCf8
PdlNAvJQZzg9X3zu1ALG+SLamO11veXYJNv69xj7t4iAXEzh0KKedEYp324Z5HdockyrdQg/cDha
w8TFSBA0REf90jURqqJs+3ODPCYcfYomEDQudh6mUaoNvqi1/kKYzDKLtlQOvelxjWZwqavD2jCw
Kf/iit/EyFJzR0EIk3sKEjhbLvdILcry4sYinIIsGlFLrvnr1ZyRzNHvl2GwqMAkazeLe5fU2MtF
4Y1kN+ta92kpUEnEy3/5oiQX/+cYnoqxc15f282Yn38ZXkB9sK6YW3nI+gyYFU6nCg7lWCm/wu8A
2rQwLrYj795PUic0rK+4CVeH4xjkI7brQnHOkqtAat6SIc6Fiyg8pRu0NujRWr1X/+zA3o6XvG7t
gUUk/g5lJRHiTwsJT+PM58tQWQi6EllbBk7RTxT3cY6BRx6h29HCkj8JLjLyuhvMRglaeQwQ6Nlx
GnzZGC9HdRein1NCwiAJ4oanPBEAdIFQRIXKevM1oCmpRswNe6FaSyc8ky1AGb+SnRxKbxUHgYUf
2bDtxVNeQ4XkVAR4RG1EBu3kjlreZXwo2apANVg986959nc553q/xx26k9Sz9FbHFT4L5X4nV0JQ
QSxqZfAVFkVRNHJh2VHot4cso4c/N11LjmTbU3S0xMFXYWi0oEwkB+plvwjI2B5u+ndjonv+TgKu
TsMl1A/CBYIy5HyyGRreeccPAen/K264qx6jXhK5JW/V73bAtdCJYGN1s/Ey3T8Kgh6YWTvLArN8
lXCZvHsKqbHV9WJe4tEUX0noekS4WUFpa/mCdJ2snJcLw8olJU0bicbcrMoniirHsP65auWUkNDr
67PphTXCwNqT0i2pj9nwDGrEahX9hLSCFECCfnngvd2xncM3B1xlvIcZtoJmn+nNXOGlzp8LsukX
jf3cNqYIKrlMtSNWaoerUordKiJQWng2zfO3Ep9+LkN03AiGXJChUX8kDb6lEDMECnJrmVJojz8M
kNAB5JT/XNOfWe1FOfx7B64SLnTdTI2AjTFdbyQ60sGdANrzt7tp1Gtq2Z0EpahF6+tuwIm9J4X8
9Eh+vaDbNjfEjs3gBwDfVpr0m7XbgRPAQ0L3msPZ4d133wSKtRUur54Cx2dbMHqCeBvTNDivSx5j
RhWRYk1KoI9aJsRfz9HU4JFmHGFR09C+Ko47E3AJ5sUvyFdvBC8ZaaPqJI+FgvOBLQIzloMoE6tO
NFFAkeXAjwLYLULcWBBQ3F9scT/UnnkoQlfkIyeaGE+S5N8zK6zhLYu8Zv7Wm7HZbAqhcEqnfroe
lB+YbpegDOZU62Up++8dJPZI7Mb6XbDElp1kMnuQ869FgjtYLQlJGEqnwrGvSeLB8wv9W7Yuioyr
vbayaGg10c3p8CdtgdBbjm6bL/+eJHbj1NShXxNnh4cZaZxKDTD9zjxxODFg9sWjt/q6Yj3qjT4z
CfBl1ahb5cq6ZsZP++ObvzYhdEP7KmNwnl8A3TtUfYdsLQmzBjkLhFQbUhus2Qk9Z8Ipc+nEMKsZ
kDgp3idwkMRzFkQA8j/0tvEMgmAT8oRbZn/hDaOy3MjcM9vM733ckxljByQBPvprEoYdAdSIHmPI
OKWp2DIvgp3lt091YgjHXiX4JDpAOyq0yZjS2YVd+b0e1CjEZ29u2RZ6qEYcEOW0610lVAgQsI4b
+g8sy7BNVUpk0aZefXwJKNivGfHRXtU0WufxcCh3LgN6TOqH24Yy+OcK1NxLILAC2hln9C+XU+Nw
4QPQMrVOz4bc7NsZ3qqKv8mKCKG6aOAGT1cGliYo9uYzg+5s0TYL5UwcwolnBM0Sb/D21KSeDTJ1
ykLSqPlJP/GHJ9LBkmxYCUETsUjx6lasLNNyAZSvGAWqBqUu9BE3D3H2HFqbd9b6VJPep1Z4MC5T
aFbCF+XMM+9uh2pNr5OIn7SYL59EB3M51WmnM3HkgnHZVOLJKrEcRNBm5CdF4uvyoDg6iWbL7ldm
lF/2qzVD4sn26Yxe4Ul3IGgckF8VJI0wG5I9uDbouHSq/Q0g49VNEAQ6qKKOW81sZAFimE+pdRtL
2mJ/X+Odk9Iy7E8zt1wSwR4i1v2uDaaJ4yPM0uhYxx5/d9SSi3org866+FqcsZZAbhAkQ/igzXSP
zN5QIMyPdNF6+0uVuafIWymMmWT7n9FRY/M6dB3oeS99myks8GZmAxEibIrM68Z4eeV+5jn8i/BO
Wv5yuS6zNFCijQIJI3CFFDCkJL+DlHi0qXiLnJLGuDOYoowqAQvxK03IhAxT4bx7vwpwFiB3lqEU
XCD2FdPdhBnXss6Gp9lK/4XPGioUBTAG/VSF5Cm7Aa5OndjmoDZgsOhAgp+STUA9TGbN9l0tK68A
fvWzoQEhyhHcj5jLUy44ILyyuLtmOHFh3Yden/slLx37E08DLVNoZqGJjIqqPWmg/hQWzl9g3PEO
V5jyFQERYqpTG3qGcFPgtxdW1otklKVgskuGhgoPTvSvkH2Xv1Aks41Y7alsnUkKlM3I8i7c8vU5
XFxebshb0iE0/J5Uhq54Rq3ryYfC4QfYWHmca2Vr9S3eWZ48YWIGaH1SKdq6aK2BKcPpI0Kv9gW9
1gsXEbG/WMnxMHlswdYbXYps46Dt3TorgL2B9QoWQDHOyXXszodSSnayNmY+20A8zexEIDQVDgGc
gDViP9NyhaYaJ2J3HpOVO0ExvFPVnJPqzQP/xvF65EpkecQYSWhjyEw7a9zv8qkbpRvZSvg8TpM3
kHdF0oYj08XMzfmUEwBF1AVE204ouYyLtQkk5jtOUMLYzrliKSHQCcVaqi6aLKQp35bCOlDpa3Wf
hOhEX7SX+JJ5wxQmhcJ2CDRlAfyQtEMuT3VLmzNTLigWmnYbmHk8EZ2iQ79CwzrnKVKICZ4SS04u
ylBvgwk55F4mtdfIay51Px/MLpJg/j6V+UL1rtd1V1JCJbBOt2rKeMb532eAH92UAzG/waF9SwIr
6VNZnidtFpQCzreduL+OlXBA+0aqNl8De091luRY8isyn8DLQn8kV2y0GhZ/rorJQNzpAq2vF3Lx
lxaJT6AtFLFiUdSEA4sKW7dirxsZ1ALU991G7GAoZMVlCX34VZ0qicDP85zIL4pmuhZFkGg6esH+
W3A+ET5amxzHiGj1LAc2TUvkS4MN/lX/9riOk84KIlOXm/rq67qnX1FSxApc4Y7zNhgqkBRBwqao
weV239hcz874tcEzH+VI5oGhX/gsin6B6dnn7AjWL1eIvLAaCNSXeAyPtMYwHPx1gR9bCYaHzzfK
kaEDfvydZK6eXQNRy/5FOQlue/Sxn7nF+4qQFkKZR0wm44YjYrmrKiRx0PJGP3Wp0WYBL7Z3AE6N
mdXlx2Gx3+yrB3RMTl1ikyCcDGI9Zmt1amOflWL4k4hcp63HK4zcE0PS+iVB2YRLEY3FBEdBJ9gl
F6WijHcgz/nMFqaPdeVfYHNepI1sVWFgbRYIVSIIcnccg0ZSyBOrVqekdAHPIqa1/zjK0OKjowyN
tnnrelM/yDcYSbcfYTJAHTy/x1ZfkSL8P8a/HnsXhywmsfrntqIm8+lDaexv9ioXVcwxzMiVOlWl
svkp/hhfCFx9UcFo/6icf84TYEwYRk4wl7cEocm4Fd3/NXeSbMceYF6YK6sbvz55WiNcghKgxBjg
k4jj7h8dGETOdeInpI5oQ0nXprGussD8GqZe9Bts4p8Of0+YBRjk0gGiLUKf5pOPJYVM6hF2iS33
AEuliNuE92QWQXkS36KK8JRgW8W2XhLvUmzCOiHSgY61Ue7rNMY9IfL1QFVDtwCLMFMwpmUJnAg/
xP6hKaRmt6DrEPJMdQ9fu9jMNL0AlcHTNzKmYH3Ymov72BuezHfmOLsD3P3fCftiouH9nwCTkcj5
tnPZ7xSbj3QzflJYiCDOsonjqzs/dfdw3GY1ARdsOnOndz/FlaFSOKy5P1h8MCb4GbY3OSsA4TRx
GFeIRljyYRXN1sF/0R5SOoQ9RdG9VJyOn0+YKZeTYMq2/Sq4e9wmzYMsvOOEOch6dhoi79WZbI/S
8LfehNK1XNFke/unsd2PrVcvYzov0yV7J06zpzG6zJCemLDzIS5RupRTwONxZAhXkzFijHEgc0G5
tHnrZFxEKl/knmRduVqtxnjWx+OB+dyuRsCX9W5ZpZAGYComI9li61IC5S2LOfhAkmInZQBPwKcx
vetvF4/EJOkfhMMIRXize1EgjJOqSfE3czxN1V/3jT0EpvEYDNvUtN2OOW3d4N2PhNnNdqvrjQ44
HF2cgH5QEbeadjwpIXsusEDfx0JIdjIUVbM5wbV77vRK6tlzOTe009FVTlIuEjOOTAeWgY9m20OX
nDXhTga0SwAw+7vslwXQJAP2Kf6qonakuGK+uGZLzVidHHyzzPhS319jRHV0r3qA/fU3H73ZYJlB
ZDjg0kILN/rLp2YViXj1DxkAPDEo2VwvG3OIadIukRKMLqoUaEwivZQd57rizwEXJmTQtF+xKHYY
Z10s/uK7sdoRBy1CAYjKXRLImcvY+LLu2UHsSFlrG31mTmVxOZjXBPZR42UIDMUprthcO0SjQgPj
vVNpD/cS1UhWtY0/Fe2X/Y0BgMeEcbbPXuWXon7eFMcPleRWXXiFlBv/K3rfS4djXY8cm93LGqGC
F5YDKIR7XyefWpiYF56dhn6gNmxWCTOrMdPSlOP+M1yb6ZhWX1IRRO+970d7VN1HWTpTY87t9s6q
cKtrfNv0IQwdn+OBCnxoemutIk3VlmDuvLQWgz+ReCMqGyyNcaov8D+56TDRvn0lHKh3DpToA+7+
Kms8g4jhgsGlZfDh7g52wLGczvj2/idCW4kvFWPSZPJAmO14AjL8KWU2OI+hpv0uWHvsxsZqQROm
k+gcuJDijKLxqpNJpZ3G5dAt5SuTbERZzhaYiGTD9gZr0xWh5ZCRb7FaEpb0sW+Wo4RUTYEWdmnl
3OYWXzQqE/yUbVNZtxbVj7/qjciVR0l0KvCVeUAG2JyKjT5pWifg67E++AsO6r6uxf2NHtuAQG5z
+PxlHmY3TgzUxp7Fmo9ZkZIEEjYW6daaLS4wzz75QNpEbquEVfUWi7iUmnFIRv7MfWVPWSl8OEO4
/KlaelwvibEN4LlMs9dq2N3R2onX+tjKfNpf+BppwzgaDM/Pvwsap4kKWsrDv4Jvczaa3ambk02f
93nyckqcbsqqE35j7JhUPDlDKsv5Kkbl9i/Ew/LIXOJDMfodilnOeV6wG22rcnkV7K2opT85HTHC
I6l2Bew8PSkH3Ji4rY3oNZTqQhoTMLVRqayUSzCN7dYFk+VJEEFaamYcpA1X1SCG0RUrZkKZhqs3
VQERAo+IRl2uztJ/oQXdPu5bl8q64nYfCEXOQLgkro3ktAfdCxFI5ZtfLFaFafIex6R7/A4gNWbX
Lqq25abhHKl7rxASRV2UMCkETnn3Iw2UtUlytzhvf8VIFN/iYF2/X7pOyn7lKnvrO8rvNrMrTlTC
yoCh/gVk/4Gn3P3bC8J2F29yEDCLNq7Ero40mgdoZslNLsNPnwi6x7dLVguq6ZDVdAvCWIp9TYsv
505tVtmd8MvwW5oroLTVdYhZPLqVyV0gjwPHDAhnxPKhk2U88jjBDPShmy+XsnoKCulHR5i2MyLe
R+gUR8GSasBXzxY2nlT9XgMSeZvRMf25UhAhbiqHMWcBb/XoA1JxtRMMy0fXeFZOb1qBrL4xDolP
9sA5/BlSWH4UBcY1lUCkj174k+1eBpoWlDZ2vGFmSbkWEgnIeqZdPCTcR49ciiswWLgyFHcGJnO2
xDmcaaTnNjBokijHyogchSPiYxi7fUXsnk/pXbQTz5AnJl93/47cS/mL4yVq9yJEyIUohI3iHKCS
yrmVCsrLKBusxpJ/5Yf+IPIQlGn6WWEGmGrE+7j6+YMq88s6J6rMYakgA+w2+Y/TtPrPtXclHLUl
48IrExGgU4iU0tSxRpnax1jhV+8rNv222Ztgyh1InIKea796l6A/pvLPeAh7jRENsPjDoX4h+Pvb
YcyE+/9m+OqaQPml4KJK+a2AELpa69FfQG9jVZa1Q8f/Ca/RVj8JdHJhLl+WUtGhlaz3OIUmKH8l
JCM4jTKJlRCBoS9YyW+7dwhxJUdVJSzP7o5NIx6aPbx8/wXFgRHXNzt55uS259kpAhMeKSANliJX
XvOGDpUR6dnfRWrTY8z8xMcFx19Zk3ZjNTYthZVv1GOCJ608HrbQBgv/qQg5E9YvjSh64aL7/sTK
K+f9lKqCRI3uU4s/2VOTWCgIU6xAcLA4dJAbpGTSpXJU9WfC1s6r4M7BtSyvN4b3waE1c9AFmJNV
NrPD8I5iWB1QavhRpRfawk9EYEQ/g2Fio/D7wDU18AYL3UBWzLQNLUF6v6REd9ZHraRp0Eda6/GC
HD0PQCwY5/0qXxOFjkrOIcP6HSBCcDaIbvb+II8TAhSjBYSZRvfM//8wCbnnP+x3e0MVktMoNVKX
lYLH9CE/9jCBDOBk7zbl6DtzIMWEHnoqiuPKMnkncCCMR0LY+QoXQUhAa7Jn0XLJvbvZ1r6g/W70
2t4izEaZgiSzadklyw0duYbfuKn5qRaW3xrL0b5yZq9T0dgJMYTcHf8bWWXNcsEAapTAylOLyAMt
tpbvWP9ghqXNz3BitJ5HvoLglL3YkkYUro+ve1u1TDn1ZDnl8dTTUp0UdP2OHXpH7dqu1W0p7at5
6h0nXo8xhjhzlEsFEKZ1eTsSSMATMjXqqPnE5SwcNQwiezQxme5Hx8xh8+VgYhJdddzZJNcapTFG
d4BrNEhEIHQ9VumbZKskv6+Iiq7bqBURhcBqa2ehsCTi8d6023xy9ZTSGfJOi6jI5mVmUWwnVuOZ
9dXazV9bJSExyxK0io6V2u1tO5i6bQYaQ5+1tpyAfSZoRTJLxH1DlJEDmrAvE2DCsKyq5xxXOGT7
lJYcppmxKYRXT3awuRtngl3evbrt3hFzU5yPkp6Hjh3ohdyGNJCZjkWT+SLsEXp/+DmI7jaaCHBM
gcz9khJwlLI3bbBsTEP+BfIdSukBbEVSiFDX5gIAB2gb9Odeknp1fhyRMehsmxeaEwPX0Wzxpb32
CgneSyx7INyYrZ2aYVUGDVv6dTcJY+IncFv6kEVvsWcRtOCCkoBN/tGDa88FpI5t8y2h0cZA1+aA
YHLBDzC9H3ZJiyrc4A2fbak3L3DBffldJkZE+Orwgqi6ybTPd9cDpzoJix1UHxNujKxMP5+eHmC1
lIHtSEM0iQ7ICO9+/1cusbOWGIXdqetsxz3N9xlayqJSFHdvjo8qJjmI8HMeMMm6SeA4nQCJJ8pu
udL/A1wvcClSdNTZ+pvv8HYDGfm0EDmbNx8b+DKUo0hYVnPNNDzs+HTXAXBWKZrbBmrqRO9dW9Ou
Lp7byiPvkMeIAQSfPihWPGu+TUG7QlUwuSPX2JvcKI8y3oMMUeXDQY9zedG1TRVvWqjRJUUKbGXK
EqSGD8H9QoOj+gaH8QCznLseDf/jISuwMuf0HAdLHpRB+oZDYFh2kSKWwIr2i2pz6mPnfNqpcKTd
ZmdcAbnmYCKB1vKNffMTNlbYmYQGNJVxX51vcrrWLcoQ1XzLKawUiALBiKs1cPJsEOl9uLZbuytQ
YTmGE927ehvu2tWCq5fZWKCWGzs97Wwo0fSwMYz3lrF1uMptP1TSnHM8mRFM5JK0ZuTaJSbOC5Y/
YR1zvagg1D9ACnCAefS4eNILbwyUVw9vi8v1B4vp6+fT/ElF0X/WcYhYlzd9gOKeSJmjDNwu37tw
QIcTSNHU+xxRxz38t7oxoh8pLnczDILCzB4HbST7Ojyvmgr48wbfV5Rc1Kdg8eJEHp9Pd3dM/5T1
1s4DPc8Sm7EoAPnQEMTEmaMYE5y/0LWAqCrJ1WdVxect7pXvDdoplcL6A24o9aro30PwhuXCMeOQ
xFZXfjmLuPFXEkBOjzUegoDcvpRh+wplQ2LQVl6FhblPRbH9rtJQp2E4jLOG4huJ8NMT0UQ0fChy
6VbAk+0twPvQBne7wd9ixULQ7JujpePUWr1sV/73eYshs0OchDyYytN5QNj4ifwlCngYsmGxGuF6
mYXaBQADSpGMKe5JLFpyQDbMFNos93Mr0jHO8gwRuReYHbBksDra8Vj+zVCsb7y15lEKj/lRZZQI
VFRC4fh2HwpRhUMoreiz1O6sXgcqpTIAse8jYu42eTR0VN6KYcxMhYqLtriLjx77JIgI9wAJu9Aa
AE0NFgq5m01gqEMm24cF6M8CrAwSdJlZeq5fIGPgF58oBePzir93F51te1xUwH4UhcpBvKYpU666
uNgxuHftDAHY52EKDZt8N+893XQa2Wlo5QqG9aoIc1sk/QWjWC6jhLXPekiAXjiaE1aCGvTUSz3C
1fRc8crmiXHmBHOHFft7EEAIrqZ7R+ypiRxdvM5pbrZNLb/7ukvi0PxWzcv0b7qMCCzF8BmKclOX
e/jrwpcgarbdcvS7c7mDutb3yV77Bbn/wUSuc1ANuLmxWwQf3dpzaEG30FBqQhTvhReweMVXhXvn
JVocNNDKtSxE+INeN9IrcZcNlEVoy5x6/uejDZxcWCqjhqpYglyInDfnHqnu3DpLh9tr3M5sz1c+
uv4AWauZ8dJ/AUC9zN5EbVbGpJEnGCQJlTuMvKk1ra4VGDeBEAUhjWEVimt2JKRB5bMDaT5FzJUs
5nf1Ln+FFdNBGxjb/FJqpP50VEST0P9Cx2deS5iwBm6kA0DCKalftm2YBBLREZmMuz37uXdNwQZJ
YpwQxpud0IqASRgu61E5MLT6KMZMd+mSaQ/+K2VcScnBDRSecpAF5jmaaAT0r7TNiGk+Gf1pEiHG
1kiBn6GMfy5yvftkD4q5uSyL0Sstrm44Km9KPr7q3SJunAZFKN5pdo0rEQww7foyQPJd6Ki//15M
YNCToorq/X01PU1Dju0hxxzKYGLdpQ6DK3gLcjloRDK6mSHSQxs58u5eDw2LB3iqJ9lpKzMb+1Iv
zrNR2XFbk/PFB10H/hxoC46WuS3XbyarjkotlWOusLKmSTGHEMHBOgI9L5Z9jzYfxfGcLKXAXvcL
cb/2n6nmiEima94anftdYFHnUyZmSFGzFDkyAfXDUeQZQ8PrdCqltOw/LW9OvwP89vH2c5p+z1MU
WUOYdY279nQ+dvLeTQW2u9x7Vum8hn6tYxl3wc0w1kUnCg/qciKcRkw0HaovHKyEyySXvyM0B1Sj
AQjEFUcpXKz8U0UfGxkvUJ8+RGdgUsA9sa7ggjkQ/Oxyq2XehiXoR9InsC0iEQB5Fr5PXKZ0/005
Hhn2xrETLGdj0qA9DEBdJPKeFft97ApjFRJKSd3LFfu2OTTIr2K8JxQ4vQDrdMCGKKgyXdAKHyDd
lScbJyTfVPS86XSVSDrEOgWsSx9cFC7p7XRrAcIkkdVrbpxLbBNypXRkHrb0QeZTpPYXXna35wWP
D6fP7TMfAJCAChrUjfvfRrRkcCB3+toTyKW3ko5S23AzF6CmWHeIXt7+CWM12xz5hmuU7nTPVltL
T2RiYobtNAI7StuSvrvgWsf7Opy5gFeHNlzmQ0scaUok0CG7p17fyCUaoJq7gLWbqu9AJVBrr0PQ
XgwcS31i6l6jRjm3Wz7LAF5LqmUrdjx46YN+ycGGqjPBn+QPHifnqK2yHYmITiFxMymX+6o5HW/n
MAD59v/RcnQjkqJSeIgWJQM/uohenBKKjULhaMIQlzmmdsAI+JnkeHebR6gv34oILFgsyeM2iqCl
SEY0aqlC2V9+RXxEawSNH9iI3qtBBa3nORYvkAJberm2APHs8OUhmn6RIeDmnCljZ+XPKugs1N4I
ye5GVXgPpw2o8memfdT2s4B6sXVfKHQVVn2E6eVHxqT0TArbhReHYGrGnJrxSBpFN8JQg0OfrMkN
noK1o7f2emaSZtBsilvMRqWlXWBDpT2c4BACRbtaqVNl7JtyZEdduVcN+vh8ggIiE4i6tgyqETfr
CpdW5cP2ICnX5ydjv055mJwz4Wc5I11Y9evsy3QTw3cVhTqGgxGTxXAz0OzfdaIqwyoFVNBjdgLF
5DPKF48KCfYExJcobZJwgVanSsBYD1V9bi2YAI7T+F8Bo3uA94rSxErnCr0LCmG9N/vB1Tx/vmsV
MmXsC5QtrPZ/H7tqw9NfGR9NB27Eh1ZzNAqltAtuNCcSDqbRQ6rSYZh5jzTrWJ2ERsyn7I0gG+1E
si/Y9RaKLBGZxEzGMLJ3hvy+1g3pJLbyPozGm1iTnQCIhKbHqWmdbO3msexOeL0BoCtMLOsFYH5H
KZuTtWUnmLpkfvdXi6e03Jp0Lv9JiQd8cdE7ZS+g5V/K9obqkzSlEypkkceA17gqGA91eqXnz+O2
+xIwxEXi2wu4ZBUBf5uxvsvtZMOuVz/XBtlwebJBDzz+4hxy9+PxPGDxhq2Dr/D9Ho+6lVF3V3pW
VyqojJFTjHNlBhLyT2W4SnzgIRL+UNN4iWq38dR+8zB/ZPW8O8t0csa3UuZbW61QEUhbC5lb7y2t
gxj+mbHmQXafXb1dzyGd1jh+AQAJKBL9HHHhMgkKggcZg/lwOpoeAktk+4vRnIMQiydAQT0vMSVy
2ebcnvWtylsi7zNWXmrmGO3sMlUiMwdxlZlIATBRisVpo5HygGw2yBcHqc/1YTl+ID3w8bclo0iO
6b1LykmDYj+cKTbwNQKd67jEXmHDHREB/gQlOFDoCvok222S03+iSdaM9QMRaFtAf9hWy9oH1EAk
gz6EKse6GOXuDy29ab2/LWTdlYZA80dLApJ+RmK4qNNZSHY7+WO5u9Cx+LgvlN25QdCooPeug33v
SQIhasQOML4lh57lbrsvCCOzDEb6nIHs3+11d2EYS6YhQzAllg/y8kUNeYHkVxf5T/aEjpXDobJq
oLgAKAPzdbMzsgyzHN6QSifRNmymMZidRqvQndhSZLpQhL0qoHj2DcHslttOo8islh9hdV2Kwrjp
eMbAS+NQRJWU2JkjnBOU4n77gHdwSJXD0inPgVOCgUudFG+RTksNAgnRq7P30ithBNhUpzpyY/ai
GYJeqe1PJx1FLsL19IWPs7I5aut3rYC43m3A32jtD2GBlm+tZRLAf5ME0rmdNdyuPrIRXfwna6Zz
Qsk6Tx2kGJOMlZxwJOXac+aELUJRuNwJJ5hqII23V0ISUuVT/mYS7B+QtHp/7ts5C6NnMdpeljVn
RolN2jG/AcZ3o2XCcNNFCt2y+9YL0pc+12yu/2CYs8VyHeK/e5aKHxAZ+9X/MEhX4gVOEVYxpPfH
pSSQQSU0lVhObUmRv/F6F7e5KRcvcN3wrqZB8fZO8kwWqltbV+ygIOztG1P5cYPQF2NwV8F55LeI
oAhQxIWoPVEYytikmDm3HFbLN14CFK9L4texWGig0kn4KdRZwRWDda7hop8auB6o8mPIB9kfb0Uf
VfXpFBlAAc/Czhg+GvNvJueeRNS1BEafi5YbAbcehts18o72xa0WmAFEYksJHuM4HDmdUxhBMrgz
RCETC8wwKa1lMzfbHLXsu5cZ6qUmHsQZhJG3wdalmXTf3562TKUpL9eb9etDqufjxSiGKafxYdox
7LPBJi/1nWts8G7sNdR4ezDTTuBNjBmMoGnZsn/14puthPpUypGoNfXAAm+Z+Pby2U+DcG35MXTw
xTN6OqZHacVgdwj4s77tPp4U7SM60Merzb9f/iD2qcyL1XeoJZhuCwi7b2wJoDn1KaFHL3hQZThO
NOCZ+94dHgx9QWDAwbdQlmxXOKx5ayOcT2sPjDmUdBfs/cBUPI0+BAtidpWW0tB+msEY61NBanvX
sSfZaEkZPWkYB+95VwKL7pJzqLNYIZC6Cyww46dz3Nqe2H4QzlYjZL+r/6cUCLfHg2/nqNdy30ll
M1lHb9gR+Ll8ZGR7jSvTdGmAr406eMnxMLLMxG/8fcr3TtjZXkTVasjzH/H4qygKs6sBCS0xfcTF
ehLmO3mqjesk0VMv2hSKIGEgFcqVuvWwNHXjqJn36Tms6yDfCtboDDiYrO7NaxXWm1wae/etk48s
Jzk3ZJzUOC7e8PoAUerniiA+iOOFpk7Jq0fXLRwKcnYBZurrs6t3XQc81seRMJ57sP1esY3ZCiT6
Zja+HbLwcPLGnZF3LaGAoAx2ipW0wiTQv2C76EsZVm294gND5YINmFzU/WGnHqGUPoG+La6iHenv
MSGt/RaSTxFZ9I4nUeherUsOaeWKVyz9xReLZUCbE398EOycZNMda3p19U9y1xPoCywG9FWOmQkn
KSZLMJmvLKy6KIcUxMwSuBmcSHrxJdrxuf6X0i+6GVxm2Ac4p0VYUnJqtt+GNXcpb4W4pxGLZ13n
+Nhfv3HM0oAFlnKe4afDEGx4BCx86eSeCzEBu76v5gUyCGV/qBIhmCpI6br2a7WyFHxgRbqnq89i
3rVuJL8yoiv5OaJTX9Aey1ZglmjFbGV9TcY3ZiSjXx37pq9s15yxQU2h98omHDAC5j49vXDNfIK3
cEcA4Fv3zXH0ozhBqWFahEWZy0cUOZthjni7aW/GoDMcsGtxha26uncGtIi3YQjnYEZmiL1CLfrJ
76nhsz5v7/4zoEyK3H2Yi9BKZ1JELo+GzEB8piM4qTc2a1URf71meYMaA/LdnZW4alxNuI5d1RCK
gy36prfJtkd4CulrlS706V6hv7obKKVUMj04XSt9oC2IQHwav+tz6tIp9kSHz8fIyv5MXMCofDAE
+lL1qy2GOAM5l6lBJoxEgrrGZ/EG5Sb85m4rha/lpSNDrfou2hzYG9jXMCjNbnuODVQLbyRzSn06
usk7qyA+HN7a9CZFDCAJEAZI/KoJfdkcwwLkx9H8/9Xt5dkvgLI85ZMwgZuA6qutAHuA+2D4g3ey
ZPpAW1l3j64vHeQ9bJaxwQXlrnB3wfjbfWd6q+4QFwLlffeRQgQAgt+kgDQgZ5pclTuml3rovFdD
vVnEzlLcZvRB/8RlPkY1wNIrDKeRj+7yenxrPIWGXovI8UrYG9wn0bHBDZwhu1xpKWcauXGabfP1
sY2vyTXEBFKxhDJp64V3cn4GJESv3rNy+8pO8UyjAjMn+IhdLEENt6YffcizZ+KUq/afxqiq+olj
4K5ILAk/yZBonvLZJvRmcQPnnqRkttoUM5tCpfzfsE8kxUa2NjQHDzNZLqDA40Ybm7QNNycnd7hm
zQ2iWf171wNvtWMP3jd7BGK3hslNwiAAOOEAoqWwt06QU5Adgs3vIrlujjC1ykeen9i0wKY/kIhT
miBem5UrbrZowO2KbUwSW048wSC4ZlcZaIYkY7hd8S3fCz/p0+2JZYUpFyz0UiwBvZuJYrCsRBHi
cTL0DX3CclTqhwdrQOTec8KsZMn23L58bobF0jTDrJdwTwZ1LdNdGwUC0wDPP/7nkdQIj2xTyZzN
WQOQlV+FHL48rzwjaIPaXcN5KBQ0vW/FHXGMpuxK8+R1jn1yrEkeE0oPBkk39TbuSarXevFB20wY
Gk2kw0n1mCfLvzHYfDmmx4pjo2pP5FeuBn8vk+VBnU0Ms1rDHIWtH3HfG8p9+gKn5xeMUcWZ2WPV
jdK1D98uJ1jHeFP5JV6NB0zlcWm4WYE1Zd3tqzGAXe46wqEP7iZh3q96F57+/rRlArynEdzU+Bi+
Z1jFk2JO37HEM9aEuGfbG0kX2W4FLKuA8kxBvYq0XNYeuEy78FwiPQ59bl+n9T3B4/uozUF+DF0V
GWGIrNb3i7W+PwMBiZTBqB0c6giiYXIkm2jqw6X2OHd/MYNhtVC/d4qukn4OQGnNVIxKt2BirVWu
zXjxd5XlsW7sGtlzXAbpRfe9eMRf4dHIyq/2WTRVktkq7fpDvDXtk7bQ4MoKZo8xwNDkrFhHT4LB
fCUfOMvHpJgnXWlfV21bx4lK4Gk7juNVIsOACaAGAOglplQ5RnC6iCNfQul/hgGzl5V+5kLB0onT
agfx7XB8//XrOrbNyeRdcdbrsL0axxjAsUej8W29Mbc52zjV1hQoNOy6LGbO8vkKU0DyaTUoubz+
xJRzANhPbpdFiNaHtDZjMuQPUlE8TnIF+WOHVr8mWLa/ekt75oyWngf0zclu+8ubl7Lwg4EYIxw3
yOfPoHdzG3ruB8WYW8ygNLSFMFJUq3M2AHbI4ujEsMHPA+vHBbazkiGMpEo+4Qf/lKO/BmQDQDTe
fR11Hn8ls7Dg8luxUrYDT6jSNvcBOWff4rzhfeh+OyWHUpAguCNppdDCxnlSf7MWmLukHC+j1+Xd
pBnEVhyf+ablgP6RSXNcJal4T9aeeFTOyTU4FqNSUacss4dH538IO9fmr/Hy5iq1CPjJ9tKpYhKC
t5Ujz6ld2Mf+VpTf5SsEt0SfXr+0oaOSOGUXkM7HdsUvFY+CvXr6dsbNSyHTdnT3n9Fpb16SCDbJ
SYcQ+QjvjVQz3iZBhAxNwrrZHcUsXlzUrPFTjb5MFxUVprBCmbacNKYMVBScOy2TU+WWIcCAEWah
o4X3GAq6AooMQn2lVq7LeuCaDO6OzqoBbdMV++gMJBlrY9oA/ZZb6VPYf3KgbkaTBxX4GdOS6RJ6
TX+yIsxR/YkHz5yJpa4v0H72hVNsdNHSunRU/HiXk5JwJUQ3ky/jtZpjbKc2VIrPIp4DKNggjuDC
mic5CJb5k+X+ree/caWhi36+X7QVRxJN5m/0FCZy9vwV/hL9MFQZm8ELl1dMvJcUSIeIEk6rXbw+
/wluA1OSHMS4U//ZQocdSKqH0PxXzQCCNXLUGhpNrUNhjWztsWdCt/oR6stt2Kn8iFYOs/cLiurl
V06PpC/pSTn4KmfKnsTnRkq9htPTs4G+6+WGEjCy+mrlB6YFPLByYFlMm5PjZdtW9vYAxF2LpMXh
8PwsiVAgRcV+uyk4XyT3fWHliapSzQFrxENixeBoGJG9PxKqTZjVRiFrwAn6+62Dp/oT4X+sB+R+
kQJSvpWeZ/XjCnBSYP4/l2Ye33GtO3N4yGn8WFl+GAj5PkNojKBgEj4fVaSHwNeY5CJssvuMzRdB
ri8+hG+poqP2hudsxckM/JwIVog9Y2P7z/fWiYMJEu1zv2+xA/KM2aHzE/LuURP4Uaj5YE9bEv/+
3dNG1hLHeAOXU2nRPn5q3pCe9PA8kpioVA/0bVBg4/yDRtp+5IRj/PNph12EtkDh9nVZmikpPIDm
aVOdNAuu8ZYqoQdEpEdjaF8vqDjdxrX995QgpMJI5LVywSc+KuHXZGH7M5e/A5GDwDgcXilZj80S
ISraH54HlIs7pZ/5IEoW0Y37yFV4u49nsHqWjNw1LKwYJP9WYcL8UOJFJzYJStWkRrQKsw0A/c3+
4JYAk63LrXycAX8vWlPcRN9XDY5NfM4cMfFikrP3rUcsAgrYJDNd/mDlfMcKVwpcER9/hlywr7OX
6dqGb4t3rRhrfekSuNYuY4ezMpxxmaothhCA5AuhTeUhdW+CszwN9d9f+9l+mCFnzBztnikjk/F4
UV3Xs4Zh5mhVe0kPG79qYdHfYtTm7o2gvJrtQ/DPQvems+Pn7c24RJOp4Y7nOtc32Y4ZACUUwSAE
c436iPv9PJznwRBbnw8s8iRIIe2sgIRQxGR4wIeDTJQzWr22leNRkjmk+zn2eEDGSc1DW1JCEbSv
NIbYcTkx6j/DzmwjQCwWENh2lhuCHFM24Bxnk/FaRQk/HQWDRRuUnjIgHdtocQiF25H1mBAsiMCS
wVaKr/S0ac1NdnZMzciUAAtl6up/pltLxX4ZVIK8gy8b661VkawWoZ3oSEKdcMZ9RC2zYDZiS0WQ
0+uUPM0z+EUF8y5N1EVO1tKQoDtaAG0pmuQz4va0O2CcpBkNkqpjYaaYoCSSvmwng0TUYZe7V9uo
dxzKZX8Shbrh99VGjRTtjQGH245ZKTW30ntM6/THQ0PNXzxsOrxuYI8i/OAuknk/5FVzOUOJQHmE
j+T7N647yCv+3VJ5du73ebV5V95e6m2Z2EKyAkMIc+PJzo+aXb6nBSZi5A4wVdu0d2Hb2yLy6Q4s
TPROwueIko2ORPkOHic975o8RdnsPmaebIEa5HmPGJ7WdswHG1/dyQqo5lfTUUn+pLZBH2DFa5Gn
wexK+csajRgpDvbQA8sOetOMbVYCyFFDBcw8MMW3yUNEh+82xRSrXfsO0LlGLEu2Ff1Ius59A927
H0H3EmZQhaRccTXptRS5dogSJ4BVW/YhSIn+wYAoFI9GpGuZHHfwEl6jFBoBY11jdeRy2jcQ31Co
5Sprfxd7I6Ut0ohQikaEoNjq5juXIHpZxrrW3ZS3lxtJImYOHPnmSvZvrRpSNJ3w7tZYWIrJFaWW
EsnScYgammTsTSCyOpOZMeZO/yCPEKX3bRjm8xXryvZrC2VSNNGP1ZTsg04ozq2FigDxdvTnGsu2
/OSzxx6SgLYpDMP941295zUMPKdzk3YSyLmUT7Kk2Zy+UkYw1hBxE8wX/TiofxKY2+eUpRz9dV2g
uy6Qd7brv/dMAs8CvbZq2Y3N/yOXM2Q8prjF+IEgZ2SmqQIrGcOrxVQKsFI7dQE1uBaQubzSplkf
4Smy24ZXEDHgo0Ts566DHN4aY3z+s1Djh+OyWh9hKJ3cHLNaPKrnc9YjLmMxc6MCjATByEDLcitr
2LC3kTsFn/e5VsbOxBCHTPOwYUmV3e5qu8JE0/EXZ8/yReJCBsmY+1Nmw9uSQf23JyOhid9I8FUj
8Mogda6XwPbFBSAhbneno1BZsWGdazRM32STjc6LAnZVkaAWh/kbcw4kq2AkhgaNprJTHCbRpGT+
cEkgwFxN31nbF/UouHPXxTo3XsqfzxDyqRZehTqTx0ge7/ptlhoiQUmeOabKYUZIRgiSt1KUNgaa
Pm2ahpSKWpbi0PYcVfW0tPwp0UIuA3f2N6WRu0BuawNfAgTnOFXJLlV40rAm/jWlG8sJcCmCKJJL
NJ/vP3CGBoE12RolpKtyHKuuCgXSsGjIjMa1ZIUh6f6OH+K08Uaezgw3zyrBL7Uzxh+R6/YEvmbB
UvJFYngALX+mx1iKRiSYDUs5mU8pwiJ8qdVZ7kJ/+HUHWKBxbzeTE/qIfpkqpLoCqer/ONhgIbTj
ye1Zlx1hC/tJmPbCTUqB6fWyxJyvI5caCuLL981jdYI2zInPz1cMGVsmxIrVyLqZpXeNe/0QIQCG
mAkIhW9O4DqKrlVYgTzPhLx8lEG1LommnNlBEsdAzK2XxRjyOuTUpMqBwUDnP1DcFK4e3ixY6Qb2
dDNc65ZVEwbKM7DXnZIHAgxZ8vjee8xe3yKqlZub1Ry0Q/rqKT3KxUuyQP3fAE76DQ+Ix5pn4Tqh
RZh5UJ4HhsWCTpcuorcw48JDIIGpR1YIf7Efl1uzJ0rthNBuP+PotYBSp5/zMwx0zMv8kAtkz24O
e4o5QL+N/K4GAIF0VMM5tYrQdWtz35zc5f2BgQnljiamFN8AVKenyHqNW7co8yYcJXPJsHdKeAUq
PDYJIZVrwutKvH/q3aqMuleeNFqAytwADMRYnbv6OYAkf6S+giBkkwmFZyZNLoPHWLknwhYvDEKD
wXEUXbceP11DvH/xxuGoc75nfueVWLlQJHOn+L9RBNi0bMoQxpiH+TG7EmIfMDcuhoFXLtha+HRU
ceu7iknVlF21HKo4nNo2GqK2c+7a3r0SU+ctNWA9DCGUHTScxnAQ23ZlwrJ7WAXMHWxE6tnwkv86
oXaW9odGQv4LC51oeCqtUOn/iiiCKtlANSbES3VPh0gLVgCVNODcTpfNcmydU9cyAOGsiwf44JVf
Iz7rUE040FyISXpGeNdXWAyPbhlUTT8W+O1onS0RbLyyl/ZRmpM2uNM7bZTnwQmMV20iJhi2ig9w
3Q7dDpNikYA6qmfBpzZ0DOu2veoC6+VRm4Ix5ZGMYOhHdbZlWCD7yZeWvH1UlYNb7it+K33fnH1E
/0JO/y92qYjRpHhrUk/gPubf4KJbnOnZ0/xOqXplS6Ht4OpCWn+EGqyCzIyV1uWEuKj/G+JtosCw
xpoSq8eKIOu6VRZSeGIOF7cb3tS/cbIyg+Qki92YkWOW4OeFfUxXnpcU6jb5+4UVwYV18aWMgXF7
BS3qKp0fMNJqVfvTG7H6owmzZVHhTPtca59GDGkAMm5GZ0ATKM70oYBuszPgi+4X71Sw5OJs66zL
M+5dqgMkcfuuMfLKWHGQpxgNlqzlYWNZUhRUcZc3oTCtuLg05pWxRBJka0Qq5bK2cCO/HL3nY3vS
+JSK1iyg0kQmBGEytcJvmSh1bgO17MpZS1orj/MjRmxRVwXvZS4WiKsBCMcH7EWh6/FjcgZRl7gy
d7iA+9HCIPJnF7FdadEXw17PW9/OOB22nlYKsstt7+eWrlJWlUP1fbOYuMscGsDHuwEbixzUotyd
IMPz6poWdyLtaO/P14jc5AKp15uSS2Iw1CsjaZmPQ1s54jrifNafNm75enMGrjmgVMamIdpUK6dT
CA/juE85QyZC4elAhJfQuR1NspQPF+JZvxCFwea507jmAYPJveFHaE6MGzOg5NWPaCYQbkU8NSe1
43fgivwr/6jCQ4R5ueu2DZxzhLVJOPLQtY3nZHtbigONGB7C+bcBH98OuhGQ9yIxp1LNLmz2yS0t
HWiJSyIzSnDJaBrkW4CyNgIVMC7rCL2exuavoXaXQdzhgq5dutH5SA/LyXVnZimVoKCSD84qBzO3
g/ZQAUXiNkIXqL0Wi4gKOcx8FbzmZ+JEVgpvrSbBsI0T0vhfYrihHYx2/x9HzGpuI4VPC261jUwl
JsovFzk/EcLJkYP93/tnhJfSa0E9jHQo8orCK4WDkF7wh6p4uZClGCJtrDafpOzAqHP0OEx3qYR+
k9qa8c3cAT7q5VjciyJ4ffVou+laR59qv+s5DnmEUH3YUcB5GRMDAHfxuMaHKkDtLIZPFLAeWtp+
1+XWStFi3J1TSCQNe7IiF7+5/doRzCZioM9r3jgQZz+TUM2ftBGB12Ll6Atax00pLWM8+Yf98xk1
rsawuaPXDrMtYJK05FMGszD9Z1YyQ3T5Lp2c1yiMKgHeymCpxHxleIp+3X3UJA/kq+YBbUBMyr+3
68cOTtdMBD9LN8embGfA74EVEqcjPBCZm77kXRS4ZjXMVovU7eecfeXtxLN+o7mlIH4/cmDBZLPQ
m+WjOlcRqIuAsEDJamdFfLsSaqEtNn4awVZIn5Wz0Fyf/O1+3RROlS5TnqkBBYM1o8xEiTDKD3Dx
XnUl3x9wAMK6Z47u6ZTWXMfhYGdyDGZlFQ5oeUtz6z/MIe3lcCreOCrmQ0Pl5gRJn4Ak4IsxA2Ml
2wjCQ0xiCG+/wsUF1Pht2jGpZI82m9F5BdX1R6fkuiVhY/QGfTr34A8RtFw/dza0sfQrA5LFxT2C
1m70BOHnR0sXutFwmh0q4RuBF3LOZHnlkUOBMyC27qhy1UC5xru7ijm4AIiV6aFv6Irhd2VfTMi3
8pGezlU8/tFpQ7mTD+zezd5ZoKPGGGDCQhYTfKKcbIdIGISBxZEfyosx6uwbrmD1Ec+64JFVJJIG
XxN6VYkjEuAQz7lR28oNN7ocnT/Sp/BAvXtdt2s+zvTJX7OkxeOcoNqQKKHhTufrpUJL2zQZobCo
qwh0Wb7mAIy8ndLhkffyflXivyV79tIMUcN4TMolkbUrn+ablLN1Nf+5zrkI3ltnf5juvhy1UHQ2
RaX8fGrRWZwFyWKe5rpApnwOBCRkFWxkGeI42ajMiCMLei1dy6zSp8biSHJJ14DJpVdosjuVQXlY
MjJ951Pw5MDhkaO5prk2Kd+gTuqMc6Qhl13uY/rBiKtFqPrZ1UYL8Br8zIYczbBX4wJLgDXLHfPK
AMWD7Cx+Fdh473MYeAKg3YB01OTFAxhSxiC9amS5pxocwEE1dPuZNqCZVArxTXQNxDS5rsZcGCOa
9Y82f2YHI3qXH2OdAn26Oj/JF/RURrSyHDZXqbhtc3DpIsiXt+hFjRvQ6LYj+gVs6H5cxU09So65
V9vWzr0/WNpG8l9FhgNr3vsqReiao9f5JMd/4gEgdmSd9Ge1io9Qtp95j95A46XD3B9USRkHDB+B
OjsmW71Uez33R7XLUV3+kfllc3E9kq6C9s+pC0FlcsahxX0qtB5yhCAvhzlQzMIP9bCUSxz2jDQV
Cua3rHQP4qxhGg22dJIbbd4IjRFOh4CTjVoI0WNB9IN8My5EzCRrrfe1ATBKQWVSIPRWr8ZjhAar
tc0L9zafId4+JR2g7DrWqJEIZjVkURic6S9mOwihVeyy+8+skCnRAZYq/YUmH5gEuUt4//VKE9Xo
jWQOzrx/NX7SoW9h9Yq6pxBz28Y39z5pok3VyECdHXDrCbwv6tSQtbw9WVK+2rcF9iDPsq7WH2x9
gs06CMZpGeCzQICVW58mppkNUOJinxWjO6xBKCAD0QNDpWphQNiE75/WsWZbBXRZwaDjwoxVGr5C
cRDyU2xytXE3RnLDCilfGOnM0iCTvq1hvV9e3dNEIXX+DKZxH5G2f2uXauiV6ilVLUmHoa4IiwZm
mZA9J7Vj1eaaOEgG82yuviVFCiIeGfVeJ/mT/e0J7hXpTV3a6SoieOX0OiRgrPUqCn711AnfOkUi
d/OeoAGTuOf+aVRDL0OKwrUfaSysOOhZVTqbIlb/A+WaPX1GBDK9pZYlin3BZeaO82lhFAH2sfk/
3IznmnOMAs7O0PmW5nJknSn5CrI6fqNtPvxzdoY+iiC7TN/81zJei5L8E8Pmf1I5Cqj4SNMLY5np
bBbotI4HrJFgDlezrxYGLwaSP0yPf9Q2RfbFB7hEv0pjIcmNdSYRQDYB63vHD9AIcGKj8ZeVYMZD
btIQLF2bB4yTEX+0LkmrL2kUS9Camzv+R3lBngXvC5mgqsEquRQXPY5p4hQaalLgXUoVO0IQhRta
OivROsnmo73GwnmCTYDJb+CEIS7HRMTaL2x8OYKL9gGfz5u9ixdsM6I87UMT/3qllzId6LXXfOS9
uRd4PqPySJBogbU8nFUhUxPdT8RdcEntUuyPG9ZSdWvB0tzfOsMrWnyKxTqrVbssf+xb0aAResHE
+z8tAqNjiWSlumY2wzYlLOSTQxkc9pFhESGmnD1OBKx0EmUKiBkocKhrrKrdsF+OR4qzMpfeWr8S
rnjOtLLdZuzrDE1wT4bptwWT7WvGkbnl5fbpLq6CRYhX46jeY6DLd0rFptc7uuvCyTHXUrhglKZx
/H+ITSap5g7dfxnSnoksWESw7WCIYqTpNxJ2SlOSL1Vl6Rd9IV7CMJ8zpAh98DkfVXF59TCI6BRq
eqtMgrHb0p7/yn393dKBgBj7Yu1EMk2rUEyuqBNpQZ3PMp9GNZQ4Nt4BOLATgQ9VzXa/5v14XWEu
NbIPaDkcdKOzQdFhm1U10PgjgxhW9TcNehXq+F6cdOUFAx2hRM/ixKm3bzRuwRYthhkcTZcP2FvG
4qfKAqpTJ7lrMXGHdi9zV9+/K7iOBwnaWfp0SILKxI8wjFZ6QOO4N61SLIA+Tdj6Vwro/+NeLCzD
uEuQb8azdrPnl3QWWl1+LviKKkRel0kyEgfaROg7avrXhYy7nltiIhKSaBb4UHdxXLb0r+dvFlcP
tuSiKT5e9VViBvsiQd+JaomAVPB79UsHlC0AwhstO1zhmHq6cAQlLd5T8QuGRXbBrY9NU23TtS5B
WZdyaF7MVmBA8AWKdn87RRoW1y5SPZGdf+waBp5tfRjsENldsgIN7jM+Eg/u9zbiYPAc4bMvzHuJ
VDpRSEg8nPEkIMyV1JfbQ16VvKHVEk5H+jLhQqqzkvFmkViO5Oixxr42fJ95LMYZg7E5IwHcK9GC
MhJadsR5P9PMyo/tuZeM0wPyAApEnrCzM3KG8rP184UZjfxmtIeZPeAMOd9dda3Yp0RfG2ELUGaD
iP1PG+Y7ZDuMFn5/Pmj3IkKoENmdH1pphzJTKdFqtuyk5ryE/h4drZjNiCIKm+GB7x8sqJylbuyo
AZzYvA8QZXb6IAkxLZq3txPSRT2qRFW06r2C76UhAWnKqXC18Xs0AH/pDCT17lMxzi5YKDLVax6u
gOJxuNo8jJWBWzAuC+/n+nIjAxraSZbSO15szo36oOWfkaQJJKvwrE6Bg7OxCzASVP0snxGF9SpS
TxW2ntqbr75ICBsMeXzraNYGXcS4EP7Cjk5O2MrbNwa05vFWwxUE/eAmTYafo7bev2+VmJ03vame
FDaePITIuIjRqRPwQwYi1kuFaa8I6wS7g84oZpD8sXYFAx+kdjJrP/K6B66uTOP/4GkZ1GXj5nTB
HAo/Wvtp9OGonvIwzktfgx+khGvCwcwVU410wZrKl6kPpV5UFZl+tYcnUYNIyWeLtwFhNuYCDczq
S+LLlRreSCg2Z5sxemZbx4KbcFGfFSFB3F2gxFcTH5JkpAXxjClkT9DUs9bQLxZkC54D1+RnToXh
7b/Wk4c4SydMTOIDVg1+uq0J8sj6AvbgmbQR5S/yFDX2b32XxNF86X75Yd5v3nZ8yiSiAENMJZsN
ZYhSXxCYDAttBDtM++1W/GtAAzHCn8xQSCPxC8XmtBqGF5fIZvkvPaHwtGVfWJ/wjd2tTS3dfvVP
3KkZywZ98dK2pXUHo99wyXct+kaohzPEb/mdVm8gRkCwf+tIg3Y5jcysizXcgwSygRYnmHf/nnGq
baOC4ZeqzrK/E6JknBav70ATdw/EERy4xChs/QmflStazzHk0FLm/MPbk+LDjmz3UwegMKdiXRpn
eIpeAnqYLpvt1V+uocScFJ5DhGGOVLgywNfx6Ix+1EKlKjAaKDdSeDev4HI/BQsINuzlVScVS9Hn
QhSqTXR2rWnVlk5trIpIjrSJZMbyD6Sa0namfN5oqRN6Sw0rna280UyPmtc8ePjX6l+OzGyv8r7S
PuAp4tFzTDL3P0Zo9IwDEWId75Au9W6mb3fBomipDPHycsBf+LbUWVDOj+6BHK+/8D5hKCrhV7Dh
HzCdL1qnr/9MYpzinPAyBpD1AmQRsxhJApgsaseONDFhgQofR/S+XP5ZaUjtIvF1bB7uwdKPLg1b
pIaWuJA3xG7U2mQwDDt1DVaYyP6hd+iHE/FBoG2zKTqsP5qaix20ApVB1MrWMb9ccO9bcFfwAc5f
0PcM4hRanNOIayfqDs2R3zNI+GwXoOkK/PzZmXDmwn9tnwoBR2pFcn/CT/9ntGN09yYCDxhH3Q7/
/LQbWTR/iu6GAKt7GisN6iH0Ge/KHizRIWrBiZFiB8U9+ryCdbTLSsB57vEj6as6m1rQrQfZzfdV
lhT0/QgB/PLVquxiAg+TuqUCzKilcUJlSBSmFYvQDQDaMxF6V0GSq4whIK3Yt3JXGw2aVtbqW8Oi
gOsnv6U1P0xef7OSVKOEKa3YMSWqWWvmj/KD3Zl6s/bbrTF0itOpX/EHnrLsfo2Kg1PXMUO5bbVQ
SxCnfFa1ZLIER5MxCLiZ1CJ1wwrEEoVm3j+SwLMce532wXLRySNXm4kpeqFlcik27A+EOrlatcU+
+XfaSwiqN0xQmK99xY4zKt0iZGat4pWoBV2wOk+0pgNfp9FMQP/I9oMJmzaCHnqZiqeT0uJU5QYT
caAvizUNei4aafw7xucJDL13W9uGYnaaJUCqnwOdHcyIHSXqQ97XtZcXLwk1UV1umskX1go7IvCw
XvkicMleXIRvyCK86jypog7I/0xYP6qhQruucaJjBGhKivwzOEi76WGGi0I4OEov8mKh5tl4QzAK
gPwezQiS56yC5PvlMoHESJ0BNAnThKj9ygTP5KINl1EB3SDv/MlaiAJ8VnyDGSsYDmawlyQUmuWz
Mrb+bfty/YqswK5x5QZaiZ1OhxhEiCrQcxF4wTd6IAXdOQzrFn7zn9KicOmYgSliAKpbt6TC7lOA
/ibF0bexTfG0DsNYV58pI+6eCTRzsw58ppx38m5zrz7Jw11YDWNShbH2gubU32USPiToYYsgktga
vs6xMYNgistIlqx9DlggqNYnPH+zjShqJeKTBNt01qWWNCQ4uP77a+30/YL/wiC28Cv3DCzbS7/3
GcP+M6wTZEMDbdXqoqmO5iiHIvTIS7UbkLPuvBBoGJwc7+2d7nCxEb6tWAAA/Ginn7GmvfE9OdeJ
NFbIG7iiu56dbsz1O8H4i/PsLnZ8VIcMGl98a3aYXO/D2ZTjY1QcaI23xNqt/ElxNWQriWD/7K+R
uqAo2tTZSVR3VTYNCcrylSkCBGu2Q7yQAgdSxMz4agcASI5aKuH1k+276wVTPOg8UnVwZBGVW8pN
Je+NgGRUfazZphI8di2xfx85GG2GPk6C+7G3tqAOEgfjw66FpWtgncIIf1rO1dX7x1EDvkjcmlCr
xjGq87i/FwDS54KRs26k3+NhJoVaxzF5/KOU9YBllO8jRNaC9Bowz+kwRNfS+PH/M5/6g0tLoIDD
r2Rhh1uQWRHiLZEFw5s6zpTtkrbmlqgKL9EAiWPv3rqpGcg9zXTLuz5JznBl67kqRJM+I5l9j4pM
xhxGTBW8u8Kexp25cihEbNoEeoVGuepZ0tjsQlXEhHux1gDQ38aOVpeTvmU0IOTJlVimnCkNuMpi
umUOS3DbfDCf+nFP+qKSPbIrSSKYgqbkDFS6JbPWcxpWeCdNGJSLCJrOVX6CFSJ2bZM4bUgKBmYH
WOmoSwr+j/7COIPx7ytXuIg4UK4wJXFqpbDgfyeWwOLsDa5/5b/K03OjnQwu7B3I9bS5zFoc2m5f
2UT5b+0yFdU66Mc/S+orY52y9hwEHQG2NQS2/SSnir2rYSKqKV6rpWcrc7plvBiXdwIJJ9I6qBjC
SXJcdniseLtXRWE4t7+BPsXGaEIw4GE20vpQHVKdHJv/17rIh+Jb3H4B/1Lr1w/5BgEu9WdAydT8
2ppHQH94MdJFrh1T379OnM+Zp9xQY1OdMdzF3ru9QSaB7ad27qS5n+706SDJDMDHxpUQSBs34CwX
eRtctTfUWPhH9MbS/2aMmwHZbCDXCbEzAP5lY9EfvLRyHGg3U3QEcENIjtGVCHfjrDAgA5sD+4mE
8t/JZ6zTOT+5oE6e27ca8hCpQJ2qDmyejdgUvraX7YOqYDKz8JXJ/WNBktDhLUxzgQR7lDSpcbY+
fnZ9mykHSr8HAy2Tu8jNDSUhPi3RUt/kKvAPleR3DKMpzlNwOFjAQ2GscKayHJJPzMbpDb5py9to
264fS96q9C69aw0WrT6LgNs/kOSNDqG1BLxobZWZDJ13BqYchItTAPs+MXL00ar8tq1S1fjabp10
OU0fBNX3CCZhLCvEXP0JKXggTQBoI6ZuR0TGUnqRpx/yPYfMVLIoLGnVFFW8aoUTrnvFVhtshVOc
V/b0hfOuybPKwsGZZ7/ymitgDGEYS0JQ1q5mFtoLxkCTJo/RCdrpFuXhlfV/WbenFSowLIofENH5
IAhxkZbuuB9ULuUCpYlc7VlnBpKY1poDh/NeywPgf1v7ygL32qkVEAOfwGdG/aDaGEssugf8iahm
6NzvFvuw1LZtWjzuC8zYBYBMQkNo7Vb6UapoPqQM7mwR0CkY1o8z6+1H2/NK0lHCsrOFMKTcGV6V
hrhcchffMaf0GNy4De8s4Rsb6PWOPKeJld80pYQARhw6iuGZcg1EjmCNxelSjx9UB2Jvul/7E3VJ
2LO8VnAPLIBH8YnntFAFKSyv1Y9OiTTiPD9VZduRx1CZXczEC79DSV82WtH9gp2Hfz72Y7VKTu+e
JpZUdKy7tnDjPDZJyWT7kNIriLrehLycsEjsqkjXRGkEDlxZcIWhegeJ54GSv+tuJGgYxmeoUfrx
Fp/I12FeDa4nPffl5DUZ3pt4VAFz9dZRkoLoHT1ixXd9nawwIOlzQvpJQPlbrBGjeG7YdsGtGdAr
Eq1kvF7T529Yncew1RqJPEhwI+v9ZC83Zi5dJoGFvXHKF4RLnjaTLq1CVQB6IlBRK3UQSG/ugNyk
YNUtdYymS2JHa6zXS1A9rODvKktlsX/bwSDDoXHGaMPCuTHEWTpzTw2kU9Xsyp4v+xldPibG4B/P
3yUKMuUblwAnJZHAHYnh0xGD+hfSL0ndmjXGwLflCsfn1OxnO1bsqkVLMvpbrgG2PmeilRrkH0tm
iSVyqnxSn64xZjop8YqFVxbvzBQ6H6+DEiUT5fSkapoYjD9VfvvmT52n2U/L6+htugwnmDFYPJ2X
V/B18oo81VrIwFFwVLAkm+Y7YXgztxNqPmZ7//f3FwLKt6Z5gLuIkb68DZHtPEbhEAAm1CdyH5f6
jqzR/4gk2k9dzXTUFdBKC923KefWNmx9RZGPQ6TzqBVaFTWiCQwqs2nEm700otLZBLRGBMU5/cmo
Qmfgu3GTiUDinMD+fOLDYPnZZobudBo6m9jhM/Zrw/yRNmlB8v7LosRmxiMvNI3ucFT50RUjR784
2Z0lRdWgxI2/pearlwC129RyRu8jo5/9hm15RYdxYFA0DcV6Am3AZfF1GTFsJLeiKT5zXWXWFraA
Un2aRfwbW0G51aMIatdLH/kGIpn4jHrLlx3tcurPznR7wVuoXGDctfYNXdg0K/QT1akGImiu9Xx2
zmKt4ENlaKflO0UEN1CDNcAMvgAQtEZWOug0dR2w8cxQY27YvWgkvt4vwlN6sgWgcs7X3z3aWFDh
ZbE1TcMqbMK3aUblK2IeB5pySw1Sqf92LlpmYWN6+t/X4WDiyEtQTnk2Etm09TzEmUU4PPAAHj1U
uoWTqZztPStJQwexjJqDOGiRAdBNNfRlhLQcLqlCQp4FmC91qeZ1Kw3j3JoK4uhDGElT6UP5BQY1
gLUM6gyYrn71zuYlU9Svic3yC8u5wHehU0PfcgZXa7lzaCvrk+LePcI9/L9CUlmKL0T5fWvzRF+n
kMnDxd7LJsNztQKe+lrFQEj/VN9MsytcV+KXI0Dicp2kD+kcOAyJF9zlzSkQ1Jf20C4lYNXjSk5D
Lqs7sPDqvrc8buY9E1qAdblBroblhosZzsKp13Dp3CW/HLn/hKOZZls9ongEb8YSx+3GAvtJJxc6
OKoMj2YREBPvDT8BtA2UkDl4Ew+po69JED/0v9NFww0IRm+xlelbqwQcEyiH+IuRoDTHpSG3JUNf
9URZNU8ENXL5DwHpiBV/4aNKkxSmLHaznrVhC5rEaygPwpdqBCIAGOoIIEdwVHlL5DEB2Og78MSg
h1EZJDYsypkMpwI+bbf36VVUgoTbbaYS13ww9838x6L9nVoS9baPnlncOghRXaD9B8+icCFRwMk1
MX2OeiRswuNdjx7j9LBYRBUi7QNtv6wwtyzRfNOJ/X3yq2fjqBNYuDQlznW03l4SQGP4ZSH9N480
5CAxxTC1LaFLzjLxUsUWYSimpLrkFi0BWQ7Dp4CYVWUxK2K93+3Hsm9s0piYUiki3tYZoxwA8c3+
PpNY3br2chXulac4aexrbrw+sCN6kk3DcNVIKuS8mhjmL8o9jhZNNX0Wdk0ry1dC6SYL1Nwp2vvV
ptTQ2shhF2NtoYpNFYkoEyUKVGmelsj5hWur9qEJjysflUT5uDnVLrRPdxTx9xNa+ZSY54s305X3
DQuOIOzz92HUh5II0HGirIErCmYm7Q3oQ0wi8obAjBjvUwfCDLkwEhTDfyXqnEg2KC2oql3wFD6g
bliYpt1AZf0nKZFdB8lgc/s/4sbua2dH0+uQTj/8Pi6EhBKPmXhE0/Sxr4v0BFdBsfgeGip+fU2O
QfdwwslZkeHhMWoKlU2/qKpSnM2j+j/gapmP+MzBSLZL+Epvd0Xx7YoRkwEZzvxwLo6nsriix79k
rJGQXer9vB8WttIeLecpwGonAGV9Uni9s12ovdP11A0GWHf8s8buRgYN4Uf1oZheoyvPeqhhVIvR
RT4FDi1NHPOTK7XIYBZc5A3Bx48l6eiwD9y1Ln7xxIGmcaI6oJ8Ys0LtFQPLfPqJihseeA1RFjbD
6vPNZZFlgR+0zzFt+VnVR7V+qJjy0yN0/cM9uwnfA7Xme0GwyYK9HawkWJj42p39hW1VJFap339C
aOwR7AiIBov1TYwQh/hyJeJ2cxpfJztluFzYWDzZKgvcrvReTwv6+yXy5OhuJ5HHazy/arQw3Bqt
kkuCx5S5hoEGZnFvU0EMSuq//N2oskiipG8cY6N3kswJa9QjVUqeWZN6b0JTOjvpVR909xMtj/7P
ie4vXWv41QPFDyNttSwwS3iXBNUsPljkagz/v0mHOeJ6+boCuyIqg9dgkMSVGYp5Q09Uk7ZJYlbk
5K6iKwvAnJ+Ir0aV7l6VcBDO3nBiJlMbTpnwo0gBgBq6R5Ln10d/7117eQ5Th6ULwfeydNHTfaqv
bwa8Sl9zDoObTwR59ilzdZuSIOlTpJo/1/diXLa3IIIz5X20Z77FmeMK5t++SzjZrGpQMfsVLG/6
eWlm0WVJDUZNICjHWEqK3ICVKBAoURPGE1XUQoTVSPDOqIqF13wjZN3t4mNBbdnecmhzN6254+QZ
qHdZD7eegXBQ7aALs4qhjza1sqi7k7uZaSd11nyPDqVIhcgZ2SVSVFSSiw8MpJOQQnyZ/SahV6aJ
hFSN259P1DFMbsw2itXNPgUGx9R7zCetGTCTOhJJ67lucU7zcy14qTL945mjPoREmwyVLrvAW+/I
VCgU/izvFO5YNPr3SN6c03hkLZnOnAsZcw7we/6hBWFzwjXvsJwL5r0eDY9Hl9OJPPFae9FnBhVG
5uspUpHhYYSnPeE6k1do6H4dKSkGvyMUuQ5N/2ZN0TfQpp30yf4JTUMGdSjfDDGvhEYHOnXBz9dg
uuEqbSSKlW7qJVgIrJ80gH1i0rWPmgnnN9W49igQ4yIninZiyhGdXazHr8vSeJOWk35uXxg5j4C8
oG9U7oBsp5Zl/NagjoG3R3ohXY1jXrdmnLGgatN2Pr+91n+v7XxU0lArWdHT67JjmC8EkavkUW0O
2buI1tvkwYGoBtHXX2cY+5QNNex9V5eeQ+5MKMdm9AauJSXXa6Qgu0M0D+aYYIkz9TbSyU2qV6fG
SUlTLuk2by0bbLsUxnOVxAjCHnzfCG66ML+d4Uz5Mzb9kwycZY3b8pDtMAY91Mhgo4Pf+63YLATy
Auyf3qWcGUxHWzZcxxxb3jAi3cNq+vJ0aP42V3Z6j/AIs+YkIxhAzLNR5QB8cjhBF+XFqBJExiIc
o3gT4U+4aG8tvIHIezbRwuv7sraIPTwo9SK59K/tlw6du+XUOAAnIjz8yxHnNg74VQrXRk2FzVVh
H47yxz1rZPSX8SgJGzVTwVf7lFiBiEmV1jPP7Vp4wePnhXf5Xg743ylFi4vcZJcS2s75w6YSq07Z
abgk34p5+4JWqbElJQQut+tt+E/M9VHuacNvYS/nj7IvnqKEbGLMDhQb5emJM5j8A5NAqWrANCK4
+qo7WmAAG6BeCMoHRYP+3ZaTnFBzNQMtMf6SyBD/rpuDFsOnUAhvMbPhti4tGgM830M3KON5q2ml
a4CvOQGBx6vd6ZHQsElBSQx+IljhhPG5UuRJXfbGI4M4INWxu1iZEmjGnU0pxiQ6lPcHwFE/PVe2
af4e8zU6latFssZjeVXShRSuChKyRvFiFPry4K43/R/vPKnxF2ii0VUYPO2yGVH5yS5j0quIIEZY
VrsEihjlmZ5ltkKbSy2Tkxh0JvwQcgyHZAewV57XyaQt+8WQjQxlhEBkqy3MTAJh6LW0prifKVu4
F+81VsBCUvh20NnBUDxGWO9Da7RgVVxLcIcR8HU6oT7IQaDWNAPniMK3VWypa1nL7uTX+AyTpIqj
FI8XuKUAJ+fqnKNaWcKxxYYo2E6JrKt/pRZGEAHvcrijeZoCMp5x3jaQ3sqk52WHdTLN67MlQrUM
a0zZJ2B9RET6s0Aa0twarLc2gTkZbWQTPtMIafkxutzPqnmbTa4F1leuR/JUsdSii2BsALYjHhwA
sN6euIQDs73MTl0IS3J6NgcFc/O9hRgxqCvKyU1Yw88X+A/o8dJw8sf3QsG6ESTHizRxgTZLbRq8
KN/d9gLX4tYalVY0EocLDc9VaLfB41kO5fnVvxu5Q63Pt+eStqorIcnB9O58ULDROBIhMFPlxeFd
/5t+XSaK1hfA3tiDE0lFaG8qwx5mItW3p4kNPxD24GTP6glax1UUW43K2Weu9cZDWpAKwuN8rB6y
SAm6sQLyPiPLYTNhQgX5ZWbhV7F9M8KOoblp8LDwIS0pLYbAQJZCaAmZ8NLMMWxcJhmT2grNCXzH
FFRvr9hxsbbACRSXthtnleGtC07Ctsc7flew369T3Vp0YTf1rX7KWf8k5rJWeQElmc1dWj6K/jRT
OvtdbBwHXRmY6RHGC52fNGJFqzQQjHjjzryW9/5deR51HbemVZAMMiXCPS3yGZ6WqHyz58ex4Hxk
O5mT5kGnNyBI/lwbn1oXmJDqGMbMpwCPJR/MIA2wm/mJGLWTH86iPLkrhtZKRxycRyLd3KscPI3s
//vGS/66jAkTneO672wlK+Xa0HGKiuzSdryawBiG8g8YCjttdCDF9hLW8zi+9R/barsiVVcarx3b
Fh7ZJMsZFbQpztMQZbforzM2ackerJ865pHA5MA852/WKZekJihTW8D9FINYMT0A+YmmusP0x18n
2gvDf93S0ZpNM+i1McHyc7ozyNOTlntz36Ug+8EytrtwmJguyWzDznidTi8F0bHQL0tWC1vNYDAG
/mTvsADj5UOwcD8geuyRNbCuTBGoty9/abE04Us3nv26OkcA4KQ9z9wctqybkDB0qyvyWQ28T/uR
fOdMW7hDikZTXDEdeaegf8Pbwh7jRvNwq+0P8QrJJEwNNrxu9CtQ3BpTaDxLE8uKoUukWyDKHLzx
j0jipFDVTnsDJ6T5/aOtcyIXKkkbyoDlkiA0eaclc+MdTMQgV/DJuQM0UpxwpaQtjPwNV9w80Zep
QCFv5ZejwqD1N3MNS3iV7L09qdB2156S6FmldCn5zPi2GqcM3vscMIB5SxpCo/ugftI21hM4ASOY
9+2lKExeshxIxAY7zP23N3du/GBauEUTxM/bi4YPYMJUM1JGKCxrYIaVOlJeD4VXUacp+FD37WNw
oso1TboT/xROagXeXcexWXvAVAZULrdf28BsOuLfHRitq07F22+U/fQy9YsEahu5FjLn5PlR/OAT
+v9pY52ad+YCiVXVVyqdj4WqyPxClMDfyi6N028x4ei4oM3YfG5LEQ/EH4UzkalJbv/FRl5Yhg6d
RwXeQHLkBFzfQQoJWnMzbpesGmJR6oML7x6WRjhzEEUZOqYFWke1D65Ovj611IbSIM8DGaxmniPq
R44/fDfqUxIi+p26I/6UHqig+jFExpNp7mmwUDZd2GOoi2/X1Bf4blfwy/3tQOnqmv5vWRdY8+xv
uk0cPLDCJGBSTv/+mFH8YnbE2qwEesNbJ2rBpBqJQSraTo/GGYEcbM0vo2ylroCbKaY+tyPkEPzT
Yapj4v7dhpzLbmFy0q3/Wt+dNZ/oGXDdZsAI1UStKOnxlw2tNgVK4S+qWmuYnxARag6Sth4Y68xq
F1n3vEoS744Q58XD2C5Zt9IMfkdu6ImFa1C0R16LTZm5eWHcz7JWqODvnNdNazBcwmYDIXt9Zbsm
5gmu29fLZe9dVj6Djpa1uoBDi2GVxDgSpetwDYg0UxYINIM=
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

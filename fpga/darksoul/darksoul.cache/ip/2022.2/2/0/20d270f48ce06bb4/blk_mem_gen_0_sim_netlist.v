// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:44:23 2025
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

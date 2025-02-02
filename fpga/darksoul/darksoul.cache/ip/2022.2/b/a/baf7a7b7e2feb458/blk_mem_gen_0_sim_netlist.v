// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 12:13:31 2025
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 12:10:08 2025
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

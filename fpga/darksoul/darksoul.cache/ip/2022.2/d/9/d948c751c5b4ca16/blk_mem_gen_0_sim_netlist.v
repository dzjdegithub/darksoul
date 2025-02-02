// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb  1 19:25:49 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.466975 mW" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28592)
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

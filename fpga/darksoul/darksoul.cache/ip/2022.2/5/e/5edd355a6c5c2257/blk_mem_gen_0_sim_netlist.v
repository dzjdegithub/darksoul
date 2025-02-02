// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb  1 23:46:06 2025
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

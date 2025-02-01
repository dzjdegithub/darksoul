// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb  1 17:14:47 2025
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

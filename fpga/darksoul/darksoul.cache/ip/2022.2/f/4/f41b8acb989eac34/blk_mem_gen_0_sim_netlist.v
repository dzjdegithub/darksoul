// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb  1 23:52:31 2025
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
Iz68HzCvqIfQoKZYYHw2c0sfdvYYlBmUJM6rExNJaPGIkVhOKh6rqpcmX7lwGamOw30Gbrd1gcx/
j0XcEcIerKb7EShlF0ODyX+xsM4faqhwwQ6nyjvRGIZ5eQ5+wL/kfT5xdJhG6c/a+G74iq3UweBK
Bip3HL8lfmJlWv6sVb9tBytV5BegSDq86DgIHyzl1F9BDi90QdjuMKpoZH3nywDisM96hVSUVbaY
Jbui8dg01dIW6jsUI20jSdYFsx4QHbF9VzMDrrn2PXR31GdfffxD63OF4jt4/KUKVUpVs/QROySB
fEWGJY25tURdIx+acoW3q35S9MTlfGl4EDYfJMt0h0RAI6aSSvnzuovjFFM6Z4b1tBBTX2XAZqIQ
zpgGHw4FwxnDfrHlhtMPTQWgWUXsmUqHDSqqjsZ6rMI0jKWTsOW05bF5tkyJYV4ng5lTBs9872+w
fN6br8fTBw08l4gwSzTJye2uTIxK948olTzgRbGBlQHV6FjXmR4fTF1Ves72i01kqIE5ra1mPAIu
ZzLdDLklE4ZExR4CFkngMNir5mpOhLLuivNtPq4N9bTm7Pvh2Z2+FEaEgJYX6D9HtZHoJLygw8J9
TT85AoAHPUCyvLcK7ehYzdcT0l5EAWZkfGF9z7s2Co4lPCyiQTVVVYhnRu2PRDJxjQ+Y39RCMnDT
FZ4sjLWhnDiF7xpM6mHu7/nASRvTYabKz5+8DhuU3E+6cVTi7JsNMBSIz0ULrvpPGe9sFkhwxWZA
nbr/ihtziQODYj+vKhks8jqMZ+25gMyC9Me2t+W7Tn+VJ4+nzdEuOY9kIKW+rcIS1tdmPhE6ZreX
FXKXFnmc0TPQOmgStkZc6N0BV9gtehBOpMXM5POaW8n9nzruDtztPs9XUb/W8q82aJ9xHEdoSDcI
c4dKQruVto3ReCEDWZ1cf3H5khCvxOqIMXfy661d36XcxJdVsNSyOwqw+qlBuFnzhctZnVUZkcJA
4JvmM+7paYt6/0r/DgnvaR6BgSENYAHypSS6Nxh9JBzR/TnMHwot7y7n9MWtyqMtXQ+xvaOVRw2v
1O+XZAXln0N/jPH8fkUtfOWNEq2BaF+5wWlIMxrdmEcsLQ0iKldOvWaao2U1MWn84rTEqwQEnIVD
ikKH9A4B+AiZ/qRNf+4zGoPpgg1ZnP0s1ZT99PcC2w5HKiEKBf7NIKrVRlfFjit4r0zV2AKSut9r
X9OqmvrAn2nrUK1bhl85vQh+wK1sdC6p18N4kexo7seDex0ne+TM6MA8wxPyoHwEDAqRH0xBqrCl
zEln/pXce/uU3gHbcGEVMb/Et7uN/wN78irVE8KRt8qmTfbXoHdZL56Fei65CekWmWqR2JvBSd8t
O6XxRFhfE67c+tKkfFGSUt4XrJDiIm3XOTB9+h/cN83E851ySu/oFhmYSO9qe0BU7+8M2/NmpErO
7w07JGYgL4z4Qw6TVLxSe4OgAEJ06W0nd7nEXA4NVnNJ7QpUsxNuuwAC7LtNp7TEP8PHtibCJcs6
ECdqmi7LcY449+gJ6vJ5fDxen4/m948vU1wLgk4RESuthYMDlDJJTlTRb2aejno3vcdWZMjrwCMT
1IA5dH/EjOFxwHZbk1UnmAtqDsE4MD7GCKwZdnAB70gvUA+CCm0qmW8Sjcb1b3xX36T5sLex7h94
56aDJWqhcSZBwpC86uvaA+Y4fQgCoN5bF/QJNwPY8oKMCisAKl583w4ygFMc2upAWC0pV+bdE7yG
tv2O/zEBZuN48LC8ccbOlqHhK+MVcquh8mlMCExPFYCiF+3UoYyiG0HEgqL9yJAkzqET1n9yLCfZ
AvBUwpv0saehsnsuIZpDrZPqx1TdRAA5fulTLQwuY9EPKNoZBuSdJBEEKwZ7L7I6yeN3QfS4R5vw
EzM1X93fMN3FIexjQyJCpV8v+hnPvSxJ6IOfNC/NoGSJ4hXO2MPrWNvR40v92tlTsEfWtm4nRHgd
j5FdrQrR+Ulk67OH5S4ZT8olYFZZKN4n0JGiTanDP/uKTbQNtaiQoSM3V2nf6Hxx+H8/vEjxdTkF
HKDvL0+riTg/GaCyD+erlGzWJdIjQMblrnvFM4N74JKNU6dPu1C+TInwX1fE/CdG6yNAYOP65p5o
qCCuyOt7FcSHAUSUb5nXaFSPpxA5ODr+a/WDQMAm0fwa0y3UaJwJAx7Ap4a5SVcpOcJNf3vWBJBG
J3zqqM+UhrrWTK9DslsApXuSsJ3jV2zHfhiiNt+nkUplUwhhF5n2jrDtEgzaNP554OLZeVJKmF71
kfxvmBDdkFIH8tHiYCVIkFJo8NXyNpLrUWIX+rs/xkX9mdmL+85N/46Ud09sSKJty60AQ538qO/e
1GtxNnHErnFucs55YBaXozKW28dQNGngKbfhpaSPOlwfe9rO0wiNYCmmmRb4OrT9DyBw/WNiIMxO
Esm/+6WK3Q2jFoiXyLSt56rOYXOF0y3rkPVS1TRKzu3IKA27iISVWsCUvbTZo3suxmQr7TVSj1Ud
Losoqb6e91xctN+mNQK46u66b1wJy5a6ccSHfiNLinwsQm1tmpjxg5LNGl64HMtPX9zvkQKeIFLb
etiez58Kk7pM7QVQfOLtoMeAiOlFx+25LeZgjwfwpQiLUTlE/7EQKO5sy7eiM8m11BXZ0uf7hGG5
5Z2WlndS8z2YEWbG7tg5ix4ssHp6j4R0PBe8PCmofp9RHSyX28UskyINWpOlbiKfTR+rmnNFCx+G
Xc8BwWmKoVXipnQeO0Wmxu4Fq6d9/jAFhmgKTG0IEdLN4CgDCCVAySPgddwz65RyHUiPHlx7EOjc
PWZptTlGp3E5xt3cyEb1G+LICAOQRsnOUD909p7uITCEzgAz6lub3EkWref5aFW8dxtwbChMlgk4
QZWucV0NxU6wmsDF5k1G+THzc5YwA8HYf9fCL82UHQd2Wh22ib2tCPgreAuojWIYUWuTBidrdRtS
BV4iOlTzFxHigBhqIUQ9Ol1h8ROiey3gBTMoAJALXQFy2geikLO2sRjodYmiBicJL+ee/E9FH+qD
rXYBPx9gKfa7A6fQA9Cwn78YEcl4ESX1Bt1AogYuf1hrzMVLMy59pqsB6TYnHGnOOBE7+b584bC6
sJJQpwySq5AXqM1xpYNFfmmycG8EieAP1Ovo4xI8mhaaUhz4DyoojNEOD4Hk0//pfmCbZw7L+Ebm
JmNM8bZDylYxrR5nQss1ueOHoNsQbv47gVWzgKp0BoFMHQj4yyDJJCyNzPRQdtkEu5ei5ST8VYRV
f7/t9n3d6wjWf9HKP1WAXrYOUK21W6t7IucVBf3tBIIngPqiGpBqnglDVExX04hQrcQliQNRuvr7
C5eDnGCEuj2EJ0ZF1D9q8h5zDiM4UJA7d/nOoBsJLPVtS2s+q7xfcyyfTN5MP3usxmON2AcpchHi
uAWOv4m88IqePmCJrMPuRixCU8uOTr6jZYNPPB+6Dx0SgKlh+4gmXJeWqtPd/vXuaFzY2I/KGX1T
8nbQZZGlWwIRFXsqDHwmV0F0cHo8EpSdtmP2DDgtSzxov8emLovI0rUDI3AgA/02dr04KR1kR0oT
ZgRMVRW15gW7VRhGAnWIPXbFivxIhVBjy3jTPAeqmrxdttIbW/BeoBEgn7DbQNmMqFJL5gIPVmnu
OnDjCnAWyW7zdKc6WheBn12EqrCCQ4UVrDVXgxdA1+6/XmEgzaEWJweZ5N/RXj9WgQwTWhx5DcZv
/OShRoTGvAPwHSqDusveCyXyZPJuEXzihHljXO66Wq1r6o0MlgvAX2P7Cp/8wIkbzj8/z0io2nvJ
bfWI+eRoTvKxiCEJJf+ZLNA44pH0s1Pr8DFDQVfLoAhTBxpYVCcUEqYcZO2QbhrrIthKtkM5jmEl
TaCjltLLAorTkjlBROHswWQyNGxxp3wQMB8lFyzKJcy+2C8Ou80eA/sOtTmTLsv2/r3hgke4LQtm
rSZJoIRGmWMIC0WBvKOji3PAcuKDNCfclzFC0MdGu4zMrKqr6NoTOpGB0MQ63KdJUT4Wo6fhjX4C
dS3PlX2RACW2AbnyC8l3syWqm0vbCB86WXE45dKSygX5GsbUx+QULjN9MBliIv+EqkZz9M/Ned1o
IzTW5r+tvhDQEkCBZH+STIV7L1QFyf6yhRGbzkZepWe+q8qEebuf6JBWc0Pw6gtOcPhQWrh2Il0N
JAd0TWLWgmbyFRHuqW/ne7s7POcGgghjQSmMcBDAu2PWk2IuHrUFUaRT/D2d+rdvOZH76OlxJpL9
ZuCAB10fogybWoq28WHqutE/DyU4GKYdn2WbeIgK+BzAVWUQ1JO0ZXQUfvtnMsgdgyEBI79QGXTF
J+prNm14DG1DCY0nBzxgPKRH/LHx7CdU2lGM4GmZQwBshJMqTAXbJB9q7BgOqGWWKqo/ZOfRpGQR
hdi+ZTxpB4dAKOW9ZcJMJTlS8VGod/Qyz82Z13HqjTePiPgMfcV4IHQZbyPjOR6ncs5QwDMzNYEe
hhmbXFx2UtmRsMDbxMYDi1aCloR/JKZbVkeiaB7oCbIwTJM3jp8rh+k/P2QSsUXpebexECh9xE24
cVH56y8aADhnz/9M5aNQBMMnesVOFeZV74GaD9RhltbzwgdjWLOK+G51YDomzP4hweqyRt2h6XGB
yCrWxibgkNKjLVPm1/KpmfZSSy203yNb3Zw6dXZOboYk1jQs+XWyVjySQliNQ2/4+Q4X0ycemqaw
pCBMKuYwoFjPD8FksxsnKg5pdWtPLzTYsO/QHryrLCVreyBJkQzN7ySpkR25TDrhGVrcT1QJN0Rf
qWQjSLqnOQtCDWaxgI7nEwcQKsNtFIK77tSKoWxDHlT6QpF7oz9sOynsijUu8d/9UFvuDkWAk+cy
ADcXqR+UHzvlHZ0zkUVS0y92s26M9T4WsXhu02jGhSrXXte2IGULFt+cxlMD5QCydwb0hs8NaNrO
Pguis1RF+dcztwNHYp2by9XADQxjoGEqiloD38R6pnwhjyKOeWfgR2al2KDTTYLPZsI4Btt7fCFy
rIEitJ1YfR56i6bOGhjG/NJW93kwsSw3h9j3dW7u4kcpKAQVKVfM+I6msHMnsOzCGH2KkbDFlpNS
iMNiUbRMCQxINSWS2rHyEUN17/4JuV4iZ9mbChaelt7dBkAAWsAME8Xt++PJ6uP1U9owpNT9SBit
WXHgnFXv+Y9/8pnMux1dMMEzj7pf5zr/QkMxyx7tYYbDV5z8nTZs3tFtiiBqwbRmcEfLEqS3zuot
pomMomB8nhvwrqeIYTf3jEj5yInLafs698jBekrpC4WzBHcxs4SitggAaktn6PqFyaTcmgkEEoSd
/DCbjfLmNXOU1q6zHJL4fYmJWUmIasE2CMDwTAaJlExhE/4zIxyCONyV9QgCro6FeB9jJCNEWWdD
CImEeuGnf8g2Sxd7Jv0sv/bRYbIU+Q6hx2W4l0jW1oV7VyiKJ6bm0SQ/Kv+muBsAFda6TM+fPLgp
+Eb6lRDdKDmgetaIKaBpexZtikt1Qf+XHykWC+HCpBGIRGR1vuObqRT8eebzx7Zlns57MOnHbePY
0/yGzG4zkJyYpNxj5R5meX83uB5vVVMspzArhcgASTafEKqFKzyALo1fCwuHUKutG/Q8RnW812ch
Ic9xemrgVPcov2hJVUqZ0ZuDDUEUzcjWXEcaiqZR8rFBXM2bXfgwqyl5/d5F+di9VLPr/VzvHIzw
O8I/iNU7xhHjtVPIRHFbR6uf2f2v0giNKcGSIEMTCHPu1u7RJGejHZHKAjasUhKTgVV4hchFqaoM
D7wZMNSoyMDfLoGCS90M5oJaMK5Cgf+vw7pBjCYuQW9pyvxRr2CWIHrQ+Za0DnqeUPyeM0pdB2eC
3OgwV5b5nWJzbVSdiYDgLmCgHm5fBkBVqm38m379AnAPLbERnvm1YrkS0ZEybIbapsPC9mf6NH7j
bBndlbWNg3kAZtYSeOmKWXbHUmBocir/Pt73d6kL8EF7Cui2TuUBMHeCHRPlT98QmDl4lAyq2eun
ezQf3/4fo7ddbP2dwThCHfHiuO4VUbKXiA4mlw/u0e1ZBIxUFSJMHALnsKKElvj3LUDeOwmNh3/3
UTw3B5evlpWc6swIcg8GqwwinpkBwOQBEHLY7u8nbnHPISfFwZmuwBWWIGQOnbaZ8YbPMMUD8xIh
tzUKuhTME0gEjtBq7kFtQwPD4xIzoFNKiiTiiKI0tk4OgVrkL5Jup8uo3OBIalXQrygs3NPujMWA
EPD+38kXke84lNqn7r/m3VMkvEdWYkk2RNt/dWzvazgWn4koJplR8bTTbvJi1eNt/mBznl2ocGWo
//uxJJ1X1ZZvV/h19+bqlgOgQ66Dd8iLXnu5vdHLoj/ZI18fCPZdrmbVF134ISjKRo0oyxBJ873h
hBWmy7of4ZteXAk8fEa1BUkMC4wBJrwnbJifKfzX8I4kscgh88pO3U4Dasv0fFivKxStu0GQ1xH9
tVJpn9zkXjxd8kP83ieyPENXk3h72elOi/DU+eIfG8JzUrGjQRH+NLgwbrSx3KqUb8E0PSxFgXtG
07k/SRZrRNR4g4/WKyQWy+xhRWU6JkzSfWWAChbzH1W9CguJbIv+uoP2I9xz74FcJgUlHJLtv29Y
6dIwiD0+LOgO1ejlDVJbbvQk6vi9r5kZjq9qocS0FnBi6beYRPuwxEtUOpLhgoFxplCWuLoDtbyv
9t2Eq0rdoHdbGKBDntE66DD8T86t9mlofsDO+NgecsOe2aLdf5ZJUGqaahEO8oR/WZjp8OeVdt6E
J5xC3KmsA7349xzZrvWV+yqEAZE7HBVlOkVwJXo3PmceXVB79Uc7hRbk7+8OTk9IReWoHktRBqTr
c8wC5TUquSitGvNXDuuZyBNb8xmh9H8ZXvmqlqp5YmnXnGzyNyX/ecgkwq9t/jpJtxH90bCQd06z
QcDJYvFsOAi2ZoLrL8ZGtVmss7NHHIOe1cIsElYr9v5MMIpvZRuIM2C2fE0WK4mmZ903GJkMPvlb
J/4+uW4hkcAlNzww5tPi/cZ3sieBQyfAmyft7Ou7frZEhT9v4AHU36fViKM3oiiy6aiGOZKoCeu3
uT2fwdaE/3zB89sTPPe93pc9DRAuNWhIGUd9VuvLvP6CFnDnWenM8XE4Iw3VMTpzgK1NVlVmfS2n
2G/MMhy5Ro4t3qM59ANINIa9q5vdzx8oXM7INMiwMXIgN8Ia4pFeS//f5GOOWMk+hzqH2S7b9K+/
L3vCTBHgwQUjbUkzvXbsUUoxkznLH0PkcJB5Fvhy+SKv1wgi0o+0BKbdCTO6K/t9V0qTBwFj0d9Y
PQHjslO/cRR7SK+NwYJqeLMilFoFw4+XPH6DyjsQbqCECy7QlG1Jem1LpZAxej9dXJS4MpbpWDmG
FAVz0BcU3/UjMLt8gMoLwb3PzZs4Gl4ELOBsBLyE+L68b1OfAkpf0z1nzFQDa9docYwNa0sI1h3d
/7IzLBYrRh05O6Kihgia9YLZ9LGeTmiuncJ1cQ8+gPOrKOAtPcVSccyGeNUzGsFvEvH8xPZJRvO+
PtYKPSA8l/4AXlT/euAt0Dk7xDczAsmt6ydwDdhiP56Gcgk/uZ4YAfo+7xAqCgmrmIJioCxnbVNu
1Rhhua1uCmDxJ0dXBPIemj5rjlwZP3OqxZe2GEMUtiMkoT29BvhqQsxDuO8qk2Qb2OJ/+82sBCt2
f2YW2jUyfXiQ1rOZpN1VR6ZB9AyTf9DcCKLuwUPmTBsusP2Rgd77rxkLap4gLWoFELeo733LzR+a
d+t+sSp2yVwROBmZ3ss5k3zYZ41OgPKbzEwQ7/gpBlVIy3KsLuWdhiBVtgWjHr6BaRMtoecQZZp5
Ls2hnSriijppU1uXEJ8cZnH02E8gnJxyolX8GrIuox7iaXAkAeEmNOI1/KhO8bM4pzhdRERFVRlV
dB9jnlXJBcuq9GSqaJ7xznVP73mLpkTPqgWF1HD7VOOupRjaaVHsoitWmTaQn+yEUYUqYcTvBdt8
bLQBqNoo6NOmw8muTFmM+c2w1OClsIVwDEn7N6ADeLX4TXt4fIwd++S7VS7LmAO1rpANW9Hr8ckv
uT/eYkIiFzWHDunZocpdxYPXn5BuA46US6XZlvAN1JW7ZBIUrkHvma1GK2nH1T1yzgclvIjAjceU
c5zuNEGz/qfKjrq/H8jbOQCx+3WPCZw7UORd+bZotcTF9uMoe3k42ewlmmpRfKVY8+HNoqnL95uE
Dr3z4lzLPSeHVz0q6CMiNL1aeQtOIvEjetX9m5sSb7RvASATT5CSYkh97NniDDAvT54UMmP9lXGO
R4w7bER6kMgrcC4YSXnGHXU0tKjtx4sLPUE4XLK+4ThTRiydnj9J5q4ZY2JSpvSljGzZrWIARpaj
TqJ2waMIOp8wSHD45tqKIkVsFZfgx8W3rI/5TkB5JfwQFK9v0DGbGOYlb0LMFmfI/A3cxBJo3q0n
UROx7SIwV7CJOV0a54eTuepUCOYGxcV+qEqY9uHo8VpjqZPyxneRANbvJqw8PuITyidavlnBUYRE
qeoSv30Q/ZywSy0hl+eL9MlSQcwueBvNOgCNpTp+QRkOlxRCf4TC4nd54t+TILfimY3qvzJG1Rx3
NywoKWq89dIbL08HPnBQY0w9poeuDvxMou4S3xs0JxCGRggU+RaJfXn5PgnJoO1qcVuMZT2b5v3E
b5GTgaHKJv175c1hat6U7yjDgS8Bgu+czx7r4qrAsZ5BAQDQvlv1wtpzAk82G68PCOfSZFT34Axi
I3/hqqidEENhljel8Z5KeVQjETmQAbiAfW8B8Qzm43+DwBqn1yWyX8jCyiK104q5Mo5LMk+YScOq
tMlp8TBlPb4Pd5J6+A7Radefo/00+d9aEuR6rtKkl4LMTekgPMmUkOThgIGxqG7CocFno3qsA0bn
tNAIG6z2O0/ezq+3J8OJjTe9r4h1g6Nb0u7TvVXn+2r7toudW2eCVB6h2bF6lhPrE1yRhew3vFVg
vY67WJr4eJ6XLV7zhTuVjRr5Tj7cLiMUN3h18/NRJRSNHvrZUHqltA0mSabKxmzg1//nrs9bVYwG
3kpS+sIBSRqqSOg48inP7AB6ylnnbQqo9MUUdBB6j2IDU9WqM5giZVr8H3L4iIWhC0sKg2wZlkUL
MTuLxbsUrX7xR4GKBDZl3VyBBHuYIUtGLGCoysQlnWgRCk0YMnbeDJzad1+Aowl3tIZmdXsmScuo
VjgCN/faNjtY2jt289nTq0dubi58pmTgX8CbRakhSJHWyA/72nMJb4HChLFQ/S5FEjM5pKakcaO0
nqqrbhY/OJhZ+m36fcG+hp4OZdQ6wrmxEkA0VHxodcndSkrNF4XH1wvUX2L7UkPeGuJI5q2S7JxZ
69tg2HXnt62V9+k5YI/Qoh+iWrbObdjUTfhF+U2tZBmTMbwR+f/0wBYOTOrqmBLmscmmYft5CCdo
rFTgwZDNFy5WBwCBC2novdOEHxJEUVoJqP2WN6tmCTe1HILRXWefz3EjBqlk3/lMFcPmgoV4lgTe
BCNaUFkBVDCzrnsOlpiuTYgTtCObmEdNY78wyh/O29/K6GA8YUpzvZFzMSfvV507Q407KXqSR1lf
7CzJMRVtH9KLcEIjVPFvcwJtT/+Fn7O/Ts0KWQGKmmGlLHvHK1a+3ZtNZwEd5CArfXergrPcC1ZP
2X0JKwNqxcyv26m9r6tGA2fLUopKS4mxZncvF784Wpm7PtiaIWytwizhsdNbJFpLFJVJUq4fM60S
JvfDJgPX+Il6jT00t9JQO9bl995Gx/ubaYx0mUCfpn/8fzvofLf9ZmmLP1dL1rzqq2io56Pg3Erw
PWHP1o8BSSqiOglTiWzkbQmZCJHljSfZpJYUpdRL+RyJiHnjgWFnZ0oKcpTEkVkaQkSE/xZ9MH6K
nFL33fImWE+zHwh5kUhN06nF2lwtosL9eVLE9sFOHUF1+Mmo7j9clcblPDaq4Agj3V+kHP5ID8Iz
tgYmzAEq/lCXRKjtfsBTVn2lSYO9wNkdJfH9izrBEpKvvIaciiyFVO+vw+85qqmyJuHsg6DWZRRK
NU0dETcCjHVqO96Kk1npKdh0Wq+Ei1ApZaAzajFO9QXFEeNZji7sfzPke3Jc/MKZ+va3rZvTM01Q
7+63ojjRvGNzF0PR8tuR9WsatdvP58C39sa6n1IesudUs9avRNGzn8cNvgd8q8SZhxKt8cqG9+nI
cr8CcvBfW1bL5aXRinYjT2amTf9U1v5mUXjjt3ty6Po2QOTNAAd2K35sN7/DS3FYDwkGWHpYnXJt
uT/5chUBC4zIz/v7DdNQCPorfMxmbp101Ei3ngBCLCLNnAJNVDHvo9QVdMA8IPN5BauG0wIRF1Uf
BvVjIEFlHWY2uFXNckVVFvThtRnfNLOZRmTGVr37gsQW/431HOd5lqKprYWtqJeGeugpq9YrAW6Y
5RaHUWF4gmi98lz9a1bQTMMFKrjMfxxN1O3mwG4V06QP2kABuwP6peGXIWbnHHEVmxRhwCw6WaK/
GttN7c2Lv1MiFC/vf6tpzz42ESnjWrLzh8SszWHKx/wCZv0WFskt1vlsjHMK9FX6g3ULl8wyLExI
qOty4jyr1Jf97trE2b2MtIe1+qkKOqUtmYM2JMG8PyCgshUJTV4HI33lpxxqmikyPhHRntkJO1iQ
FLyrD9t9ENrRX2PJF02PnaLUN4M8kJDrtyybYSFCxyNH2cIQs6/yukBQGFuG/j6qd5m7wav0HV4o
P5OXPad512Xy/IfbP/kTM155FP07qw2wWSHm9yV9YL5Q+9AMeTZmQCjAS5Ql7+tNtrfoxGKGYkwm
PyPZPHNkDDpQEE3mTnp/6sePtBwCdZ/WmT8VUbr+nreyHO0I+On0R7Z39bS++XN5IfB8yk/O5yEA
VfDonpYJrA+Fr+BbgxkAhokCRnpgeW3aKzj1tDdSFpVK4oayDyVB1ZbFVO+LRs3/FrolwbUB6eMB
rFhv297MeJzvfnrTBmVkrpy+83bVHItyX4IUI4Ms3i3x91KfV32I6WpDjvYs6dw9NU1E4IT0fWCm
HjxS+UnYJHgEugpKpIsaVUi4JeKNiQe7G8XLx7ilVZ/uUIfC5LXt9TXDGLjeEklYxkZrmmQx8Xu+
r/c1Kj7zEhInIlIZ66hPFITAUISucIZjNJE0XmNm4MjpbmMcdVVNDcH2iJe6Tq/HT0f0TaohVDLq
Rv92SNcOb0OBqRpAsIfWq/bJE+QAmFh1uFz6woioZoW6gybvmEmw3Ls5c+LyeJsW4l4K1q4yhJJn
LM7proZGIXuD6DLRXPh5HX39lmVyMpJfs7OdGtLHqr/0OI8hBO6Ch2OfH37bVfvxuyOT+2Uhb7jq
bXeDhf4e5dknVJw+P77bbsvE/7XVpkctY6YDO4Yf9iFdd1trX+sOU8+yQjhWy07cpQJmq857jEPS
DgN3MxEstAWtAtBM5eg8v02ryQE64E23lEUx4zF7/QIclwMFAy5Uh+7i0wI32F6xedw8UoVXabFI
gkcPgCKM2DKn+E5hMgSipecQ42hI515/wakgrN9hRIDGE0JoK07n6fo7y1/31BVNDfoZKuGSTWTL
1UZ8B8CJSjUXpCZYL0PxBt6yHkks2iKTK3LuqctneHcQgbfv0k/Uh5KF21bqLWBEjqvP/4xBEffU
vQotehe0vwkwHRXbvB9OEtLo3pKJWfRYujlHUDqmyD/5ph1ZNIpqpgxjlvgOcBwttRfliHnsafbR
4xzZOeLGzjPn+gA/0s8Q7CZ+zCRsfWCuK2DGGbWgIcv+9YJHNGg92hnTCdfKmewWT8HEl0GWNWIF
zhBZJyfAFR9gopsSs8OZRFgg3QG1FACM6jwRccLktphjomhhkKV43Q5143Y64uypzBX4X8xjqZ5j
zDj7KKpeRsjJLaxU0ZPheb98YwMMVfAjN2ntTgC4PZk0uW2PQi2UUA1NX7/8DFWl0fMCiTYndVx1
8OviueOTstdd2jA9BlpTMOXIJ7BwR/lwlEbI57bzsJv3E5RoJIX6Dw4QafEAzS1hlKoJUMw0JCyW
F4h+1t6dMoYXZLS+f2E1quOGWt7YR4NJH1i22QTiCznaCzeOSp8k3XqDrJ35KXUhRIRaa3bkXJo4
wTBB875pNkRHeYJDI/MQUwlziETG5cIH9VWBEfSPg+OnrJrHd55F8DOPF8UEHSzEZ0UW6h/UISVv
DksvAbBhiXtD6ZoMw1GmkykoIFG53HLt1FTBBmfoDN43TnOTmT344PiKXM99d2vlUZi445ezhmK5
I2QDrDLE+o4TAejyOq+KAe1eEeNF2D7YL/5fplSBHZOF3ZLHgwCxA2AvltRCLL5PUIMwIDl/k1SY
x8py7syqlSz13mA0RIbBVV4vhD981OQBINtst2FUf2jeVZhEArIhUyNltrXdN11njDsXR5s9OVt3
Y97n63/YbLNRSCqU3GBdp3bwhgg7JOhg+UFvp/QehDIObW5LKsAF7kvVvjhxZTxfuMu8t0Fs6ib8
K0z7dJFA/TtBzAyApGyGQZo3YAxSdTbEGgncx0o2orph7V/YN5ZLP/cCFjUnlVP6eC2zecJkx0rZ
Ay4ZIYL7ps5byd5dozjOZcwIBGYVOfv5i+0z5Vgmx+WWWHiNSM66CX7kj1oPNx2ad3tJVgfeT3Dq
fXVQEKCPkStejWMVuJ3YNr5I+F+zM2Wo0rKe/EH/S5E05y3PnJbZ63Fhoori6oNJzTQPPSdi2CTR
rM5cfZ521N/HEBi9zjbYyd4VbofnF0vSvRUTduVW5+SY17uRjIuSovEYvmSW16/MV/Bxl5BHrqHX
Oc3epBDtFWbh40Q3KHMC9FvyVcbNJ0b4eBy7FGTEU2NophNVULjfojzgnRnhh/PzffWOKHvIZHfg
LQurKCqfQVLpp8Wg6S4R6NbLes0v5Fj7bYRU+V2R1UMyn25J6LgcB0xqUGiavC2OImZVF5znzr93
ZoqjAyC20uDtT/6vQiLQ0n5DVtUQaQXy9/Z2c7boEyf6S82VY0tE5DXaXKdjv8pjEAbz9IrVoQZo
sFyLB5vC41cTtcSkrBtvTGuBaWI0TtKwmRQDAHxPPdhIylkQZ8u9VXUyyHq2RDeFp7Uzmx6D+9pd
HL3oUoG1VSJQ/ocA05V6BkZQk9iFyeoKFktR+JnfAewyKZRf0vPT2H7B29krzd4nKBZLqhgp8dEx
Ih98zbPmFSXy/iBnQNKe6cF/a6qDbJab22/QQRraZPBnTrkTr/mO8CQsYYICTJwNLV+d4Lc9H9b4
ZZ51RSHihwDKuCERx3e+Gy5DaAfce34MZVqesPYKfsO5sR2E6P6eDDsWhv4YWqeUCY/arlvFUvM8
CnjJnAZGU7CnosTtnmQRDOdEBEq1nDD5GgpYkxGuYqT3Lt6AV2GUeWGTGS72/wg7gJR1BGL7AJSS
zvPWEVFmKUf4uy8CWtT3V0JwBifN0+E6kiHAzByR9ehukY3hXqI17PjQHELzNTF3M4RFJuQuWxY2
mg8r2gVm1nXRiaWMKKo31MBRpUhVNGydzfSG+sSe2IArGu9z7ud3lshA/jfEH9iflhrfHIRVP3Xq
7HltkOgQoaLbDu+5mxCk3iepbIMsHKWCN+GhIoPZPof3bIUtmN4BDrDHBrYfqdp+MXth3Cnd0JW0
A+Yeamfafj8fx3wxC0c9nTylF3oD/l9UskqEvxt/OV3hH8JylsvmX5utk+a7EbSgE7rbKCOROD8V
jjn7ZdenJ63AcqydwIE+ZDBDRwynFFxlxGEWziPfAPHzq8uMzRjEAi+nj+sRg4HMw8NREQ3cCiB/
jh1mtlEd11wxklMelQvw1UWNZiX1eQ6DvnsjYBATv3nPyJJGxch8wCVBY7+0grSUiz0UxkEPXMTJ
gGOsm2NHvXHUY23HdMr8hIMYL6yjWKLq7ZKyjPAXKRVM0j9QVWDi/iJwySt3Lz25WIsZyfvy4UnS
IlsTMHvZktO5OgmjMli4mPxKVrkM16FiOMcm9SpLvmVsSHJHJAovCPXhJrsqJtpX5xAf+0Jpj2Jr
5adelB20wMZlAinyrT2VhMZRVgGZA2y3bT0xfY2vt5J6l7SoPRDRu7iLaHTmPClQLhps7X6FEBUV
DLGpbAfr1TazmFD/16OaT2AFABnTNBMtgXF4IgAm5s+VCjv0AK52B8xZ/FIHuMbziwUTQwtssyVg
qYUKuUljQkYYk8I3wiRDhtjNVkHfXIfrraIh2+ikotv/crnGj30ihRR3zi6wqIjF+T2QDG/7/QT1
peaYpdKD+H04rYqRz6COwVjOFbWrlfePxfnJDKL5e/ZJIcf0MifnkOaoxBbSTk8IMAfpInAZtNFQ
5S/50gO4X4KwycvZy2YcR5UOdffOtBnaXc7sKR2qbaNFNJgnAmK4rJt+cDipwxMjIxMJFxLI8mGG
k/MrIH0BgkeCHjFoSokzPkQx+Mdca0gHuV8UJ9xOYPIUrDzZmHNAZA6RxXBbQmufcQCrWm/HHAix
BE+xv0DAl0eFhipBLE8e1olAqaCUSikL+GimDuk0ZvuUZfCaC7/UZPTT940htGgsO/W1UYdgEtl9
x9P1QGEWR7Sy9cP8W0gadpRFE1L4zfclSJOEYJzvtdVuv5k1AxzGmnfZWPhN14l0MeIjHsI6D/YD
ytjDRBn8pJcYLu+osdJwriXIsj4jSp3XjWJvABCYzX2XBTBwhEJAz43E74n5qyaoA3H3EHOZAxwi
uwYpmYWLiOXDjCN0DuuvNPLk2e6kDRdv0g3bT2c1oU1HrXKxPrwyD2k7ph9NcN0GKKXfJtIRjODg
Bq3VUVNjCRahkSgKaY9UgKwRUAfGWY7fjF1zeHuSvoNpCtvbhiTGOfgbrJvSoVHJCQOlx42MDNc2
K+CNU+L0sL6z7lx7gI8p8248uifp2pDNsxv7o3omQBRmnrtKik1eTQvkr2TF9qIEVh3gVyKIcyna
DLU5PnwlUhTuvea62mA0aoaAtyZK4KSznX+mmqQwrtBGcR5uaAIFiRQi6aGiBRNeWRzglJjREOsA
oRsY71oV13R71PIojUHKQatweaP7lgkKJtZoPZn/jbIoudhqkzIB3tkBW9wU+PBW57Y52/aTg+mz
ALQ7/+Q9lKd+05VeTGZKMw1UWCCVMcmGED6V+DPZzqLIT8LjNYnKscm6PeICCvRiTJBwE3vyOa+P
z4IVvC6b9HDGCmHjISlHWJZYqr8v43y3X4NeyZvEtHtm7EfFHbj0hEowXaRp4pK4agS6ha1nvi8B
HwrvRjKcWMiQlLecFVDl6ANBlJnRsfsLi+qXWFRmZnldoL8j7DPMqFj/8lzTaEg50LYfOtez4NCl
1a6jZaQuG4qZ3uAHUReMAHJNZwp0D+zsFhRvBgPoN/35y5CJLvEugJ71CfHBhFoj++dTuPUG/sS8
98I8innUSVnrS/vs+OvnFjLEwO0mBWLra8s37bXRJMY/lKU/FL9ZE/X+nTlyZvaEOI8tSCiQIaOm
IjUKVPDGTubBlDnrOmjAX1XV54holAXHIcMmycvZPot0NO2f4S6paLA/vbhS6SWMyh+3cU/OnLA6
tZv/3ZdfpXNSstywCkD8nZveKJxWyKFuRyfw8HIm0F71BRCk7Lo07ZR3VbnkUfy/a7QYlUikUNvs
FYwfzmvwDx4uyCV/hulf8v2XAd4lj9nN8aBw5S8hOow6lAPTREBhc3IP1kzhbvPWuhPa0fFY1oLm
5N+nm9AktOsPPffiyUIce+QF/y31/cmT0q3MGsUGu/mi1FIEU+LrMI/NwrDtul/jArCyBIZii/GZ
wWwqhgNAiXkTOe9KTr1Knw3VSkOCp3rwXXRP4IDbkuuFK2XlH6NyvQ5v5ncA3sKYZQVYIMpnW2rK
RdqBnIP3sCqEDDuEEAVQZaLc69sA3uEYxo3RRSFdZa5gpOT3947Feu2Tnqlxg9gzCdsL55/OBQUw
Itkl2PuZBKaiyJ5kSPC863jJ2I7WfIVKrv9/Bnrcm5u4knfVuwydbqwlcz6hho4sluETZSaJhAnU
ZJi7cSRpVCg8b6zLJSVUvz1ATXHF3PRCNBzOcOhi4cGgZWC1ay5Jwucfw9msVWLeuE3NTy3lNjay
y2L592DriPo1LGXTUvdKKyXvLA3Wz2koWjde7ACu0CFJQSMmpCyJIhhdk60DQ3/kF7R8pc6EY4MV
T9smq9zNlyrj/MDL60vqw4AwZxVVWFgVE+7HMmYjwdOwXUDzhRnrSBk8ojusyIrqWMeV2RZtmdJi
SuMl5N4ek9/k2pAYOD+zAFBb/DH2JEfyqNhTxhsxoZu4fc4mT7z50z9Y3n2PoDTKx3W6IjmKMYS3
SxxhQdJCn6jJSC7b2cdVLknoE2Eu9Tb3hwXNHxI6ul/hx1IU00BhKZ4B/1S7yNVlW2amHKj3D+BZ
q95sbX1LztsKVg/eR/uWInjkVj0ZHjc0n40i76iGGLAdGlqYnjkqiSQ1ZPgI61XAZ+gXlNKHZckX
KmMYMrPyMMyjgPql7mPbDdrg7KZdu0BYNA5+b+FtJLups9iRitPYIhFoe94qxdfVvVl1PVPiK1EF
bssnG0V4Pk7xUDrN13BJWXRm8Eb0BPQOPZyj4YZFAu8mCr1IJTDIiPtS1MeGbH/LkvwjeIlayKjG
6eyuuPXkmldaMJaeBWhMhan+ufsEPR+etctuJuXv5EEqmWbLVjakBfiTrtlxPtfzZU1vqdnLxY4U
6UcGnkJMIgFVCISbWOYQU99Eg7A+0I0DbREAcL2/jlmvZZEBJkIeKpLllR4EllZU3QAu4ZUTU9sP
aoKRMyw8tKWqSB4PVMd8aSz1vIqXLDoVPY7kUpTG6ToeRP6TtjyalmNkvsEZApRo+OYFtiZNd48c
L+sXdq/6BLoyZlIbLS7gmkchDbyZURgGOTrfCSWEtq+dSdAaVtP7Hg84B7z5PVgl79zva0Br3MqI
39/jVNGpuO72Xwm9f5s49jA4SS+PRQ4jUJtlgjg5rvRJ9TF9S9bihG2MOeaG+Un4sVz1kVzgFxXX
8zOwdHe8QmV/SJwbWFDKJC6va3i6jWJrBYrXMASK2Zr453SDpivRWdaj2vikPsRTxX9fpVx8jCoB
ew/FYKKB/xcY2+EpFeGuVt2lCYrovqqEgKba4w3r84foV6T4JJNOlHAFd89yxs9B8QyRMJ8PU/Zi
5NcpXFQ0dpr3KVQeJFxhIyrIMIbFWU53gpdR2uzTiy/Ga7Fy2l00Z1aBZJpKifjIo0WxOEanKRGM
2EkbNydQr3cerjBIOutH+waoLyCX6N0zCgMuDHjeClFpHMHP0cGzfjzXzvQgSH48/OAaWX/0JwK/
a4a3SPb/xkN9h+cyHh2oj00m3AT8vRMmpwf3bA47dduKM2w0mY2He1dXcdh3j4yIYrbPuqft0BKa
K/gI6V/5iaxqWzQFWcqlGCQ9+ukOw+oDYD9jHuxXy45ruvxIXDzjYf7fH03hZtJgUqD61STzJgZ9
nvNXNK/SVr5Z799YhZBqdc4Jdcdw+e5vv2PgAkFWDyqtv4c2BH7E8+TodTQXt83NI6smcuVJ5LAQ
dWD9/fs/lOCoxZqxYPmB8+iZBdMBFncVzX53LzbIXOd2KtJNkWpiKgYp6nlJ+/d7TuEgJX32E9V5
qhR1kuI3Lshq6/Y/QRUwtN2TO9FQMW4TvfLahD2ByfcWKQ1JJuYUn8kxmjDttnOBHyiaYJR8sNlm
O7EySVUFCK9SpD/lX02mCubRh4fieQ1XWUFn7h77mQEgJ/Vt6BaIkrGiCt+WLZEe7ZmFbPYrpC0N
gK0oIBWu3wW8Bckq2KwhaKjE/mWNeMfGrm7eEJSdgUFKFMT6pEU/5J0k3gQV619FxIzwYCCBp/tP
DIMl0+wySzJ7JHD/W+TDO5/Drq3Koj3yfizLP6puIIt6uQHpgeIB+qJIaX9eLmivdGNaeURvUHMZ
kMzjle1KrUcfNoykCvAD09aCoYoXY1GTH1J3YKUsIE5CoxGgRp/Ne88BxqL3UqTgqoKfvZbHGoO8
ZunhpzPa6Kg7QOY5vyj95sU28yybDv7EmAhDImJXzflhHmABSOVE3KyOfQOG7O/tL3BdCZglPciP
nK5tUMHQMr6qJQmQDcx/i5ZxS+LDAp0Dt0q2W5dgHoXrsiNwWoIsuh/vRr5l9K2vITf9McJ5fHm0
tqmrUX9sisZeRgcIXql2Yt6QXEbGkB+793ZWotIA38b2mN9Wy//R2akKQxfAGsvGJh14tmfK24Xu
qtV8+62bX8lhPOCIlhJ1ZXSVchd6uerBNPNV5sVt+5eSAO6Sl/eqMNRpuNcvNggxWyyjyWecWK/H
pk7m6jNp7tJ7OyRqScyICe9w2QdnoF/bJCRlzqdxU7RcsXdQRZPYSKDgqvz4/JCmuMQwmd0NNNio
O8r4yoXgaw9K091HECoV2w31B/NKmvIvEVU9STrcmezRuP7xGJdq1jr0RQ88sbpMKNM9VnIbRpMw
eu1Sp5tA3PJtXsb9NXzfnNTTSJWHMYlASBzO5rtXV3NPbO9igPV0xhj/PFYCieh6pts4UvpCwxDW
5MLKv65EoaW8Re2aLbj1It1+DU4p+7THc0nTPokHvaIf6VgdZGcxNNmL5SpeZKEiP/cl8+hXZzxz
MHzCHQkHBXrm4kfLEvBp8W3GpyTvptfHLZfoeu3Z+41NrVs1B/NUrw0+SeoUk9JZDDQqPoWBJrDK
+gV4URIYjib6YovlGFyZ1ZzdNCCBCinGck7XFaYn8+eOcZztSOTjVg1To9OGVMoPqVBveEDFS+yB
yFKQBsYaPPPeZOHSsc+50RWmSsMIqVTaZGYbq1BWap2ffg3ohyyuxxhImV+ML/xjX5KgI0TTmIuC
vcFLdzzv/M9p3wyfXJPhwkjE94KeH3w0KOYrB3hO0Qpoav8eSoDbL2HcvlouijkY5p5R0uKy8JN0
16xtwwNlXABnXxhv2JWsrO0cvsCFXhHsazl+9HKebS9bHrflse0M4IKABLqWeXlWPkZBvMx2FTsu
8IPFhE7373aichzZ5tOt4nUt1/AdPnWlCb9iOHtgyxNvOupA17Cr7xwHs+yRxkE69JLaPUeU5AZS
k7cve7NL15V6jrcXmtkS7jthB7b4xIhG6npAp9P+1Pf7eA5gbYfTcSnYCC3Y9C84KDt1hrZ3IpdY
DBT2sVKUnd3cQ8AFXf1en4iwSALPwB61FNet86ptXo5zTOB/lZKaM9LgVMqyMLzFc7BKJ7eV9m15
a1ful8otVLkvjdnBEHB6yx+CDId6D3Ul1u9etNeN66YRLVc+IOW+XLLc5XcWDNh4rSFKjvG+UG/8
ucsYwPfUhqqA0CuFENDW+BYWzhhb4miXa8VN/Z+aAvFlE9oVnVWIc5oJjXmc7qy22mixLn8iM6m4
Hm59qcpymz/UuICGgyEp6Z2wPAuUwl2wBnOs9xX7KQckCBLBz9NPY+Ad34lc9jI1P0E4c5esWTkD
fFF/jlRL8AyX/OcLcTz/HzGem37DVBI1I4fRtAoxnwOWNIARAAIxoFtICF9l3XzR4UMvVrszbRo9
fH6JsyuLjYO5cwHPvOtLUX7dGP1IKY0V8Qx1peYKgvVyHgApRTxi9GRVQxq78K55cxdO59AiNMXt
a6qYbfEfTbaeBo7BaN/i47uu9pAVjW0pa/NciNQc9kN8HIrjzK9RUyj3uweA1efXwiU3YPVaPAee
joHCFiKuLo+PoLCnxlc3lWQ3+tBghz/T54b0vGVMFtno1ZpLcBcznPfrrBBK5JYWKLbKo3fGy1It
/ZEq1PLa2BFVQdHe5KCDALmL1r0lnKm5+8iO49cPH4j8y+TayiMPIYkRxkROETchF2+pk6bWvxxL
mqw2oiUY0iGF6tSiNZyS6/1u47Qy/f8lMk4m11LEe/znAvZPXwgWz0DMZh/kF7M6cPWyAY0yGWon
N6295bqRU0dI1lwPhGAzb60ThJmalZPSiXIo08ENprVRZvgwYVdQ8TmECswa5oT2jQU2M3sJ2ZAZ
tfNlqCP1NFCWqqFOs6plNdw7lhkoKskqOCo8ZZiITc6LZdrfNxDaTs2Or9Ub62Dks8heF1veQIid
O18EZOtwKpKD+TWCIujcncRNIK8ZqKC2nyJtpWCnfY719CRrAq4cyYzI6ZkWRJzPNZ9V2Ojt/Cem
2DFuCIZrAJsFlc+muOkTWkfdfZZk93LWjNu2cIsP38HA4HdQeLcpBwfB+OaQo8NIvaQNxkg20ec8
uXpUra+UcRLXGE9zA1BtMj4QeBQYjxVfccrUJgpSg/WInHrlRHYtKcxr3hiXRmGYUfq5lA6iB7Lc
cg73tSm725P7iIj1EWlHbPVc3O7ohZtg4eYLOtBfWFcWIqXWd1M80gfkkvyJZirXHe+mx/F3ExI9
HP1wr8e/EKA6YPq7QSY+FjipOfcvuGodNSqzStyKRvbdMouhpx/OMWThsbn0fpJDpgH9ASRKaGk2
L76w6hRxuzC7ufTFMuG6VVzqTuoSYHwY16E+CXIE+5nboy2eGDARQqU6bl9oOaXs9CY9aSKpk+ST
Ektc1CwHcayrbzp1fvXUuoMmk8BTxtl9fyFELYBSdYwv/wqAkNagt8mSh8nFu9Dj2/cykS9XRZIv
bGxd8eXXNi0Bp4itc/iImtHVKAgoTDZjoHQ30zfarsP1HSDbj9w6GeiCTLSr/Y2Aqe3O3bsZYPTn
gsgrQ12ZtKekS9vwHoD0AzcByVCqDqI1TVXgVtiJhUmmAVHs/ib68wQ0UN+Bqk/bBbWa7HyY8SZB
/b5YbaaPc3U+Zi6AePMktVeUNCVF80u7vbANM7o8HGej+Ggj5uYwiLAWdi0U0axRfY0kBlLoohqH
THPYPJQ64ktGDI3f7RrQ44niL+R90Y7y35+ECgz+NhZFFY2QAudhy6TEuID++h8k3Sv85k2+qvaa
0qA6Ulhd0y8NxJ7rGjg5VthMUHQRr04FKMvyLebiYtB7tYd/9+2PPJfSCUJ7NzvOzQOpW8dgHhm1
bHx5E6qNcyEbh1jC+JYNC+hedyDKj/9vHJDsHuTQCx1kRhscG+EqIRgidepXGREymr0jqF0fRekz
4fDxDDZcPa0Y+HQD/ukm3lD6A/Wr1Z/spwTPG8m0qUVu5Wc3n5OAOnRxG49C251p2H70AeqFH7kB
cpazUZNHEX+ueV+c+8Zul3w6aQygHcfIgRtlHpNp0SwKJ2KavXtqtV94GHArU5rlwWDSQGimVmbt
weLDuAZqHdx3l3Jx3U/JUDNwBTBFK1ERMCjZPosmXWgn3sRNe7AXzontqik1DrPjGubicOJxnkFD
ZrfVBMKKT4vS1v3mfO+iyGzfWfMG+sMY4aa16KGiXNlfWF2Z36PtdSVao/y1opuNFGwrOE37JgTy
UDxzj5y3nkNc0ePpNuVC1leWYNldOqunr0m9ZARo0Q7nx/eeOkIeh0u63TQoqRJyZAxvvul3jogu
rrKtTs7Wc6Yx1HKcUY5VKWVwjZj7tqjv5SzLMx6YdBfxiTtxmDfZqRBKBbsG31DPuJIwPbUuTfyL
zcEVwqkBJyO6jWYntF2Be4ePoK5Pf6pkoypa6t1WRTieI80wjwu32a/wigzZbwSg3dPNBuQwp+st
GjVP6Gm+qNNtmEaXqq3EUS93N4XRhbZq+E2nIp7v3bBFvHAF/EQxMjWVGQl3QpAyjbNBpcB8KsJN
DIhRODMrLpWE4rEZksnzDb7Bj3v9hLZcjBsgOKECD66qyqIn11Yzew5MI2Ni2lkDatX9RTGgLUkh
AcW0f9VuSEG5CvOsnFZt3ishibMahm7RpNN67jZTXwakSUAdlKcPPM7AaRBwrLGz9hagVnK1iYZL
m5Og3UqeobehaTqOqPb2vX6oxYvl4lan/ohtUrnhRp9R8fjfTS9x2987eUeY4fI3VH+UudawpUF5
oH4jY/I21leXh7xOfPU7eG8cwOvY1WYcY9va8OdVIkS0/eTew2RWw1vrUTUX9TCEiE1Kz2/9Id5g
mr6XXZI7hzvbcq7ASnbGZB3zcrspkxfwNxsEDTw1TzjKVLxP+ZvvEjlFEPdbPaGzZU2ijtEKJyyO
6joh74C7swGavdebQwp7M/SgA6NNy1D3MyLxo8i7wzJHLLfn9NVXcG/C3NPHcR/W7CA/O6Yr0uJW
gSPdJaPTzmn0ZBjnKGgKc5uFvvsY2mCxL162zD6oU9AFAic6dIGAgQIroDjSOIvqpOKD0ocJAfOP
tzMe+lf5NXvsbfOg69ZZVatZOoXPuKfj73fCXn7z6osbXJwegTATSH3+NRIYO++n9fZ90kWJdvAa
y7WlWYJnHROEc8fZT+afjyAaTCUkqfLxCVjfF+Sgsw8+0VsroHPhEeHJTbbw8waTUuBYVcIlHqtS
RILUnkp/XEjicJoftxPizQLknQPKYqiPt994TZfvoNsjEN4dVSGXM1bAhs77YFxM/l6251STbBpu
GcWyzcPEYk9DEGl+cFbKo9PcKVJjYum/wa1Bj6wtfFhogSaWa7dHhQU/clMyfNA2KuzDOWXjgKwc
d41l2E9+PDE/EbaOBbIbO1VpT+Iptv7UuFTyzWGj7NxFlQqrwyMMvDzzHLfUnHjtrY2oNtW1zl2i
4WHmyw90J3YhdeMCbWI/xfcUTQBp+GBO1sTrSPKEiw3VdCHHIm0DlbLXdyASc2qvgm8cCkqxAOBk
HHqF9Mc7T31cU1DzXQhGyarMCgVi1JGdG2XwAtZXNzO9u6oGXPz4fLuC1lObauyC3FIuSQQ15if2
k9+Mgp7JXEG38uFCmeiC8/hihdhgPtFKpfsF4YnwojP2J+/5y9/rIJ63HX9vgfHgFgg9XXiGl4lR
oaPr8FxT9cngCBURpQ8FvDkkR0vzxvvXS91ADXflEm5RnowCIdk7jWzJQiVu+kNSMAUvrtvC3+SR
BFumz6W3bKIYC5Q0Y9CIaIHu0B+AVZVktz5tpaaY4uJj2SlWqJO2Dfahjr7z1+aoxdpm0KQ1PU+H
ZPup0u/q7braUjevMT798e2JI6/nb3JuQewT18Ff3JM2krs8loxUozFLo1GVjfax2YrqZvPtMsYl
sPq4q3sjBOtHJ5bSglIYH9CR+/ZakiV+ZBgUVNDsKyxUNaj65W3JgtezGWs+Iyuf4SRH+rscw2Is
S5meFtZbx5vBnnbjCw93Z473CbqpjY8PyvvksgMQaAWcUGeB7USVaRbjiyOSxRd2kJnrlwB29R8G
Y6QmLSbLAf5HG+7B2yU/dCGWScBoSDK5vfL3hYjSZBmknFQ2Jp3oi6IYmKjMer9XkHK3U0J8kfXq
hRNBlwq/PpcHF0JImougD4EqThrbtFlfYdVC50E8urlVhFuvRq1Lx1EXfRCD4y/ZPRk9TTyqm9wm
2U9JbwkxTtjnOa1EWiLFA4A6pRb0VuXxxq6pUoweXABPiLdhFfFqv4MxBExlaGfErr33wENgQhVB
L0hjJNaZU/gi3B5biBva82TNMIaHy8EX/7S6WTYAB9vP+0j8tDCWb8sFF11UBYCtvmn5ljA9aElS
sAGgl+CEt1LFrdmNVumaXjsY/jk7Ztjuim8OkOxzplt+/5mhnpZowfyLYp1tv6a7OQBPDWs+zInJ
iF+EZQnJ7szlSMsJW3eqX0QHs0U6EGHczLiHBF+s9j/qwA9IKF629S+Mj4v+GNWFwmnfvrgo9QZ4
YMwZUE8bMhZjoT8DwK/l2mk/RtbYlNHUFiEx4VrSGBNqgSoEYfojhiqRDoKzfU3PpeeNP1AEl1Z3
qJbS1J/8ZCur3U8foIo/QKurY7wC3PNgu4k05jwBxRVEqWM2BLkcYz05BQ1ImwWqs0gVKROqXmGv
P2vh92IH/ohKcio3UUrYwylV+j9UYMsVSC1OZDia+f3uTY7aUxxPBpMgnZkCxQFDbxb+UJz0pzpe
0iaLvce00H6ukN+S8LJwq/fBKJNBVTsOdDzTtRu7/uiLPioD75uQhwojbdpqMRXzqTv8pshqNTE1
2nnIsZURN/K0XhoMH97OA/5KtV8cixAe73pejhrVAx8YltZfQ3AHjVXZIZBM4epYtcbGa7H4U0+v
OESi+35dUAEwPl1iLJ6nc7pwmYvzaUwJS76uJMx3+QzZlCTScpAoEU1hTg2T1YnLjUmG1mNKAcG6
j43TtLWsr2HbMJMXmDTtymnsoVMjOViwgUYz2gc66RAO/ah6ckV+Jgr2dPsKtjGJ6Sh0o4ZoJYFe
UMsfF2kg+IFFffGtDSDJyQ9zt5W5zm68RWOkDyyGj06kkblLjj8RtaqZF3V+phqcpvxz9ogZQLDl
vJlnkoY11WdW4ALSe34M6AxuYyG1rRxF4ktBgYts0M8Hzag3aC0umBKq1xMOkq3UDdjYcCFJ3xUX
ASM7+x27YOkGBP80nYzQKDY28WFfNifpFqzfnvZXUufd7B/z2bHOiWVCVVC/T/H/teAfZ1DlxrAz
CEOYTRarESxMaPH+/GznnfZNVwfpYeQZuGk63Eyzx0IB5IRRRhDn94vM5mQSJlhtwPspSXNauy5t
d3Wd92ki+ESQUVskaJlHbaBNIOnhUb/Y1KMBEWlPiE4ZBMN05zDt2laYCn7CvOHOBaGlkoj6Ya3R
ZBeiLw/Q2OGIJzZSYLlqykaU1l794hE5WgVAb/DtyZH2ri3Y7FXwTpfF4pqxO40gI0HxYknVBhCs
Ge4LIFO1K+5MXfXKYKmL1RuFMAYShRb9ghVy0CoMFU4gRowbarE3eQUduFEmtQ9wPBiASHr8IVk2
V2WAvoTQyKc3m/fbBQVRR9IlJWQWRM0ReQ0mWQ8b55/lyuDAKKdY2O/D9sC4CItDSvSmISwM7nQm
iT02mrk4FQeHKtIup2xiAP/a9bs0O6/bZ532zvxaH1CAI13YLNyTnWAuNBVi97G0M+eUYd8qR2to
863Qjn7PcTp8LJVETA8Px4EusxCROyelekgmMnLdEAQrz+bzFYdzX+GruUjQM/eeqa6VlVXGvWf5
QsOZ4rizdEOrScqcAUlY0CmlGAlV4brj0VBKEpeblIR8HnlQbz0iot1DIChfI6e9fGblcxoQuTpL
sf89bnyBglC5ICt+RsdZ3597MmbYbGS4Uj8PjGeXbCIhz6JHenvPdcEvp5WgH/+geOCJs8jAjp1r
/8gHxUBNfyeBvxdDGTpqu+PqxxjQO4F16FnUuK6PosY2oTnk626cSkiXtuLhlGTtMj8xr+c2YbaY
b7bUBM9x3MkYAlBWV0g7fOUfRpTAp5Qd1jWD8/HBHEvIPN1/buU9Cw6y8Fk4G7DjO1RJv1R6kQu/
ecvdAd1r8j1suI3x/Oq2Lt+tPfPNG6GWgAr9oTnhluFRDFBtQZmnybk+k7G+W4AbIrK2RBFk4uWl
5ZlLwSa2wIFYY32j+He+QrCk03iRJVsHUlD9HemT5vdPdr4XJHT/IEg+j55UmPIJNSgpS6I4zgHu
KgTzuLfJUE3y+0MEgUA9QuGLv3LiRCSMAZeq8ZVLrPa6B7Wuc3YQijAXkRkEnXoKFSUGMqFeCpYr
qg8r8NwJHZ8xswYyF2Nl21Sl1Co1SretL+Virg09xUxCXrbjQGDQX5zgyIn4EBFKZkSCjC3BUSXc
2m4kCXDNEzkqkQSiLZXi71jXkcSexcxJQ675s6nZcsgOhgIEPe0+0ObUbIVml3FGoj/cCLBFFr2y
hKmHe3pB/3P9WTtoVqhigLA7vg06Lt4Hz2RmsqtdVJQraaHrGeZQJgxuoCaUvJAvJsp/7QffU00G
6vVr4EfNvj++0MaRvGR3RIlrRrAxQBQw+oVc6veGJuc7MX4EBZo+oXUKepIp3+hTEgIKWL2Tmjv0
gu0CGoh+knwpPKmKIqQ8pNcIsnVLVrouRzKfvyLgX9doRYFUlWNZ9YestSsoaSfvvUEHvCTxGaw5
r4KTDYfHl/shC3NxTw/l5VlrJNjaJ+i2xC1mO8c95VrhSs4azCq29yz0FUM8coQvG5h+jRN4QAYf
DkpP4RKBDcobqdq5lyWB6rbY8QrWif7pMw4zpllTqE8aO9L1j6zr7+eiC+gYozDrZpvZQXiOD8i3
sT0vQUnpT4oAHk7aS4g1ktcUL/54sNdQqwXKjk8M0+NuFY5HSOOoESGR6aUVK3RuBwVI+l+G91us
+vUs2X+KSl43YxD0QdgpGNw12w1cuWVB4lFPIDyTnHVigngzMrSr70QDei0+Zwm9SIfANg4a0LGl
VpcxeH0wtL3GyiNMnanfuNCe7ZZP2COFKnjK4aEtXcKMkLR8y0lTEE/yFb/pXxTGxVbv4pVcwQo3
4Bh62RnzG+1rFH0zIYGK5YySSrSo7XoELe4cWX7LGWHNEV6QFbHNyA/K69J+vW/pragP8WFStSwH
+mKB+eQyow4LuWhbm9rfFVLUdT5BsrmF/vHYZ0jceyE6urAf7y0EYnWePECmHQJyjYVVQhNf14l1
rcr00dwg+38EFBSB9x8NeIMEQ75Bg+YvTVlWBOfKzXayhJ5qLf7O4uNtedkguLzq+9pYiHCmU8w2
kIX50+06PbwfKQus4S71ixhuEAGihjeYLEdbMjNcFpnNEoTCFJS7p+PDUYvApzcMaLHlXyyZEFsQ
lqjewGujBlMCAeUTILLTTTpIbPsHR7+t81Sptj/DR9i4ZclaiiRcZzB0LrlLay/Gzdb025m47lzp
ttX57bnC7tpWEkEdN2eIMHfJ20nJ/QPCegIIxKRar5P0EDOfNqRAtKoBvYBPL9Mk++eSlGE2iLub
o6ppYTRDSpmeGzavKorIGxII8DZMmamkr3Zi4W/tYPMqGilCY2i7VW05AZj++UHofmX9lRozomHb
5fnpZ9KmGLOfJ8oB0bVfBjPPVYoybssdJQD3rGcrHZ0tYp6ywTYVRqlNBIlLqOsllA5q3T3iYuL7
3kgI83Ykp5G0KZNoOPxPLyWXm3i+5W1wjWKc5ghz6TgSyMGM2VVMZgqFL89DVyOuQlySYWXVzOp1
UuUxqOeJEdLrcofrcoDsAOaw4V0VHj8DeAyc+xhVmk0HDhm/Sfhp9fM0FVXac+moXkuGXHkoTEOy
A+O5aIEUB3s43UBof45PAgnrt72jdOXjNt08/kIHLrGP7DOy/q4OIZEjKZSU4Bo4ubs12qL5SVmp
n7XESuthKe2aFoktCtRE0pHWUGx7SzZrDij0Jn1sno0Xly+j2AmP91ZXzU2/J3Oel6KbOVAYzJ2e
6EwTJg4DSN5Ep44fRkriN7LnjGi/Nbrpwh2O9ws/Ov6+pwXv96KS3MuuOjT6TSAl1C1FbGEAgN+D
OEyKCuaNNfIH6KZXRDsPdjWQ5HZUDLeDk+h1fJcmnrST9eF5DCRGDVRJsaRkLeywze3ukxD2XpTh
0YXhZiJOmp5idJlUYEEEeMqoQgi05dGQPr7FjrXBAl9+8UeOTzjWVmG5QV/lWzH6XKa8tvpt5SdK
7Cm2re35YXP9Ue3mfuPLOYkjDQ1OOTPjI7cH+cXDGWnxs/T7BVNwG/d4/rNP1c2jMi5yaVehvdmP
1Q9VAeHF+jLMleIO/48nb0sbj9UlvaeeB+/ARo4r8UgsgIRBMgeQya+EAy0xy1Up5ygIc6YlGCwC
qBvyn9BkvzSlFYW4CMRQEuP9XHN1/DoLkUiGmqLoPpxllDA7XsRbl5tozgddHAFIGdlymihZLmlT
+9/Vuei02aNjK9YzAuSuwy3Hz9O/+TQZ1WmbvUClfmpV1sWuYXoSHowy2o7d1e5cu6KR24FJQ+La
6gH3tZ4NuyVnbdwTS4DrXcXhth0eUxgluV1CytGuNjQzm5HL4kaVIp/ca4qKT6ABmQtDwPvx43ZK
GYMXgQKdNKMqiteuCv08t1ey4F18lZm3u6RtcLPmiIKc55eUFCHe30uInhvTWPM+73EcUcF+KfX/
Gtd2P6G/Pt5+NEQB5cd+8XpqMVIVK0pQ6++3tyB5rPGB5LW09OOF+JYBwgy1WeksyxxxH5DSmnZV
nrL0Ay3e58gHYwclOgsPkftec4GDca6SN2x9hp9MHPwcyaXxtPkAEkn4hYOVxJNrs1gnHjLQMmFB
fDOSC2oIcWbro+Q42ZDbuq14faDE3EljouvaKjboadl7VcBK1VfhRQ7OjF287zaDWvwqPYb5snvZ
PyEttCP1RaFjJEX2BPPr34YJZo99nmI8L9EXmf18+1q6CJ2FpBeCUKLD/9v/ErO7PHDRsffpFr5G
rdMpWrWOArQDlhNqtF1dJpirAJyknFYty8aDf0yCyFImKbcsQG1gLuWrz8q5u4TSbLJxqfsfkSI0
0Zrq+LEriVZI2ZrhjCdFk0I4L/Xt1O///lwnJnzrRiszigyAtCq85uqv/ckMeVHxkXztgtTzzqVL
Qg8TEfLiLQkbIWuGaYJe3H3AOKYUVzasSjT3w/NFIC5r8jRB/hZbnj5kVZ6zc12qmXd2E5dpGCGH
72/t8jrkfiF7T1D19xlZTgdKZ7PuaFSzxGy+lDpyzIHhEPZqTT1hnnLdyzDwvKjhVnhjGtEmtcZl
EJ5kRTLxOMVg4bGM5y9Hc0T2q7dmlzkIkH7fbeH6EEC6iTqs0S5tKVInZO4Zj41MpTEb5l8cjnNE
4Kf9Snblw0lznYV5bb/ryJ4U9eQtijwbT6KF+eXQb59y/pqCh6N/2LP0RVEShTbEPxFurLpqHJ5e
kz43V8yFS/ob79dv1nOyR0yIn+/Tcowppqh7e8cwi6xsOXrvhttVVGUxFiBBxK/uyJn3Ts18ZZzP
FTI35LeAnAIFFQcgz/1IdBLnqZO09uwVPNvCVBcbNF1DSiOuBlo6hYpRbtAimwYyiVNsy7Ol79TP
R12Evsq5Eu+1aeU0pz8EqqtZOUCefFyIKgYM9aDQ5sDSzlfINhT9TlYVXYoMp6/eUVLMxQM09/4F
a/6pGi6vHJtS47D5FLHtNbjIYGwZmN5oC7duG/CbO2rCBj2iBvSDGtggbyz3bG2xlbVZ9WGvt+iK
ihaHqHcMyEQnSnmhPs2WXj1J2KibBcM5K5d9GdXq0gQpULcCWx4dSemJ2O0EQ/19BWj7bfxoCmVo
96dWl7Fpz5yrLDMl6bqPxEcyaGLnAI8aAlNlzFBef5iTXgsNgGVI/KEh0925h3/h95RAVbIPaDky
1g9KUewQ97RhajI2nTzD2S9Oq5yJYQER5BkSeHDhrFU++FpQLokSFrLoOtTuI/AXGk8mZGHrKmYw
HQaR/Pl96jWdCjpIrPkDVIRR4Wo8kdTEuOGCt9TxmpKlVQNrspTijjk+Q9IaGAergiKomlWNhVGx
uZQpAtgB5vv2UVXoDJzgzmLnbYF68rC9QjVzb2oN6qlv/HQz4rzVsikMWd2KHt9hyRqYZvMHexaP
nfnitBQPTGaR2Yf3P2hsfXI9EUCGayngSsmv+1iDCn2iidnRf7N4dU04BYU8zBK3T/QExAkqhm6F
GnOY+nV7zIMUJbjXLjBmRFj1ILb/lcCwGgy6iQYmdO9AC0RzjPf54rtKNkdAVczj+Fp5n9onuGcM
YJSMq+BJtf2/dgtps08Bm/kWRFdcCxMdtUc/mA5j/bzGdxcQGoOgW8S69DwH/pM4JrOgGqj/6AvF
WSgtr7OhvCGjK07af6ncWjMIUsTTOQ+N0dYSOcixFK9Se1HkzqnDHaFLW87/C5rbo1R5kECzejI2
2zzkP+dn2qdWV49Pkf1TL4wP0sMWFb7iIrURXUscVxfVsJxECNb69bvjRfM8WiXy5Km7dduEwdWe
bOAN/jfpQuBl1brrC+hrE6qO8QaDRlaeS1qKzdwsfDJKwYwo04CH6d9JJ10XxcV/gezkk5Y+OYg+
xSV2PQAgwJpKWjcjgNVZGwXmsoLi7xGYgqoyFRVxXKLwOVihOrqv37YC6+9qfCC7/WkUDPx1hnWc
yxf8kXBF+xBVRU7DJGEFn0qdhc+pu68zA2/r3IxYD1vwtYneNwdlKG5NB3fmZkYgAPiN3gLry63Z
PXqYtSmHuNT5fgE0cW1GKNNWL8x+2S4xxhe+FnJIwfvkkGq6aqpmStRfFnASzX0W15u/IWjIqxHL
UPtzD9w8xfzhjCfMVeMOdeoXAXY4tNuJ/00VB5wFQoGKD/PIV0yvJaDvSICki7fsvMEXmg42+aT0
JavsqoLCgaB0YvBg4gvdRWA5ez3683g1hTCFHqH3i8CXOA3WCrtZf/FYWzKqQSbDeJkPbArw0Jcg
pD3De7t97lRsnQ7QeXzp8ELdKbQyoeIGuGihD/PZuNoiy28PDMfdg+LzSBauQJyc0kGrt/ZB+V4Q
a9Nd2J1VTTkinzOSeSBW1AbewwrkPCh63Bh0qAMWkCYITdX5KUHleM1++6H2PsKT+s+cC6ntvZVP
ajn+esIyN9MN769AafTsXfrrXudEcOoezxGOZkXHYRotlgzZC1D2QpMT4FknJNsydqSLSCQquzr0
SRaXXrMRB92+y1RihCRZUey7jbF4CHIxrp91RPtTU5QiabtmQmG/O+S30ibzOkunX+KjiHs98fPd
f5CgZCSnjPxehJkKZuCug7N5sVE+FrfFuyfeFgrxL303YWsBoUiKdTNw/oBYf58ndz1d8Xyex8TD
7oc4U/vcI3DrjE4mSg4/NV3FjrKHfIf49aAW7iLnjeHmTseoY9FBDEe4ApgoRPOci06Uwzt85XVM
HQ9soV6994IL/ts0PxAejUBoA2nOy7CRVwDbVF5dKj3AbSCFX2C1vsigOuP3ofyuM8c4B9Fmlzbf
/o3CX8CK0Qd+f9xw0bbmQKQ0oj/Wj19rnFNRuSSWBBIztfvzkb9bs31riraW5JHeLhodaLDSODs1
nUJRZ4v3RuConJ2ginbUbXD3azYmn7QYneHue17ugKRbJJDt3a7uAhgnOrIp0+JN0dZK4XF1+SvD
VnbrVVuLNxGG7BD6nuCB9sRAVHPoAhJb9c4+ju/blR04OunavrOYn5+/q/mTi3vNfYCwUm1064cq
DsIqkw9u6LNl5LOFokJlJKkWigMhhya5yxfp+3umCs6/uw/rhoRYrLJ2jCCDA62HJ7qz23j//jor
7vlWq6mouCs4rpB+IHpugbXP4ev+l2F1dMKX5Ds/nlpqFHWmcPZpk2JG+xH27OGqVobzMuSIPTLg
V40yBdd2HNy7cvE2yU+V+WfvN/A5m+DJ0rmhIKnGALBxLbhFoDpUcfB3pY3c/bPVumjGgWUxcVEA
+7F94Um/PhF4wnkD3iTlHuP/VjdCkTExhUt7LFimdsvJmBA5kfa0KJQuOLcRl3rnJLcYMkGOb5zF
oYYyHrKDt6qfzuqRCW2L+sOMHkZJCLlEIx0IbSlxVOfWEkw9g6M6ZsGOG3QmzIforMBR0EJtpAye
p023tAACi+IQOl5b0xpUEA/8MXfF7hDnsIt8OlSs3d+uGzgPdmWeoe1zHllu1l9Bt/9nOuQVoj0s
Sc3vagB4QBMhD8BhOH5fHOHehPXoVowtZCpqb8rgbml+yXZsovB8mosHNgRMmrLWBUfuhHUGxgVQ
N5nxqSMM+YbiqvIVKG5JklZc6kUmo89AdJyKvihoPn/wTkKT0hukU1vMtZsTmme057JFPEUZr6+y
GgBpj7gfQhEytCg4+FoOFC+srrsRAJdFujcisSy4ey4onUwGA2AkNg0pgY/4lxJYsOcsjSNrR/2a
Bj5pOiXJtL+4ERO/WDTwlfRFZY/3Vf6j6nlhTTq5iIOQSuq27nonWMKqp4fGJ3xi4hyWi9oi26//
RIYayFkNu6QJgPhLDrmK9H19warhdAyRMUFjSVNKaTXd2rvB6Nw8wsdHazbKbEAnWxE14+qfbW4O
7FCtzvLc6vLqNd4AHNelvkKZTNLcPIOYBtp13KS0Ci/mWGFk6AR4Ji+12qiFVOCBPWw8pRo7zoES
dzGQfjbQcUR9HdXQTcTc6MxcVmGnnBetDJGxTRNrQvAwjUZ7uDLpPgJ5QRiwW6B3gM2YnI6Rk33J
vXbtRs9oBz/TGdyEf1A6UmTXze/Vmu8Vfk9+31aSX0Yq9oagZ/y4vTjTnClDYzeqzgibtBCstW+C
leB7VWo9HEFlrPXmFrmzey+A2Zzgez71h+t/g80YqXYe/EQ4TgIDim/SsqV4Fnajv1+hFBYqo+bu
+F3M+T2kJ4hiB3ACf2974yzJMefOkaFxOUdwzcybEU2FTwS1m5uUK79ecfpTEgVs9BRp1mJUjLHG
Qkz3xmObnyCqBNea0YNkDL+RlsqyshI9zPInioZE72kvZQKA9tziLzCCXEfR4l8rl3FxFE6+/tB/
YA6oQo02NV7CglXjKNzLxP7T9xRWm0TGaX5tq+/uGfabwnG646g66k/OjfDoneisfeM2cgAltiY3
sHbwrelx6gT1kD0O2JOSfpL6lxTahj0QS8/VEK4f8QWX2lG5zeRluiOmR5hJKkTs376G0hFVY9IZ
boIUS2/EUB8Gb1ejDy4YkWubC1OgB/QuBKNE9L+JlvzSGfGMkDbTtnwmj79/sWbP2Ey1CEgoAObC
SqSeW6h4Q+5bLK2yxNElhMSX4+9HSdNoBlxDuq1NdiS5q2QqYHGd6cOVcaHP8IbZjTLtWBXvtH0D
ar7CdMRrzi6uCyI1K4K41YlFdBIevpAQhxJvJ8I7cqtteYAfe+bfvWRQEfdCsU4lRPAwnOGj1NJZ
AYsxp1Cp0pleiTHyPO2Pm7x+EqJ6h/AQpgEmWYeHwHp2U8/BGYnpmTLJAP8HjLfnzjSYd0HwNiAh
AYFDQ6DVWL+6FGWdIVbVQj5PPhJCRHB/7xEIn7MF8C1wFtL2u/I58T7Mf/i1pJJ0bIZ08J7mBIZb
Wccw1EdN+ZCiRGtOGw/Wya/erP9/9yGhJp5RCROHkDeMrBVqxGYppUtW9pSmzdJo7mP+2ZI7xerM
VmEisQXvqc7ttDwpmpcoGAPs+BTBViaDtwP8BbbqZSVeY2tD22zxffPYBnnJOEKMycwm3pNEh0BO
dNXN2PQQ32hnbC3COIGOh9Ikf7hW+OYf3NFAT11I/zEXrFu5z+/J8t2t/NKAJhsqnZrSoquFz2P6
h/kcp8fctnu361/chZdoMxoDLJz+iq2i4/r/homPvGQj0QzFqyUAg4a+lS6RVv27if9Rrou8IF96
Jx5H2ny2AKOKIsKNc0JjAm9VNvx5RSl8dNkxUAZJtDGD44mmvNrM96GVk6MOnE3JPvX0Grw6U8ya
9iy2Cd+UlS+EnUKh2ndqC1oI1sKXyVh1X/UozDRtNTfSuz8wp5iP6/o6b74+ymCkkTczg+XTVSAO
KdTw/UTfBbz6ZOjnKUXU/5RYVGCZBGz4l6XQ0coJ/kUyRQ4/BLwzm8wt18EDL4K7mtJqjYFGUPOT
Gmua68qTJWt5vhZnQDCMPjbTi/YwlzGMz5vKjMecjS3QwI6Wv4MqFPWjmybnA66Id/f3S1FbLCyb
xIjfTfbQU8wQZSIMwmoynI5UKpeMu0Sxyxz1zXDSdOnFoQYuWOrPOaNb+/Qd/zMFRU7+rB8YxiVT
rz4v0V/EIr2JPbJ8jCaaJ/XmGkPpoCHTpHm80hT3F6rEyy5DQRYxl3RKa2sCL+WL9udsv53Dknjc
4BYr5JgDMnbZMAuaanpDLVsbVoXBPjLK6yntR6Uvv9vtQsQi7omm/jgHyiSSpqvRr3PexGUW3bCH
+0MIo0/K5GKw41r0epBBbsmzmHwZCBpmBekDIQp2DKC0nfp2FT8Vyz0bM1g14XmF9KOviQ9oU6eP
/wup1GbiqjrouDJfpH4iml8WEzjbEwILnMgap6c4sPhbcTBwsAv8pjC8cbgFmp6A2D7tJJyjmfJm
RewVfw8FbGyNWU2zGhiMpjQ29zy5VpYytBYivc87rLRMm3+uP59CdCuBlP/zbTMl1p7Y4zhpX69c
0au/MyLh8KzUElAV+SB4XcNmkG0iZJihgC4ZgOfphi1+0kKkwrHnKhXQ9ebYQRBt1EU/WO+Zj0+4
OOp8p7+Wp54VKFgpvb6xdhkBx0VoTEWm216gRzaAwGilYTLQaITw1Myt+nRlG3qKGK64EafU5609
1Yy9e3mNJBsul6kwvKO7VTlydhPY6eMgGCjw/8+muwnJhritNE4wXEe9uENP7LkRr0qfHGAkueV7
V2VpK0Klkw07hqY2W7exxCfZqx2HBN3Dk4oT0dbnN1NMiYkIX2uPmURI7hJLEttrlhJBdWMF3v/7
0wbDM0eTx5BQf3ItmjsygN8ses0RErhCwrTyN3Zo3HXNR023qtp1Mdq0qrJk4A2SRNXH5W1J/IAo
G/N1+khXN6k1KMz7MkpGmxSw/0bgUQ5hHmncjCS8EZ2FKLr5VXBi+D8wD7nkbhAtccya1+1bish0
B00Beg8zYr4w+KKCqEAHqPsLkst0R3nj4P2n0SF+CN1VcYNGJjKZ1U71bGMhqRqm/6JehtVFNlof
1QyogfHtuMMXskUws1Ii1lzyv28LQ/ibIqZqCvRgwhHqa1pQsW+NPAKsRj+Knp0ynM6g+xNz/pj2
3TIIDJrMgL7x5vlJGzdzS3qFkomcDMT0lYu+X3LmJLxcZ5ytLu+1ME33kIqyr1l1tFpJe+dA2WtF
oZkB3Brb12bTeH5dNZDlDasYlbGuLIljj/hguULqj86hMzjnU9c2E6j9JBhDo/aQdiGp04e9OXpI
g5RRdVNcvbZSTq51tJOXWX45o+XsdJ8q6VMlM0MrJ2v2+4Yxk2sjvkR7KZ7KZTrQGSJSefSPVsAq
bV815q8c8XQzPb8khkZci3kfGtH8wbgCJNanBq2BpD43VQKKULyEp31BflY6A7OSi3YfEOJonma1
mVgSOM8wgIpvyzTsjwAbBJb6yidsGrJ2FsnfIH0FFZNHalRoRb0cH3gsaIVfLtj+pQ0a9BBETVlG
7UmqhDFlqnUqJNfrUHKlC46Mt/OO0rU6TAJEcCm2paPwVs2V4mTcoWyQISifN9PPQ99R9IzxBMHL
LtErF4+QKQbp8+s/EaeDj9KXeZgBy2fEPtA+UAfWJHRGgmfqjixw8OuRXigNRNXz8Nakk+44egng
vtajSxU2gRYvnwdXX0xLv2JJJKZfkU1WySVYFQB5JdqfJgxq5o2qY7peR3LzTDfu5C5+SwNs85gp
Ck2nvkcwybcc+2aY1U2BIwqgct/lqw+zPYwWaDtTP5xD9x/A65Aj/Is7l0rXiYE40orXCneuly4X
Iqw667pUNw2NTq29L8dqmVaQbCNz2HR9tLaCUnuz6ptADLMK8SakOEutXu0Uys+S1/lRL9mfEDDV
YdHBnLG1k1AUl6egGXcPqX98awEojnYfzwRc94+V8MhRwyCYeBS93kIAR07fNgQrJsNBT5LtJh/B
jG74GYliN6WG2MQxtVv0mItFWaWcktPeap5buADV9gCCViSNx8mAn6BSV9FxeoilHy+ofKBTIq3m
yTBYclHbuQovcFVXNeLxOq1fqUi7A5k3jP9JQU2XaHVsB1KcfHb7dWlQEREkLU8R68lzNMbBdgiF
Oi55VRAX4B9ph5QD/PAcqBX/PbJZ5mgCg2Nyc5470rdg08h2Gccc/M/dWPHLSsLAKjjukQCmBFDN
bfk/WimGC8KdRiFLmCpwq3SLD+DpMIugXjiaHlsKFBcuC0EFpiO0r/dMUR6mNQ4PGmBYaK4DHMQR
5qhDcVfn9pwo/vq4nFTT9HHkIADgwfC7QsarU9QXpyk1vO7U6Tq1v0V17+8lr0RTe9hkZ5GcR5v0
U6eQOoBQ/PLNNBT8yBET3SUdYI6r7JvqaP9PErRQ7/xWZDEeMWrrDJlkoUk2gZGVWOS3ZiVFFXkF
xf+b7NT/MRjqEBZZJ9E9TfwslgaXB4ikfuSzfa7aGN2KZ8HK+LL8FtzBP2sPAvme2IAeq5QfIKZd
3DaDiDnfAhcycivlaetQCcikItk7TD578fDFcnUDssR4zzDAM0oOwvdcCcZ/Sse/6+g557QXZet8
78ROcTL2/Lb7YBptd71Dq6MdOMFYvZhbm51VuwFI+JSXOQ/ZIgEPlHQZLPnMfVou6GX1I6VJWkpB
H/FsaJ/fv0vRfYxBw8YOZ2vsKZem31tudyREWr+KIl2cJlCbTD7wRjS52dwMkiJ/34ZkHYlsRJpQ
Lusm8mV4YHL1wT9LO33VfTG8W1RZNkQnu0RE83wTAW9QBJPfo2hBrRFLfZrgWWsaYoC0yBMu4Vk2
mreVIYVOcTCJYA3V176/oKMZaCo+TgG3ACzYqW+G845YgA26kxagh9ei/u162eL63xp5VYiD+I2e
We/qFTI1kM1ptvDBgtASQijafv17d2/rSyzdKveh+B4vFwGnCQEMoFc7NN9Quo3CmWeL1l6zIU7m
zj4ybn5SJhZNF0CSHrvhWv8s6AYtZoqkEyfPx1GL7obErTjsyQlRMyB8LDOOVxhuQHvgajjRHIf9
DzNNWzP3dEmW71Ii9sQIuZiwMIG/X3l5m0saTJh9P8zwNy+p+NqrFUe4psLiueUbmGO+61wIhMYb
/M1ynXK7CmKRO8tumy4wL/XGwUraak5kKMcm70HaohpD5Q6NftFxApKYXZWBYQbq1qq59YQI2CTV
CXCI0LDxXGsMByIKHfBLUje1i1xt06r3Q+pt50wxkS3+9HRqkSk0JL7KsYJz4AwbKiz54uS9SbIB
cfi69lMTYWsPGXBk923ajPW5H3RCiNqUirbUj2R5Hm9YlHTy0Znplcr1Mqz4NpBtydpfi4zvydy6
+eIMqJE1nuF3Ji9L0bKsUP88mtgIy7ajfig7gRB6TgEuHeFlDtmdYqIdD2KhDQa9y7FOcPuzKzhw
/X5vhibVAbkSBixYmnu1W1v1njDW5ZP21W2tDmjUG/Ce9TaLuYTscpQti1LWnTkieWwUCNUyHkbZ
9Vqu8qmuK7l2REvk5lVzSXbzzkZZAou9ZfPTsHqcWf2XKrsPkU4h4+h+GX5kBa34cSmJbK9hWh66
ebkmNVucW2fOkWN6Un6P/ENj3tf36BzVxKGa0TcM51zTpxRp4+HM2Mqui4kzjPW8mL8O4Y49rgbG
Jc+8OJstdM4Ur63VtM6ap4/QiYhEoDQeySrnJcJk/G8N3jy4/yjcHLCcs/aw6vrwIUuWmAlOSUFV
NXV1iEaPHuiOf1Krqrdp3g7UNwfq7UT7FNrEX7hjnGV4Z8XV2ketn5PCeuIb+jlFN661DtEOLXpm
izpPpGxH40i3EjPMLT8yDsF4pZZ9oC3TttGM6A2PwHnWIrL/fm7Zzb3UHhs6dOEze2G1OoehX/Fm
MybuAPvcwneidA1di1/tbuN1ILhlix0+xcKtTmFnltQ2JUp77BX/PIrfU+V656IrQrMIJcTz9lO6
VdGM7s3oD6jkKaxriLe+tr0119Qy0s1vznFOJCOd887EqBxWYwHBEkYnxBciNOJpKDuF0KS+NYza
DN1I7ZB4g3P0OScswm6IJ5rPBKZTZfEmnGQhk4ALeIS5CGgF8fuEmKqIHDW8f7Zp+Q/mlXxnKzdq
090aT3uupy6VXhgPZYFXxl6059O+LDHlgLwmnMZWEByjt0NFZJCWpqQMFr6WJacTLbnmpXLPiCre
ZagCYtn3WSXenrjA4b3cbneHXgBfB9RlfufmH4c9pyIJC7pdzTdEoRv4XPRRLX+PBCcAvq0TbXVI
g9xGMa5FwrQjxBh1Z6/mLwkQrXEMoiFH+13zgAwMQ7ROq3SiCDbGdU1QS/0H39+Esc2t9jsJkEFi
JafxH7HR5TYQ+JLdsb//ZZdM9k0JDkdi81hePvpzYOdlNxaB32X5LHwHYdSpy//fXiKi47cAfLOA
wzLfEX0sdIduIht05kc2VMvUi7h+xrKVHDcWT+EdsVTXT1Fx8V0M/c4Fr5ktsQbGNiC1N07vP2S9
0wbP8ia0HGq0kMrfKhNlM4xaHq40T8wGBf0MoTUUr9iACrY1rt5QnCfF+oqDgwA1B6C+7tShMblG
pD10PR9WSziQiogZsVoh5BjZN1Jvcj1P9wGE9uXui4fngYusz3G9u3REF2gkUsjyYEz5ZNWpeqN1
L6/sLvzh6eprZ4V284W0jKt9VWHcsL3M2ZEa8NP0hbMyBCIh3ngNvQwflZNjLVqpije4Bo7Nn/7A
zjdKGAxm+oNEciStg6yjBuinlauS66zfS4ZxLCAeYBEc1YF4PpJTY84mKhzV2ZeVAKzdTLWrcYeA
DZs9DlAkFvB/ZUCwestT57659QTV49C5slHQZUsIWSOqL/MGKp/1obIt0Yj5LyLCEWgn5PEEB7lm
YoCWDIeMYl33PiSyzy7CwgeXUnG/ttcsTw8la19IK/Yw0iClULiuXbvDqMBqj9zmWcS3+AH0ao0z
FW9J3NG/OtJNVKV9kiOKt34irjOB+Nnx1l1fdeWEjCEAo4Szli+HvE235CqqICBlvSe5okSkAmrB
Iuw/iPvBV5D+fd/UsG9GlqJjtca0zWStwNddBCCf/IKgU9990tW2Mqbt7dFqx8E1JmLa+C66IdSY
80Ble8up6Mutq7bMEboxNBb/ACBFzrAJyVhZjtkMyQZIk9phFkVWixLLfhpwEt7saqzMziSdnNe/
ekYeDqBzfMYeLz64uR9lHoeQnkZ3fNQk581XMDksLwgbQQo6zCrk0ZE6++iI7dsuH+erfXELED1r
MP1OU58rFI0A2+KW3BLkO+eX8lRSt9EUvG9/8tnb6QaI1+owKHK/W4stCVbP45O16LM05KScAybg
SxBFrlI281pY1jnwA7Yon1zIInmJmzkRp0vIrw9NRYMbtMNn3Ztytt47JAH30jB2NBYouW6XguMm
Gf+XsfjQH+eDynUmmBxdR5BPP60hoJL2kGQsjcIK0Gr4E44vQlb5b8ceNpdeEZh5aAucLNuH7W9n
e+QruDBxj3ZRdH+lqR0bL2WDMWb1hInGM0Asc6WvOR8vSehzoo1wlKgGAltnS96ThF6DAmrLV7Q0
iKccO1/M0T+eL+mcarJAZG+6eJF6lc2vXmv99KhRe3wLKQRAP1QS3EsPjioAOBWXL6/1Uy5OjyvA
HF3eo7skhlcPrutFwIPLBScVSaYJkeZnzN2k65m7PMaZCN6uXnCq5AiRiEO5Qw3pUta4WkaAM2zQ
Noc0jApVSGY3eKL3rQQKLnQUFCa0r/dwo5JpWbB36lx/xVrwwDhIoq7JAHigP4yv5xeNuEofZN8n
5wDseTM2xFZ0DPdGCCV3NpqDfKF+BDIfeYB1Y5PwL1WZd/Gv9O9NCvY72RRtcct/iNP8YyRNvEGk
4zULQx93rwdiS1LwJcV5NmTNf02sxW+5jUcW32v7K8SNoB7DNVLKtETmxOPuQ+py/V3HVThg9an6
a0sTJSWUXooaNhzJ+sKxK2armwb2gnsRq4j8ldKiZv+m8La3X5UHp5Xzv9iyWMph8szj4QuheJs3
TjV0v12x8NSK5kD5GdyCJkxl2DaQRDpuq4b++r7UUHh01nVT9+kafLz7kuXnlSGsQN1EwjwaAo/c
JlhaxZmJ3VhMd6AT7t3BuB8QeAhF/yps5y7WBATJP/48l2wcpWRybNmAxPNLHHPhGud2m07mcoH/
uRE+Y5Ay1XaoMrYqT+dH1auKfO31j9wKvPvUAM2aWy+t2R5mwwYwWe+JxlOseMdGQXRJ4rJgk7Qz
gXKbkoJhNRyHILro8p6sbM9jlyolElPhyS/q++oSXvVGU/R5ctwpiWrf4K853AVzAElUvfy6fodp
0T1gQgulWenXaGuEKVIZwyPB0TmLW/wjvM8HZjTeaQmgt5l1hM/54odzEi45s0ajwa9afHILkfDu
pDDYo19KRsEKM+Vx5VfUx/NwUz0ig3N7aAZXpidAwpHSIcnHoDLHwOTsdUcTuEYYyE947JAyacPA
i/9twWdCDJ/wYiC7QUBnMDM+Sq8R+Ov+Dc9g28IAX/JSoKYcD7BDn8OkKSuWS5S9Imx3au+Et6ns
3jiM1B0OFm/uEKTyBkIqEvEDskzZM8jeE6KcSLvc5w3mVakJtSG+3ibg65tZu+K7t/JkpY+ntbNs
/X1rLq/cvXRec4nJDWo72BCdCDHw4NS6UKWp3YGGxsI8wGsHvoortguVMEqVBTIbbSVMhZqGXv/V
bTdNmW3SwKEyMVQIS6wmi87gepm2cjB1NsOWFpF/VTlyAMh0HLSkOzQHhk8v1wdZzCdCoUrOIVGT
gTEk804rAcQItX2aU6CRv03zQ7sh+B0/BrGnqjrMqxYC9OAc6hTupE5xQN+ioumTBLLY4VYkBD5f
EoBa49QNMPOqEgXZalhTHr7vinQP1Lw2JsRvIHHVZz0VTAYdfc2qpceZQB/u1OfNNj65KcQORoP7
DxovAeSRutWSPeHheWYF6WKF21glo1l/bZS1xq1arnr4HEuQJ+6BeTqhfKrIsnDs1Wq5WwvI1vti
dNOMbXI77E13qE1fWspqAG+F2vX+5yg2lLaXUd6qAhpE3iitErngirWito+wjqEx4OblO8zHmlby
svaqMTPn08qm5+BQ6kVs2N4k13FhIohkaI+smLRV6/S5tIc6UgOGAeeBTHziCE8AH9Di59mNiVVT
rlFpuID+YDWkJfSdvXG9UHAkQiebLXAu1kvuXrImAryBlp60zjp/uFdp8R5SerLKsVGgZuhVgOkI
hNIOvlJDNc5VEANsZlHHrwFOzD2ZDNdC1boyFCHOafLiViExsfFYC08vSjmQJbMYlA0AP5fKcBsk
GxKeRD7iIyArIzlvAl3y/Bnjo1sd/IZa+PsAFNUPAre4MrKA9P0zwYqc3EH3jYw90es5kfSbw/a+
doclYF+wWPAZ5YFkbYlHqGP7wZ1Pj4NNPDgqfgAVR3Ux35WILRl4ZOq9s47KD3EQ1I1gmFyHSroy
NJUEsn38YpkMHyDH0WRGnCmh71JAxwpqZ5edG7sbX3fW/Cn1DnwCLJWCcFYCTz/jOW/IMWigppPE
sKHX55y5y6gEdjyBOgjZeLexSESge7jUMM5kP4n13sIVGy1i9+2QzPzWZ7/cmHs6mpoQCQa/5wiS
JI7/lu886CyDWpEkIEf3gY8OOYMyUBtjY3sY71VH/rBh7g5m1+yWa3yP6KpFnWr/hT+whBZMZeKe
PGMwJ3c1i287rRNhCkIFX1Mds34jDiM/CZMo6LFtAdAoH3gQXyeL4Iqha1ELo4AAB+tDA22lOcKL
AaCe64h7o9QASq9CcWOkNNfTeOLl8i+L7PswGaD6dwQEj5ZgXuB8dbw0SaYENjtsWKMBVXlOo8Nh
h/5HtcLq6KNCy+ylyaKN+UR2K6mOlFb8oCqAgNe1bwiLN1/YQcHPaZMQWRxswK0GUfmlsXcrSbCV
OnBQ1uyJvO1FdM1hhzeTHvrsWifi56k/u68Tb9vYZe2gVo0eEtpIQ3RmAR+hH5EivgATyZ5fSEdS
ZZ3tSPGJv2VrKKBS36SehaR9RypiHnttvKOguRohTcxifFUhdiuqKFMzIG9aiHymtCBaL2EfJzeN
slkkrRE1E5Hzdj5dQzWTn100HAgkSawqDopCZhyh4kkOojC7lo/R1QPqS0+MXz96LodLWgTH7cb+
ITgupN1aWx7A8CKkaWM3OTDmUh8Wy2KxfrWUeJuhXY+Mym6EDvoDQu20jfGL9GawavKkzj/S9BBE
oB30maLBoHwWOrtV3MzSuLFEBuDQtDe8g4jbaqX/x0uTiZWgHQWJSK2H6TWV6+6yARWfabE7bS2O
VNkLRo8R0Dn4zs1E3v+Q2nJnat4tL0IJ8EQ00ot2GCVt41+1EBjYK/UyMBTRLLL3ZKH0lHinnOXL
QQszpSPY5MiT66sWrGBdFsDo8JrssxBYSZZQkJQ85mgq7hAcLOKSx/mRdfm08IDNhW4QP8MDUyPU
gJQ87P8YF9UWJt06t8nCXzsHopQDdyP2BiQLo/EAGtIB0BPLL3i4xVR8M0z93AMRTSww3voVsBA5
hyKHlmsZfuevwkybDc2teD7nghU94xU5hfHpNB6QKzHcYwilhU9Q0Xe29Um4vD0RlSQrCWQBNOQV
lg4lMGgMA9RUIJxnS/xLoQIvUc/Ob2hWs8nh8FunYkM7wXbEakx40FIarU6Tv0j+5Xrd4uWYHvcJ
6gHfJtrUzrPN141rNUFK7+5WEsv+f3FTYXg6Bti+nGsA01IZ89W9W/yZO1Rh3tx5Zc0j5F6QMAXy
bwd6OwRH9P8KJ9N8D8phLVVQ4mzxfoYIceobgqw/i0CI2lDMgNKoN0aIh1HS8UgypR/bn0VDNPGi
VVglAWZx/mTraPx/i0jBEsZn+QS1SjQzZAeE/S0A3i4FeBBQiQBYjNiqJISGdqx18M63ZJ49kp5K
dFSzpO2HhwLKOK6LxorCB3F62JS5fuHUmV5QVc5cQZEsS0FN95cBSfRA7BMlTqU3ZoIrS8tj3Bvr
+S8+3hYAi5sFL6wXL2vSTsKrjEKh7mqY4OwijmK1BZxqG1h0hDwyDQerkRaTah9X5ntdU5OgsLQP
qXi/7qX8kJ+R88udfQDz1M4G2Vxg48s3vF6dmlmNd9mjZA+D7308LERrba1J+Es4UTV+nEwnWdj2
dkpthX1xfmSq/KmsFfsBy4q9fKxM1qk73i+45mXpM2UjiAZhoE0TrxIa0w5mJWjuMzehqq+cJhWy
COI2HBKzU4gaeFJIz3add3lnWikqWPqEy748Mn285egl/IdBqfyhl6zT+ef1O1XRQHZeLHS2Bb8r
hC84J6CC/ujFflihFv3khmLQaN2/ZgxYIqDC3XReQJTDnP2zl7w9GBNMTnYGtNtC0bPbQtuSdJED
nh/n/+tfg0Y4dBdbPl8RamlhFL3ELgNnj/C8Njm4NlvzmOxUj4j/n6Dl0sAeYlDgEXW9ENd0gbTK
lt54smUpOUqOkJoCKuVKzHEYQqv2ssu7VnjpbELM1DPTYIYyc9qq5FCGNnocPTQ+6vmQrS6yi6Mx
p8cWqCWAb3J7NJ9aWQL/JcKSDlUywsaHYhi01S/wpcTRP7FQdVqLec9P8vXhV852rdQiCGxQPeUM
Qzp4rBRRBCQMZNYfsy5Dc8+QH7D4+eKzfHXFoy6PN8kN8AKBUBOSnrlpcbNvy8MDwUqXMNLYCjFy
iMMwBPEguB6ywnqkwqYgYuSlKXbiaWb//ABKbw5izcJwpKrKJkBToyOJdAp/fnroxwsK1QBjqt4p
pWhoTORvagXKM/+sI0NW6VLec0BgbMF4127E8+6TroidVcu06Jsix2JHYXOn7ICxywnSjdc1YFdN
7PC1IFXdeI/+h9BXJ6JLPZ0gUPNSoKG0thlQ5BzTNLH/z1TAHwB7c+P7gSUL7swxI33bUwZjf5cM
zENZcT2mSFYdt3hDrSXyVxpWH+HOYie/nQ4uPhOKsYR/kQg60/qZlbFhj+QoIQmfydyO+zvP3I+l
bgJCOnBZakeg7qt1OOih4fAoFhC/Oy1FqIMH7zQb7H9F2IlNFU11yb7A6bYKV7joSzWQtgm2QyTD
Co/+qGduMIIeg87jaK1iENYGvD170bNnmE6eIVh0lf1zYKP9laENBzfRj+FRmHDH0cEhB03w5Oxk
sWyhucaWOoRY+A6q9jUYrdkorGwLK0CXLAu6NoGQnhUIwZqlSHI104Iki0lwWyTHbkqQbTUjxalC
78jnNn7zQo1WzPhV0x2NdiqUrXm0OUgdcTDlbxaDDKCTY8jOI33C1wn7JF+5Z48hAG5yMagze3y4
+iOJiTfSscWMlYY7pwlwqx0QGFn0z+GNk7lrKcLyNoRRV708KdSgNxvb0otUCB12XECUwf0r7Pen
7dPHjvmVD94mWGe8Vb8aXGjb9ka44fgqYFp6155y9nQJmKYLHwnrcYRdaSB1MC3AtrcStdx0Ria2
rJLry3l9llLWIw/b3OJnfv2R5bdC3R8L1iUQTkDM4dmvQnwlk6I80IXEiLGGQb8x0IlBX/tGmDgl
Pz48YUC+1aDuPVZ4+j0g7cWibFxqpFzj9AQ47KQctdT5brtC0bhg9E03SbYFF4pzrwbRT2bS2O3V
eVwUdF5YnfruoujxWkpsThBY+cqd36EfO5nBx3BIs04ZWxw+712sV1g+aFPlg+l2lif2F1rMkKsL
7v1VGG/IuMrDzKuRoQ8ARwM1VRJ8OkftK1sgWaxb8rs4kl1/iuSUh+oDp61d+zqyHu2dZQC5fNJh
ZD6sl1QkEsnNDXSqpY2GjpcK2JBzb6Uk6xPeiyyBSCGVcIXLp92FoWq0MCqgpfm3y8tHbQZQAjlM
zB/AcGN+2rVyBq01/0S/fmdaNiiOPUhSKB3qHoKG7Xtqh2O/zdYgcSXtgHdjJ8lKA64egceZd2uf
X0K53MxJ95kqZB7MhI3L6YmeVJOFinI2rwqZniRBavKlmnsWTUBCM3C6RZPukgGgMNP+jde2W9sm
St3MA+NnJ/Ku/urFL7VD+erJ/L2eCX3AurDIvIEoZWwT4PKgARavTrOSgwHkdIzyzRBPq1qY90xI
AHpXp9boeWlV8TBeBJ++F/yPx0Fozp8f8bkNIxYoA6+gO+lAjB1TMEiaoJhjwCaTT/u+U/XYQpq9
lYj/fPNylkecVJhfJx4SZ7t22euRifYcVnm9Fd8xompO8HLKCDK4q7TDYZzsyqqL7WoheFrl4KLG
W4FjMNgVr6AYBqdblPb/llZSITUO1pnl0IFtqO73hfZ6SJp19CGq5k4Zb+niRZiLsZenIFEZ5VIV
++AqV/2eaZ+nshr8CuYRU6ulKPXvfdpbOtekN3L7f4ScY5wQHu0E/gA1q952tUKncfPqVYX4qcB9
mpqfHHQ+rI91L9OV3BgtzQsPvmV+Sdb2S/ANkZPH9vVfbLlaMmFymeB5CAoH+f2lWZ8hMF+OjNlp
e5mzNdEGwH2JN1XDAe37Zrr7BhEUeO9tuY5TXJDyKz1W51xLCB0isrIs42NuGLNkAZmZBqTpSV5f
ARzF4lpTcF+CcA9QJHY39lAx2BBXtNgsTYajNOABgQ0GuTXH9PRidwkpwSbef+gKywF9h9WHZgZ+
UvmS/Y97cH+euXU9lqW7wIaVoqxir/cRNbiFX2d+uLmFlGVl9Qd7MaVYu1I3DiIE1LPjb9gtwMhR
k7jwr7OAL6J5kYmNMIOc2TJxcNn5xC4x65uyOxVujuRb1ckt3afbMBlBA15YnX9w9PSS9UdRtrR/
zX86ZYuS7vZupFFepaYxBa7jn1D+X4GCObjxQrHVSTL3m8rDnCdt84Pe7Sb+utUOE1+5A04hraSg
VOKppNPCZLhq8sj+jU/rKpYVtFDaBAueAXlaPV0cdeWUxjLMyGLeD8BlQCP9RvIWWvTkl7/L2PUM
oSpgXnDgWo8KZjvwZRVLtfdAIHkOtxKJnuBVHzBT2yQrrD0Rw+L3Uee3h/4mfI6woQW8Od/Lim5A
USOZokbJNwWL0gkpyhOUQfirJuVQ/0siLCDq5uxjCnNlO658zrk0NnD1+l7QrQNsl3tHGJzuQ2ZO
o2zDC+WyfL+wk2FtkO68llsAMG3QgRyA0ceniZJ2f/CY3ed9R1Jtw0qUrNyLUotU/9sMbilsinLZ
NDC6bHJopQBvsIKZcXwLLiKt/+ZFWrENhtfP4aHdrMP6UCn9sv1rqOS5kaFPjroD2/c+OdVknFX8
hzLdBKYpBAjmjQ1X3QcqUHEY0iIVE3uVCCzGJYX0vRc9yuOTBR+V0nz0SFsG91dJC/hqR5hbPnez
Q8kCxcb+TogfMNLlCYdtpRt2RKDIoIHip+81SUNip+CwqPZqspML62vW95qNT3jCYub0zIPhSFPJ
YGteAooXS4gmTFcDvU1muFp/ESGxjHPx7qja9am+89rNH4FgLxpOiFRHU0ABkTnfgwA0oytKMb/S
tV9DFCF+WY0ynPkUUcrR0cjRbB6kIOe2fb3tRSbVmEJSg6t6e3s7BO6PnzTlu4mNuuQLY9g1Axft
DiSqUSJC3YBANLWDXX0JkTq7z5nnT88TARqjJHzNiv3Fd50RFEauw0eSxSbsJCsm6EBvyFNTS0zp
n0eg6iGsHlJidEP9Xsny1pZOggmmkHQS/LWO3D2ft/vM0LWNB3FEcxj6J4kRX47GqpWykzZCahRF
Nl9vr41uylEVAaDLQc2l8wFmKsOicO9MdyycuaFKUXCj0Y6pR/SZOvlUfw6Xbkz9LZfCS6JUpo87
HV0U4mjlfMwwKb3k76Rh7s1zW5SYJU60s+XDldsJ9+/qQ3/Uio0TZvX9vkEKtXHOWenkjDoca6fq
o/gOToof3tGzHvxjrabqXqgM8FpmyhuJFvRRKayH1CPcTJx9EtgAlzOOKCAqpaZldwKIbLl78020
d/MNDTdHFN04DPC8m0fZAN3BP1P+t+/9DgoJG0gNfYkgzmi/zA3E81gjZIzGnYfvCbjS1Qm9Syj5
AHIUV2F+x6/loKZ7MUP24rKV1wa4K2wR8Ypl4pAzCfJdWnmNCzwnhrholnqzvGivT4kJ51jzX0f7
QiS0RrT8TzMIjedbURoFMiTRWGplE0u5Vb8p/Z38tns7yrc+7ph6Foi2NNwO4T3C8noMcdk98stq
YEZUzGjbDctEGfNJs9pjy332A0bSXHkZhkvl2x9Yft2aEj5EBn+40FG4EAXZKcEBud+yvCNWAu9W
X+qAk6fnv0FXXDkyDZYgH7sb66XnMxH30fTjEOaf4jDrD8I/vtLRfHqOhGi3p97i6URGaWqcs007
d+DNk41y7k7gIFSou+EHy7Sf/7zHM1i3FgHtF3k4IRTvyg9jO7XtKWajbs23DsLvipSlKKJvI/T+
UHfqJ6JRqoUIaZndK5igXJ9EislWcJWaGRcQtkZ6UFyaEJeN5uwYzw1auCdaDvaN5obQhOZjO/b/
bJlCD/oUBh/meGLYGVX5QUd/dnqRECPmpYtRk/mwYTJESRDCoIgsQlwEqpU67uxV1t1DMJt0gzfN
Yti5cuAEoQ6S3HiU6oqxoeSy78NIoq6Yd+XSzH/cCVmltUvq84On32bGxDd4dnqFpCgzBwddShQQ
Tqint/KHD+5/gjm88wD703qaC4Jh0+sKhlz8novSnyIitFLtQFuz4dsi8+1Z2KdzExeasA1AhNKU
/bHITe5AYxySHJhGLxPA/jNLpBteTmm1DPNrfbbyFZSJm2vZe5Hgy1l+q/y/o3gW+zMlIzxRyvwR
ieZ1aHHRPpqQ95cEzNOrrqTYXOO+25pUSOmIMPUGMTQt+r31tIVU939FdPoDjuOTw4tgkHC/Kz00
ZwMqgM7xtm1cPH/7xyyQ1EIsDOz0ojGLxNzRaCwsOwD2AWq2QvBuKaCkHB85fZaheCkBhsTdCAEm
FBly17Fp1NSS1f7gK4tt9cExf1BieHb8872+am0PXfEShvmaPuNKX93DIIBYpRfgJegiUchnibIL
Rdxd83NAoHrCygxDBYUzxJQSPaH9axNeK8DSP0VhDAqGPE8RHDHiv1PP/VTTC04u+JfCFKA+4BEr
FIeIlS8okc6T8pnHF96QKLc1M/2DE3Jw2OXHzmlZ98X9oGzRMLeGjiFzlI0z6FdVS3MwfDOhMCRY
eRHZp1yJeEaigMf1BvrxFQZ+C7MqIoXZNiZumesyavbkQE30v4ncuYYayYKbWvwLgk8M9SqVbL78
v/5xYDN379AMtjOEkS5pbxR8nlUGaETqED1YERu+7vMzpCQ9vPDr1wlSx8uyqCcfhOqQMm6CKCMZ
g/qm5bu94sswKxx+WuhENVF3HrPbXGqoUVFJi0kdTNWRQfIktjrby8bDERFFpSG9M27JYt1abtn8
jSFbwz57SIFADwSNwAI9A5k6ksltHRtsG25RF1nRXvJNFu2aJ/z/siq6sxiaTr0q6LT/b7j13j7d
YyPJAua5oVsEpqqG4p4DvROhNaA12CQOwk7Npr+5JGXymOFIG9MVpxh1XHgnFinJVS+bPg/iv82G
B7OY8PsnvGvYEKyvJOgO8N0ahSFlH+LG7/hHspfrJMqQOhu5fwp1M3CxWP9Iulo+KjTfMmqMF7Pt
5DiIVM6vnYvdj1gB3+8NA5T6VYpVVXwGRY5CgVpl2YvNyed10T/D380CQN7ogKp05doJ771FuGrm
vYBiv8AF/E+RPrmaa3CvmwMytNgLZUp75EB1Rw5wg9t6EznizBOVQ/teJcQOMeCUP88zxOGIefjf
+KeNaJMiRXSjmm83Knsz6pwZV8381b5wzwF9TKN/DYknESdNPJb9bYKcOXjnHC75j/kKd+9qpsus
joRvEqj4emGGOYbxVkbU6DKYgwDDupwoYkKWtqnMw3GMdNdPcGuHx+XmfdvPCt6eD2a6TdT8xCV6
5vs2BwVSgyQjqwo9D6ihrJg1Q2wRocPDamwP6n8vh3THJvCG89BmWfTDveRWy9dVpClQN9aoXr1b
ODU9mb5MLMCyfjaopOk7zpfuVmEQowoy3kcTzf8/mdwVUyRLsxw9ngVlii8yJeL6pfREYWfhI66x
j1S3L9FFJpGjD2vSpJnOvuYXkimy8uQqHv4hArgY8wfrRqGh/Re/rydmTeidJTMZxlg+xaRqtCjK
K0emmYDX+K53ON45i/tXTOkbs3WIYhy2S9Jo3XomBXtb4cimVxqxNvMVfu7r6dpVHu+4BxCV4ltC
4VEWCYnN5bsjGWNYT+Pf11LKyvyDHTNl3SAIRtX5BXQbPy8NhgfK1hxxZ+xPA1rFDxQpmZtG638w
NPQjuhOT7DfuWZtFvjXYB5ooz5eM25PsPNtu++uS8bmSAMRtuV7yxQvc3Yf8ArKHYkJbdTxsoveR
08gJYO4BcBczwru6CsVljzvXghVvJBOwWIQTxBfc2Kjaskl06dixx+wsSO8+PpsAbNTU6cyPGnvW
O/SW6uBuqK+FqjlNB7d8inQQMy47nUeAD5y2s5HfE2euiOJvnBBglWMe79J2oDBPpSfaL/SlEyWK
rGGW8P9MMje0iXREnVrsZ5FrbkEgwMaBUGzXTwSx5lxxLeUq/qcQhuVs1y+UEGhdGmdFtwKobfNO
NOpIwOTroivr7nZYduqLAZgmG2KKoM4CiJ6ngZjK6fV7JTCr1l88ofDsnuABqY98XH3ATW2UKWX+
54y5BrG4UvlcsUcY2CMMyMSZVEp32ljnz53eCQL0YqGbaqQ16q1WVZKwnyzT2dLQHGADKrk+q6or
0ppK9bXnKvBhH5yncUbi28DEnm4VEC7Q6JCUWNc40yiVzR3b47RD2K8z7YLrgVXjPFiBM4dr3P2O
b75h/TDSiU4jp9I2Fsj1PffZuWhhdWBxLs47Box3wLuC4Deb4WFm6IDtobxUGvoW4ExkVTsyBorY
Tt3l1lPW3wmKLLcTKZsni3kdNi0OgLAFQw8HXlnqB37GqS+xO44QB3O9tIY3LsW4K2q0PBubmKj9
uGqEhZXCIGHNalgRzLQOgxRYl14pPa5loW3rXEqBr7rq8vHyoAX9CL8KIB+8wB1QBvU/456cmXXa
O7iU5jQAzD/Tm21zYjktU+SJFFC301be3N7kqWZ3v51BbOUfckeNV2/KB1QWl+NcW3li74fzEID+
zq1SM6Ff8IIndWoMe+jMKudiPYL/C2FJ4RZxnLtAMfmzk54HR2IS/U1MOFWktWrgxI+3N66bRgAR
vSSgXYO29cKRjlZu9WiukZsLnnPTW76nLJoIoHmjFlmaWwbyFS72RDD/4V0MCJ9mspch+qJKHT72
cMP7eFzk+BmZv/R+hIHymQZAKMoZF04wZIAQfj4l+KTjNSbm7AHAXhBPx7RqGxu4XJo4bgueZ+Gl
KJUnA9nnvHnPQw78WAU9XWegZz2M2lLK9rM3B1NKOVPIoF1EEvgH5mBbChNR91Pms1fRTe5qYeKg
UDy9OjY92Mo+tpC3rqR7RwwPfyfLCQcYccWcy/ktxKTuHqUP4z4kMcoHNJqKOxNfRK1EO1JVIfjg
bYmj6hEizELwEPvv/3yjwXFt5NDdz4hDB7gUyakG8pPzhCFsYHI8EP9vfFJcb7ZYF/DRGaGzRhZp
94lTvdLhvPG/Na2olaN0zdb9gv/VBj7L0fOJLi88tJQcDJAX+xm32yDAvHU4COSg3vnLElXkzvCj
rGHKsN1G152uzVqHrdaV1JSyLx7akTA/qRX4GiLCqsOCHO/ywI5UOxo1PSg4MvIUL3Y430U+mbiY
18N+puBh8XznZI/QjZTiz8kpze4mmIFHdqqiMyGFAEvfMbUvxx6ZEDaMrBWezyaJitgxv7mVtRHt
xCs5d4LNqdlvDgSTU7CdnU2zXmEwU82dRso+AFpdUtGCfaQlFH+K9ZAZtPniHadj6dLcl2QbvPM7
zyETCQXauooasOwlfee4iBdZ0jq/3+WMRORx2czkiY13hxyB65F7vvsxjmhZ7uL9GiT04DOvnQUA
Y1PVv312vvKp/bZwVZXECgyra4bPr0JutuYA8uHmasS1t+78rnmnOd82DJKsIw1VMah3l0Kffyfz
BUGq1nO4LnQ+VUOhByNYRaXIpBOXb2usumK31DZLTL09zfIkZwcc8xN5quWTyONBgjY81NimZPBD
Wc2s484XypGdMcvzgu7FuV5R2pJYKaF3T3ib39C3NRZ4RknwxVh/VD6PtWi7L8OPwmF5kyVyw0la
pQQbGX6xXoZcpTsYlEvX9z8ibvRDQw3QkBhRW+9N9Sou7RLE0xIUg1oxJnoUCcQUpojhlcVkr7Gv
ADpuPQ6lrVb09K7daYTxnk4cbxX+pDEGSPpXMIxFcWpmJ4W8FBqcuKuh9mHV2dOduiSsHM9gzgH5
hpKhHv9ZdM0R9hNGeTRxC/hOlpANIBfRj7spaD18mlGe9xMEp6FDXBrCvYNqb9bcGqhLOp+NMgwt
KMiLPcbmhfsoggJ2BuZB9r3PT7nmeJUWCiUvskMdwmgRnFQp4reTv2CtABLdGXWCdonz6aKYMmRX
1DM5bb5MVfpSbApOEm1ryxz8RNSOsBKBurbq5U5K41kHPaIy17TX91SIO39TMhd3mBYMqtTNdFcG
OrHScrU4DKp/4iJ+5cq8r0pUsSW0YGsWEuI6U5Kkxk4x+AaKGXq5qKXrJlIOCf12zyLugdY5nRkI
j4k8rESoLfskocgSGo+V9UxWPPdp+uJRsSS67E0dmWHnRoGjBrGTunAsV6P9r09Fum7FEulwhgYE
69H0HKq+gfQv35SRnXqNiRu4QWzJyUTlIu8h32R0I0vvdJzz+ZYMnxWYlFTx06RFGyvyD/NSil7o
JxfNDC0Zvve37wOC4Mgr8Wp5RcOMMxOlIOyGObRC7VsJoY9yWvhimHIntzBX2z1Q4Lq0LdbKgdGB
8bQvg0HYJPsBzYSzjaRr0JQbLT2HqCsmKL/V1mpRo42tCrdOIyHp5vR7IxWbNxnz9ghiKlVEcm+S
Jjcjjb+R0QbRPd09XeEEJdI0hb5LsEp9ZbN86VMWU13mSr7DQWiJQP8+BqKABVbgCHxOsoKAvwqE
+6fDU8Y7qYusjVz+nxJPr7VixfLmot5a6hPckAPGs5Xy7AiLZ9hJtn/mirv6/ppqsOuaihyc7Q77
2kZpuBP0cd9IFzz3hcFBgXJO0VaI4IbEDNJI+e+s4heNJ1bq641pT3AtgG2wyE1a5ORZeb5hEbto
DiFg2BEavkP0CEqQyEyP+zMokqbAvqTHUV/fkZ2EYHtOTc74W+emwmw1V2emLnUvHsmN27CPlPg9
fwKTQVLBJat6YKXIDZrWITv2U0wYbxfBsZawZX9EZxhpptBkjJzq9Zm4tVtgbKGcGn38FwXPJ4yL
e+mgKT/dWG/rT65gP8lPGh1baRLBLEpuf3PREvhiYdecRcInr76/sRYaCJauwxvQB1U7+sXOGQHX
AuaLMgc/MHYp5c7RcZ5DKACQ2G2J9QQbSQIQC5xv3dSfk54d3WXbLOKUNMahtDJe0tfPOR7y96rz
rsmP5Us38o8Cgxin67ocgG/Q1RMvldDalv6qUtZEhWJEHcVSlaJN1001TZYYp7rfiQjtXc/p3SEq
moWjSYX+jEE1eoeYWJVe0qDOM7fG+eqhmjG83U4ogptyprvcdmJ/S5WDOBgv33o0sHheKw2bL87k
yZ4W7hehBfNMrCk1Un8mBKXgOLeAeOVxeagjTGosSIYhIkfNAHNoivpxGfYgnHcB1q+fut/xkpCU
Ktg8QVW5praoW1zVpgTUIxtGTZj1zUMvAe7YhJd53eeUR9CmyJ/qdoDi8MN04r8fJQP4lDGQG9vy
PjoHD+R09Y5ap6twFBQnH68cs4/okJvi9chqn0D4iP1YcWa0C0ktDjoKnv6kOHaBz+0yzgQ0fZjp
Q9jELT/8pkRESv8+eh0hmFgpvVSbkblnPa/gonmaXogMKaXLe2S/IOSTjR3pUhu6AU/4EsMFDSl5
Pzbq182J2PJlYjkVKXvyDCGE782CHSiWewzH59WpY+pFK9ZQ3Rd0z0ABrSTiP5Cg35QFSydIXelq
NZ4BdhcLEgfQyltEZQtr0V0GChy8+9GPESccBBQ2kEj43YyrkhqajHWym/ByZP3YIQQohwoWONyP
FEIXz5hsFf8o8MkZmBBsFGN6D5LNF/qca/8pB5QakldP7HP+M0TzOhYDUF73k8k50WPV7boYePwb
SAPs0rz/hlmrCCNpQGVWaFiilz6ZGFoZXqcku7WGWjwKExvfh0FHNHFwsEMpj1z+UHynBfdaIXDK
7gj+kppaHM6EFjknwbRwUZySE9MP7etwNY089ASFYC/Pjq7Akuvl4TidVM70yOICm7mYgE8OHubt
FbVm6C8Vbdh0/cscjxQ+1cww1UiWRkz2F6dlut0ZtN3OqNEZYkTvgJ36rgRUC2/l2JuUQx+teDoV
TY6T+7ASiNr/774JyOhAT8kZEsWqo+Isid9AiITlAo8hpCY6kW9pKLlBo2piivqAQQFt0GX0dk9f
XG61hs+//WREB/+LrmkfPzulslqM5Mz3edLrYXXN47WWTHh/G712eUysdfVhRCLyXinpu1s0j5TD
37CGlRYO3cQSflBMQFe+RBSEzwRzt9NgQeTk6aB007c+1rP7oEzcpw1xJSoZvuK7GYYaZHxWJoiU
13snYZ9+tT7WKpOaZV59Hex1Mu707qD5NPM0ranmjDlxbtTg5cOziUl/fywuD0ekwpXf9x71jAuE
tSevP507zP3FdEiqZ58R3OKz/jgpdsPQf/ktVCA0MJYazWP/Kuh5W8u3gBglojtyDcWC1SNiw7mI
jkts6jiclQv0bAA3hJNdtQTm/7c/XkAbDmlNxUIlQP1aXqw85oFMt28IzSHrZVhxq3f0+JEqUM/Z
Ccrq/gfChDpsLG5Q1STUmjnIAPc8nFrOo4Mh6D2aaIBNEcYuZFAUpVME78ErV8r03tMQUX/onbkI
tlKEmETdvhUpZ/77AbFIJ91Jth2LMbkBU+5n3JTtxRQ8HpnS1/Fkp1kJGDIbbUmcxfsznSMZaQB8
iYQttYoGD16QnpNo/9vBmgGhNncSf/YI501Cuw0AWLNN61FyKMUTRa69uUoSSSVUjw2C/BrdKD0F
2Mr17KmgI6Y3ZB0ipTNn9lHW4UoPYxOlte41ItLxLXz2CJxKu61Gkn+mQosM4xTQoDKJv0Eg5lcx
BQuUVMy3Ue3QgLdmeIgamagNGu6ko621yoYRHzk8nRM5JRcvWfk69PzWnhD9TVek5p113Yxbun4O
x6wmUGNuYD5nBxFyAk9O1g/OHF6zPrnH1f8sKXuM+hhgX418unlOng+AgSr6DCBxT/9cLdKf3ynf
W2z0ubAt7AKIzvm/CN9XwpMmqNB49F1RMFWDTvvqB+SmotWi6m/AGc0oRaQmz02BO9IYxSWtlMiP
PlH6AAheUSZNv3TEIYZscjQ8hkPWjiP4vsaAuc6vhzuKTujCrurhW61JSEJvh0TnuUbn8aB3iStM
4uQ+gsJA9fG+ZpTtm0BW85FeCzzF0uu+YvUWP0/htOyLu9HviHK9kDUES5g/vVkCJRio8f1N1qU0
x8VdTBQyPW/+BQPcW2+FCblE4RsVDRldOLy4rbWg9rrcAjZRlabxzBSFvp6qRqv8v4uf0fI4vFtV
z76w23oMNwE6RrgUjzlZS86W75Crs2RL/RdoCA7LMVc1/0mbUtmjFDljlFZDGv2avbGpKf6gKk9Q
tMFR6s+31YwIquP6EaW10V89FZrEnauAu+4qU2tYb0U6u8WXaAfQyf5h+bfq/iXAabm/2YHvg5fj
gX4EjJw6Uc58uprw+P5whpaN68swCRjgt8E+Y72oHi/UD3oOCJ2xNk6qVNTNRvQS6zo+EQmdhvkB
h3RC3J8B5Ffq7ifsasWWap6LvyJO4GY/UDGXvepCeeqgF3rbXEobDPqZmH2kM2jUImSKiT9k/bYY
iXGKBXa9zJ8lQV5qlJg9948eB8+iUXcdi+ugYxrikOsv/dFI0NAqYgU3zo4L7loubDbaHk20BZEy
+j9vZK6SqpP7AnRORElPRicuobHgH/KpCRLo64vTxek/yWiFAQXfiB3RPh+2jysWJnNPGR52FFss
vd0vDusOBTMk+2YMAUZ2INNpjgls70KBWcgMphPjRdPqWFlwgFXAJXEhmfuD5wlU/4UOX5o99DPI
gNDqt5D3RRboebAUjQjjm2FMkc/MEh9rDRwaMs3yPXMCDUMuWCP5VXd37oJzNVBeE2Eq2n3GzA5J
yhVEDiSASV/JoRFkShMquLTIF4Hb/CdaOh3AOg/tnxYKFFfYJGBUZtVP7AFWoy2Vd0MjhIoJi5h2
bFsLGbsLQQbDlBBYndAznQqFR2rVKUZ6G0ppmS9ASWMmrdexONFBPFF7cd0u3FpJZSjuK4XTYHZE
qSlW4CuUOtZtGz2lNJUW5289rqlWjbkxfJHPqFzK4LsMADtTlY+PDyHh0O53ilXV2+9zQpCW2h5O
NGmUvYSo3oFz4RGOEimplkv44x1/RPjV/I4BYScncwejscsz/oTDuiSRBIfClP9RNar87RoVNA0c
GH2pxwd8v0qqeYB4Oo5WMcdBEf3tHelrvOUiviVde/tmgh3aTst/coZ3p66TOBtOk+JbIBG2nZm4
CUM487j5JoqQDLXsdtC4rDOVBFPY4NE6tKyGt/fSXnIM34TVr6WJsPYTJu7xsqHk+c4wNA4HAutR
B6bIhmQWslFKFGAMB+Il1IoZx+5R3EQNoNA/qrdKo71FIKCQYst7RWt4FwmvvfGw8p9usk2NBc7p
fKDWUek72sZuCFlJgmazkukGI3G60veXIllejTMQXg+LzoNnFSjzeTydDem8tuNfmkGpcarXg0aD
h0/ByEXctfXFYZmqtDQVFJY/p7Q9MGX79Xz86B7AGQqBhjJpQ6WPDXMUyJBdg/IpFcSWMOIpSNWq
QoIulaynsMQRj/ugBvZ/GRK4hrS/aLbGK3kA2yAh+4DLBGyjY3sVT7/Zmf82NKUfQJcThPS0UTaZ
Kstw7BKnfZeZHym03Q1EH2KTHcVUMYH+J6QkX2fcsJ6VvY5MO8aHzMqsSLS5iHMYtqI03ie20kgw
5AlbaSkczWjzTFUayUIOo2I1Fv9/6SHPDA1G+3DugSXbXyUtQSPnsElKxS/WZJLS9kuhIIURl84t
3uXGy0Ny7HjXbR456aLksuOJOZAZRvcC1iFkjpyOVrHbDqzjCL1LBkRpQGJx0W5NdtXVz88ysv9U
F2TuK1Xuq2D7M1ckfSaK/P+5r0o8som/WthPHa4vwjGz1KlWgieGvHjlIbT/BMPAVDYU7M7VLVvc
N2oJS3alplf6CxwYLIJQoV6+GltBj0nEtDsk610WLfOph0vXgfc8pa3GykDxzDfmodkFHnSlG2Pv
pOtt155h2ryYH+PYKe7VE8Nc9Uxil5BMK2A27v0tJuT3+zGPskvjiW8j4CxK80Ylp7Kis0MKaeoE
JVlRluRyLk2EnoqJXA5rk8mN+XBZvA0DIaaiJbBfMk+ZegWkXIoyVkJ29vGRBhAtQCSiUjHHAl3M
vhX8dqfWNQ0IoWWkPbNofj73a+R2GieEQM9nAMU7nlRYQq31CeOaG0BJf8yDe9FiU8X57jJHGuU7
1Q8i35eBC+0N4HuA5wprrrdV/QQUmHJHqSuzANu8qaaYxywhP3FoCX8nxKiDn7DnnQuMgEwUvZo3
srfNy3I6n16lRhoPAXxXTfdR7j789b07o8/+RuM4j9z7PW9R1vMXTcdY8KOwR6zEGgOeIaMrqDUE
INDuygGQpQwLgrr4n67JGt1txQmELRxK3Eo5NYh7fh3kyPloBrVTBBVe7VksDTFFUSjC9Y7vgdZm
KbSY27Ay0z+8mvQ2LpqzZieOymms8TOIHD9Oa2H4s2Wjsl74RNbmPb3+6EznPA6ZBWVUZ8GlTiyq
sdjCbxLiZTOuHlfWEtL8HVwsUm6zJaN6ehaIryxwfPrYIu/ekj3WwrcSgTuK9BH8dh8w7NePABxs
eIAjwEk1tc5pM+om0LnP9k/iOjAwWGz6Rt8CNqnBZwoEX8/mNnLV3amZc3QyPN5dA0HfkREEr6bN
tKi78hs50RQBxTV0b0rr2xgT115sq5oDpM7EJvZFBgrJWFeMSiqIpymNEw0vnx+Wgl8mnXAxfnY+
kWszBw/lhwoe2GcF5S6lZnfKvrIpybUcZ75JutoBH+kahe/wVeAWu85kg/TzmAuEWC8c6zIGzlJr
qoYDd+SlBrTdx0bCkWkNhTY3zXfVbvvCslNXrST7P9znkaNORygAc6+rCXkMatyKWBVF2jd2m6Mq
rJpwxuKk74C7BmS3Uzi4UxzbkLuUem/0gD/8U9Sx9TgoQLqxf/vgzAHYGI/prwJd5HO7d6gIdpqn
DpGZJM+6ZpvywrnhbtLsZanIt33hJSGoo47m64mCQS4hMIKZfUamI3l2Bvajab8roxdKpBynAKrx
ssbJtW/rwgtsORGfsSWxdT1Yj7YL5SQ9XT3aKfOHkmt9lSdMCdY7uqKANeh7JbY2QhXrL3yKjv4H
0bUFZTaapw8GRROM8q7Au0F4iUJBDCrTPPKHqwYkazmkmGKGkwq5CgM/EvE1gZOngs45QzzG7Jb6
UK/ef+EllgxKNqJTmVLZwifrjOjYh25VsLpP9JbTHt0yYSrhHJ6mGCBggpUDu+K5AEj8OGcz9YzO
WQRfbe86NkQHcUfJlIhbjdnj3wfNG1yKEj9izGg9YkKLAQQEY9v8D4CQu+dbiCkYRrJxaUCuhLnu
9un7HCXID1pSF9m6Le9zeQgEEPd9qYcuSdJhJHPYB456QRUPuDAtJ9m66Y25+FW/VgW4WNRifgrn
Auq5+/gpUlGzheHZxpLPictsovgNqj36YZ9bwOS+8rGbkVvZ3eDfHN13luJe+Eyh2kBEBJNNcKrY
Knwdd+tyqDBXguq1oRosCpZokNxfpkCaO9Cb+evWUZeyYt4uTbc26TUQ8dNyKZG71rJosT7u01qF
XWktaRCY+nS4Bv6j5BXo//Yc2up/IoNEZKxZVdIdR4gSLUWNRkpQVhsAFS0P/M/IcpnbhKwiuO9o
0SNgOdbg4xM1vHwMFYP9B4l2Bknn0xem5e7DdVKdUh0Nw5YtyWn799bgZMFFCBJxSVgAdxLXHaFf
3Teeu2n9gyfHiXscObwi79cNVCNw23AVTqEp/FBL2feG3jaaRzNiXAogTpUAeFyqsBvbQ22Lhdxy
GBzLa+5+gh6FcReZcKpg7VQffNe9/Hz4aysErLMqlmqXBVYhD/cgi7BGpH5oBbEIZi8io6W3d4H/
gmFebtC1a3oCCIohs305sPN3PdjF7gbQ5GEVA0w+VxRvapRYA30wLst1FFagVtOQvRzGmQHH21sC
uBUpQx56By1gFiPjYSoegUf8QKH4L6ZL5HjgwhCEjb2RafaYmZaGscDk2fdGWDthID4JYFFpa/xf
MpNjzyZkrVBBaai3unaFT8wKvEQBR/rt9XrnrDXsvXPAlvNUlggkIgKK+Nm+6Gc4uwS/pQwmJ/vW
0gPcgyo7SxlSqt89TTcAvZw1BYKjLQw9OVGALlmKlbAbdoxtvzPU9HFHZ5Zm6/nZKKwLnWSqliQ7
g7QT74BTXRu308wJdiwU8lxIsAqooFwXRih53WY1o1M5uHsRXQ8i7PlJqfzLmOwDWEDMOwwHy0EQ
Ze1TIrfYdTWijoftpC7+xdreYu9MyhuWfs5FgXQV56QttLLEn4APiS3E3QFPSTdkK4S74mKaUDVp
MVmPV7umoYHRKAeX74bHB1eR+hZcj5t2gA98CBhT/Dem4OzJuWB7W6GZlvUfXcYNNWeK+INTazeG
QKDW6ddzwiTr9YFvPcuqgbm544P8LUJkwmEA9vxZx3vhG+QxyLJybzxxSlVb3W3bARZ5wbIPK5JN
5VOHrAk3NSSmzsXgncXqIUsPHV6kuvhYqPxH1I9aOZYJP+YxZzThEFaJnPngFc1KMzh8ULVgCj9r
rLAsSaXAc8tDh+1kiU4tnjtdQx692NsdDmssf6z+a4Y3IbP8o1mlOm0tKZEVyTMAn/K96Qbf8YrW
KP9ebZmkiSZuHGm8F3Ks+GDLNlB/H1cShHoE8Dry4tF9yjf+j5kzH9Vnohp8HwaQfzTWzD7+Le5j
9imJ8xV7rDDMcx8eXvYLpULw8AAfhKLHETOGTNsTeQOPV07VH5W0k8YZbjQjGPsbCw3lmgwSFsZ7
rI4uWS1Pt7Mu1/BB7R9ZDe4zDBW/Rqsefz1NW5UlO7bmLkJpDFKjesCYVHNh1JFN1RTOHblZFMLn
9diQumLx3pdLk7gIeKsvv2uY6BEzeOo1VYq6MvQV7lZ8lO40Vja2hOkNA01usBwwAJC2/hJ7NPuf
V75okE/UWPdZb7qt7umwlSjGYPFpnjJFcqBHsq/g8Bqijl/m+mQJLy+lVLYNtHSoEnhkXRXXarEb
WJJ+4P66Ox5bwDCucd+5OULcxYrYpmEXpFhvQfxl2HWa789OljJ7FywQ5vcdS4okUp7RSDFoNGZ4
/gRLoLX1q7ORz7q/VIppQBTdZrE/c8ntGDAvDlojO3/vV9MWKtNgqdIpdZe8uw1x+++u8QvKwTUB
vxWohzbyXrF4BbHhQMUF1MnhAuLjYnwXlFZfFoz3wyhnDKkGMgPtFfHE76HDbzQuZnh8wsbvjRej
Yd21e2b0bQjV5/NeriYhvoC4LComfJAB28DtR1li5NF7FHB5YW4XvKj37CA7NuEqD9k41dZLwNOV
j6c1mRF7jD61r+Nh5SnS4NnnUkEJ3xWM+JkkEIUJGjAcpQVtl8idAVjhwptuqr8p/KoqZmm0DiRH
ZMHWW36Z/f8++ZezpLIoGjDNAuSMpa/coWZxP+Q2OY3knvRwqNiIw0v7iA8fFqkSI41naDsXMf8C
ximAhiUPZZIPfvGRPqKmeg+vG0QT6dTEZYWxO6WuOvcI7wq3rile6X3gfXj2CASnQUlP1UviSCf9
ftLR5UgUzjXv71avd/mF/UYTEyZSVxtY2IGFgy5khBAG1hYlE9Agx3EFu1yrzznMJ1bxx6zp3geo
kucT0Y3YQxRUYQ2khOQQCbbPzUJkDRbJOvIc1+uNZvLZFn2z027HpVtwJF86WBH1isRJqz3SXLbu
d/lhkT/zwRBEDzfANTBsWvS6amnULwQUvklMH/6mpsaP6itOoVKYEwE60G1RWTDknSmMa2ZLPQIF
G/yae8R8bVHObIMMC4YwU5qHXoL+/VG0iPxpueOPEeBxMLYYUPl0QNEeLV1MUTBiDIkBmu4Gf3Wj
7l2BsxQo/6q/w8iMsd8dhTDC8eiY5xJLnRx0Zc6cb9XAiZeYfZKPIkjdJFgwz21UeF8qos3Qt5tB
Glw3/okAfPlnfQsRKL8wq+YL/ltKje248U1eePvlaTnuE2XzZTmNTydR/s757SdFUST1LtggvYqF
jhRvK3rrg8/ntTJZX5J0JErMkwWFoDkEqNB+qfPeasHhpWFutX7e7cZ1N/l5tCwQf0Ki+FzFE3dd
zV/+85DpFg6+eZBz7E9NFMT9I+Oq9syxg3p5T6mCzfi5Lpk2zWEgxStAOXpIoUbDKiB+gAUw3KYB
ShZuj2Ns0vvrbsaVpJBHy9wMqI9fJUAyBM1mnhBpOXD4smQuuXlyCNHx8raN3sBwwJa5v16ykWzF
JFP/sYQf/QeeJbUu9D5+CsApBZKalfcV3+EWKW6WiIzGJycI+vUOpBBykRohbMcM/bCVUaMdhZ/P
CX/0nr1OHi7H43DCXVydf5RpoN1d4gq9pME2N2aa2JjkwWiuCTxjZWrpcwx6Yl33C4hHK9HUxIRH
RjCCICzH75BA1+ECwZXeVcv5vinoekQTijdE81+7srLjeFmv8TDqlnw/Fvj/i2kFkoC4R+SSI+uO
1973FKrihRlpCesELQ2puWvEqfCqptBCfPy4AMObxX0RdEBNv2m/FkMDCdjXb7E2v3qqIg77qEhF
D/JL4HuN3R7Jv6uUc2SOjTBd3r0ACoRGDqh7n8w5fsYQG4ojQDlvGjqZpmCY7wB5qYaDZqjLlxFw
DcqvtHLolBk+U0lCK6Wbj6c6AdH5reesX50QmKEW1Ezmh6f8GWOUq4OY9lnHGIgA1wBzIMJ0cC47
Xp42Fudi33mtpYq8yrEYK4yo7KYXkW5e//98nFtiRWejgCRM6Rg/I1QJh/TIpsafM0SZB2J4u6XD
Ox2gnW8G/7So0tUmKXGolq9yOyNfSzqUVYU/Z3E7SMlG3gDAtemJ8oVWZk4VhYVgn4v26fBMZhvQ
klXbkehVpEayWeFrOz84NRfRwZte2+slDPQd6moMKSXw6rlJPRFiZwkf4xMpDNiDGkuPQs40lNa8
yJWYrH/PECONIzEjWqxTSz73EN756OeUgdS1j9oBvUuQX6MBk2Xm6vCZe28vn677tyY5QyUAPxQh
NTasdRNe6hx8xWMvuJd+ipu7y5B8YPtOxRffCkmQ5fIUTxF1RMYCw9gKvlE6GXRQLd/WVynqM+O3
J9N0yvGLGp5AFwBET70JEc+1xC62o2RPKOdvDDsLFNkscPK2eStTvFomNqwlQVRitBtYkbFm7IzT
C2qwmxv20huC9Qof7gHJ0161jF4dzb67hqWX75j5NQpUeGGtokmzcb2gyLpzJ1glDyNXPAQ99mVn
ZWe8iapbHAC6achUtBAsV1VTBCTAY/gk9pItvaZH/bRWEgQEyjwgTf65xZ8vLrOQoLixvRQhfVm4
rEBvjtFIushDPT0g+6ydBRsQNudPXxKV5scQ/LCG/LQsEuFHdthybptx8qXEl1HlT4InDUTYQuLA
ogK/Tbi/icypFlSOQValZVK28bOBax08ZT6Zin62YD4zrNW7zOQ9AYxI1/zcFiNqxwys+aqjmlq4
VDYPmEEMHh76UFfg9O/hcck3BWzVs7ePaqLHtauDnixsNiTbFzbwWT/E5OrYXMPjbq2r+5x3haIf
0rV6eDfHepzPGZedEymmXCgNjf1pfHhxm+PtIxkHueukRHOD3CJwe1Z0YWn6/JDkMpfwlWs9DXmC
yI5eM+KIQbpWaxrf/e1nWKYnN44JPxlmTJjGM4FbZBrq5YMBqptpSKzn0m9WmIz6h0/UH9+Fum5Z
a7X4i+5xpJ2LpS4eQqU97GvUAEL0iJrT2680hYdFKwEtiEikox0PRBfvv5dDehyF5xN3Znah6cxg
cItaBrW7ZpCkaY3MmaH4uQgfoHnCBMT28jTF9O8HCngElJ8Znkv6Lpk5jPa2/JqLR9xVykobA3CG
LMlSYDYErWOYFlP/Z3r/GY9GSogEm0W3snGRp3LeAeiR2zIYPVoehM84zdy0RBz8afN4ybDAAIqV
JWFb74sk17+ey4ybszmO7dC1qo1F5Kr2R5PrGpXO3iNxvhSPxs2EkRAIcJAqm9pjrZaTe0r9jTYZ
O8qfRm4eMStxPfHewYtPuUQwCCWmYuckthKdlaexBmUxIf9CpDdRGj8H3He0tfN9dxlTc9YCdRoB
tIiG7QTGFS4cevieg/orHUS09YOgHDbas8zMMEuXcCEYCIQ7t1d5Bh7zPlsnd3GEsxr+YvbNFtWg
BUWPSUUa5ySU0JiLgXJy3YHB1wQmzm80Y6xWVaZ95pd2EuYLUWD5m5O24z25Fa5SZYdylUTulqLj
TngYsTdHzJ1hrSpGLx2Trqy2VxzvMfEY4RzWdLFduGSM3vZN1O+ka0lO4QNl25tlmSgH2lpGA5S2
ZcsmXm6N/6A8P1+jgLWLctfOC9ndYSOyq1pGs4r4JW2gjIAttBvQa5+IheOFFNDddCU3g5OYnvc5
b7ML5c0jJm87Sy1e1NrGamBOs4pmY7stvjqEjRb6Vh3UL1+kFM9/VqxpXIX8DJg1px/w2pgDLhy3
bW960ZmYpl6KMYpiKLW39V5lvB9DWwYpQqq5P+wBQjIxcTR7RubZqO6012lD9rT4DFXnIvBt7BHf
ck1A51KM1sDd7TbujoO61hD8z+S639V6BH7u2K7b0IB1N3cdXwIC8ROs5zlX6DolR2xiMyB048v5
lpxK91RRp/sxnVpWliV8esOoS0G9mM7qXO7tQIwlKiSILNdte7A0bV4Ah4/4yrI5P4K1VC2barsq
peUbn8DHZ0ni1T01kSM8AmthvvSNO8ygNvqBTAHtKw3rw9ywowoOzsmKD4h/DLA7fdOZ/h1E6ccr
FUhHExm3iLwT222/O+/RQ7k+yVigQEc+QAT1Aql5oDFh/D+ZsEqJFYcF49vFU2Ue05tVvEV9dZAl
cESebFczcoYAHUQEn1+79G27XuhKUPJc6fFcX3F35FbXrAC/fP2Zx35vSD4CKRatLwpK7/gbAKDg
MreWCLcJl5vAQvvukG3pjXjWF3IhxPlf6UMtZMnSob4aZGn4H//XNkrEd31vurVYBZ/j+exmHxo1
5/mac9yPdsKft3/fgKbbLd49SSafssXbvp/54/SEGq3T4MY=
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

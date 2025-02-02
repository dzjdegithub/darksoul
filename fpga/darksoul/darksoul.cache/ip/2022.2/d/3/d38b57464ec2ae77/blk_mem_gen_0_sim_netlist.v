// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:34:34 2025
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

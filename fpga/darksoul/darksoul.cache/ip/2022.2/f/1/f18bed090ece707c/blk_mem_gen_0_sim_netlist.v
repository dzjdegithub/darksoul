// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:36:52 2025
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

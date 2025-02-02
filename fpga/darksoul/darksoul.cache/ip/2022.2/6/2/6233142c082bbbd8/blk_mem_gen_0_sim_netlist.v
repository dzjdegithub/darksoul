// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:24:12 2025
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
g+g4zZ5j3n8PpRj/gzost9/3YzdywRtYR8J41aYFWWUO536bQnaqWJ9ZYzCA2UKIaYWzEtQN6Rk2
/ZqYbDswWSshv/mLI75SYD5f1Qhbu/5RJnyFjxC60FpCLSggrDmqOddLltMHK7qBoAfv3BUgFWso
NKU9B4De9gaQ5kFcc6o3xtfOhOhOVkHqYsBCuK7IOpiBojle35IZagkc4G3w2GnWRqbw55TFKaUr
z/Pf0ffN4PiFIqG0s4RHXAEkv7wVad3xicIixCkCN6sOjMmS0+U/okK7T/1aWE6s+oMklWtwSEJb
JZkuJgYpTBrNgMfc7mmXD4ajTHbpn/wWKKdTU3iTVhrd2j9S+nAp92d+Jc3fzcds2d+4zeyPCbmW
p8pOzTxvHamVFFts65KRSs1IBx890wDT3mAoD/9TJQjmvLRtDUOf9hG3hb3407gHhFNc8/Gsw8Uv
6+7cmXycnWg1Z0KSyk+biUi/57RQqByIQmTCfT1C7lIViHRMq+QRVcpJ8hK4msMGfQyL1ofbPBp7
fLsHH7fbzCiS+NZeCw8L1cSLO7SssqNwDtS84vq8GDfay7QLV3eYq+Ev0E9WUKr004k71zE8vNk3
hLGz+pRF6GV1LbGjJyMoMqTwdiryI6Qicq6GrBhAPn92BmFLkG74krjDavxAdDfX2JsAyjZO2xiq
1blJaq8ixHIH5d2oyYe5vXo4D0WweHfsYs+E40ztrHy42YBQMTIv70j+ZC/bVPoyJM92iCd6OY+H
Y2AXADJrOEKL6zHwbviV2OdPWRMYk/C49gdsXGCKef3fCkPjKgI+DBM404LAXK1hAzuLd8JRvHXZ
uhMs5NEEj8AGuvIONGdUtdA8zgb1rh43Q+uE9Q1bBoNfOl+QLvTxH3l7WV9iDpyvDGCL/FirEw1O
vabojD6q+eWHYzvjdtAmJ+Ed7P6KpMGiLXvgqTkLn/ClpL+wXICtlyq2f0eDk2+9dL2/UU5Qm/qN
gCBlZ+SmD2lkti6Y/T9b1nOLYKqA+iru+n5+E6XIMLJVrmJqeyVNNusiLwzX2fNsbZSlHMwdvjZK
1Jgp3lGzalih18Ml5vMKuo6BXg7ol8Q+158Uy6rjVBfJWws3x28Z1sUb+tJ5y+LfwVeS1pM574wD
iwKCtSAe99vjSY26UrGkp8wL0Ztpnl+AC26HTeDoc+a+BrfbNTYow1K4Gg9qx3lyaJJv1i3wZg6D
87Elac95BOanmyu9N6t+AUFeL37OA1hC9f7xkGwklt7bG4LYgm2N9nTXcnja+/yd3G26L/4N9mf2
UNAwqk33jI5WHoF6wq9OSpMwiZs2eggaX0ZQGYYhF9G89nOVtb9RQOqitTRCzrr2jiUhxqoiBt9d
7nzzbfZnTqfjeIt4Aogbms9LFHHCQ/NRZUH9c3wT/xZZSh5WW6CQfBk0KOBnsNav00q9Yajwz/NB
TVQbe+ainbz9pCYGtibli9/QZZNJoHzMfkmLWbjfi9z9Mz8N6eCbHADEL/xLZSwR6pCRD6vpkBLm
yzJLFNZMHQLQAV1OqQE5T4L3z42JtC/Q+cNeKPS8LLJwl576/uBFcArwU1V01gftQauuRSO4f+We
DcYSc4fesbZ/L+4xrkdl56qBMX1lyOU4L+BqT0L+aKr0uFKlPDPMXazYdA/bxywasPt0Ge1yw2s4
F55xOrOos5ccSv3QgMHV2UGNg1680/cd9YtYKUvGDohHjUMGpTkKcslIui0jWzh+PFLrc4IN7Phu
mLLwI42qtP+9m1DB4Tfq6K6afE4Cjr+FNooaIUiZ0b3uR+7lVks/H3YUFdtjz2F73iFVv0eEWuhI
6S91PlaoS7VpXJJUvffoufXkz9UhijLKMY9gLej5TAPhxEXQATWaR3+BT0OIixiUHvWX7JLKCXox
f5wM16umyMtsLKj4Aurl9SMFzRDg/9faFRbInaiPpVbmkV1o/g4i/hyrBC7Uf3xKUTvGURBqlUfz
VpdKKKFJF30mOUL+OI1ilDrDTPAG3gYyuwLSoNzVz4bfLZcVJj+I0t2bshPyZfSnNq9+1ddYfNqo
sz70+SgJ7YAZ/BpIjfs/jv600nxRJfBoo/pXjFT6MWaYYJK4wXjSUDvpLLIdGi7qAJiYl4kkZDIJ
pFXVeVJqB5P/O3UD1NSZ4Pfky371UgZHzScXhKmNiRkYxzc6ohZxORvjHX9b9fBjORRSn9tYrah1
XiDUWgg+7e3vDp2S2+33BFogHfnbBi2Z41LBI1aECWAfvl0oP5oVftrJdnWTktdDH/Gsgf+fcbu3
qIfy7E4WBgf316Rvx9btt2VEwZEM3aTb0yu5ufrHIMy2z67+W+OoiNp8mLpiwNmSnO2rms+4DgWI
gTV8btFP618X5jvsrb4/lyvOvC1sTgaT5JgtNu4q+SJzmXFv6RS97S99hAmHk3ey/yAHWSshYT3J
4dUmeZTAX1FWBAYjYh2o/x+1EeivvbRoOd4m+Vy6mDcyeSrE6AP9kwSOs0pW8nL4Zo+EQ8OKEhtD
1ExpiiIZuztwOQoAGfTnB5+uCFOW/ynvjnWxvAot5hrIsN+Glq5iJhnm7Ujrnh/LbXHWY/Zc+XNP
Kvi+hCjnFggnEOmllEHqVGRQcrVvXI4+wmODvtZiGB2nU/SG0VO1cGauNmnQc8i7V9EsVJO44aK6
bXPaH+mczFpF8oRPUL7IfcZaCvbrRy/beKmS4tpny0gQIdtJ2PBlmQKMozkhBEr4eCoyXiSLh+EF
ZOoqsvC4oqTz6wypCRgJvwGw+2o+O7MpdDTWZpESQv8PI8ei6z4/CVuYfK36T5qaNgLpT1Ck3c/Q
ZwUA4c69u20rR+4IKM/QKacL7IivsxHz8ETHvYjRec0PrjqBFj7iSm192qFPyRH1GIbay6WJskuv
hMSdcDohODtZivWyHgNxvuXjZbYGGAfQMbhRKn3f8LnRrkpRYplg33aPAHREFDYNE1IOHyyl/foe
yyafBCBOqDyLWyI0l9IsYBrTNj+Oys6D3cZQo6RBRdTEQtOiL1+qeMOeVyHBO/YLGQC3i+gC9O1q
ZbDFQJgKwvw7dfLEOaBX6rgxP0KNypFm67xokSLpfuya1MWLqy7XfanZ7T/6HdBThjA1wHUXe7Ho
Qa+y1VeZoGVbgD5dgQCo/l/6xkiQ2b6+lUh9CuDvtVvqRE7sCb2ujLL3RWxHBxM41tv8ofRnroLs
mjczMceVyW63nq8YM1xOn4y87KoA5nALL2eCUOiygWBkBqcdaoG3TlQXC45NF1lg8EL4qZOXFyQx
wpPgpym5cEwBf6B0BIwXhc0Ov6vIZTCFCjSOuDeJL8SlCZxttiyrZOM+muqsb54m+Tr+tszIS3TN
a12fwgUHtiYEUNt3sKVna6djHzQSlMqirMTzUW0wknI90np4CElw0PSTE5YRN0hDVm90gHklo5ua
RjsGhkUfYKz/oc+F0HPp44NnGddwQNh7Pcivpvfjb8m6o6tGruTIE+9v3BgCFceYIO7LRzISda7S
EW5CZfdYuec5sh7ZYIVG5ZOt9kAQBbMle7MHqWHGkh6lLar4AgFlV3CRbwErovgTkkIjUABGuMqK
r82XAMxdupQIS1ECFXNQQaH8TIGobMoqiRkn4ZaEuGiVhUL67V719h76CwY9IgaMWVbN9yAaluk5
tKIMV3bB8zGayWDWIWFmsfFlvxBWjiQu20LZfjvC6rRcZG/UurRHxPmCgxTpVnMKNnjg9j6ogRoE
XWGV2S/51Zw41n/Aj7qOup05dj2tGnDAIwsj0b2MKXyQRUVLg9wwbcG9MB/yDttnu8gaNzh28zA/
PW3phDCVm7lZSAjLaeNgvJzX/dFfPHVgJ+qdiQyL+LiQePxsz6ksXhjPZ1ovArGz5j53yzHY7XHk
q3LFD7NdFAVCBa3QPeK3vNWZEkJ3WOW5Xsd36zf6qire3Uw1E8PvyWuTRkuTzGfmo4/rexfSETMT
79PIrYw+AKrIcAkIdPaG/z3bGt4680p0jny3ruYGnE/nXdsXO7b5ZOceFVNT/5CjZQoDKaN5AKM2
wbvPBbY+JRtokyHguI6XuDcg5S90isFtLfXhXCFuO10s1Py4Qe1PSN06k6G1nC3VLAa/HwMw3AgB
XBuIpa1FpWUSt+Gus1JvXG2/JcRs44KBGVCG5ZzOHW6DpCU1Xxk4D3BgNI7Tw7FXWnY7B7PB/IvR
Zf++r7aDshaIGHUEa0GDg/+057rnLTYq7Vk/5OwlYmReHOEm6J89YLQNf3UJESvTIc1rzRh4/p+A
Py82MHHrojI6oJIzr6W25rbD9YTr+qwWJK1G+oQChfPQy2WbbUIhVy54q2BlXgQg5UivlUhfqzm+
ZGE45ojYxhZ7GpwA+1JqmPawIKvnsQxdWCfkXe/phOiMHrHr3zJzhp43d/Ij5eWJiwNjNKGQ2uaI
D/6xciGuBWr1fqgp7jkR6KT9S6PUd7Jr/Ocr1NybDr/OLCqKY0iAyYUAyOJdPzae8X1gl+FaodLV
nkF0mE5jWRyfG/FU8fbVX62SaTERCmGrgLqWAqRFVo1MoIRmlJrcwPb/odl7UGwNhUsAZhxAJ32e
14blmWnx+qW9WcD+nJxoGzxH9+gBC1Yrwr9V+/OeP/bIG6cJdaNOB5KcLWDendUMIMdclCXq8H62
z15/RfjVdarGueB7/be5605gwQJJ3jLxFl5e0jF/XDIFSx2Qgm+5E3Yq1ZVHxTXfUYGvtyVyD3ip
+DrTCsW2CKRAcaJIMJERf/MKppAcq4VFWqX/dX/y/hkD/axEuhqzsCVNX2DEEQy43pFulVZsbku2
ljeqjpGTALcoq1tylA8qoT+TH/CWbbfjU6hR2lcTJwxq/zg8Y0i38gH/U71XxbgdBeLsqXdVQvsv
XDle1Yv13FQbb/3aR6tWkupKwXgn26Q2DXTntOYl7k+G9iv6UWgLcwxXs2zHhvi2pOs+CXWSU/2q
Eciqhd5VFvUAB5BaRkBVLlxzTIppopUchHSpWh4pE+GQ5rDO5oNaGcfSfWmLc/dtaY+gzpLh0cHi
QLhdHGNMmBj00+Rzf8+Ot9RhG0R2pl0hxut+ZKgIZ8i4EUIL/j3kRKjLS63WOb++gtlJ500e+FiM
MDCQKMPwe5cz4WGIAR4ABV+3+1GnGZeQhtcB9FYQd/cocoVo1eaShONUmHt4gY+lKv+K+Bbba9Yu
VL6YMRJQmLfOS5Bt3B1yzFDmFWVxalAp+qopbYC8Fw2A8oLO2MI0zR0d/dJ/uuxtNHw3XsByB7yh
pQzwpKrWLtnjfyGs0D/NSAZA7VmkTYpnZWg6FntQ5EHFCnKDuWtHIHuFuQN1TDUdgUGCnNqTC046
DYGhcmMR5SJLg7SYuEIDm/TDXS5pJQN6IcqVFLF11smsx96cuuON7Zq6hWyLaPNtISVdSISw2bSe
WvhCDHO0AToyGkVeRaEBijq0lQyTWq5pXOL1RTSW+EXcUFbgp1DulQjndoKr/TYDrJ39nlmkVSuf
U19EEwGXKETDWurpn2bhNPQ5vSmkUTqIA9ZGkKPZiZ37Y9x+jSu2a+muVxGBQRvcd16dHInL4JJL
rtUUOAxm2MLS7SK4LDp4B3HW1Ylyo7jwOpeFNSVNMaLBLyPhza2dAURPuLnIwhbxpanzo06DGlN5
ndUmERu/airfzpUDyFKNibdDBg78troeQabdHgZGeCANZ2gPxCF9wcE3BuqzBMhxuS4PtLeZPjqd
h2Jx81L+YbBu+T+jdqmUzBekFcrKfXGfje/B1gDzaACkaEnur89mAbZe4x7T23lDgtHfRobokfwm
pdFfohqnLhweH4CgN619b3VQ1UtacLNznDyCUQQEChBle4lWZUx6xdx+hyXJ+YvAcbUuOeJjrbrM
b4/79unMWjLli0cDp/J0JEBVt0ILW+QsA5LnRJZsaJDD2RChw1rRAZSnoMgDTzjvZ7iSPr4HPztK
RoJzHMfJw4jtkdIXTKOIQRUM7YHBILeM5XhQJ2ZDRPUi51klS+LsV43fq0233HXdW7daDrBnteyN
KDEomsQVgLsRNsP8iVNiZsQeVa6bAo59tpGS8icYm7chVEImHKs8ByC3XrE0LpmmJyEfC2YVkbkd
Ai8GUVZXOxiOKiQK97Ac8kE9VDkT+Ros3mxwCEkwIYNRN5bLDO5jtM4+Qw75lluGoYWKt1ThIlam
vhTN0zMg4uaRHNsPis8pZ87yQTl4NQs67vcgwzJuHZvOzD/dpydtrva+Iaf0KEuyRbZ6ieZMZEcz
ZGUlEdIxHR97bNh3WWefb3pcJvlOaVGTzBgo5mCgBlGXR2PAnPzXO7d0butS8FE2J6xXxvpGKk67
vvm7T7lOelnSSrkqtEKJSOE/rE6cnfarXeb6Xll14UoOpVVi39h0oLC7BGGCL0WsvzWE4tau7haz
ouXoph+eM3dCOW0hljCl5AFxNhA+4RVspOQBXrT3guKzY2aPWjCf4DQQXj9IIU9hYyDngl16sCiZ
eLrWc4SPa6IhDTbI4Diem+f8SUI3+F2Gw8LfujJNg0vONsJqcOu5pumim50vPZzr0MzZ9hJeD4LD
bZl2+lCA6u/TjBUFpMlBVbtWT2JODnYQyCNVwo4PfswbMHs0KmJ/jZL+UcR2c+bqQBXnpTvoqtvl
33lTt0/1a25YoFm/6NuvIKSwZhYPS7orwuYhuzYvv6fZ59zZ27ZGQtNJIHMYgpnQMvpwX54P9ANS
IUi2sNXtAcbqfstcnRd6KpVaLi9Fx10EM3IsCHF/vIGxne8ly6JHCWN7Q4gNgduqkThKDpXdjP90
omOF/84B3bt6Rwjl/FKW1st+YZfbY9Z+LNoI19V96IiwGdEOdUOKGfyZxB+LR6vnxmEzji7yI+WC
ufcRI0v9ZArnqdTqz8KxohlstHUcTvlc+eMdnzvmU+KlN0colwFcN6xGQlQhPcUdnF43xC7P23Lu
AMppfXIOv9FHw1IIm1i7+CAJom1TFh9CM/+0zghJcoFB2Ban3Ozt22p2e/t/gnddSObOY5wr/5xp
LByga0yXGzx8nGWIHYkXyCRP0ai9ebid3OL8o9TM3VMrGFDEC1Wi3KbnYP/u4tTAdaviBQmmJywr
cdSA4hUr3V3xeO4rgBbzvKesMYFP7ArW+lzMuYkSb74xW4Sy/9BHXdWQ23aG2YxhlR3qH3tJSmtM
4awcSF+0q4bW/xmS61qrBm/+XacwzzWcAZGLP1yFrvh+7pUAarzqUkNL2p5NAg+uDPa7H8lzZg+Y
1qVSQm2zlOUNnJGSmwqDUft8YqpXFkE3HcEr6PW+TUAgfhRHo2HpeD254CmAenPxFLEMl8rYbRJz
jkdY+3nr8yoitGxjwtN2NAW8uZTtfCy5ToRBWqzlgbPalyeqvISx8OUlNW0Cpf3soEcCdDobRBK7
2SUStA86wcnY4pvoJ1SBYsb1u6kXroo+hndIKg2cCiLblN13PJ4lRGUqEGQxQJrbAzGQXKcYZeZw
JDrbpapFfk9AzmQptWDZOapLI0KaqT+3lR+7lbjZA3fTjWzEfObBshEBnSwozpsu8qXS/QWVfrOG
Jbw+m+gQMUiT3xmsrEjHIJkSRpYrdAHLIrzYh6nkNyjEJ//KH22u7EK2Jf+4mz3g4GrmQk5O8rQb
eimZ83F6/hvHQex/MiK7B/IQWfB1w63LNHOE+PsAQKU3PevPEOEZ/zx1+NMb3QQw5AHrvN6SdBox
U3Jf3FObZae0mNl67YS1fK9eERmll+wy33QvONd+BGd3uKkYDhda3ZFQb0mNL5PVnAMfnhtTZ9E7
flv94TVcq9E8o9Zw1ZrcoGNIM3Tm3K7dMIM/FEIKAyfLLcXI5KHWaq5sSTM56kUvkozpDMklQt/R
cNUTnE/fgX0+gIi+UMANnlfA8f1IcqKFfbDhckoGRTfvtvoBa+qOSMv15OHCp9dveUS5HlQuugPU
w1VycApZB8NcUINr7wFIexwVWHWf7b61FcLfUdWUqBuWvrw16RKjJWUjCcTbBiwVhh+1xk3wfG9z
z9vv3IxlP2O4S+ZcLAoHqDdFFFxm5z4pfvW3EbFGPWg4M5vxDeNQVf7kqDC5PO8pOIus4i+lzrbg
Bd+p+Owplt9Fdsrwbld+A3rgo0FHg+d5lSUZZuAFLvpFnJiNWaOXA1b7DxfvVRIF/wK5gIRSVEuu
X/qXwa44h9vohkUiJgQ9rikDyuTDo+prCMB8IGEv+MqIerww+w+J7EADid1j/WRTycO52X7iCSUX
OE2GM5fmbKz+0Mcycmamo/KYE11+Ji6WWl3TpJ82a6j2lRVwPLuxbsvRxCLOPyFoTyqlkcKX6G2m
W+izZoYLDQfI7thFLFqvynicxgHL4hqNCjtiHoDvcd+ZrlEjIJtWgG+xHPDGaGCDmlFm8P8AUfsZ
D4Z9wKCUPk3TX3PaenCTEkkj5Ks6wHYQppUMGeB4KHulUMVBjJbEadQwnWhrWp9tDHGpMjSXT6dt
X4oyyTqFZLA5DcCUE+PFkueZtPosAXvqLCyHPt1hCNvhK3KdOLJPYjxqDZRG99UcQo6YbNmHabDP
siJlGX98YOYWhEUoX/seAd0DNXYrKKzB3Bo5nQr9tf04SXB0ZB+2uwlppqOxo/umUnUx5ZlYAaH5
OyULFExJvBgb9NPT6XmYwIjb3oAH13KK1E7gfasnQ3jzWz5AAMWd2W7pwnekxfPLO0b+A3A1WsUj
hHu6vbd8tGa3rd2tDhBeJtZ5EN9bGuDEOYvIFapgZArrtqQ0F+tgHb1XmTjZNYW3qYLNQy8BdXCS
Zk3UkyaUJZUk3Lw4axA6x/SWEWKAR9Gxa+Dr+lcMfsQ/CMMKAwILaxpOH6Dhldp/skmdAR/eWNAo
WoAq1tSAgGTADZV06b2lNeEZqmx/50NrDXwql7+DRHytcXEdWtXjLQiufqplj91Tne3+V+lB4uDL
vzK+ZAPCrsfzLO8008m5qaD+Lj/rNPCAx65uQQhZxnvtcyYsB8thiU6kpDW9Barl3EPsAZkVhtgE
zlsjwczYCPCwwFe7CJSxGKBqVmK+oRd7fZMz8l3qdjoE9y/rFGDNO1aT3Qld3cieR62oNtuPTqem
UoEVkiIN65HtdnmY0hx/3AWBttGNtmMuNr24f2YFR1zt3ThnU20zEmRGDjpOd0Ix0g5T219yRVx9
hgbXOCR6umA5MdgICFEf2EUAaigiYkCtn+ul7ApX6JoNUnJmB35g+5SJVhe6Uxn/Artefx9sxf/X
iPgIZ9kDxiXAl1QSl3BKwLwtSymdxdtU+uXE8NsVHGe/ek7Ao102eFfaOnPGKkNq5VDHDjUaQx4w
XZnu/rXQWmWqjXEngCGBfiNXewPBGQoIfW2zf7roK0wq1V1Dlj8YQwfX/2X3kro6qbyjSpUClugU
xtQNZQytxNzPClIZr6ShrNB4ROil/ygBS4XpSKXkLHFBVyw7q4/REnEzQgcgB1JSJdA+FVlFl+Hq
dTQ6trVqvurBSACPgwdcz8smg+65dbgwPmTxZ++txGDvJuDICUJGAtq3W1q1f2CwxuQEaWY/6Dev
/H+klGujYZhGzNzmInL/RxKoA1fUZs2nrrzUMsP58PnfPyeZbg9luaYBdKYmmWMPy5cK8JDbMfOT
2hV6Q80uNB5k096RxqG17PsLulBFppGvZFoiTkAr2ufGN78OBya2V7SCn8N/NwPvpLEt26P27CN+
mhhmK0WrWfr51Ss1XbzPqBngl+SPfGiSVz2PpP8m90Q1JwXpKgYls+Hh0SSazrClvIr+8L+dbCVo
uQ+7/IaX89P+zkzoDdLPvwfEy5dY9+TDyKv4R/B11IXqVpxjWoLL6YFeAoQiRXsaOdQq/ndSPnJw
p9FFVGcHue8OQJn2ynePAI4oF4oDGjon0KGQBLHVr5l1Bv3hkG+SnC8ImeAO16BTwyMRuCG9fX/A
cNiOPZ7L36IL6ll/aLdJg5MOKIlEnXTWGHhfqKIYONmuqmbzXUpNGWpFxS/JUEi/cKO1SsV130L9
JF+ogQaHfZ9R+AjnSqQc/dBqDAVkYMMZQr6pkKFL17ytGYmk7gNKhNcqovHbXazCgnF+722o+QFX
aoSGCBbFmDDSU9f+EipHA2j78LHcxBWr0FTSVkCuA8PnqY8Djsw3xHaneFOgpvEAcMkuywjZYDDM
/VFYF2veOkSQNE30dyTMEdwbjeclT/VnZaRGYMWQLIpcgJ27eOMXAWGY9a0KroyJ370YHMPD0MxF
6dseb4WbrttZDerATsGJY1UfsTsM8riIC6GIjp0MNW6THfmZks7VCjMa4tegk6V/gXy+u0rCc8rg
lzrtzb2w493raw5tzd9KJlDIMq86cgc1/mwwD1+Tu0uyG/HKy0ItIxUwIeIh/JotTpi5r/3iD2/w
SArKjrNp4NXGMmywMww6DDFWsvpxJjXwJWLBy/m7EuJulhg5Ss5eTsTiD0Of5eLyp5J/Kgvy2I2Y
fxdVtFDccW5sGaQB5/P2TRrMzj27PhP+b1vTOp4KxzMpl5oAc0FxC10DJpGRQaDTeDhHKHEKUSFV
YAxx/Upvq7SIc2SEh5+TjQU0Gmb5G8sdrc9cCEu5LfS4U8cc9oAb1QgJ4hfabO2MJzR2F5nP2wFP
CgvHPH8rJynKSNF7wWk7HTsPyFQmSgeEEbKXXU+Ep/t59RfRxYPHPv5ttjD5O7paeu4xYD/8h6zu
WQEDjolDvrfhSL+wzpKuW4uwrb3y0rGgrQhbmwWwJ4bI0NxlDnFEDrMceo32L1wt6oLFJe6QkMws
AZ8xXrKGfh4einJ0LlKEpgsGR+nwTdakIQIgynd0l90YTUOsox+58EjwweTO2r2Nqiwc/+kleAAX
l+Wr/mUYJJBKSy005752NXqsjdGoAqB+5LLXV93lUyHE4JPVS6X8iDeXK9dEDPHBinNUJlvrGV/q
zSH8fQlZdlyG7szJJ05MDsyiCnKt6z8r4zYfu/SPr/oiI/aCxVuFV6XV+JQRfNNOL/WG/4mSHXw2
G8xcE1j+htoDRNWRm8EtHiO33P5o0q0zEJ3OiW3CBf+7bZTwHopZcA4SxenWLGz4ybj3UcwJTsIC
22Dcvj7ZftCgsMAHrN+IUS8J7pozp3hzIz+pOb/elyKyEjOIELjVmiZbLmxlHxO8G1aIV38YbR5W
1EoYvEAPKlMNwSTUoa1CufkYvsOoS2MY0r8SiC9vMxAhNcL4MrbeioLkSk7pEX3b0gDSGqAQdgRs
/l4P8NClkGs9PSbGnPxlP/W1JipXwbdhOKJZrZDlBFsIEP3rIE57wkmq7Q+93nFLlEKOAaer6lOp
MWjXK7N2A7XVodNIVAP9RKxDzhrhMw780JmzTBK/38YfdhV8wkbdspSyiFyqfVwHQD3mV5zOF0dJ
WV/emFFd6/nks0lsY+C4lNlntBzler+YVf0wWRV8TFT+ZaGSyLgg6f9I/d9wLi4/D4K5mOWZ4DEd
nIk/qrOZbMnUdcjQ3d+xO/fOt5q0XRSUa6U4CkHPu997HnORsBFR7FU83FfJSMHTgF4ynHFSoazu
SHchBV/LqA1aBFIpFKdCgzImLXWS43qLLVXl/OpCfRyT4EYkfOYQ0jefqDfw5b5rzcF/0r52Ztza
TiHx290XFXQl0ypmDqscQ6hyCyhElNDE96vA4igAtIhYaE2Qc9DIGqAGbe/AZJZTIu+Srgi25P7e
hf4VBD0QN6vrkAVF4sDO8SGBE2rojZ2Twm4wcFxVgdHmbPymVDXYyUar0UotUWJ4FSbgREPLnKKT
i8PRsj2guE0lHcHCB9doEL+gQJSYWyqxFgSzsRaGbgwNO3Ft/ieOC9CiFnRFtAqs0Rj1Kek1Ew35
eTgv/IxcpDwSUXJnreDEZpC5xZjVLhKoaO2VeJJkZuttbJmwkyD+qdi+T7urpLy0j8vOwsorj7xg
Ptu3JsVuu299qnLn5YGQX6w9h049jIxLO/FIpv9iH78IDgk612e1MatcJc6lewrZicK6PnTO66yR
XKwqUJhIRq5ir48xHoAJZOB5D0CqYoze6nIjV7Cn3VYddyBPQ1m9xAuKFRI9CbccC+8ms0sleU0z
FHV84liO0Y+XD0HHN7GpJMj/KBmAn1u2KmlExX8xTNIkk6ffz7vNY/8FZFjxShIKDIuyCataJHP0
j61sARuICRvn7f2EEbs2cMyaTZWYRPmvFJwvyRRWIr444aBE9vm61B70rckg7qT1G/S1nOF9hjoS
+NNtdkIU8DisZBYJfNMcvhji4oXmJepsDgJ6N1gcdYWqkVJtVbkeHhPVU6VCl5GwBMq+g8Gj4VwV
0UtJJttWJME/h77RcB+9A7orJAH2w7s7q/GDXkNANb8Oz+4zdNS8IMGgeXOlfS2qyX/k+Zz3utu2
mLsNlmzMT7MLtCOHE5w+HUWkVsRo2UWxzwuT4HZlRlwJ+yHN+/Ka5bGsG3OE/d/7cY5oo4agytqC
1yizeN8nbXAmm0ezJhvnQJvCD1KYD8xL0FczI22C/+BQZxV/t9Pa1da28/B34nfZyynypw20UeaA
IwCouklRY0oP15kSrtvlaRa+HotY8Gg3DfoxLH6RKCqI35dVghaUFgHdnhQXuRB9HXX6sDzrRc3c
eEvAzFNiiIRg5E+dN9YUQj4nc25GskCjc+iyp+NIYSIDigBwIJ9WIIpt8yHT+to60UMDku+rVPoF
J0vs5rioBOmTR+crP7N2bbCa3DNiAcYje1sZdZPb9DgGnC+W2PtujKCtmOm0+DTOC+gUoNLjcvdc
yswUzh12B8aYOeA6boi66XQVlQesaiH/sM4jgTvNB3Iv6JgTNqdA7Sh2lf4pTU0Ha8Z+8/wEnE93
3q/g3nUenBIkpotjR+NTYLbEE9GwgF1hQDSvNxkXnUNlH/1rKFC0SaIKDorS65JH8z2wTIbajXax
Q+xZ7wZ23FbwbsM6BDyo9f3v/ae9LjdL5eIuHCVuEcONmaBWuTG9qxTlH7hjS8j/8IKXeVDxHfpA
U24OOVccCO5HgUChcM75HchbHAkv34U+CUmxIYW33vghFUj2R5GOS/+QprbgDwhLQjaYG/kMKdHl
FO4/QTEL2w5lcJolr2j5MAvRbzyA7MaBzuASWz2GOL0g906KboVDMpeyUFpcEa99kgCI6Rpdad6D
RgS6SMxvnjvwSMLjQm8ouHdpBCfaefQD+C9anFH19oHiN3XWHaM1KddJE+x4Pyte4k8c15LFmo4g
w9hPlwIqHtu3uFRwkFMIGg8T3NyEa/1dSR5lKG+Bf/JkJAGY2G5afp7zsfwweyc1Xi9/K5kn8N+Y
aTqpX1pBQ33nqxI2gxuRyvKkurHizFeQr+i0IxwOgvoKYlXVLwPaJuKUxy0ED708HoxybqLN/MMJ
J3Swb7WXJXJB73KrAbbP7S9V8wykU+9i7UVSRjspepEfmC2PljSEZZkTUi+vRaAWItcTMEh/cI+K
jzRYN86g3GMjS6FhhxxOyM43T6QbMrMB7e9F2tu1dcmBq1WFPmMNCa+HBp+4H5VyADyNT4x2xJTb
u9XWVylx7ipjS4vqJHkGLNIDH0AZrlVaNilK1C87MSChkGZq67TOxm5GQ3yNI7r4x9kA7M5CLhyB
LPyn2TIfW+PdaxcsG8ZTvaNGPF9bOpWJttmoTKZE5lbL9M6HVbzZJXo+uH3mlRLL2vL3ZPJVoFSq
fG2cC4idx5g8AP05f3cBUP8S1m7KwJWzpjIflK+a5OOSDUQBRAhJLy/Zh8LmDjC1ZML4EMjbFq42
HJD589Mh04KeXXlUqpNxhUfX7KWvwpgV+edBiSggCGSCX1UF0kyYFZIFA6pbeb98OSxoBBRZ16pa
+SUpADxJvs52XfSlJbivs+XO3O/2dPpYR9CUN5/pTfDoyqJB++VOowz/OR9K33k6spYT5MIJD8Yk
ZohDiHPu/zUo3DMH6ExQgELdXIgBKPJqipytVmBD02R6Cmjj7Zle1Xer2Tmsjh06V9XIeyfsxnwd
cW+rQNJZy17/W8Fls27OTzsdiB4WBd2ydkvuz84n9IgazfHqpb/jdDOImrXNcX0JfPRly6FKvXx7
n3wXyagYCBif5aygPVA+kjuG2gNpvnk3ZMrZEuCEl/sG9IltTQco+heyBduBnD4qMvkhKcZ1cZTU
uTOuxBbqOJ6JQCUOOu4Nusem/uDEiD+YymaGd2jk8ZcDFfRQEUelEKdCh0TrBDs35cq//RMyZOYN
IqVQpLJm4u+QmwCmAGVW5gJ3klfq2Avo2QHdB4mYAgYfeb7fGJOKANEobr3gQeH2XIrRdBHfcDOL
arL/oCaRao/ynSTVecA5Fts+NYqqupKpnoqDQ4oMgx/lUrUQcwpEBvcXqD7AeJU4amNKs0d1jR2X
CFGiCQVuCUB5CAQ1vzZGen7JM+tLEh6e0nHLn+dbEkoyM+OIRlNPet9onYTJRRPLWc7Iuw09eSON
oiNpWc7Hx9i/Q6aTqoP/XakxfJ4ls9x7Gem2S6sTk3F/qFtPhTANIwDCbZ868F8YZPPakowm2+uF
57j1GBRGdUusDrO7IaGku6lZ39FhbMaoaI/DbwuzCGTd5B3Vj5I4UnlS3/5+y13cXAwBnWah5p+x
LpGyoaHrEPevJuqixJV2J/nBIGbpKI2rtBoe/3UViXuLdl2AQaqMnXauYObpwrXRwJfs/yoVEHQR
Tv1LwFPE83kAK5LPlhppb9DQOVZlfw94HAfsg+PXXNwa0QKJd3xD/K+IwUGvnEX9xS0O7VvqPBiJ
zT+pz6DM9TmTTYVS+XE6fGIaSvAVVvjhlSjc1D0LbOQ3XeIu3vErIpiXKLZq1gGIZHVHTAW50O4Z
C336vUED+Eom7SSeJctK8/UfMF1R9CKzsoHXxnhy1TE0+z4+BUfE3JRUWiUXZHn8KOJQsqPROxtU
YUf4UvyTNoD170Ygb6zhm0KvQXpC6hwzbY+TQpGKSakOXzFcI90lA++DWEV/1/VTQkQPXX/pynEY
GOmtN2zhxSJInCvbPyYqOOfkqkMm/FEdM5S+vGCZnsvS97HQOQCQrGMSpoOwU0B+rMT2Jy+KKxPS
iN3RyY/tvzZLTA2NQ4pKGFEqDixDDvx5Y4ixK/Cd1b765HXlEJbY5sEgJ2dDW9zBcAKP9sfSwDix
7ue5+Ql8Odg8VOYu0+Zw66L1jHYZ1VcLk4BthRhHfscodGmtzd8LzxtJ2HzJJAE4UvkID+/PO4pj
eNXjfpD25sDqnTWkcfVtTNxSGX1IqK5e8uCPVfbX6fYAcoztj0B32Ezz55JbhfxrH6ZLfDq2i3Ux
APrwnMvGPO6iHGE5nqTXXKm7JW8bQpIknK0whu1xw4jpRgG/LcxqGwohRXcfneQN7EBSfeOTUEHG
jlfjjAQDifZWR4ThvhMHCVMln/RWuSs8tSm+oVqeaOFU3Ebwru1GSxAswqTnTW4VC58nE1U63VGg
I3WrPtghasS0rvO3ZhiHfguKNyA6D+L1cR99Pq+L7p8Wa9eNbdFmB2sdJ6EgJFlraJCHCjKYqJD3
qTg2VJJbdoXEs+qXW+c2cVXHlCAuoKleJjLUyVJ6F4ecmcJQkxbFFa3Oc72yQeCTGmRiX5k3vfm4
WQxr7G7JC/GMTwEh6xRWCmya7WKSLwrEwiZp3cLKZ3E5tWymDZReQLL1isoGfH6831UG76QuMaEz
eWW5w8nWVjA46mvTH/kG+5BnJYI34N3Jt9rReC+jA7VWcD7DFDFHjDvB72TAZv1eosFfomdKJgAb
57gyeVSePy5BXS2A9pULI9hQYJ0zio6uET4/WQKTXlYUKvIim2cV2Wxw4lrMmGa0eVxaUxpXicD2
cQzdyQBEH0nSn1q9CbPQSvo0fF+fvXWyx392X1C9XKcVwxRgNA2g3UH3VdiWWW1ZmD/c6y1TJVL7
i8/TahWwDbRhFoM3g57f1cgFHxP4STNum/9hC2lobPz+IAL2T3kN6aeCRyrzhh9w3kzSd/44fjQQ
qOSdSgC6CLyZR/5GZaGIGfhAoRAyFMywU4+MxFcEyoigk1c8rrDjeCGUzv7wkfRs9yZUNSOUXa5M
4nUmans89gTXyTOOk3+B3FAR5oYu4eNgPDfQGVKAssuFJ5A9NeorewkS7L7mpys9WeZliQybYbi1
U6SrY/TILMAE0lVHAQ53sbVKxuY2aPvkDkibib+xRFn69SsLmNbUxtkD01WfsSv2vQQoQcWi9EgZ
6SqL2QSXgZVFJ0C9rCgIlKvVvVkc3y+Jpus3MVjz9HEmIyfjJDZX+Dzot2G+bvlcpGTQNdZdKH5e
kw/+wkzdl40sjiD4tOGyOM/KKBRgsADADJFRIO9gkp47S9AWHMtQMc6ZxE/OTd1ASjUGqyHuamcM
CAhPLCgug/PRP9gdQkEcBRUcnUsSGeZ26rcI20cUlx0svly/Y/kgz34/48QVIVMNhZjh3EgNj1H5
fjGWBownbA14RjrCb+0LAlluF8JccfIVHxSL8WG60soLRG88x4pzNgxHTZTAsqHiuRsBHf8acFx4
b8aps2ePeBqIOqoLBQLE7yHa5UOWkafXZyfbWSIRL5rXNi7akv/J3exvtUGg8Gph+ipXnUSPkoIN
FKeHsrtcPt6s8+68n2lDDjnzPMnTB1D3zbCeJJClo+XuohkYneABpjuEJ/K7jinNijLLT6/xFjtW
ZsXl59LDal2KSOsjWB3NglkQ9Qn/wrhDzI+3qNLNX41HQPsiFXVsM5M8z5L11K4WGrmODQKzR6Og
rzrJVngiZ2IqyS1qp5Q2ZQk6TGBFCywC2mYIvS1Bvh9EHM6nKpJYcmBuNYM2yc+EJkrJzf6WDrYa
QIq5UgqN4fYAtphvM6TqQxQ+DuJ6QuGm+gE4OrG0JNqYZIszs5bu8tmt8k4LXamQnzybpOc/hcB5
Zw4bwKVKUVUy5iykib0YXYoIRxb2ECkOQXGblmcyuQkx6WobE5sqaWD0uvzQwLhOubXdiUr9Mxtv
83fsnSEA5Lk3FVvvqwyYdrmnLJoSYKnWHr6yiplAJBmt0mrN033NcoTNMxNNuyLdFOWagbU2vmcK
IoM8nh8qy5hxUdR6xj3jU43a12mdPS74PIOO3LStP23ib6IvbayOefAe1RND3/Zy6PHXFpl8+5/Y
wyBIsWn25kD1JB58G78BEQhG9KpNw7gEARH4jB2nH1SZ4MrjR7EGuXf3zwx0ZE8FXjAmrod1TcEK
1vU7eapT23nSh3fhtq+8eciFnJX5uOLglGmQwTiMdh0yNvZhOL6mQi5qLSNigr2hp5VHAq7kgSUk
obI3L7MFQ3lUWtz7/7ydB07OsMnlrNlieK85YwR2Vwo2WROUxtBExWUH2+USeGWMMGytClStOIc8
N6O2rxzmKvUpUG4Lg0blIiwIVt7UPw5f8FmRYvpHJtt5XXQ/jEvWITwCkONftLJ2Y7il8lVcPkBL
FvnjRyG8ON6jcVodkTC4xC3gnypJEnKn9x+e6hFyo+gwmZsoAtEzPLpdkLIq/7+cFDeck8aKo+Ms
LJOOxY4rhJ+g117O71sI9ycRHShqxPuFjcjZByP73nxjbOt2P4cpnZ0Qm+CrpQcEQkt07YbTK7Or
f/bc9scJBmCXxT2qM4NU+tki+dHY8cAprae/zCSMRTuq+xyR4NYg1LlMilynuQW9MkMPnMRh7y+z
ERDD0j/Monxqw7N7HhkBzrF3Lwim9cChpTwrswC+Cy6teHWobUHsUheb2tJlgj8oJfCzMqPisuqP
V1iGg+MZEdKbNF9m30lyelnXzYKifn9TtEP4q2HdWXEuSGdaQ9IGmBm4bHqt6Fkue+3iwZ07a1RR
hsB6J6Fea8zNmhWDI92rk3LOFxmaybPMxbnSpInzCyC+kaJtSSW5qFbfPH7YuMWrCERklw8KYed9
m2t5PfDeD8bmVYBmoAgWbV3os25E9BGLUWq7+lnOdNF1Iihgk0/CIoMf1sHcplwlOaPs+LDFhSme
w3fXtJFiMdvUwDuPRnXgpJPHPLAi+qj+xELkvawXJOUsD1pxYU9LhEDj9P8iJO/UKIkqwH/AuQbe
soFVEiavYb+0SMq0Br8vy9cVEUmZjsGBeV1Qc1lR8z32JXP4MI71S4Vz42vKg/uQ5N7wzxeygu4j
RBG94/lgujDQzmyxFqw6aSX0QjT2mZe46szLG1ST00d870zb85pekz4oH3k/ONGQzldudN+58+c+
TMz6+k1j4Sb4VbNhmjbTNurV9sQ9Ub6JXkdeJ11VOmkyRMavO1Lh07g98oNxSKNO5DUUJZI6feO4
eKKpwe9UAg/ueyZpmAIi+7Z5ZdRgrKiAnFUPmdi1Gkk5A3thmKsD4ChvNviPzwo5xlQ3dNxpOEWH
zznzR8XMdqTw4FUweZZOlvjW0ZhNCNAM2P80QtwwSHQNTXTAJXgrAgA3ZW5gUylKRfiisv5ynG4R
a7EOmgRuId+aiUyR/q1L2/0qXeYQbHrDCY/VNIv4MWn1D0+fDvB0URO1E9tG/ZeGi9Lfzp2RrX1Y
HP55A8Xam6h/DV7WOZnZQpu5EcNLWyiKqQw3PSDKu2rD7q9gxkrvck8V7tNl3B7vB+Ohk6f/piXs
/JVvYGbvthFBzbzvPrgDetIRgvN8HFO2Yt6FvffGhtOcm6wibgxO6ohiK7tZzMl1fIkc4h760GNi
8ziNXpPJOduiteCJSrsgeTqC9UQxNivSQ4WnqCvTKPJAt7SBbd0xIt+5wqR9b94l/ncMmBhDW3f/
53hDSCqWAw8XUjdqN3l3gmjWEFBi8k37QOaQQpNVQlYvrHFjcb94XcE4Ik63WmPORSdfLEBHHvWu
2LnMh8kLyD5i+OWOtt1xzGTX/PMrj4D9CimELaQHhR/imAQKfDociJRdxSaaxy3HIra00z+L2mo4
ngbNDBNXs7YuOAfWlkGNSLrgvnDEog/j1EDdctZe3p2SkuyeaytQWrRLV7rq7MgKa1Od2z9UFxVg
Z7inidoEjBAj3FnQO+XKkvpx7Rp837yXJlwYxdVGQIdVHRspgAsEileNxd95J+p2i/FLoA8st1If
QtGXcgBpbqb0+DvPHG5uPy46U6cOKkhMxEWehO7MQekfaMvLbo3vJ23B9rCVYhmiWO2w+rBuwvfI
R5uIqmKr242Ysvj1mStix5j16GPIoERhiHNoUyTrRchGO03ehUnkRb6pRRllAALNvOnRW/6ICt6N
lvGplxvKMsN/+VIr2MdAe6NR8y+aRcJL+4CEh1H+oNHEsH8JWI5rtFk4Smnp0iKVpk3+rvq+6dz4
WYTsB0ILQ7oFka5lkZW0vT0OGwXNtufxLazUIX8cVJ6ABLS/yT/ciXoA2amndzNF1DCAdQNYEyOa
4ei6jZV94s2BwL4/0vp/67/bkG/USD1Kx+KFSnajYWrbViqyXeg9d/Tq6VdzcYTR3av4Ms1yRNuq
Ez4Vnxk7OlK2H1/OKFyI6Uk4wa0lwyYt4e4mGUfTaT9/onX0/uP3plI3Yl2ZckHiaU61u8TgcFf4
BIEogAxf+ywJHLCMgj52pQNsfclwZ87vNq8oZp3RYmzybJPCpmXKE4NzZLokYd3K2/ttygBzN1Cw
QZv/COVVDOtbD59FpNTib183LNpYaciAsdsLc1D5O8MUD41zhJ5sCY/dGVIGBTKHcuzI+z9aFFMt
gyyLfVZ2eegKaLihvOibsfh8FDcjyNOdP7g5msTLUzUK/G4ZPaF3FqqGSYH0MDrteUAilk9f1WBj
jQpeiSwdfBYZD50wtBF+CTJP/Bbi/y87mz4OrB3Mdifp1oTYalPmryODO5ncTmjG5B0PVrBs4p4g
ZQHjMpAilxPFjW0XSorYG5UW2kpGzTMd5f+bcFhqA0AmU66NiK6kGeyewW0cF7wvy3Kf1TUy6dGe
Ss9Vs/HNML29beJ+d9F2evjfBeBL/yVmD4XrfosntFe6L/YY8Wi9/35Awh3tJoWt61B/5li/vYHQ
cQkrgxHrVDZhCuz24uM2vfEwdp0FZvu85/plbWNWbMUTO809G+AXEdIIaOAavCs6GCsA8l+F/07p
r73TQfpZofoPWYVmZGWQUsEBsI8QEJinYX8VAOI5Jn4NYfYwjo9hgqL2fQ2ZpgFPBZCXLhMJfCZ3
3RXAcd3VmrIPPy2niXy71UkRIddKfUnxQIC/ighOYBrmN9VF7NQKxsjucL7mtyyv7twIoyRYhQMr
EvbKYmjYZeWEadWk6nBUV0JeAdhfr9WXRY1IiQE2A3IAzVUyx9lSKDX4+OTzPnR81VDyHo1NBPQw
Q/In5nPBIWWNSOGeFJVAvhg5cx7MMtaatsiKvPufqRo1OcmW1L53Fw179NmnVQPNSfPJ8ypTAkLt
KAPv1AUftU7cfaSRs3iSj7CYzsE4ySXHEC+nHdd/w207v8+7CLbvFkXKsmDaduM3sKD2ArRiWy2z
w/sBq5uXV4tT0SxX7/6bWEAw2cPXSRKEEs9p5f8dYKSQT5/1ZY2TwRnAgd54XXZg2P+4xgScsffY
zbc5ItgePlquzluXgRuPZcDTzqt5+5kF5S4NWHt8sOj8Q2TK7C2aAJqzoAasOUpt8cxEHeSa6O81
BFNGuvY0BwS5H1d+Wn1HNeGGwrAzSMgC/XwS57R17u686mOj5Eove+dQqVWxI9s1oUUSkHzc7yJ3
Ta27e4UBQKgczRed6yXSt/NezGRKaIAWhaHqAkIBvBA2eSzvYOSo1WX+5NhnYrJmKiEV4WCTSyhT
LHvesjn0dNu2oUv7iU7ge2NIi5ZuoicyVocoOappavOUTPDHy/hxDxdNlbaiJ+tngYO2ZnCcxPtX
aAl5PbQ3qHD4w+lYkWlKvyo5TiuFk2XnDSUa542xcp3eaoETYG2Nt2WlG+JFkoG2wbyKVTOojEMu
MnMY+R86iuwtcUlu7DOmNWWndFO+GoaETf7aIgTq6DBdPXaatEAkGp2EY+l97NigEfkdZKC/bKww
ul+aSTWlw9yq18hD8b7ktty374M16b4kTOGfNFjMsvXGQSuTJKlzD8HxmnJ3Xtou5y1xGGt4tozB
l7jY/vO7ix9YyVW/2bedo3d8kR/h/tFklCE3pbWx9iE45USK4WfbEsfgJm7fPBGZDVrfKvTNQhMo
3hkl/DZaTZXDkS/IFHuNaBaTPW5zOU8r/V0rX+Y+/xm+GvBPaXh/dGIGWDBiMyWRD+lAhD0lAnbf
EmmHW1YIwDP27ZTIVpsfAV7Hx4bboWpeyHfCUJtITckzBlW1MaXOUVwtPl7IpHU3BgFm1ruRotwX
49f3cFJVJPwMLbOb4Fn9vxUX41WclyX1bInI1qlr45TO8EAXX24HgFcQNo+LkC/xAYYvFWxSg2d3
3eFB/de8inulhdtucuOBi94N6Lyn8Y3OzyGagQgVTWXL8P4yqWymStNPh9I91QZNSOkUigFqUJwj
SuV2IQVmn3TrOvKPWd882kXXfqJcfM4cNJ24TfJqKF0RC9SJ+13qJrtjZxORbtuFV3h+UA72cXop
k3yOuCu+IjBh293tBtIEIRvWvVGIFLNDE7YGZzSBKTwy9IEeZ0MXDSZwy1njQou6tya08DYSce5i
hT3B3cN702oJAVwIH1oAcXNtUmHw5GGo754EhGoPFqoxs4AsWXNvMtBXojn6MSIzmy/uKRQbDAlB
cF3LrG8YSzv1bxft7Cp+qtdCIY3wm2wkncZM3B8E9SCzQ1Uncee5W6sGtOeXdioV28L+X9eO5pM+
5PdxDYyL2Iea5FmDWWZXXg+fnV4budVvv/r+vFWY25yfA4rsTTUyzraAqXD+7mFtO+D4r/0MwmTJ
nLS6Y95cGp2I8tkMKvch7klg6sPOHJ04iLxfMh8RcL2sXW9yyh5c1FzHnEgXrK9UBqJYyLyVMh+Q
GckBxGbme8p9/fJBzyf8YqdxInEmZ2hRgNG79EutZjR+M0VWAVo+2CUQrgpj6Rj3bb18mffN48O1
WbOJHDREjHS0+EIkq0c3nomxl3ApCNhkd8EOc4xGuG+7B/csssjqkLgzKOfehExT3lg1uP2NDTUp
fFry1a9Y9gWMzrjDTCampk5P055n+K8zy2bRokBz33BcdEFELPeSNEW+FdaATVYeZXJLFkd2IU+X
Z25S4G0e/AE/IBlyTGC8OuMdy3Eg0s76Z5DC86MnpP3TjmXBJmhALbU2ij7f4D3MvZcVb/nIR5hD
OTdbSFvAU6d2WA3K12YH2hRxp6/0rtW7xu+bYYYeH0f7j+tnyz6K8cyiLSgt0cQBhPKI9ii/YDq/
kw6dZHg8FtPNFYVEc03Zf3n8dC+DXig+1buA0Thai9vRA2FSDSuZqDi0s0nJkTsQtTZD70lgBX1h
M+HYyP9R8b9gAAJv9fpjBDAKkTIQtQZPqZSowp8YbmK5F869fVdYSutExn3rZXtahm9sPaIOTEAj
i1spffgzf7i8V6a/gVWLTw58RjMr+Vnl9GDkMl6+eOk1hBbykfheUcJCDYde9jb/1bjapGaw6SwZ
NF0oAFINT4eg392+Zk1yLcz04I0Pv4pHpMCwzcI94mgnIQrgDZE96a4Z6kuapgwXspGckR7Ga+p0
spGPqKpC32NQ1SH9iKtMsgtdgT149FC1h/GJA82Jr98/j0IMk5HxSbzPDTX1TdRiuiqkkCTxljU6
PyQnzHQmNaWlpdlHo3m1xXMnFutNo++EatZUsGfiT80OOJnCxK1X7sLcUP2OM69GTWy9vsjZRnGF
nUAXDttweSa0fCd8gjZBJAI69KWcx2QRg7MydBHO8i1+YypFLYEslJiiHOvP101U24JcyWdZwDdF
Y/FRk+xSNmE+5N1F9K8KIxMWxpOUtISkIZFj+OA0No2AM53xNb45f6Ta0FpnlFeQirNJbGxBWq3r
gxYqgOWXL4a5VeG08ZNNYeiW6XK8KyiMTD1kL3Y0Hvy0ICJl4iPVqDFPWC4jPhll4yNQzH3aOiAq
b97YKv/+mq+tOGECq4seTFFKj+n3+DvIg/KUwdqgXQtUyoj/ESNb5hcBGoblc3JcKT7USkDXNACu
JCa/6Z077/FyycQWs3+uCT9jYR1II/p1tl0IPE9ld30UOMMyk+XQFFP4O0K22TWaewOmcEUlYGJM
UgOED8bZ6ykLfMpWbWJCRmvtJ8V96H2Eq9+aTa1mzRz1kP3GNRDXEBEeTyp+M46RglvRwTA2v6Ra
G0HUbXNkFUl+ujdELJHAXhzZfxTjQb9FMd5NfJybmeHvcjxeDz3PwlIpfJk6zfAaI4rkHBf9fakQ
Nb9AgbaU+6ZpTu4PJwcVhsyoi5/wB2d3gnzfSPsgBjio9xgQgwrob54YnBxCoY71HadKzV95Fkq7
nVS4fFZto7BxULV5tLSk+HDefCaKfnYhghOOPJtI52uM30HwsKcz5iiKsukAoQdCfUaPP7x9u7id
Ga3uW508uNLOHxdBE+i+YgM/cPMwjoxM5h4VBkZIxtTx2wHkiKL7KPnAQdRLAQvLhQ9/Uv1ketuM
N3w/ys80aelEtrTpCwcw69jzxUQhulbDHRvpHNv1w1FnsUkWLTg3+2FGJ+N7hk8XFaAij8X9PkzD
3sm2Syf73m5vWASLaejDsXb4gWzRybc0M9bae4KlWaSxiRMv9XabWNxI6QXx20XLDJZpbIXVEd4h
ohSS/hM9xUD7uwztT09zkPTPq2gxxLvrjezZMNN82uuqgIxB+jogGhu0bc/gXSsMTySR8+ShzyZT
pednBeQHQSO0dXksyxBQ5l6JHtz+FP7nfNlJ0apPLOHd1Hrw09Y5+ARsCRXOTUEMzAmdhJvvqqPy
9dD+JlcEDsJ3NmtTPpEour0rpJV95VcyzoITr4nW5kKJ3rBKKGlRN2hz2BFf/iCVjdAflT1kuV/E
X+fwEkoGoJvVg7eSkr6oTnVKRG1yU5uF71iHNEP3EesASFo9KSjMH0saMnwy8SzbKJhl1ouE69vF
fx5PCkSZsKKySJfB3VJLPCo2xyC7UlS1Rl6WsFqKyE3/g2qI7pMmgTrXCpxU9TevffopCCmaIlIY
3K/VIz9/iaSyZAnAK83k0jYFwOtD6qvpWRfAZT0vwp6j53uxeAKenq/z+Te8wQgYrmx4fiVk929D
cMyyNubqB/bOLeMGP3dPJddw3U5OS3TmhohHa1mUu2586u2+kiy5BZtnvhPpS5RA435Su7S/AVHP
X33txNe9ZpTw9NUA9+sGuB9txORbo1c0I/f/Kv958WMnf5FINjzT9XDA4Er4GQ1hcqgHuIPMnhg1
zII39mTbwR8QdaZ5GAok09e8SFQ8kgxddF/LoYIuqZdEPoF09Uvz1pCMYacD7awcZis6ctIq1Wsu
tj+Y5KS2bjtl1WW3NeE8OyVd9SkrH7crWOj8Xy/yBn7H70rUOr2QhQveaOYwDXrNTIeszJrSx7q/
iQwilKTReo5BQwwZmN0nR7dg7rCuq9f1dYLla2K5iNV4PLWoMA1/0KdceGXZI7tsjVKLvFLl4CRL
Zf8Q3uc2TSyOuTalX4Zl+Q/BVPQnRGjr0EEKDtnYj3C5lEFyZAqDFaaVawJ4iPB6BXsecW6EAWUG
ZwJ7+d293cVoV/JiDXlvH48E2d/6cGLSQxvuH2m+hS9f4m+K27gt78FMJOlnIv0/BQSINqB73hHa
7GTHRjmD+yeuM9Wo/N5PAxwpo6UCKchlZEVSolCLNFPI1e/G51nmM8kx9W9/eVhFx3tnxYRmh3Q6
8R9osYtt4lKH03RNcubz6nkdzQQSuQQHL3TQQJkeQx15VUfkIQrM45hQDObMzRzJzJIb8/INxfO0
kQvwa83g2sHTkiW3V8LT9QPWWtWCiWytp8syasZ17i8B/PhC2xfoZQQulh27MtNX92fglgVaScGf
PvtuT0QIu+FC4RPCWYi2NqK6S55Bn/JjMtksGsuSGULoebvqmllqAPBLz2G0ZZJt7CUj7wuH7bEm
HxMaCvM7eId/j+WS90DYpLJOMksLmaVVe/F+k4FDv0YeGpCGK9XvoGC1r0NOVi3+maesQ/AOfBnW
HXdNM1R1zl0SwBkoQYE/ORILK6G8JiGuCoZbubrs/ebrU3mMmida7gdwl/ZAeYuY133P/OcAACYJ
EaAvfHAyYiIUlXIkBmmSh4JLnNYUn3pk3bVu1uOwe5IPLZ8AqR0AZ0wVvtnAFBpbH8qKs+NX5+mT
wl/33ImvUrI5YYmWBB1AzP2iFvVwlSiLw1ZFLWb1abzKbTY1aErEPb5XAhLDvQTrtxZ/G7MFdr6k
Do8FI4yqJhwf98urZXfyjXWhq85Do0I3rD75zxsTEjZuMp4xX4nDRXeXVd6bP0g2olY9RfPhlQKp
YelC8oDg6uH/vOxr6v0qq2jrunfZrbSZ1z5HxsbkdwJXKpGg8rwwVukgtHkDtoi0y71JIBWA4IGf
kCYlpJsGj6tkVeiUrhr8b1D/pA/mD3t7I03+JVmtoej7f7lmgUV2bKj5dxEt8mtGVt99gm+Jvats
1UWoGXRTK4ydO7V0Tk9BdX+ooolM7C76w3pyw8nKxeYnsdXfP3EjSLwuaGWBRyMXTMeORtEyc3tD
/isG+hqE4xsF1b4Hphl+obILZknozAgzc5Nc/Jjsvovj/HuQCbjwtzcsxfPHuOUQjtB7jCeM5/9+
QOzd+nomOjVRXGD12erXjKQzDeTwlgEtBk6yE7XpMQcaC9HXk7PzF0nEP/O3Eo6EV4pZeMRdCXqV
qiZPmco48xXbr2RtkujZ+7LczZp6h6WRgf0z8szCxq+yf0zU+fe0I9APU1hgyW6Lgh1GLDcLs+AA
XKiTSNLmMVRDFLK/VTS5pZVzveUjgIb1hONu3oLDTO/ouJKi5qBpVI6PL1CbUiOfpO51U7aLUQC9
vnr9oHFo5Qbc9dEkRdIEEOpzWie8AhJQr7dnPy9e33Kd+3ZjisM90e34lDm1ob8oIw3RnsWc9zWv
S4yy3uWZwRA5K9YNgKKVZaTARBVUGYMAn+LR/puStFYZ3kPuaXTiCOrdf9THZ8QTSCXirZto6qY9
ioI6yETOZqR4LQegTfr6wLb1CuxyMESi3hzgLQIYSrjIMYsrkXA7yd89EpBzKhvkR+mfPv4lMN5L
lHgM95Yj/vd5Fi7eZuOwt6qphwbEmSWZf+oKTmwUp8Q1Vp4hiysAYY0kC4cFnkxMdLzIgjbPaIHd
R5fShRXo4g4/qkORXuV1eR3kQbOThjVj/XAgm+qHqdsjL1umrDxGCBdNXKys90FxDmdcNK+kvrMO
20VJPduu3+VhBLK1xADrceqksd+KaptOBlrOBsUmXdR5ffLRH/ynTrejEXTJg3MaVfAhPdIKhu4Q
kF/CND6DtBNXsVTHtvEJAbkAHza/HKCryDBqaljpkdWLn6fsNLgxcVxlX3JR4eW2PzFeEE0F6CoK
veFJ8NsXZUN0Z18Hlp2EmOavLGI61ow0pNlAe17orbXsADZXbBXPXfEyYHSRZo+2bSZyMcL9LXw+
L4Mkg993YriThRip+Wt0UuDSMD94qqV4sOe8/pqRotqsUxLtyZaPpPFbMo8/kSnv9/SOnIyt/VRh
M+sBb9iZZcEIbFzYTwalmVXAwaBUYnSiozOBGPWkE+gwKFjePrzbE5A237Wjvk/CeJaEMF8MiZMh
xy13e6n619gDZhUXA881CzFP91JBqsBVtEzK6yOTfVRP94uEPCD5IRh31XpnFKfZb3MEHAegsLIR
o/VyJhbpIgQxaCQYDVQngHmIownSbRwho3FN8UK0nkBT+n9KEY/+rrH1hvUstzxGy+txuxcxpxEd
G58wJRrojBs02BF0PJ3dmALhLa+jT2UwvH6ZWWGrs8humLlbYDjF9z3ET9xTYLipN7uWTWWxBodC
hKYsMi6A41FjT8inJRjG++YfBEA1+dGCbbVnzIOTniyPKn7NIk0iYp5aXqufT1ixa+PATeRg7aT7
D30yEC/EApCeOqIeV5QsXc3onB/Be/mLE6wCEKSS4e5aVzFcq4axr4ACl6/Ly42AjyL/rLl0E/gP
4c5Hcefzz+1NsOqrXrZ98pyi5QqtjBVd314h5nLYShfna8whIcAOGNZGpNTfb3LZEB/RlHWQfBcu
rdkDGxo2LhEZHk+liwGJMxowiqgqKdJcw9cuuxjBJyuJT5NUbQGI4LpeuT0dhrtaAolaUfOz1XCY
4ODSGxTVAAD+pTIS7EaxHviPPUcwT0VTFpKowoe37aiGjz7RdDOu1VeCW61gRtVrlD7ghVd90MfT
71TbIZsz9lFCxShWov7fLmFJyVV2PNnAN4dIrk0ItO6ZqMa6X7qmubq3EP9ynsx0kujc2R9lpN9U
Hsdutu60biGCwOGIERwx2FKCWyqj4iOQheUf/Q9LH3tlXSglrosc7+Du4vUQKVeWGlr2Pl4wrHIN
OE9BIhacOY1UA9+ORkoPX2mCSl4IyPpDTc4QF8vSFDeN66q3BmHjJDjVpuhZjgHTDwL27lfmxt82
h+GKJhrnCxQFXjmBAaItkK/b79XtbZb85Dqk5raH0/BIfZSzL4fALWWFEifYdFHm4P/1sx1dnSgs
resgCKON4uHJ6fpCyhzDgTlMuBmhdE1lTZBNParPin2n1bvOqjGIUzUfn3bRNMsjnHuDfNi3h6rJ
/5UIA2nUIEv1p246Qa3A8DwuCWXDS3PKDXyxpN+0uDLOFqYRUov98NVic3X9oa3hsDZwaw8oRWld
53rZPs3vjPfkjs6TMZYIzs/lAMNOd2e9xrpg27SzCR49qfhF3NGl2rCovMnQSpv+LPziwRmwaivG
ZeQV/qBY1j6+zW804zOS6FyqI08ccIEVZAQiTGTBtD834gFZcWxc9+AYA2jA5wWIDXy9TRDPz17k
nYNzmCMa3efIYrxaymjXnUeWaWm+OO3VqSklRdmHZkwhOvOtcyLie+KnyeA1rrEBEd1fKfGEz7od
KOd/XNsRaTTsVwaGt5hhWIctjOmLfrjihhrw1gVmQMrtA/bcWyuL4KL1K4oPdyQg0g2PY7prj+gO
ZTpCr8/oO5eWRd8U/DWoAqKUWm5S+eLmVLWmOwB/EiZCth+RfyeDlvzLhqjPk7FXb+MBbcALFR0a
KxUl/2mtWmbAJzhTvo0ZYXXuW3tdtE17oEjOr8J/JAEarUtiaPzRkeCI0V9SH2+M7gvIGYdZirjj
R7KzjoONH9KYilwhHeZtSCgYSadodD/BpBobM8WxY/KEzT5SXHoabIxHqPJok2cSVu90MInygyoo
YhYe4NIb4laKRmJ5AveqqTIb6RBn40BslzxF+5U1CRjBAis12eHAAAr9LJgXVN3kkb2aLKaguMYd
LKjTYHghsHKmJdWVr3FQ6tohHiCuKAFycmS3YuxWvjUN0elUXD8SrZuQz8FEX8DTe8c5mjzHVdNv
QfGy/mma+T7RKWDTSi085PdxGxIHhl1N3McvW1UfZpnMSjr3AG00E2Wf2TAgkEtXBc4xYcUAgs6F
Cx9lXywYggwC5+1J7R2/woxMXfLcQblb9jvm/nobFRKzkXd6wfwSocefAg5G6vF11NuN1wRc3yfV
P2fjHvTsGJfIoquIs+WcpJzkl/VcdQGXDVQZssk2gdevpDTw+gtJyOw0IKotx48clF8atxnLHNgU
ygVhMHsbiudSBoXqXMkF3+9HYJcuGjQA+CVwyQs3fDeth0JSJwXD7XlViSciHpNrBDsd77p2Eo5F
FH0v4lbyxuFd7b8xJHrSTEYB32x5aIG9VM1sCMFTNuY0FCXLAeHEqcVQjAwTag2xxxT+RsIMDl9N
42Ll1eYvOsqh6oh6mF8UE+/hQ3wdRYhJFfWbbhcRPZipsSUckpW/7Jf9Rie35W0+IkzNErZ+vYnu
1ssbMT5TPq8koFuE8GoCxpmDLRhj+lfVZjD7TL1OUA2SkzaNLIpKyWsZjJUEaP2GIl975YBtWlgu
LnRCGXdax4+6sVlMlUBHPXpiX9mz+1VEPIGy+5r7tnrs2RuKGnriToF8u/buS+S48T9CBzp8oT5k
VJ5aBRqp8WSkO5aG17H9e0z1yKqOsL/JJgxcPhiPecwWOC/epapwHAWu1jLuUUP/I6N8pQ4DirKw
cKl7sKlt5BhaGUQSc4W0QmbbR0HMtiAo9hEDBo7huiGhTdM3NiryCoeXKGRuU9g8jS99bC3dOaF3
cYju1SmsAZSIvRN7p7ogXcJ2dQ+hktqBe5YRpVQfXWq85Q3VA6CvkGK5oaxVjV3Y8RiYI5tz1weR
6IIWoVDI/zs522w8FM5dKDO6HzNt9WbMnZv9GQWo7SouG5iPegTbNSV+tU1qRCCC+PU2Dklye7+6
4KuhOo3ktUolM9exttULMJ8uyBcWCVcASnFhpTSvujCQjTni0fTFFHEXo6VyfqN9oDsczis0Q5fj
EcR3zmqVEG7mDaPHoB6/R88rLI5SR721F3d9wCIlACZMS8v6UhvjNSNtgJsmYdf5DQ7ldgkNeIdD
pkK5y6QEMMEH+BkavYP+FZv+10rsCZhqsFNCnhKxDMqv0p3Ou0qNeQlugmPD23/SgnJ8QrR9H3Bh
WFeltuzbr+ygroIfS+YSbdqGWQEJ83tZMUgOSE7PV8zpPKSHVU2mDG4w40oYVW/QUSXMpbdaS/h4
fNjIowv6yzE07BMdZLU4iEXU+yg4dEttpfRPWEnI8Y3cxACaRcn4GlugqG4BGsI16rhyH0Iui7vS
8E3/KFETvKxPeksgs78cdmL9sbDV4/28hrg1HtM6PwDJ/Ukcr38d53eArMY+XdRoOTUq7unKtG1f
0BeiiiWVKWjO1Ol6aylhITWR9UGgeqU9yghed+YfNoRaks72NLzVERVGjIZCUxUtwPkUQ9/r3qPo
s6RAC6pvvkBW2yyN+hlrmyjHxFE/Nlk3lw7H5ekUdGWOOhdXJhHF+760HVoJeqrQWCeBmILmESZl
HpzYvluBVzvuidj0qOdAxxB8EVvbqj7xLCEwx92vSyz+Xnc1AHYUajSvvReVNAyBkWn1tLZALmnH
h7/Bka7G7IkXwYZKDTDaZklocepE1YynWZqneHoWf8MejoS7T1EF9KYDXXJTvchCzHHOz+l51BQz
9vG4ZQzS2dSvQFW9E9Ki5JD1RVPxZeSI4H18Z9we82/pG5N7KrlN96xS6WNHqyfHoflPLJzPs8Ur
5d9yRqgFS9f0TVIZBt5gDIfd89+dc8H1aiicnFgoBc5+TyDBe6T2AhkJNj+2HGovH1+Sr5NRftRX
is20urlAmy8ZI8jiDMonAo4OfwSAAbJri5el7u5uM7iRhgTLRUt6DnuvQjRkC91SkuVWzAHLT3MJ
sQJ5hJCm8ZmmYulxGxxmMfp9EleZJxoStmH6YnrqQ+xQsySII3ff5jELdWPMVCbPoU7ToSsTarSN
XcZc7+DZwef4L5y7MY/ERvn8wvmqsCbgjphR/OeoD2u7bB+irdj2Ln1yaCU0Ouu0C411K98ogpPf
A7SwM4PD0kkhqNxFM7/+yiZ2gjhzcfBixyU7iCV9a7EHERs9k+HhYtnmpRqP+v5SHeBahjYfVidn
uNFbTUDDRSEDGSFhve+KC2vjgiQ+izr1fiqRU6nmm2JkbXOZhP/huEeRI/KkmjYjXQQf+sXZv6m9
boUCz4mDYHCCbPM1CJ6ywTcbo3rQPRkHv6Boiw55j+LXvqUXp236HxVEyYPfA9zjbfU0pokVU8Kr
H+3asLsHIKyTi075xcPwvv6oTqVHh5xYEQmsBFiql8dczjpH+f+jXxHoHFgllyLjqWzValpo0cMK
sp9ZB4wqD8ANcFmswP0s+F62k8V7hqlMbpjqmB0Sa/bBSf0rBdVX1Coil3jVo8jnG8YAQy2pbJkU
BRMCNRddr3h6XeiSAkOpOuOq5yt6x4Poy+ua7OmydjQ0QtGnJGD3qt387mVlDahu3QtqhNuyW26R
JZgXKvDgWxyLazwQB3aBZ4Sc+CtADMeJ9zUMLy7p48TlpZ6ZJewQZmLgev3iFwzQArIi2oO0WunV
YXQ9ZRJya9MPOMzcJupv9S5JC3Q+N4+WIZU3PzjrMH9PfcTgAf2F64ellZfe1NuhrvvrZ775rhcl
D9kSVFdKW+AeqL5PZWXbtWpaPMMzi1vhsDNEFGvJniT3pPD32ghRUT+3zw6V2+dx54w1PbxAVzr0
eMefbCi2XTtgZHzcH6zpbKv72KzA8M9Voql87OhT4sVsUqzt543r9n50DLlhzAUf4wi6wQylAfKD
HbzWFDMyUvDSOy9B+8xmdJ6wgxVn1SqnaefJJMoDC++NDao36cznbwMtYGIBkJQ4W9KcUriTPfbh
b811mN8TA+UApJ/pxrjKnM8HjT5T9EQu/WPvsFOjrcDaJo2OsgruDCpTTX7ehJ0gv6DJI4LPaHsQ
C8IQLof48h7OawBV/E/1pkGqR+EegQhW6UwUREAyXEgs2UzNzvTpU4Qtkr0e0uuAFohzDPm8tssm
/+Yvk+xzh1/k2lZoD6uX9FXyXlMgi/hFPXdVsVUzIiHjPx7VL6IS/NNbUbcP+wdz0ck3QHL+joe+
3gyqkMksweI9pZulepNoUQxpg6Av7/h3wdfTHNVy+fngJY/V7ICxiX8+H963xfl8c7f+wVuoVUQX
HjB7F7TE7SwrVVz23orOfCVxFq2QUGCHNEVRyVYsOFg5JqKGVb66rkHo6ywUtkRrsCiQadeh+kyY
6mk6FEE1X3C9iIztp4jc7XxUXDJhtLJ+ruGjTmXihN96q0mz85RwVnM08Iqtxrl3zFI4YtyMK1t+
mPa8ptpM8ePQ675dT3J5X5AXG7mVKHdUYvFRT0+5JTPRlV8t1SGFGESQyTZyyvhDdEvnYg2Loe7Q
jLYw0Z6W9nLkttO/Dn+EsKF6OMiBW/qWSIcqXBbj+BtsLdLFEZzImldWtznNORpsNtjn4KL83G5T
6rR9EYpkhDHb0y+frOwNL5mgfybsm3Y1+VryoOO+K5savHuX8ebjl4MPZTd7AVnOI7/M8OJGrAY/
20qLae55mnFGl51KZMQcVRUeZaH3Y1sScNDSXXoDSh9b9VDoqjjQJK2/ZzdvI15+T0I3LFpnhJCr
lO7HHHQSYSD6kIsI4yj9zHtG6NgXpC7y8yHjmV6Aj/cFEG0yEipZOkbCe76e9CP9t1PZa25wB8Cx
BSi4ZgFDqpNj3Omg+eWMy2cUxw2O7ELieI/R4kLZYzPxRBAt5G/LYZdNnyQkHLgM6G7qN8kzmh7C
gu4KwNudLUBvv8sfgvonnhYTjeOdUQeO7wj2aCySrIRHUVHfJ/mYUrVRBVO4p8JMGf+7Hwrz/4qN
6iHUaF52fYfMDvjB4KbPuelQ6p4FQ0okw5LXyP0oivG8zM1e09MXVpKrhl4GXdAf7verJ7ngZXmS
al4etL4gLowGyahgYsNBkrcfdUnc66joDcO+Pow+Bzzpiuw6Uk10ekmmd04vml1VaWK+VWwfnqMJ
GIl5/ebqn4AYOzchLrZoaw+oeay837hyLmwifecgr/IPTIjjMGrKIFBUMq+Xfx2uN4xSRx1TMiyn
/QY/N/CRptr0PyTU6k4F9XLdbv1UBnBBHXgkP5RsDshe9tVVQazwGwc4HDdbM8qqkIrZTp2lqN0C
IlaaHZWh6ubGVvbUef2TOGO0T9k2+GqIBafpKdVyCfqj8GpACrJsZxEbrXy1J5rMuo5jU2Sc3WPb
dLEWqYrB+YWfPpAl1CQrf0JOes9fEdKWrsK2PfYavdYRhEaBZzqf7vQAbn3Qj15fi4HylvwQsoOL
ksSLaN2vQV4Xk9dUpFOxF9i+AYhylBLBWzdj37iMpnmmPg/H4AfMHTKZ5WdLU0mnLAZiZtVBG64U
9E8HAoQRcIaJQrAKIRqZ09yuH89UlShK7ynW2w54+p4LM46NiCIuOkQJr+XPArd3RL2CNe0GkKS+
5/UUEwBxCs3gZiQ+3pmbaF/rOunuWpmWYN+0PH0vKaDt740hVGa0ZqeKfcgo0nxv54mSVLYR6id4
aRQ+YJbcl8/abQh5LkcwAsYaQIKUu4t1SlcTPCStp4Tr5jwiqHUWw92+xa+tvEHczx/iQ5Iz9oSu
szL6duIlYOAtIOSc3iV3aKRadtDAQ9ajilzVoaIG9HNEhF4BaWHy1wNaLTqeNbJJiNv+UocS+iBR
3VII7ufzpSr7TtXzahMgERynIT2bldUj4MVnWO500xJzbET4Y6UYFV73ep2OMYLpOPe1V21Q9GIq
1iTaRbiIVJeEk14inltFsKPxZcq3d93JHwqJmE7ZE8CsshZDw9xbSkqYZrq9Axw3f1WWjEjgAco/
E0FQl2BtC4N6Eg1OK0njio6kctgbiz9hOHBxc2TphKxs57cw7Thes10AL9PhdqR4XKTgthJcZNcs
tFYYRizI8iAvalJvp04wpeEsyPPb/qAR6ZYYOMw5qDW28u/kFuBoMasowQ5VYmzjdQvZJ09TvcDg
tO2zN+f2gXXXJXdVxtZuQqdUYN3xe/xrCBSuBPOKE5if9QbNdjSVm/nQEWbU8Yv5Au4LkxCTXzVm
+C4OABnRQXw8Glv+jFBMaKtoM0WxJJPdb/2h00wALwkUsG3380e+KcqphCEc/mLyfGKl4FzfulAU
EnhgBdJfKysXmRp/RP1QQ78tBNP/zb0DvsKqqCuBqOuG/RDa2gm1hV6TmzWc51ykvJowjVam4BJC
cs2XoBX/XnFjNkhIXM47uxuSFwkwwT2p6rqN/q6zqH3hW+jARGZ05SB1MAro2+Hgq0YrYR/ATPmH
GkFUDkKT4yVd9AfngLwDlVUV+7aEXJX39o7Q45wdgZfuZB8nIirnAtdJjv4BopmbmMW2R8LGHw5r
eyy0lOA4T8tl3S+tQDNpsQ+MxDNZ8RJ4t2IiCKWNHK09kESm5FcYd66IBb5H37pwxXyHL+oWZEVk
DYodFqlnNJW8MD86KZ+3gO6BM5//AZnI+TFzo8uLXugLPu/LoUwIubn0aPezB7iCt9pi9Z3WZQI4
t43OeeeRJRx/WZO6AQFQrT9cBXWIT56xSJY2Lt1SkEkM3/MK/c4DlwtRJmXiY1M7LFac9gUuWCxe
Svn03pnO1SpbcEIdXWaBY19NenJ2IT4ihFQ+uqKdSoJibXpeYKV8MiPMOvUVXdDGX92G5bwtxmDM
sOw4i/Xe12xtthxV2RLqSQKZ+ixI4r7acyNS5BlSGuadgLIULj7a/D5dqpyNQyEO8FF5gxn0/dxC
MqbQYoS+IfFjl2mOYSfZU3iNn5EpwJrI0lCSWU3AC3ywVLplq1a8QMKrONwnTa/EwO6WyGkn6JyG
NIjJ0s0YdYk5f4ZC8I+CNrl0ctVIxC3UJbxgL4IOqbJFxYcUe6mZVHckzQUEpQ5JnXHNUJQMADYT
45jiH8rT2p2KjUTLZaeqUd4CQ3RYoCMxVXGX7lan1Mx1OELbP5rXEuJww9jbssk0RyHhfQeMrQei
T8wsNtqtrGkA1odBH16SiZfV7ZzDglI3qg9TaE8yM7lOaN+bIqnTNOfSQey9MJeB9UilxtF2RKFI
TqNncm8EDBDiEbWTFi+RdbiD+y+vM8yxzl+2mk6Ql96GgzvDWAYh/PMd7RhRglWPC0rqKpSYxQqt
ughFq2m3kW1YeAlZaBIYKrYHMxOPsrNlQBrzVTrF3fzijy5wsFD60LV6UbhLqKR8cev6zBOXJ8Dt
laXWJ9RxMZ4axzBIpejw3PKSIK9xO46BvCfNlvX+8xNsnuGryucbP7pXCmNVd1iRw6gb4YEzM2oL
6bLfXoNsM3ljPkuLcrJVJ3bj7Rsw9oYqvBg11bI6Y0RmHIefXvCTRVWlxGQ759xag0Yx88VcKgHW
ke2r9jlwWyiZJXLZw+52mkpugbqsI9Qlb0bSh/ETFVdBkmJOySybG2B1QlzJvt5GY/bu4RUn1+xK
c6vdsMHe1wggQMkhzEppFyjs6i2tM1TJiwiVxusIKAXgze/vftBHx2LZWogTYN8TzoYQdntzZRn1
/4UseufWfNgdmZ5yDOIxsnYD7dD1c0O4L2P4n4eanwvx7Dbkh3QqsKogWgZir/+DSOcwbZLlHdfX
2IfaNXtDTHi3g/zt9DTvLjEWQeh3VtU1NB4n0wTL0BvcdUOoSpa/ymKX8fTl5tT31Q3Y5vsWUKQy
GqVcVY3IwMdxnh4DOJCNldeNTAz7wR4hGlTjLeX+qCgokKIqhcTSpCI9jnbo/ETcI6aAR3w+sb9U
N4L12dmrGCKvFLPK155q+Zpi14SW9JwMIcGdTkiZ4+CvZFjb2fOfAqm/P2Pk6oRlEuVU8rSz7K1H
S6ZyQuv/qg4+emZox0C1Wvt0qEMwUFjipjZMu9WVIO7AdimfeGbSZcOgwXfOKDinu/oW9CB42wZ4
tyyaOUPWQC8IECbldb5zY66gwwdo1+9PH64vI+5bU35f0e1TJPhs2E/pryatN86DSSuCNV9ddEVH
SQvyOIDNVCoqdPYgOQPve+IgPqpGFnfm0+wLyRNZ4yrycFICh+unjQyHQmLBr4tyqwn4Mp6rj19M
X1rinwEeAqwh21rdq3rRo+Hwqo/EN6S6CBO0yDrdASx0iM6Ey4+Sh8w/ZG6tN6ABIZaE5/LaI1kx
/N3k9vexJYJEEiEPAUmr9FxGWAXRuQGptYFA+9uvl5k/cZ2bUbRKcY/LUwfEvup4bZcNU/x/hUug
+1DPLKOvmGkTIW1R6ZyalwhcqgMQF1qNOYiLkVVlx3oJ0B8vqmMR6omoOVIFFr87S2RWKOfod3Py
8f4p93C6lEb+T48U0rMJ2unMbzhuGNzBCNXdl4dkVD4b8SPiIF9XomtqErf7kjDQ9Q/qTNPyTtPo
fuTDWsqPMEb0OwwQuNH2rAPX38kw00Tea0xmXcjLb6erhBjOKmFK56iBEr7iK4koWaqS2jcr7ebv
93+LOn1RpRXevYmI8tDMOiLXUeTmDuLjCv2xw3Nc/VSOY9ZWYMS0DENYOcP3fHJj6cDrg2aY4v3l
DscGMKNLOqkrS+X3CBow0HBbG/tF0PpTRKRtk6PnL63Nj16+HVVkzHb6fnNVIBwFV19vuEG4/GyW
xmQolTN7exWxnEsRU5yeudd8a3WFaxtcCJJn6M7F8ELVU2cViwPmgWl+cK7AoyBxRhES87YYH2gV
YnaZO5sP4JnpAohoYwfVgXBi+fZEA3CD4gSMTfnvA1tjlGnx11SzKTR1bQ8oDTqdEUaN1ZXU/WWs
pmdrDhjL3m5+3rJztGTwLVllFK188tnqf0hM8clThI0qi5hAelTgIpS9vI2lc7y0ZhE8BbpdftGa
rj65/IG+F+2CrZcRm0SZBT57FcFv6z0CrLHJ9BDDsLKv78RMC1631scTeg8DyaNkDzjTViB0bx9m
dOVWbKcsaZBbAbHuTcV6CVHQ00lotiWzddxAa6uxywkfaEydP6/S7ngfZC3eJwV7WK3075HG2M3j
9zSVNIhqUgKATENH+vg2jYjONn6v6OnxY12HRSeAwE7h+9RdRhZ2QLTOV/XKoTHRbJI9msP0ix5Q
NR7DhvuF0WEAAocNfa5KQdFBIermjKindHYu7/E7IydO1az6ZS8SISVcms1u1v4DRtoeWPSSvZ1K
wfmsarR10z59isFZrK93YYAM1nS2cs10OmHAZjsQgzOadHqrYHRB/FJonNedzbjLmXdAva8xhVM1
wk19S8FY05vPTOsFGD8uXGXq1o2lO74knrBANwjZZd3em1rllfxa2eQk6PZLCbcRNo9QeBcs3LmA
pbNnr7ZWqELoC9sh080EaubGFHTF5NLwnmxoOXu7cXdFUNwi96r2jluAUJWm1ehBXcXB8t/PJus+
Dii9mI+rYhTHa6x9yUPiwvvVv6n+R3DkUaPFr/+ZmCEvLOJD07J8BYjEqCY3n8vmQlNDlKX3Psyg
w7Yn8dKuKoPN8rZsfZAttSQMQFitgl/R5r81Gr47xfjGoSgYGXcU3EOrPfGG8uDclDBM2tMu7eOW
ei/Y6IgegjRzwngGD4GqufSFu1tg/yH6lovIeV+Rw2t68lEuXMGH1oEjoS7alcQFdNeQkoqEP8WN
gAO/BINgTgcT9cbmvZIXyfJxjgYI3HvSAWl5qPOZ16p4oDkGCISsgvaH3JcDLbgi4tQK8l3kNuUc
IGLPlOdL7RUzcgkvs6q5GUrpZ6mEjMkmtZWa2V2IfksqBUcSYY/3D4ZPTybDeR+D9RtBo9cH1OY5
FPekkHhHl5VwwYbHvZ1H0K1wJ2LBuxKrHlPcf6UOAmFR3iJnRfY+Zg2nKoNDUWNoXK09WZ5hKgvU
Q+Ydx16zGjLZsO9u9BpLWiFZRtbjqkqo/w/mqRKWx+xLCrC26nw8Q+I8Rl3aGNNKphaEbvTFk5qL
t4RZAeXuQBVCIU6XtCB0Vy0v/SnfmvkUvTW6ZrOBtXQUfLrWUMzP6f1LCFPnZxwBKZCqeEhs00Pm
ZieSBe+S5Uki3PhdOO9SML04t7W19xjrALFm0tgYJJL/WzjgWoCVEjkAU35wPJlpTKjpoOte+D/4
9gU3JUqt2YPEJccWO27mirkB7Ndm1i99SUAMROroJYtEZRlSH5VTg2uOfFjLCiR1h7oBzdLGOeX+
DR+vdQpP9E/7CrfFhN/B79wjC9loFgOS4LrVAckUPWUQFgW4KB+gssuDjXF+7S84biAn7WiGQ9Xg
IrRYJ+T3ohrYZn3P9/TR14Gw8BJCIS2KSXJBZF3wrSP6ibZ2p2HgdoOP4+Po7rdM2ybGYHME+w31
XwzjLs4EP4jcneoeNZiaa4OsGsNf0XmIPkxS150P916H8ewTvUEfEYaXVCuSxZBOjojCrE7Q6I60
HjrqJLoDQK1O5O9UVR9OVzDYGNSmspb+0VMyx+5pg3xKgZOjy92d78vEVkzyf/0/PaNrc0YxYZFN
akQzsgXg387m+7HqXfbWKClgVP4JOwLcUF6iLiKCjXhIa9QQUDMr6QlKOvIpOB/ob6kSgmmt5m6d
jR7zvLwnq9Fp4FGAYzlRwyTzxzoZaZt+Gr3ogkXFy/CUd+mU1BTF16sYzlQ/7aLKbragxHzBhi27
9XFhK6XwV7sPFBDhbWN0PCb3BQ6/Y/Xo9sGQCRVpufeORqr1T3p1VnrSG97InW/q1G3NJJIRnkFO
btcRoxH/krijICk6UD9pLnfRVF0/V0v1o8kQ4IKPEo0iM3MhCXzM7pBSVyfpuo678QY7UXpaKtO1
VzKg/e1inISgDeAgERDxdkWcP7iLwVRaE/tdKlT1HVKk/SqPe+SuL7Q1ELiMxrcEsu3MItWAOmkp
szPAmHGxLXlH82q6l1ZWwXiUrKKL25RfBKRRet5H9g0OkSAPPDnyt5o/ZkRFqYyeVTl4KTklqfw1
8QolzbYvTg+wwVAkl/0ppwub0Leh9rCPrYGGb/gqDRcB4B3EJ68qxI8VfbkhmgCc9yzWuBYbdIQl
aPyaGKyE8QGOqDr6GKCNb14Wm0wI014aZCJy7amGDkLKCRh4NV1jv/AjcF0PzRSrfotJe74HxFPr
dUB7o5jzDuReU6voSgDB0zwveBc3E+ksQJ70c1pSdsecVaW0BeMvZyoLaCvgCaqLOcql+Tx1+6Ch
7WsC3oi/9ZyxCrEE9a5+bGz3bo/Wn1MLfaNJ6lXBUM7CnvxfTC1uvLvU0Nw1/Mx35QhbM6LuvAjP
xTk7m3cpo9xrhdzsojN2l0/T0GO8n9d0irLKPr6d8pTOc756DVvXBNG3lrlkmr1qQMcVboa95ZvR
y92Zcpwy9jzJ1j77aktKU1Kt7E24VMlpqeeouox2P1AlUKJkBKs8KeAz4ug8fhANXdW6mKMsWPK4
/p9h12hl5yzNQGeiOQSdLyzojdv33wuBaiz2mD3KUgIZgJaUdANC7/oLeYZHuyvNtyWx4FdNgcki
M/N1XcopHi8q/Y4SPU9qrscE6PdD6ilzBoMkhE6qHDd9n5eap18tp4e1tO7S6q9x7TSC/wZaF5nk
mO2SPopEn27fwJ50CzOEgt/td0QvJUSWpmvD7vgu6nFoggsPCoSoYB8fWGZu9t0TbaXDjBdVjDuh
blE59hQRtOhH/2AV+v7GgcCHsoXYd2IB4tTGGxLzu+g3bbYmOG7KWSe6B6/4IxBzFUciilEVabiu
oxVu53FjZXAdcnxn5vVLVpK3r3nCfyUrvxqHFnj8jDkA/9evKEUizaiqPzVs5C37XS/56QYMUDUn
9C6GeYUFi4uO/rDyKPmf1POR+8NQ+pm9nzb7pI2bRAGGlBS7dq6oHggV7YjbIYg/2UYgfQSC40/e
dn18s6wN66WyIHLRC7L6Nnwb2ibTgTPBqQP0zRRQysgHHHv7XKMvdU+12pe6GQ47KLW+SVHuR98Q
cfIw9mQsrkUu4+87sMk9H8sc45SW0omCHEfFOFK022jM0KCQpN0m+wWybkRcHXSLTQqLSeC9IO8M
XImyDaR0CsdcoKmK0Pqowhr4NWephZKo8e4Wuor/DkpPDfpS0eUdhxlzdz1fK4+jECnCyDu1+5QT
EAHkbX5MJ6g/YbYmy64Y5BVQH5xtfWjQ+9jHwksBkIJlgpCrkqddKx7aMQOI5Gg781HYHfLdxg7a
7rn+mI3wqq2an1OFqcUQ4Xh7rISVTXTC9WQ8zo1a66ujV2E2PNvAH39Rm4JT+JOi/LeH6EWQ7dM4
RwLyHXP9UKKVpYcVuLsf+LY/PvyzTqf+SNY8i1QmEcmYP5Kv6BozZzCOesYQ220rgASZihM/oJR0
JIcPRDc+1cEfiRGZCll/XwXZo8jRjBo+QlnpJWPktVWSzt2vtnhI8awmUwsTgSSiiUi0tzx+U/Yt
DxQh47ZFztA5OppCTCUgD3TFNdJVvKf4G2qeZ76QDpjrSpd1hhOSAjlPH+LhjLWZH5G4zgw5pW1q
LfB/43YOCGO+P18uHIPbN1S6us+9LosJeKQaTLHYqmxy+0rGFLOYnXIArZPTi50OmR/N7pOPAgsJ
p3ZwZDpkW2Otjh+UC1gJo7+8aCfXzmDv7V0TR4SSR6Yd7zVBPxrwxu4TkvV9rRyixY2+vuAXymOQ
+rhSm2aKPdy941iRKhfdqxEET+wRTMkE/KbDmDDS9JdR5jAFN3pVCmxFEvdt1KSx0t2Pxj8LssR1
yLiJaC1BU/sUY7dVCCA/kRlkCxIx8tFZk4vQ63/OyzHeO5M9GBaW9DEKrmYALcsnp7IG8TyrXcmx
aSzQGUCTW9mvqwNoBBenvh2daU0UrH+1PR3fzZn2LAEws8A2Ilax7BuCDhDMzk3Khp/GgKkNTQjq
QXyxYqJu/YQMAEikmhC+mv1tXb+/pZUnnWtvn+FOaD7h3Vn5GDVm3YnPqEfj6rOc29sNu8Cbus3Q
xIfyJhZaZcxeatpX1PgC04tAZuR0este0nHKqHyDZ3x/XJLTkqDAsTeyBqFPWiX4eZp4krJL0csZ
+jxmpwFIbDNZG35QOIqZwvycD5JNhLxax/q7iO6d+nvMLzDSOkypVxnZfs2oQlJFQPwvgSOsQ04l
eJKNKlDDFFqhppUAd0Wiet0Rs0F5C2TFn63b4OofR8m0r37REpa0m+3r5yBdH2bEIOni69+KLxh+
IXZW41kw8FCBG/479RXkHfw0Y0Gy0i0BwXXjvK091AyvyKgqc+1yeSI8OLSnxCqn6eKto9ysXQJH
OOVnyPjXDtxggxZSDA2XkDW0gqwUFMJAgcxrCUaoUjG+kfeMpaKDySwF5jEwQ4ooZWuB5yyPOqRZ
K4a4FEcZPCcgLAjo4lSoT9ogq+p5sGFFbFsZ//OUlQVoNEsig1qFsoWxdYJuBiVPFbnQSwpyjUxi
HSFeA8pPbmZo7kBGTR3sJyyUNllYvjl71jw8M0fDW5pD3Jc4oztXYnVKlhQ2dpqsFQQ177Bi2zb/
EDYaEo4ilNnZZBbejHk6BnOs84QwW4kbeYBmnXc4crR/mfOu0tjhtR9NCzL9zp8kgIYxDHuqBrkU
jS6QHRKMmJTVEGPViGwh92tV1WG9uSIm4OIh0bJ7EVBqeHJfciolks8Tx5Q1S3wYdKNb7oiZtcMh
erkUTI2ztiQYM6rHAS3RID8auodC+cL0NnkOqRlmAs3nhSBMsQNaT3dAU2FL78HoOE9gNIuSeui4
ZCidpMKhOgvq3rKdIHJZDeE3Dab5Kld1rIEaCzDDsBZRp0C1FVPiMaldaznOd1HMh01dkW91G0Ef
/C3h41V1NxWTPV14Q4OI6nRRiTCEqUMpl+jsFO2gyAiYDIuhKALGlctDxvIcvwAxXwan2om7HdrW
e6wX7EW15rBs7tX+ReweGDufpexcILVVRg+05/JnkFFy3+oQtcxsgjEroHtp3pV6BMb+iFAoTUpZ
X7Eu9VkcthnQG+Es4NM1+3zqbQ+3rHDEy+fd4Lzuiyww5TWPTbx/0zpVtW2NfX6FeU4C1hlfsD3h
6YwXtDZdabZWuaQd0lkBi9kOrf3wkBzMvbFaBsYUyxgNzqZhf3FU5WcRdt98Wb1OyMfjXh9dlC9v
kjGYEll/gXnFujQmjxjoisFwIHXWeBkILdD/JRPwyTsVQYGe+1SklCo+3tYSWk3fv9ZMT10a2q6O
ABhs0N4sWVZc1CQ1tt6PX/80ejzgdRNOdSLytME9slaQ8YkPyGsznvcttpbbyYKHEv9web21kaFd
xnmdpwXA+8h6v9BxziHWJcH9JoJ5dfqOI/ZF+4m24ZfYfwWzdarhFQeT9jmZjMmufohODHeEQnhA
DAsaGcIknPqH20Uv/MD8ZdkeVfQWB312rvgiRWWh677J4J8jo+FhCiX8/F/S57moeYBq67ou+q92
9E3CMjSp4khwOIq4P0h26uOHRmYFxq3nKsoLpra57Ytld4BM3LNHrBK4UzF6I5xTS4gwX5v3njyk
rtFLFH2bV05IC8pwnHWCxzSTT+AkMhR0VKpDpvW7HrMnF0chIdbYIycOR4tDTFk9czpKnPAltXrS
tRvXJuYR7MWtB/8JYxyZ8JNNqhaxxnvM0y8f3IzPS5kSrWE5KrCLMsPeeA4dsoX5Q8T8hjHr2Ppe
8gYVpmIzNsgbH7g7LV50geQJjumf50d1AVwfbYZ7jkfU1OE7OIzfYTlW49XxvUOZmnPjNzUIQ7/8
r808fCzJrAtYXXcAgf9X9OphNtNwQkGKPkkMPSCKa3VodH8RkMzlZfsYIwQsdcIHs+iD7VJ+SCo+
5eP1Ntgpp4L+XR3AwfrX6kErMZySigdwwMWArldv3KhjRv7nIJxVg7z/o9lj/pezzh/J/9LWgi41
4i3yUvemVfL9Nqfk1pLIW0FCjGGPtpYz4mdxR0Onj5U6qAFib+Ye/g7jFH2lk1M97pZ1CcUs1Z7g
3mW1ogOpZ4rFUMAPAazexVXfwTMsTVZpf9zsh223DrMJX/nTXxYIrkNrWlf5GKwyqIjxAt/TrcFx
nyUbLByBzVqBlRNePy5VBSaBAPjfjawr94IvyqADvFKJJIqoeWhi+ddQHFGyUfvPSYnP8gYYkBhV
B/pTfWyYSB5mkXJ95iDfKSFmns+gRYc9xKrNDLIOLibu75baIIy05PRLpPqBASdRdooGHkPiulsQ
S02P0Ugq3dfr4r257SpnAaKBG28qeqiB+IGRBQLVO94lQceKrQEgSTM7Wtfmq8ET+i5l6fKBpTQO
0Oa+z3Gz8bNESSxMMHgcpD1OWtWp9cLHeyslfK7S6+lrRCW1WEDyIPLoJ9ESddvGbj8iPrW21EuX
0u9TScpJlKfdhdDRPTKy3i0IgS9mUm0mdpkHhL4l+7I/TPL9RUk+KK6MctDto5wCMsApaar3iL1c
yLgKFhdkgpEjtjPyxpDLWCmo9QOPI5nfxn498sUttTl2NV/jp9FhwZlxrO8n8oz3FB4vXUp0kJPk
aHeXvugvnn14tRzCjMxVoB5heB/dkOCQsHupCvW+Fl6BxMW8PYRgyXMCvXUgUc71YKFF1b1ftuBK
x0+jwBC7RGKnyBoEWZf1RyT4PVyAziATcNtEUXUI8Sdbt5gJfUn8uCINoNKpcWXtzFGXDxg1ecME
3QZCR7qjiTgLv0WIPpA//fgOlaNKvijlH1yYw6Q01OTP70iP+URgMPisAgPrZcgeazFNtjIRIptq
T40Co8sFt+mJPJvxHB0arcLNFr5Ln9B/ipYRKMPDS/MsyQMh1XMZG0epxhf9Q6/gWnWBgzPPouB3
Ue5fZYGufOrFkrlp6dxpRvFHpKsgZ1+3ehPSFA81h7QlV1fgv1xtv9dT9lOtKv9HPMAlDwqFJEd/
E+pbLi1ZUd59w8IlZvngYQifEm5XnPnMbMk625kv4xANv8UbnMCOMmjoBDic/MjIcBBAZCZMtkLP
hIMDnSiLvT8NhmsTOtjTTMVVb/8IVNhepUtrFn22wXDG748RhWMAKrsFaPhOiWU+HvT/KsrVcHIf
3/ypaPnjj9neJnmFnOd3i5YSUOPDWD7LNjVhrCRhFW0givQEdy3xGU02Pp6LyWkVEILSVF6UNohS
2QGXzRmx6UPKKnuqlfnVc7W1pKz0U++DjYxzVwQbNtw9TVyvQpMztCUPyqJ9NqpvOtlbi8BhpbhB
8nRA29zPZPFGVIGKS35jtTaDkByrTWrYMf2FwB29xJtrIaxRiUWC95o4ZFdDkHwYxOH27ubrrwSB
af4d8P7myyEOyVON3f+Zy2SX03bQPWVb1H4N7YMOcLb3IVUnWYTux0NZ0tVZC/j0Avaf5c+0irwd
8re1un6Mcj3SBzQLIn4AvGw8i8ImHyBeY4c9U2PpF6Nzxai3Hl6yds/cdC4gqCkSIfbQ2+Ax9S2i
Z+J0P9q+0DtJU+eHy3nRYqyRFlruw0O46/WFacQH/gDmdRIBVmR1QUoGcp5tUjHAmZ/NJzMSaxsz
G2YB1Qg0yFbqm83XvpMnTIyv4MuaREqbM4n5hXVCf1s1LKRyUqzDBGGERbolDgldMAffPLoKap9I
QzVE2X8JVl6LoLCxkWz1NP/FpYKytHJAGZE8SZmVew4USHfsg0Ar2nJwGBreuIfmy035rhXimCy3
8DQW3ekyY+6B8dJoBzhgRcZFi2Kw2hxP4cBPVsm+BvZmEmif6QdNsc7QI9RdJLg8P24RvjyUc7Gv
sYPDSsNhWm1U60Xi+xKdEw8zPYJX7IeOkm9gFO5J7sGfXQytlSdYAU3MJ8P7UF+CczBLuYvAnY81
WcrDfoc0/VHnKVftIt7glesueZX27eirU2sAb1RLHpKN+xEHkzTEIIIzlMZeeNPBW1yKLyKqZe4O
cIfbLQdPTih+YBKfE5DTq+QmkSzVEwJLcOfWUgQUSTNhzUWdgxG4Rxl3xsbffLbQLpJnebwEzm5N
xHZhTpHjcHl3D2vOVU87KKpmFS11KIVGIQtMsAj9Ydp29vBD+tLkTLoyMMB5VErgfVm1PmdgUMHT
s75DcTwdQXLrcouJEmfYcqIGFIKH/+0aqh18JHNirfDre8SGTHHlfM5WG0hsaX494cZy2IWDj1fm
m5uO6wOlu1o1gk6cblxcn+uKz6F30HETGplmOddmbue9GNwQyp6nKWfnXbtp8j1GzEAnvXS4GCSK
jJOlqRWqvcYc6CsGddOqLmahc4Nie23fcXCmbU5oO6k+0q82q7G8IX6nfxRFvn8a1oVN72jB5AKf
VoSWD65gVpCpaGBfq5K2OejGIPu45Ru0Klh9VzR59LXJNAq6GZVSvSHKkWhxeyksuJkPawTsQVrS
d+zZ5Bz1dmexJgFk3Nj+Q2iS6Sh+koAMHUNuuTgdDtzkHhD/L3M9a0loVlGpuRzsvia0zn59Pdnc
7HC6w66mrNkGmLNkil0vosD/e5nPmiMTx4UCj+VoPvMsTogkhlVFwZrCpu7B0B+zyzFrRPOGr5iI
mZRQhEJ6dwBAjC+BZZgEnNcdMGBYLb3A611WdJcJVp5SfqpMU53sHGYbCEZOVQmdl0HrdrEy51GI
tCb8zeujqQbIobtJBm7AqxxNcCnR9NuZmT3yKr2xQ31jQJ2T36vnYcQRxMwE7sq/z2NgWJS7yihS
4UKg8wtVv6zBhsJGuUWGf5/4Vwux7sB6o4KUkR0bOqAva6FPkX7Ov9m43DPSNmJS9Jnxn5OTXOFe
pKRdKsSXycgYTVT5aT1fRmqj/uCYvdSadS5GQwwIgCkWe/0+UOzWqKWG2PRhjAaFQRvjpaLas87T
03blIgV8a6/3un8YsEwHtHcFIISZscgXU1okrXksDxVzQYJqeOxC30Rkc2zkWpqGFJCFIXQZi+0g
4wVsOYMzshUrHDgMPGDdLR4jPd5oQtQHh4c/BKHxU4rrWJ3B7fllabMw79nzLBFjHXNfcIR/2+yS
2j8T+aeOD0WVKVf5wHhgdBXb054wDOowg/9DlP12QCu5ULPdDPGhwR56Wy0UJXPd2ZvI3fbXFwOq
rHr71efmkQZ2iTmi/uNPvSytEmUXFZjvYjA4y46EDWL4kijd+UBoVqVY0bWE8lMIwc3ENk+Mkatg
MUD4UCttW6IDHorW27MSd3lgFqZwk9fZqifQO4n6a2OaGVY9RvwWvbFRJjEoV8S8b0XsMM18Mp3t
EAPyE+9pTSBzP5TGtS9OWZsjTBZmXOqD1G39JzThqhs3vtJkCpFVWoqLlZ8KTMexLN4JK45prnOY
8v7MnGzifFyoDNm6buRJ6KjYD70LePuOb61hZtf3QA8k+wQH8vytf/dQQQvOjQhnXojxToAYKzdH
WZCorLgHhCJbeNWVs85GQWOBa1YNHtu4T+JvspTZgsbiezymDppXazoSy/Nt3WS4ro3SfMBNPt2R
l2MNjlNO7a5ZBeEhKliYe7tMWPC669hwhBAtQafRcgFlLsyO4Z/WEg0wvrs2CaHOBJH9fzfPDfpn
0yZaF2e8xY66SJqSyAeb+/kQb/ZL8tnAEwq4d9HJ2I6+CcpDYCCay8CWyoBaN7PEqkY6kYn3e8D/
AD2jWWeP6RzFw6NrJeIyNdysO5MWUyzHWg3w/vQobub2z2/ZvGJ7mnm3lMAJhCN2uWLZRphWUE26
Mohkoo+n61tBUOoNmrpyZ0JGL+IJeVtUr3LHozBHZ1yzqzcaWQzmCPmt5Osjlzj0mrjSdMJrhNjT
dcBbbZRpL/N3u8TTF/fy/VRzLx4GYFAslPWlI6FDQUKWh1WgpxBVvT+DR6bKzT5CtOsQvqArcL1/
FhURBRBxFlvngd9L94uEEBggFrZoj2k6wOYGDRzSpIpozwO8i4298fgfx04bj+4wLgf63Jf4KHz8
Xb4D9eDoQFVBUF9KBBSKCM3l17ZDoTS+5XcSEeR4Oq1zfv0BPEbPM6+4etVsNEKDYRg+UoW2RWfa
SlwwPJJPOkcWSqiTio803DGCBAI/VUBtWPUUCshCDPVx9Jn6p1Co4RBIJh3sKoqNJPrTXRQstpvN
jaRPQRDnjip6gTV/CbJ0e2XfO9uGNWh4swAYbJvot+5ykUWqkxONnHMUAF1EM8SPPsPEucyjdQ0e
cvba2MBbBhIM+QyKOKUhyKFlFEJT+M7d4qOurDN0dD+CoRH9VritX+umVnM7WSAk8Ck+SpKtULNj
Kq0BWs94aPsCCLtBCeM/lQeEfj+PKh6k8v24INRkm4i8T4M8tGQSHr4L0ST6+6fy1L0wXy2rj/CL
CsRe0anKMdgTgrDHTDJ0m7CBe/Lgd1pFjM71eFXBzWKrNA18XSSK93QD7t14bh67OeCuEkJfE39b
x01jL7XFhpy+XOjTKNX01gZqKHuEdQCPyZGzAOD3gYVEKbwtczTbjoNORJeYseSxOKugKrDf97X6
fm+wXBxO+MpUNVCq8vOBGufGWHZ34DyJ2wOq6MQVF2u6jnRVmevX5VqcOi7Ba2NnW6j2CjcihWzX
/D9aHKd7B3IDdT+20wlSMe1sq8hmOM7Ba74v8f2C2sSHBv94WBPJKPc4penAQfQSvFhbR0Wij9HL
Ms9wEWxWzugurJUJuEn0TyfK6Uxp4Xz92gFQVBml3TPSbeOrwNRwduigFZkJQQwJ8dX3E7Ex39eB
kvVpg4k3aXZmE4w/7A/dyc5GuBjL/K+k/eoc7mRkdbyDgHLLYmC19gTjhFYaijAr2+3Z/I9qoJdL
xiNHFXjE91a1EP8gSQEq7zEJKpyMoFOYK3gsXtPfDOx/es4sw4fyRXhLGYvSi7Qy9qflpCkCLZFL
/cFZYDVcLN2PsYzbifOxgNEur9MBDX4+yl0JZa/d2E4wFHyKP1qfRMgjtRK/2xPIVCSDvy7ceu2q
4oZ+V/mMS7B+frjtFTEmd8x+WNf7UQDHZmX16WskNaYrNn4WRKeuuNlQftp541FPAAzGGbEPj4PF
yKPi6bytBVQv/HVUDg1lgvd+FTxECzbfr9EmJR6h2OEtLnJmpRyYqw9yBw2ah/Iy1mou8tqGU1rV
JmaSu8NtmT7RKcu+BZQRYuzsOQGCii54QLTTZG70sXZ45a8jlKAUQ4Sufa9QQygNPwCweMpoGUds
yYUNRfKrtVLhJLANNahNsUs/42JidZtG8axBfDJVywaBigcRiQ7mE+SyStSVStKi+GABtMMvONge
NNmRHzMTqrL+UT77jrnjVolLOrdCLSDcw1ypet1U9vWY6mXiyuC4M8hhjMz90E+mwxRy39o5+wcr
rfYUEZMJp8XP4FGBAe3PsYMSZ5kUPsX7+nwjte1xPCPcx2eweKbNuaPZecOH3W/o8QgkxGVMRAFP
qPaJZvhwtDGmD6dPGnpeA6SPAl6VZTkKroimM1le7toaVDmvB0wOIyhdHZ3qloRDBQeRdeO9ut23
NF09COzVT/lNlgG2LK3NWRS7lj6vxareMcFiIvscSqcI/nTMrfz1EzbMIvyQK28OwGrTbK3+6+dF
HaTrCv6CsRsvw0ELfq+4WLiMgfDLp+qcpP3wlvC+SuZby4pBSQrZJyQHAJMssMP+DGLTmvxu04ED
t5m9Q9TZhlQgjO8D4cBn/kXR+5UE/AJjBQo5XJY8+rnvsHzf3P6XinplbMUaM5hLVmefhHE2PpWp
r5Tiq/qbOFu4BpTvy+ngtM4A4pnypLzFyO3sfBbCtADwf9FmDUZ33/fF1xINrYou5ZvZu4pYf6w/
/xswkROyTJ9N3K8hSr7iSjJjA8+19Mmw8OQA3Aq2MU4LAl1Ui/8pXBuhYpXhEdNCwq98pvAuBdmT
W08stJFxSl3+rH1EXjhD1E4SY5EMhc1DXHVsEqXF2jHHktVmpSwyjVMD+jRHXYwanbxUH2VUt0aM
2V1tF0Qw6t3fZkFXZA9oPTVGbOMOZcS2kjElaTMIWUbX6xDH61X8ur+8P1PaI826vYEM4G7xJAXS
PNJ5XMsIGvg48Qq2msfHt4RmmjAzBVmZlbXSP5xT7y2CXTGiu1MXzHxOFMD/vqxv+yGux7YPw7sT
HsCtVNRO3PfXhNH+0QEdgvsfm7c4jPQ3j9aSCwun24LzKSfQjAWAWFZ4j5FjhW2YrDqn83L5JYAZ
B09RHfdRTqRBA7tbk4a0r33URyjL+IWuBRCHTklPRhwSBJJE+fSGnSXhRGYHD9efqXrlnwruwdIX
MjlmohTI4n3mq3Zl/CToB6kc5thQJHKSeZA5TKvTgCIQBid9kSZleGjy0cUDxZKKO11b3sdX7ISm
RuaGq8WscyIwBAbthVool7njFqnEYU27J52RfnNG9WGH58CKLKyNZME1z7uKi/VDNPBTxDVj+d3K
GiOWNOfBZgDWH9LwrqzJjC6okvzSTp+/z2l+55UA3nQuLm8I/zsR5phMItwBpKL4XiHlVSmjL3dn
KmDNkuKuKa5qLzT6QOcaIAoZEm1htjyFKdVARfyv8X2glbo9oFC1i7QCxEmH4KIChnI63ww4EMyK
9UuWbxmJA6PJnUjRj2yv4X/8Wv/s4YxdmRRd4htoeL1GXukXyXsYWm9IlXG9t3yFgEa61T4ZGHa0
i1wiUEos5+DLJUKPatoTH4CXMVf/0ORjpduJqJpKKNmd+DmoK/T6mKy8D6cMTvfBT+XBPmWbh4q4
ewnCa99VbBe92thFtTCVaN32giH3F6BRK8DOAZ1KkccLmCzwELIV6VyeLO4OvN3RZJcViR2wXMd3
L2WE84WbqMl3846xnVISLBaEVaLth4a3kXKqIkfq06FtqO3gmNwbLTELBcza1x4BXI61U9qXhyI+
KdwjnWJgONO00Ciea0W2V3LOVsFhcf8bGgSFkYcMyNOf+aF7IfscLYJ33Qj2fM2MBKF9IM4y+Z21
KFWaxfT4YcFBOGMoaP032rOVa3vMmRvEFwqdKZWyCyYDTM+3ro/nzgqleBAbiyvak0IpYOKJ/VyK
lm9Jkv98SVyXb8VWQCBIdctX+cvL7DSupbhlyEFiErm3UvXLQe2UKvwr1ruKyDv8voQfXETOF6DX
fQFFHhKgi2CAU0rJT7AO8uEU3QFmD4eeg+AEvcZ8UP97lyudZKK62IKFMXwVJK4ZSLyF2LwWVBce
qDnYF2CftDaJ6d0BdyIdTIbC3QisATbLrFw9KrT4CnXtGMD7Vu3+roUMib/IVsEkOqfvwwmonxvW
gDcYzzsT6By98rY98s3MNj06ng7TRIic+tPj+zq9QHCxQKJk2VI1EjpYZm2bnqqAoZdjpy07heK8
4dnrlbN9K0bl4O9MIG0d7ltkG7ifRfUxo5kLjABbOm8/rV1Ez5GKhotFJTweR+vC/qr9ArQ26MIE
gRllih0ZmM1XZqWHr+6tAiWfLeSV6yeJQE6fbWas0c89B8DgTfZtfIdyp4M+BziTSTbtt3guzPgZ
alXe1DmXTKFj2TQu06ZPVSo+aIOYlfJK03prB85jNQ+rPHpuEvR8YPYNcXvNnE/hByeUExlOx+M1
NtIM5nUI0dUdL71udAgOjv6RLw7UckiX2pfhb4VpP7iGNTY6iizU07dG4tXuwibyLo67X8MSoHD1
qJXKOUEFb3FscoPemeyLChvsVxEAJeUAYUCf2yZiDFGNrTMDwBZDnQiFwAuWCgob7LtrEoeO2nm/
zExZXlxRpXxvPGLRijMCJBUqGvMBMcpjSBP3RuRO4fvI/x5LzI+Xwil0z21hff23LKisAzHnbXfR
8t2Wyrl23SuLQucQlWemGhzwnKmvqwmPu5tAar82zKUd8p2BwYJa1aebcB0Pa/rTx/ijCv/NaXbI
Edp5LZ8DhAtL20V6F2q6DgQifPEQU0a7SCg798kDZB8z2vm/12TBs8z6geaMJkmYDjwwWgbG63sR
ZBsiDe3T9bbAs8EQijpIB7sGonjwiPmIEgT3SkV3//Pa+8MofXEPcV067cQ04WNMv/V+WH254VYw
foIYlEKo1QD03AdMRhn9cpmQWlZ/JudWYPPfZQTeTrXn6XaVM4M4HTy2QscRWCtYZQ6e4wIG1SSE
kG5UyoVYjHeDa8ie/4DyYG0UAoxteAunzHyEovPnIEyMAbvfVeN6uxkhvOIrOLT/RS3hIW9Us78B
Fxie4RKaoi5cijQfIyNoSLfGufmQmfMvXrY8UDofJK7ONS7ONjEHeGLhtwV9Kkr9Vr2Ji5Oo1PxK
ME+u15RWfP3zQANFBzQhHeG+hFHgogNefjwMY2DmHfGPJ6VXUvHXJy2T//roYwKHiP1cHlalX9WO
xJzGplqFUm4Z1AvM4TvJbXy/0uDyoPjghw+b35LEXW3QV+m/B3LixKutRSP1WieZfyz4DQ9whKeQ
oXrDesWN4qJqX/YVY4EFlnY0yz/zIENOXCxXSllcMN4UhtdDc5FB+fumaPioADEP3iW8aYWmbdkN
cT4GiYuFxR2+2mMOU1LbTymf21WSP4+UeyOyJOMjNRmQKxlEDSkEoLQtKM6zb/mPUz53GdpF81Pi
cDe/6fCvjNiEat70faQlBIdWj8pZafEM422eMmPLSEFHl+p2DHHR1pdpS/0ONBH9HN5y/CqsudPd
if08ZpQfbeZG2/OpXXNfMP2w1P4N2cbCAWiNaRjtG6OKti2TdMxZMoOBzxiooUG7M21g7nIQz18M
TZ3w/bn7gFB1jrnSxzveOhSCUeBPg2OHSnD+WD6mIZO8164+BB+RLVVS5B6Fvdr8n0V9CTOEFYKB
XO82aDA87xgkxhP2B/AN2kbtaTMZVD67OIEn1fCQfhcnqdSrMMpXkdCilc32Sf7tMcxD5EaFeo7D
s5J40Ej+67rrM6DEb+PuoLN42VZ9LJcIIppQOEuwPrTGnjQir2fAXf7CSxUb4JKJBK2vmXhfglOW
rXKpbQZ/v+xOEhX1UZa/hSYk9x+d2M7ffha+vUmmBHxk+o1D+KcgLetraYZf2ibNUpi4bP92u0Yz
uKCUSPNjb0hnkt73P0s5ujAbGsTBJLmBdpb+LDawPqykUY9v4pyszU8kcGBqqbd//RrAgucWi6zX
Y0o30V2Ia3XU7c9s7+FZT5U0xf/d2m0z3wBKmIinVfy9TfhkV2cMrejWZF6O79EnMqeS1rDE7UQJ
qPSpJBo/6TAzMf+6vgg7ZXGkc+gzobRE2RbylPrr3ILWQ0bWJlHXGtY46FUgFkFQ6GMmKR9EMoJG
pREMVjxIuU2qdYXAwuIr3XzQtocTStOHpp7Wjb8R3Ej+7xd0yuWBk1zK+0aZei37Pfut21tMV194
cm1qAgLGtibi5FHZdGaK8ztPoGp8/L21iTz+GYyHm2Qf5CWwnArEOSoN5BkimTFMhvez1FyEvVN3
Q2sDnFwVMgZyAPDLGC9EaLJI0EBxLW2Zn68UjfK/v50eMHiAfN8F0YrQYXlG+pP4kjZhasr2s5hP
fWw7+7UHt1PJ1l/SuW4HSbYkNBbVyqgVxQXn1XRVVCiiWKuak7uReHGMmLGrsyU4+6/C9e/eKnDO
ZHOUW5v3C7tWOrX4quB7ZlvAG+//rJOmu1D8vhl0CETI43RTTD4kubOxTzHd3jvmPVRBZ1bi2332
YFXl1/rKzwlt3O2DsT+OUP4NjhxvWruC8NiBi7kZLKGuNPsMG5ljmMurM1tm0k80fqpwzEVm0Fjc
/HnK9BL+Y1I8jvi6pjDEmB7V4Un7XHPLiyz6V/9V7kVcw8VKIoBa6FdJ1jLCU6OLo1kfZ+I8Knng
Wiqr214MWg/a8GbwoMWiCbh1PqbvlW3xzz1foQiB3WQ/YAjmJwk7VJDv7mXEQ+FVDvOYu9LDE6U2
nf7T3aHnV04e+3kD+v6RUxqUGDIZJBmjQgPswbSLFjA0xhfopeJjxp6ADT2ncfk+LSBAshLI9CMW
4TkbmiErPq80uNywIKgi1lfRDgHOIi6YUjBqJ65reYnEXmdthclynk5fk0Lr6IpURKB5w1Tgd9l4
PFe4/hBrzbslP7zdPYQbWHpmkqBCQD9CRK58OYTFrZ2ckYwpqqsZ2UPOEiwdcVyu2WFcdkofDGDt
ehWO0eWlfePHZiBCQljgJHwbEnuvp3glWuf/2gJjniKs1Katc0jLSIzrXwciLO0shxbbsGbU6s9A
1Oh9CGhztOorsKgeFYC9dHFuLOM2zJKYD9fCVzadNhEOK8PF8RQ/1p/dxyPq8+ktnyKDU107j8Lg
xRiQKoe+tKgjpYoQOWDQ3yXRIkN7ByNRMvUXnwLqzj/2+4I+QSkgNxESjOZmgX9OKgepqGJM31iS
yKuCDUZVfv9l8/aycKpZv5RDU5z4z7t1lptrmm+yM9vXy5BrYAagoqq6x9UCIcXZ1u4i9Bg2A1Ei
NbMJ4HY+2n5fjc2eJPfrm1R55ITGcrRg3YdfREOq5gvWYfGRT0bE09uOFMJ3pwE5sWw5erA7bFRZ
HGzSTL9SI4s6YO8GH6t5myfE3bWebeMrsuODk+vQC6cuvgHiHLVIbvSAuMDRLZJkOT4mO2tJ+jhd
MagcqSBqME6oO0/XzyoD9sS2huEIhm20iBWQaCu7kht3GN9KwpZMQM8bnorgpoUZw3AVX5mmh8L1
GQYJqGsPCP84iPzFfmhn82C4b2N7iW0DmAelzKL073CG70SKKWVeGu1bmu0Zbo2GBbBU9BltIEaI
4vinY6gkgmc5LWr8tPJ4mezHXVfSJVlhgNrJQ07mpNR8OQs89jI41XoWOWzs0UyPxxre4VrbMW9i
TJvM9bx75Q43Y9Sn9iejtwxkmX8fjBlS36d17sSL9hjsrW9+4r5LN0q1WaSmFeI/bR7HCeRuoZKV
wJH5Ax/byTs+BdGaO2GxUVcayfU1HbCEVZLVbrnPk76ZSaq1/kUTgO1SHzhUZVh3Dop37BbuZRt2
TYYbJYA+p9cEx5LrRUKJYSwBKjlcpmrOMWIndMdiCTksPIwYhRVIn12hS1FVEMGb48p9q/WnL35N
8CA5f9BT4NhrzeA3/LbEWRJyTD4gTN52woWrjH04p8C4hRyF19aCwO0fX7U9yRpRRa6dl4K74DSu
qwy8di9qiZHNAUV7XKGWdzhBbj/bx2wzGscUUEUmpPs2b9dQB+s6ivfgn/TvVltadVOtwyLJGdGs
vI+IcGhHQdExUV6ZPFcp7FnxrIaBJhAgvPoIRKC7jYZOgvFkxPy7IyTaE0Wuau4aY1x4IJbQjZ6M
jIPRU//hQz6r68mY3qP3DtbtdtTijKhAg0uC4kvsiD52Pjpp/+aFB5CmXzCH/nYG1WcC+5A9WbZ1
QrIYLYH+HG5dGX8tt74tCwIbktuX2JeaS5Plcjxj2jm4ra1yUGPbygiKAmSV79FmTuOdFq6pexTD
J8oPyaA4pvTdqzzB3jXxJWibSMs1MZsQxmDPq4R/tBe5jOhfgRQBSXOvzksSh7LCoUPnkcRTUMJw
xh6VT4jtStxqhgH/7H9D7xKbsKLjWvSxbLrnU4AsW5uzrBTGOKg14aWiPiJyi7SRu3YbeolkN82O
3bwIWuUaWnbVjCdxYkqhe4yaqo7NT/DVoGtZAwGYlGjA4ne0PKww2dF1tLUPmgzYcRxFgVZ84Oqr
uLXY676M5wobVMvzp/7e9A3vOscPOrqw4eCRmaEM5lswzzUrJ5gF+6PO+DqeBdceBlgn85kPUaQo
vAt5zSuQTVJGL1iZLuGZHE51Gs/IPA7DSNdQcHtSbkGEByCgxB40Fb2XCCoZt6dRs5nx+qsxueki
z+K4YNojM+TEum5SzSODax4E4Jj355j6ERbN78KIARaprPulOFjJ2xT9TXlg4P/8PYANnS5NdSEV
gVy2GSadqfepTV+3elY/HOwPZx/iWC8t94mVlUqDiS+WZZjk9pDqRbAQ+PmZM+0Zrm3N2/g9mD8E
XQbHF9f+o0/uOpM113BecGFTatE2X5xJjsd/Jtm6OPh7N/JWCadbfiVGvfKlYWP4EqT09kLmY2SU
u3lKZ1cdT32QNNaXbgAX9QxYqL6aL8x2Rlt6/kdI9iblST33FqpCLx1tS1kHlvF91LjN+NVR+OoZ
5gD+7P11t4h873C6fur4NWIRCIE/zZCAKzmisusUrX+RwzKID7NFqSB2s37wom0vb1CtU7ynJAjL
GeZ3FpNpfsVTxOsD11v+k625DFnIUjyBekR14mrqDhuq5slMMXxkJKn1LnhsUXvRnx+eZLQB4tBX
mr8+olvaOyT8m4ZN1B5YV+tNUR4xD8xN21M/cBvPePRL+Tw7Y20J8Cq1gYxP37tel/n7fHvevbn3
DxXbGqX+ltfZg0prYlIYpOqtzaM5sQ5RKAIUC5xQqbOugceiy3oLOePyzvx2EelZ9BU5beMEpPSx
+rWCzKJqIcGk5b6eNjv30lY55eEGnv5t0TCgk2XnPDj/zi3gYAEyKyoCxcnNkE6UASnjTpz4NsOt
2Jvwfrma74bD96A/p9sSFaFo0w3nPVEluJbkKSmMLeJVKJrDnE7yu4tWiw8e50EhxPB8qHt8ICYT
43B0Q7BFJIpmsT3PY7SrcwL3pSDEPfWsqmxe+AMSE/fGSUaGtSGHmBMchiVZPEnWoZ7zTHSZoS9T
4gJnwyGRHUhGd68PKtl2ArFA2MrW41WSdQRmi1Ph/IzUtdPHmXetOolKK9uAfCS7lHyQXGHaVxCc
+E+avx24klEnIAmLYfLspUg4iWu4BZ2sf3Hg7TLmWzOYdEfpSWHRewMOE4Ow3NM2oX+ifqW5d6YY
k+SPNpaUNCoz2tBxdch9ATb84ZbzNobnyI8RULqkuooGTRLVagnfNIEjsVULu+uRzn3wNBxD5XOs
HKaA64y+6ISUTx1cCjvevlULJm2k0QB8rdIZv+sni8A5oGl0eC2eUoYOqrbbfcw4zjTNK1LetGqJ
TyyrrlZnZD/5DnSlULiYMyjOxY8zrqMRth9mvax2Qg2Qo3r9dQFa4q2c+b9R988kYjiHHIUYGNcQ
CDhloQfzMdFbPMwDmSnqy1/xe6fiSKBwq4LPL9lAboPjlgSKOxWb59zNh32NbmpOFRntoohwIvmm
9nlXv2zkUdyjyWIJ91iTKqlmRfYBC/bqZvlw7eJHU67qCLP9dYCv79o4JoiTUC0Fg+MgSY0gLReF
74Ot0Mh2NeanPbWqmm1ui+qlR4NCQUShFDieeTAc1DdG5svn6BP8QlowlhoiNDjNa7LmFO8CnRWs
1woIzIdE2QbVr/xrzULqOaWd8PZeF6VM3dyNH/fz7YmA+RDi6sKeHWF+OWnVdaho3C8zXz08zYGs
qwYWpzenRgHY0kENC5zgsgmwpOwA0C67y4st17Rji1K68fwgk5XJenWXJ+Km1zIIW1cN3APTtbJN
VRHSq62J7vHcJdClWXcmpA7FWdHIW6RcoxRVpwHpK2xfedvBx5KcrIwz3Oqtssoh7nrNyV41p9tS
h8b17Zw7LnAmoWOAm6J7emcaALhDsUgX3KnVouf5tuq6hFvSaFJVk3IsPzH00mGYLuvNe9+nUje1
LVHeSZ2ZgEn8YpASxRJCrPbR0ucUIgIjKs+ndHIc/r62Krg0Ry+K26HPybf4wx6cQ690FLowOC8S
K7wnfL5nYZ6ivIhBUI8WoC4Tfwb5n6TupgmDArOopmLJo42mPiwSh1qtpUWLBFa2FUsIIZM4Tm75
buS3pBuXQhStY07k43AOjQ6H3SOWo1Qb04K/vTNeaFtnrxcLMHFCnRtd5jSOYhijYGssLefUq0Om
pnJsyN4oBxm8KaacA8m33gtDS8V8Zg696unDzZfjhTQMqtIcfD/KxKVAnp/1TUDMthm2p7xUBIym
qnQ9Ie3Bb0Q8VYrY4mbBSBiFTq9B3VXXTR8G89eGOa3vq8BK+ZceRuugHr8Cnv2AK/6g+8m/5Lvy
/is6zTsU37g44VZlwQAhPeSVZs5BHWO/4vJAS9QK3WIPdoMqbH3o6Z5zX7Rqkjj3bmTk1zJ3NVJ7
36w1lS/GMV9GXs3+GmnBuwL7cULERXVt9gFEo9SxdMtHH+7ShL/3623kq90XJhJoavOrGFl1sy02
78KxXzZHB+LLpvaQvTqvb2iNFViiwP+rDuWAF3k+pYFbPx4uwW4X76P4xFB/ZJCkdULKXu4bUBuN
Z6NsW4Xlg7DmvyZDqMMBQ4e31NNLAoY7Aw39EV/MBW3VhFLCDvChxEQhjX1gIm6kcsv1Kx1W12BW
u6EMnVW32PfN6YdCu8k205YuBO4hvipXMAdgOARhGff/WBTRUUqZA76hBp/FAccqqekg3mPihdi4
VHhB4mGK/UmXVoZWjHdc5D9/Fae17DCY3NBT8LaXvqWYLOrp/jbWfcpG/rzNj3rAfZ9B/bUV9vgz
1rDl28xsV0pHHJif0SX/xtcR9WezkC99ZWFh4wJvMmXGapPwen8JKovOf1VESk4ryNNthaepSFBE
VmEMr6y6J5N8WN1EKghfVEVXkIPUypfOf23teLHt4oaDoz1McV70dvnLbkvDPpKejg1t+eon7L5S
dlIiNPTTVsHFjCZv8EC0cQMBvEIB65gKz9T5Q4huseuQOEryyRACHSQj6cjz641IsSOFnlbi4iJR
bwybUO+ag/ZntJNfUbefg91HsHIqfzZT9VwQAv1SrewDQjWAdTMdGTSLC/lkNJ5/qlxtSEUnBp8I
ihDEORmuLo1z+9288yp/FfXBiKwppEgtO90JvKa50i8w6w23II+K3mKAJ0sE8IE4+FIXcb0xxbNL
xvfW7HgdITJzYlIMLVzVvjwMuN5TfSKpw+AwXsl5P4ieLo2+HGsz2EvvgSsM+4Jd1pNqVfrW7w8B
AnlTiu0zmLH8e+ZepPjK2wBK7wdPduno1VGheTdevAqcMtDFXIABN++y7CjWAWYRkCF+HkqyM6DK
2JWKcHfuG4DqQ5gutWiOG3eyDcHpUFg5d2ISaebiM011fgCyB9xfMiQyUdUZfZ+KxRkdw4260Jz5
8rJ6OFUbctrxx9i3+ql5fnrUfcsxsIVmt0kcA53CBDWJNeLBSqJhg9z0C2FLr137aF1NxaAAULLs
nytB3pYitekcgG/m8dsk0z+9bufYDWb4zatPc/Y5b7sxT+kITV227x1iInHujSY50Gv9lrEGWvqY
fKIfkr2HwkRS5PO1u+bWfowb9atANRht/NI4VM5N85xefgW05H0cZBjsw4TssuRZWr0Yzsrsk9WM
xe2L110H3xPiBixUVc7lutFkMXpDEJ7xz7XIm3beanW8tkLftdhg0nx6ceGlcw8FkkYVqYr2kyfE
AVwMqXbxNeLsKldYfD05PWwY1ODwsm2sP40I+MuDCL6ka0Q3Z6fZJpfgvSfYsUEob+xfKCxf3E9F
XtOCLFATZG3iWNul7FcbLM1zVeU0py8JQB7CGc+Dkf13iRqcMlxSsaXCUKA8GnhNaJ2bY/+XD6wR
jdzcC4s4KkD2W7IqGS3huicTjXSBlEAfpc8JTeEmb6tufzw6SEmeRS+xIDpgM/nm2TcuUVQ6y0MG
/fqg8cPJwo+mIh5erdk2W9DQJ3/W7o2d+BmZolm6oa4tjPbbH0eRNJjIzxlcYUQVdzwTV4dkuzV3
Iq+AYa+ff3g+GbkyFDqJ3dbbB8HRHuJ/c9QVkg290dGjzIP96wxYSE/7010fs+gf9mL3mGXv1qOP
EiEp5bEKrV3UCG/mxR5nh+kXLwAK1ID57uc96MJohyhKzzQ9kGmJBaSE5Bc7GE/miQnqZIAzC2vB
VIqcgOgeMpTyB1yhSZIrQ7WMxCeBHysiQTrvgGok20y5Gj4HZo5hiO86mEALIjFHHcSkHnxB73lz
z/k5zbr1UQ8jfPrwvEzM7XOlkikOqt6e0Jo8zA9+Hb3guRmwhJUMapBJHWbo36BCdSHQDQ0FEY4d
mXZXLh6REG1Y86uZHVW6/MYfvRmzJE0YNEa9y9gbMSmCBqRaj8Jh2l+q83JjzVqLTfsWtif6eA/I
f8nj3BYgDqbcQwwgnp5G+wDD2S+Ms8Yk3voTJEADUrzygxgYDxHqFX3QrlWYrUQSgIPtGd238GQb
caU3hSCCObbVKL8OxBEZ0ooysUjczzBcl0sFSPkLisENAikqUCtjjJfxhg/hhuxhn3zktrvf9z4+
jOa2rBxrPWzvGOSQbQpfjT0iio2NQiM62+V9OGozD5FqBHaK+ZmpgmLJBS7++R4SFKcidvMUBVN9
u4fwjroMEG21Seew9TlY+EV1R12Imb47Az6Qk/iReryt/Ao2wXR5suzAZei7hPLhxrZ4ZuqWxhD3
8SSSHwvZ0tF78eVa+MxrSHs9kDF1/4yyxEwJWAM4YQ6prEgs481glaUcvMKj5C3AvaWkfBexI8z7
TX+pPFlyYkmdegcQ1a84AzDoNfBFztwcmVdBmKbo2kxwK4LABK20ZzwRZlf41Xa6Q0v1a+4VJpU4
8UrOiLXdpQkC5o1IcD4svIRMTu18/jxH9AoU5xJtJa2ihNQaTxvjvFJUvYmowcPXxBH0JpFXGVxy
7/9MJjvFk9LLc53EdVWigTlNF1mfLSfv+p+dLjXOgy+1BYOOWAJP5FsdjW6AoIkkEz7UtsPLQYTV
jftCFO+Htd7G7iRI9snGaSeoBZfYr10D9PKSfbHgemiVWa639mVOmsHcVo7DKR+i4QJO+VKrn8VY
e0AMg9iRHyEdzVXbj6aj0tEJI+d0Ne6iexseKRnI6uoq/bTMHPkJFKujBT0KXQdmvsxR26j4ZzvJ
BfbeFanFlPwabZxH2Cpb/HLtqn2VQI66KOkE1II1mAfloy6zrES6JaNFVvpqFgeiTQOHwBC8TGcj
iY+CNkZjgD/ush+VE2G2yLWvlAxRsWE/00cIAUep5nQhsKBHlY134pmg5X7NV2jCI+p82CpFnOgd
/8/2xLNAisrE85+TMYLjBmKoi3KHV+HfrZ624sPh5spLCFEKFOvHybuZ6fLTc6ejdScMcK2t2h7Q
t+1TyS05KlXo1Y2j1Y/7yaQT669H0sd2biTMRt1xRlrBMENoMMDyskrArtXTqtcXHQ65ddFLWpba
vLUngUwYBN9ocu5kNHEzBDNlUqMXDGKaXWwf+bd3lMY41OI949HMWwI7SUdEaD2J4t3pI4dxBsq2
pxDDcUjr+7rfvnHdqnpSe5F0p/yuASS3tUarW/Ws8isyJdGCDqCAj7zO6FrvUio1p2DdUoNO3/MS
SZ6hMiCdkBoV4EOVv0RU6u7txYDkPLT6IhxFp6yUjO9VbnVCiUAvNXkHpIdHnnWCsifcmdqf5I1o
bQ2UpbdGkWQGdI4ptwuZ8HthnZmMLtBvKLJYu44BGBwBbiNAVnevdb3fs7x1gdA/JkbBXXiNn4gY
jpJdnpQyG6Km3IXSBE9wg8+Uw0ClBGMIOTEG+2K+7hyiP5GnI1rkhSO0PZZswNenAfS+Sm25b5EQ
MwcxsvWpXtjepcSKUM2INLkw/X/eel/pNdSwZGFtOcx7YpPfOmVgl47BjR7DzSxFPook+MdFOojh
hJIGCAXtnZGOoKcirjYy+NSrw2B42KOaCh/6JzsI7MH8DaJCf87WYj0Ya1AKyMR9peEHA8P29OzW
MDKVnsnSARUN5UnbqT8G4AZT+QrIfn3Qt257DtNa+SmWITLYkxaRPjaKhN+ZNmQdR4K7O7eMDg4R
oPu2zfmq8YdzGj1HGDPb48ub2ylvOdE9jq+Kor5b26MhSQCDRpNbDgjPx8OeDk/E+3PaJ7QWPvtv
XL9FgfkaGERvZfGd4gaUXo/infF9cBNvpAKsPR3OnPh+LjO6mw/YjzQhDZpPbPk/kppn9ddGfyOM
JflR5io3Mp1XfcxBTFPrmIHCoak71LPQ/9mc559EBK5LEad1dcCBceEw2615w9tKBcycQnyLEi7e
CvQfrZ5f21IxmofwoOLDWKiWq1iNlzb/72tiJhJ786pNqm1//WYPmd/eGM1S6a4hcIB2r3FMmTz2
xiWrQRyUa/TqpzON8yu1Z0uRXlAFhnBSh+l3Lf8Snq1opWeaQdwq6r3cAsobI3rpTyTHg0GVgdAX
BwPewECIlK/e/FPNg1740ArYk4fpAKsnOXN/zbt9f4KC8UmDivvXUvHaItSAxsROuO3SE33ZMub/
BbpqpHtIGZgyJHJMwjrs8w0/UqxeQpYY5rmE7kPt1U+dHzO/oEtG20FwOn1Ei8enZdOYzGCKLRsi
O+qmEsnY5AcnJ2g3VXKduux41Mzsj8HfWaz2Nd8NaiYoEzTv/4uj3fej3tiztQcVsn6YZZNa/8Fd
Up4ANCDD/iksX17X4kn9cGyg1oB3P38sCzxe51JQ7JOH8N7kO5EWJUBzay6VdYQvvlHDD3VbFRxU
k3zsRl8I+PE5Z+UgiRYS6POH72UMAQxGOTBiqHqhtmL1hc19WJ66QA86v+1zP2KClAvye+hku8kl
49lv8pgsnU/xt9vYCKMTjbuw7TV/BWqhmjODbJ3ilblmj6mM2RsBWnSYX+IQyEP1baBV5AbwJxBK
lxGkBQaBDsNssUvXVd8POQdbIWtidG9JOVwXdvVZqbcGiB/vE+d3uy1Zp6KV0jq61NBia1jK1XdO
dZ+bYdiFNOk0hdCYfw+049D1ZU5rOgRE2AOxzELcm/uH3Ktftxlo5KFFX8tnyAcy9W07AWr8hs8U
vCbQR1LnXNQb3ABkn98Ncdl6ZxyRMkqkeJG74Ue33OLCitw9QP1/MKslckx6XN+8KGmrYkj7M13M
NEQgwF0ONSlnz4+UhTCdjYbV8a33F3kVvD14m1k9WeDvhitL5p4Bhq3Zcw80O7OoAu250cIcQFbr
oQGq9Mhoe6zV+4TTbFa+3ONVlOv9JQr5ShOt581ENtowBh4h4TyHv/0vOelmMZgoaotkbn3XqTWb
iG9CYees7g30a06PKGKUT8SLDIf9iqfCgne5WDm9YWQPQylmGMWEMk92FaNfq/jUQ2GGs5xTqa9n
RaAoz7V++JCOdCxoiLvQCN0DgIEAvpCBmOnd+U+Ipxyk8+B2YAs69KcOYZOSKS8kKUb1HCrjpSXs
tYGB4fad+sGGgQv12wVl/GjpEK2rpS6yiK6sHV+e5RiF2x6RxCu9wxb4FDofQ7TOTyj134iTaJBj
UxzQ8KmhZtd/0vYbPny5dVvTunuOqkqkpJ9d2G69W3LeGNAk3LF5gUC7U2UF7ta0re7s5RtqEf8v
SxdkTRdh2xmQIb5MsS8ZzZxDwjHaI4iuFa28JIjCo/VyRrf3KwJn6OJtLJZYcX32mDrEub7CuvaP
N2reXAY9qhJ3JcfYvaW9vBgosYLBmk+D+z6JWmc2qkDRve/NbTCjthTJFELaHb67lhLkSytdUUYZ
1g8YMExecShMESllGfNcuxEdrqHKfFNBI+clyzPtaSQYwL9d/ZB3gf+UfACfKWDNj/a63vXMpZZs
RAkZwjPh8QqiySEr3/uJlgSHe/GgB0n3PXwQHLMWsZ4hfPj1LI0RnvUPtTdHwKJXHMV2vdFT4CcY
LAgayilfISY1tehZBojW6yxMiJulNrs/MtCwJCmMr1RsPRLprF9JKiE7Zedde7V7uT0MJm89BYC+
X/Mc5SbO1VjMkvU/x8pK/y5VhvxbkO9/RgWPjy8RFlZg3wgj03lmFRnin/oDPgDsmowV6RsqfplK
sOyT1jpuJlXHWlmbIW4hvZbzWMGpgJmJZZAFkD3ZUvWPTIXxhWVWrDjGnCT8XkJ++Q+EVOFmpu04
agKavD1N6kucfYTdvKChBNfn3p25TTJT0/llZoN/5NPKixiuHXNXS4k0Mvbq1BB0OY4c8jTArOvG
MFCP/Yp/vycj7c3e0n7+zqOxb5RKawoE9KzP0oYL87CfE//fs/yYTEjADT+GvVA4F09EbNvi5zBt
RycdLRXDhrU5tuEQxyOxAtNiD+VtFElzlmllT3QfnfzRQPo+LIw+FKb78lYxU9jbmr3cykri1B2M
vRena/Z7q8zo5aVsGhck0bqjztBxco0v/sFSI6weYn2mP6U4uJZgqYd+CAStiFJ0A/B/Kc1+kuDe
Yr1JPpJ4HVRosYpd2nlysZRERFOPrjU/MJ2yg8IcqCo7TmRh+9BG1k9oGb9AXm3zjgvmwh0l8ioJ
Y1xk1UdDnCi1zf2RojYKkAPlW/ThI9l9eSHVGlAox89w//n3AcdwdaowMVU08YtcXUWXV17u4MYG
URDCBdFvWILFc4by0bJAKAVD8bZnL0J5RSYcMtQ09tKjhTyy3CYYzpHMKA1GmletUEEsR0syWNb4
zp8oarp/b6LP3b4M4dnwIBkXq3bapa3xMRH5/qyqJdQtopiigraWJmX6/RKZZNWVo6HlgPreU4Pb
JUq/JfBjpg8t7COlODUkoWCi8YwoPDy8nz1DlWBZfIbCW8de8ic1HaLlDPbuPO7xemfCrekwNfX2
3rvx+LKpsjNMHvYzAlp1XssRQfg7E0flncZi3ozw5L3zP60Hsih0ksoFLXefPQTdV+NvOHZYdZdb
qRsWvUV2If9bsBRhHmxK8UuqbtmQlDi/o9XG4k22PeANy2euCR30fJieYS/9Owi2NndtocscRXT2
w5KGusVio/hnBN5oMFTj+CYkii2B3D+BfilGuDAH7WlLDzI=
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:38:32 2025
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

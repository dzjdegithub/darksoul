// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:19:46 2025
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:50:19 2025
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

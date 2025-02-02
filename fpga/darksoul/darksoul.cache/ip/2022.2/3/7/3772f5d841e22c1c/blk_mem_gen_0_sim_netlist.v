// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:46:46 2025
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

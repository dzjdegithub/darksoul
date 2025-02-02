// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:27:55 2025
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

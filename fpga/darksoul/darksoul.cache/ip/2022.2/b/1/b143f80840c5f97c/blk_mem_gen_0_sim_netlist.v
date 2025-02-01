// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb  1 17:16:41 2025
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
    rstb,
    enb,
    addrb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  (* C_EN_SAFETY_CKT = "1" *) 
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
  (* C_HAS_RSTB = "1" *) 
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
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33328)
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

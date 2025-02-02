// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb  2 17:45:33 2025
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

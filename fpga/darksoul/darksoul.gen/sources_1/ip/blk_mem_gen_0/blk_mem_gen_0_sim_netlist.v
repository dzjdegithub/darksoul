// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb  1 17:14:47 2025
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
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
  (* C_EN_SAFETY_CKT = "0" *) 
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28288)
`pragma protect data_block
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
0l1LVM+cvRaw7JYcHJAVWQ==
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb  1 15:16:41 2025
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
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rstb;
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
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
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
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
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
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[11:2],1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(rstb),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30784)
`pragma protect data_block
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
OU7CXg==
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

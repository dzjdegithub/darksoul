// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb  1 16:45:58 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30800)
`pragma protect data_block
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
TSASHAXc5lcCPRNmHeA9kcTR4/k=
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

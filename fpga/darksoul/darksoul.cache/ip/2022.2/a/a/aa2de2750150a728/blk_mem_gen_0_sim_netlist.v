// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb  1 15:07:45 2025
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
3lrYzg==
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

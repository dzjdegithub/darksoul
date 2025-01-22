// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jan 20 21:57:57 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35216)
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb  1 10:07:46 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30688)
`pragma protect data_block
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
m1K1JcQupDf8DNNlAX3gl0/FZFZwWA==
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

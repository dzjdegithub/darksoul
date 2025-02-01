// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb  1 17:20:49 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35264)
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

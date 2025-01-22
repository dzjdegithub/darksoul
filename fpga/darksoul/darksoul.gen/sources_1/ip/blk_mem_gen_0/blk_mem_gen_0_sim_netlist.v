// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jan 20 21:57:57 2025
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dzj0489/Desktop/fffff/project/darksoul/fpga/darksoul/darksoul.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35184)
`pragma protect data_block
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
qMWy5mlkteu3mRJb6w+l
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

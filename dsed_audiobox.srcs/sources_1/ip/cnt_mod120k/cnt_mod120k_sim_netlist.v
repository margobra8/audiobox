// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Jan 29 18:55:35 2022
// Host        : DESKTOP-1AJ0FVF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/home/archivos_dsed_lab/dsed_audiobox/dsed_audiobox.srcs/sources_1/ip/cnt_mod120k/cnt_mod120k_sim_netlist.v
// Design      : cnt_mod120k
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cnt_mod120k,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module cnt_mod120k
   (CLK,
    CE,
    SCLR,
    UP,
    LOAD,
    L,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 load_intf DATA" *) input LOAD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) input [16:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [16:0]Q;

  wire CE;
  wire CLK;
  wire [16:0]L;
  wire LOAD;
  wire [16:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "11101010011000000" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "17" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  cnt_mod120k_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "11101010011000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "17" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module cnt_mod120k_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [16:0]L;
  output THRESH0;
  output [16:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [16:0]L;
  wire LOAD;
  wire [16:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "11101010011000000" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "17" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  cnt_mod120k_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
OMuhAFqEIDJP0xdMiWI6RjtlV4+Iejn0Ueify41Co19vXzbUpp/RgrWWmTx/n9IaxVrx2JsjdfwW
VTad5WGg3A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GYQX2mGHh7zxAw4+XH9l7QfbFrflPBxdHW+OnKQiXFp0+28ZkGWHlpF+rFs6t1H14Jbn8YD9XAJ6
kpH0/Er3X/miL4kGOQYQF/ZNuZ+keJDSTsqLqHoc6nGS8vJObzXX7H7RDUBDAb4onG+KpQHI5gYO
8HTx4haBrxIMGXHLTc8=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CVZj2XmJb5KhF7Oi/o3kx2pVB9sNhzj2nZftrtERaP5pQQsaoUJNUwYboJOMfqcAGrBzTHIa6+tH
EtFw65bRtXeQm8YIH1h1JeDvBkyy1uRmVc5JMclUUUL11ZlKKgKAaaejugb6LjRpL5uts3z2DXAt
Th1TBr8ZS+4XvKTT1g8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZIdW+sFnmQLg5LFAczPAXPe07PLb6V8ihc+tUcKPcVKc1BeSLy/IH+Fa/nL4eSdE5TtFt5DcxZF5
6AsKp0qxmQZr2bRyPVNe+tcBsprw2keIOjnbZ0J98nHiOSVvYLIvdok5/0z3eXhxNSafXY4FQfMP
52p/2pTNpsot5sHB2pj5AOagCHPA43vFdUG0kBMymKHvcsa1i0b5hHZ+Y6vIyWm85EDY/g2evmtc
b6mj9bITsP3iur5Xi7QPBHsNUgvW/72OetP0JNDX4KZEM7EYu/hTtbMxTCAbB+flltw82T74wsUx
bRgIDMceqr9n0HvofFqefU9t/LhY5OphGwLBew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sZD8C54fUjXkYBw37pXq4tpZgU2xqw3R8W6ujH/6dmGDDu5tNFdgB9xWa4z7QGBveo+Jr85HsJrP
Uiw3BD24o86KOiWJZgBhUXn4hki7cCd6HcPhleTEoIBISTRgVkHArmio0mtxCKorwFbpBdz/TsFR
7MfWkuvak6bEedhLloGhFhUVVW5xuM5lLr10MpLT00hOXcmXcGngDITtOdQmwOck88t7nE7RMnIV
QfaUd1i56Ff9xkp57BgYwJVQh7gdX+J4yE3Y1DyWxMyo8wE9FaKN5FA/NO+Yq4rG3CSKaSeUi7gp
PnibvUYxxRo7CqnF7sJzpXa55kXNd84F4WZjyQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jLAwV8S8Tbspc1wazwKotE71H2eMwGRdf7q0P1KcQaq6dTBOkhzmWS3pHK6ssM/xMtbx8PzWtfIU
2pBoU2ihe+EPqYbCkhSwd2gamf/zau/IAmCjefZjGXvQfnoZHr7ysnHyrSTkvc77FyKKpDUCT+oX
CEE+xUqJ4G3vPpmF4DK3uLEz6ysVZNEP7dQhc/Xi/98ALAM6PcXboXMitr3XMsr0ZgtTrs8zaiN7
gdzMQnl0xWdJftuxrmXgCO+HBvzTjFQk92QWsebbPUZQUQ6OxzXtnD9OQrowbKD2s/D15Xmv2S5R
KUiAL4DmXvIjrgqodVVx9bQWDc9hlVDsAinCjg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
PoD1XHBxqOntUa9A7lxe3GGU/fZFmmc95d1voC0a6ffDWdoo8p2egHpOEWgdOy8xR29Mk0b1a0me
CKyM6tPqI7P7t7KA2FnXWf0I/O5qT2ZXOKJxFAI2OVP2A5xgEQ/t53TgsXtkos0Q+5si6/SQqD7y
g+lKgRAKcCH3R4vkUE0U6TC7ZAdl6KjMRFJlIocAM1dAd2EV8xn6brXyfC5MMy1DMHqy2c2mfJdv
0/K6c+TWshxMG9N0/4ja+b1p8APKfsjjSY2uCnTAuASoRrIzU5rP4b56eR4RBBjs09XiXAIJ1j0D
T9D0temNcj2soFlmNLhPPaYhUxvSr2luJJIoSg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
bI44x8pKcN9C6eAOmhxmmdgwRmxG4Ae6g5tGDuc6H4d/soX4W9JHlCMeTa+IJJWFBJptF2sUei5I
WJdlFWTk+Cfwi0NcDWROH5Do8Xrw7D9FNznGnQdFl/3sFDmRHWgUi9rEQO/N9w+V1P9jU4kD9qMS
PaeyiI3CxV5qKn40imKjIfUmKWK7GYUVe4b4LkPU/2G5WtEg9lLbhWtpBkxjsu0X4qOwp5GE1rbW
aqqn7OVvkiTgKgZTnALglYKcsome0FRymGwWMFpc4gpGHOSeF6zybXAMsza9l9ti4I82pixneSIL
CTngnpgONJ9IFY6hNQLzzCy4UDOUucUskCn3gA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12080)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif

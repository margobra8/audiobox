// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Jan 29 18:55:18 2022
// Host        : DESKTOP-1AJ0FVF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top cnt_mod99 -prefix
//               cnt_mod99_ cnt_mod99_sim_netlist.v
// Design      : cnt_mod99
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cnt_mod99,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module cnt_mod99
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) input [6:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [6:0]Q;

  wire CE;
  wire CLK;
  wire [6:0]L;
  wire LOAD;
  wire [6:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1100011" *) 
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
  (* C_WIDTH = "7" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  cnt_mod99_c_counter_binary_v12_0_10 U0
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
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1100011" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "7" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module cnt_mod99_c_counter_binary_v12_0_10
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
  input [6:0]L;
  output THRESH0;
  output [6:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [6:0]L;
  wire LOAD;
  wire [6:0]Q;
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
  (* C_COUNT_TO = "1100011" *) 
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
  (* C_WIDTH = "7" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  cnt_mod99_c_counter_binary_v12_0_10_viv i_synth
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
YLmq0uq7s54MVXG1Uzn9mk7KQs1GS2vKAGYGbv2kBXr0yPkK10MZVZ3lOPmgHU7Skqke4dtHbOgt
15iAYIm8rl7PoWJsHIWZbDsn+qrhvoIOXgIgjYwhlg7o4YmwRq1X0mJUF3cvCLokekAnkQPwI49s
6cDTv2N+XL4vYX+7jQqIR25xuXSqgZe7eTI/uM/iAwhTDMZ5seWpx9iMqAG1O0Y99/jcy6GeI1EO
oLj+HunG2gLDLC53JCzYA+iEFuBvLpFEOEGY1koa/MnFBBnl5Hu893poQPvGbLZIn/R52Mk1pvD4
TnI2U/VGB0I1HgArv9dtpRpDzLvjZpuQ48Wh9A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
ghvN5vBUxB1o+96oQiJgIDq3+gSkbt0xLbXXHNG+GRC7fdWAnuLI757VE14RSLIjArff0mFnq+mB
tQYvwNRWj7x686Ne1Kr8xQfMNI+P1vPBUXP30NUtbh8hAWy4YPjipcwbH7Ba35EozOSwZW6usT/g
C79YrhmsF6aVsekQPZQwrpxzuADWjNI+BLfrY70LDgXpu0QfYEVhW9rVy41OX1g+Nv20V3t0tvj3
ICkvWk86uGYBZGGTGjmMIzDajN25LUYCEZY8L8vw46gEyTuyq9wR93TPdIwwcalKsGw6yDwQ6T9/
N0pkFid+0mZkpBAkjooLsui4Z7B3SMGuoR/laA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12544)
`pragma protect data_block
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
XVBRVbN/F34=
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

// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Jan 29 18:55:18 2022
// Host        : DESKTOP-1AJ0FVF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cnt_mod99_sim_netlist.v
// Design      : cnt_mod99
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cnt_mod99,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
p9rnTQ==
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

// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Jan 29 16:27:33 2022
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
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [6:0]Q;

  wire CLK;
  wire [6:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1100011" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "7" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1100011" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
  wire CLK;
  wire [6:0]L;
  wire [6:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1100011" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "7" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L(L),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
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
iUf5sb4O250ZrUHFKw2ukVODKcfZ5Zy2aVyRvtKnj6zwJfrjOuvbNXTFggj1PJC8jY4V8BBhHb6c
ILuVG1SPDi0eiUBzGLB4XUwGL5YSO9lDX5tfiTwOcVLuko4wOBBBparD9mz4vfmihPjpxk7Gg7Kh
qTOU50v9SYnsl83ZqibLaOlzGRp8oIpvCRYahWUvv+nY/xzN3U4KmmMkSAflrAL01u75/7FsZJbz
a6d8qqhblycRxhrTjA61z9o6buSDGyFJa97rZjaqh98eXWv7Y2orD9thrb4Yf2JwrELizBYycA7L
WzC33bABFcyP/2M3YSksLbaVgydlRVS5gxBJQA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
0pH5zQ6eSR4dASBEtOaPSCISKgpk0i51IoB6sgX8/S8OlUlUr37Xg+skwXEdWGch1cdkvHwJINrA
xKYsrNZnZmJPBgvO23axAcoA1PlTMr7i8O8es5tpgcDfiELHyFOqEqC+L2pWa6CezsI1R8Le6R5g
aAlElwNBy5mXPOLl9f7Dmvj3pQRfOVDP/Kdp3gHIwxE8qdG/YZuTzAHlhz0hGfmFJ2UpOB38GFo3
9rLWcR/b88EKK/nnhuwAcEyuTaHxXEpVoAFTQ0wzS8ZiLR5i/iAJ6seHgb3R7PQwTYd6iBQhjDiz
V9It2yqaGT37MiM5v0Vk5ahjb5LmyHFOtHYNfw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13792)
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

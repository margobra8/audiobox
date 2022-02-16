// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Jan 29 17:24:32 2022
// Host        : DESKTOP-1AJ0FVF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cnt_mod120k_sim_netlist.v
// Design      : cnt_mod120k
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cnt_mod120k,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [16:0]Q;

  wire CE;
  wire CLK;
  wire [16:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "11101010011000000" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
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
  (* C_WIDTH = "17" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "11101010011000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "17" *) 
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
  input [16:0]L;
  output THRESH0;
  output [16:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [16:0]L;
  wire [16:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "11101010011000000" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
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
  (* C_WIDTH = "17" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
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
IowMU6yf0gS4bS3ESej9sOUVqhhgbmprrAXGzt9HuJx8DxajeqeGgsgCwq/6SbuiTP7IbEWNi0IB
pphGL+dbhEVTcdmAqGuCHzQduSdKzJNWxNY8ZUhsnFaBZrfrMa3Fin1rYcf0jYwZ1gwyyu0akXSp
KLPlNjabNrUmwrV367UzNWh32OGFDXFhVm4thSAKUcfHyuXXSkv13w++spSrQabyIun084XyjmDj
PRa/OTpdoWiJcWgEVJQQOh1f6XhDkB2+8jfdaKHFQNBKdV+MXnSCCi8K7HVUYffNCPPRAQbIqbHA
7pxbi+hzCDqozY5qLw6F71U31CQ0eGvNK/M6fg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
ggoARR8DHzNpMrXKuRITUn1KHG8+vtUtn/mu0NWOTyZ/qEs4TqMjXJGkeAlhVtsznCghzeDT1ZSf
H50wOfY9OVLMmoCaI8Vf7Egffo62AnHVWzi5Pt57JzdypgBcgroexajk+H0U/8Z/bbNpIcLWn2pe
xo1QQieJrLpcEzPXh4twcX/mCvzkFOilKSARd2p/n81tY+BxzEfijJpM5wZhc03kgaguRJDTgkP4
TaWOenT34fMQzBMz8Wc9m3YJAH8FCrtTGlOLL6RKKiaw3OPH1Mq0N7ZMLo4yD833vmnRYD6xXTu+
xk1w2qKf30Cus/pzRuZPqQRNNPV5flwWqx9ypQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14208)
`pragma protect data_block
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
f8SbhnlTRBLGwkwzjcQc
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

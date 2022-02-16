// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Jan 29 17:55:40 2022
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
    LOAD,
    L,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 load_intf DATA" *) input LOAD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) input [16:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [16:0]Q;

  wire CE;
  wire CLK;
  wire [16:0]L;
  wire LOAD;
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
  (* C_HAS_LOAD = "1" *) 
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
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "11101010011000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "1" *) 
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
  wire LOAD;
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
  (* C_HAS_LOAD = "1" *) 
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
        .LOAD(LOAD),
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
e0upK9UWPH3xUzvyQ/IC8/Lrw5t1g/PuIMf5J2Zctl88Sevoal1sFnD3lqG0jooMhBgS6XK7CbeY
Wyzg/Nbu4FiffOR/QoPj3Y1zBlQz/IeeWlFH3uEdaHkY3y8ciZQmDTeTe9KMF96ujJ6K4oHPjvOZ
jKNOCNXReGJZ9jXixn63lZcdxmSTh0N+E1Lf8pcjNjT48qxmxPMgsBFZLphgohoXkDBfBCV/0lY9
Gdd8OSzl7MGZrD4lJnpZgqNaC2rU/eeANCkRofWnNx4JoT9PHWFfLLkyeMC5F6Kg9EFYEpnRj4uk
SSX6YCvpNC/N1ZrT8Yaw/+KKA4tA58SSFTywLQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
DVPrhytZ8RxK1oRkkIhcrmo2mtzop2FYZALqy6MMgq6CRHCmPQb9Sb7WNFQoqywDZkqbuzo3bbJA
sR+RKbLcOTh/XFY9gDSnTtURbrImeGsBlIbP6KsoFGAACmDBxcp8M71kzZc178XZUepv67Duvm3t
AjEXtGmM4OpDi+fYXs0axjCB5WajcVFKWkYoHQxWzTFDA3aZjY/AULl8g6yy0Bjx3FqrGV2UBzCo
bWDaUkc9XrSQRZuatnx3L3m0h792oxFIbttphdwdB32DaAPGAfjJ03S7oubdDxot7sPPWPXf5CnU
A1+X2lpFVjtNb7JDUbOr2+B258n1zhLXhagpCw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14992)
`pragma protect data_block
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
bA==
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

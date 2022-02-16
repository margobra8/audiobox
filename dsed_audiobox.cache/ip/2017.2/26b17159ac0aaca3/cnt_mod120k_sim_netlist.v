// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Jan 29 18:55:35 2022
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
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "11101010011000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
O4F4m6MaasywQI8CdUWfEnGX2DsZrwiLuuTF69CohsNTZC5J2HP+TPVcacGphZY97z7/Lb35+Yo1
ycOKvV59NnwKx5ED+Xlie9lUPs3HYy6NsDn6tx9u/zQu1ANFM1nMRBeC1nUx/myQE55ydiqsPGbm
AVe2Iwoq9ZMHKNPvG4JwrlE5yqICC7kx3naHLtWMNnz/xhBqBV+btrVu3xQJVe9jM7vqki8xH9Vl
maJ6SGrrjiYR20UmaMaXEMv2aCuIj5abo/j6xdf+5nE6XAl8D7sS3/6LFD1/YokJv+GUnSOk0zDZ
YlYS8gYNEX77p6KtvSq/vbX6OSNg2J61KnYKNQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
fSXSKLIKXrOJ1LZoovV2Y6DKs8asvsEZv/BmSlIbsuSGXYMMY5FY9MHhSZEmABMVTRqDaD+hDvEX
Va/6l71MkpMb0nwWOqOY6tp/CDDbzD8CdsJMNuYYYuj6g/s9t94hDy3itiOLVGc0IdP+aGMm01AP
HfYNIH802csoPFz1k3W7ObFpdegU09eStUTcqP3Fum6dJviDDKjppvh1Cbf9Fe03LiK9ygFdWqnD
1+WebPCDCX5MTL5Yco/mb/28SuKfQwoFm0zNbNRlzPrgXaUKAnf0oqSUKO81GzIoOY+7Q8SzZqHk
bi5NAPTjBYVIvWPKsF1S/0AobHeXrlcC0HpLPg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12096)
`pragma protect data_block
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
AYFFCr7KIlsumYyl
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

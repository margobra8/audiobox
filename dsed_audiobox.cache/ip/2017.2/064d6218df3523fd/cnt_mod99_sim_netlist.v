// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Jan 29 17:55:20 2022
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
    LOAD,
    L,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 load_intf DATA" *) input LOAD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) input [6:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [6:0]Q;

  wire CE;
  wire CLK;
  wire [6:0]L;
  wire LOAD;
  wire [6:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
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
  (* C_RESTRICT_COUNT = "1" *) 
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
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1100011" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "1" *) 
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
  wire CE;
  wire CLK;
  wire [6:0]L;
  wire LOAD;
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
JPsLqifIn1rcdb5g1XMche0tlEmiBuWKfRwhGDIhwdNekRy7YYDZiY3O1cs+2gD2IfTg7Ch7L68k
2+pSGqXl9Ya7ZWBOhLTSqdSJfM87TPMIt0X5DxK4Ox4KhrPLXE8RioaHBg5ufTG9hzV2jwP81u5n
R7flfkperC+oxY2FdwAZ3m7FOkCSU0VPgqfae+vQeecKVA3nsvOPZg6S5uefpAYbOUDO3DgFHpVJ
0mpX0Kunmfamz+eQlvcDCcAXuI3QMchDMz/QA4qnGCsio1wtiJm8sxHzf03o1w9fIO019QsOvS/3
Sp+SJnm4XLtfE9qdDA0ACFV3J4KcYmFimIB7SA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
y60HCoWvAK08dwaYfxRwOYv6WfUUDBret6ZzWsSxnvYzwY0+lRt3K/DOETtMkubhON4EW6G0lFg9
73mbXVeUTTspKDJm0j1kBR2Lqjjnilp77lAWRMQSocD9bMXZ4Yq3YnW1tQ4RkD21TSmnx1YzyXb9
+SKc7xVtJ9T/Y/glTTZxHccRzrMwKCyOhkoLfiqmafpmi57fg8gpZeGRCls4HlZCaT9cpl/zu3sm
wjmZurvECTnJ0nx/D8d2WLqgxijZbCT8NuLGwIsKVPhxcFDiQYS17mAIOfc/NRZ4aqtVevjOq7P1
zbOsPDna6tuhSmm5zCNsqaT39uLCUAxtRI5mDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14736)
`pragma protect data_block
t/wlyMLt7A4W9EJMu2L4MI1dIca4NdKpRgk7woXjuQYXRVHk2R1orre1q9+A2qTqnFkhTSYGRX0V
1CRV1P3G9S5Tt4mVkrGw4uQmmtGWGOyA0O9yLClh0UNN/hdpxSvvkRjlClMnxfu78e5jSEUecTQb
BcWdkg6/L0D9CALDBHwKX1rMQpL92pScg2mhmJiFEnrtzpOzBokMQFMAtZprq2x+bBdNRmntMzWE
fpLpmXV4rfkqvVT7iCEE5Kw7h1L8pBa3pmTdnHi/Vc8InZ7mZ2kgQHwBpRrew/tAlf63jzo5RMfW
HFe5dB8s1dwD8nwHRdtZBf7Sr8R7io3paL+B+1XzkaNBiNeJBDemZG1f9UpX+XHaU3HuIJfrXIrN
KYQNd4CJZfeMhZ7g2xp8CJKKb6EYqFUweE56Wkt0Elo4lWujGi4eK/Aidzreq1rlI0KQEGd5PVCU
ZpruAJyBy40a1KmGRhpQt4Zhk2f/MlXSnSxLTRDTR9NSvbMT6rN+XmSUCGPT1Hk8mH0P/rZjF/l6
CA4VEp4qZ8d0fHBIL+Z1RFg27sGORw6JSoGeImIYO/q6Uujo5KUfzQA7njhtcfpCymOJ6QFUQsMP
ZVvQ2StNkovVSQMyzagkTuK7/TPKW4wnSdpzNV6faV3p97D/PPrjlmmhVu3fbGGP1up9lMtMr+pa
bDIJIUfKiFGI5Zl3bq99Itg7shzoGaSpeq8ZzZnC1WD5L910gEnTJjDDImLtcESJi+5wvQwcrZ+k
N7uhSYIvo+rUIctTpQ99xs7pi/nxElA5yANg+KyhcMaFOkaO9LV6IPt2cfPzOUeRYjhqYNAm1+/x
JGzDhueJ7TC3Xp6cI3OHqMYlG/sVryXygqZ/Qc9/tUEcwjtKuHUBH4b8EdWoJDk7mwJjvbtTpWvn
2s53HLX2ARuk+9EFRSEelWIitZTBXKNa6eotO7/7nWa5KGw0oZz/w7awJVmwwBfGZdwQyKhtuqaK
OOwu8aRSAITmQj81eBxuCb6QD+/EjUfZblf4rbntxFroCvEeFSh4qT/0BB8ixmK8GpBE2NsFuaBv
JLz5Jmv8oLfWwNfM24jVOiGjNZpA1c/8MW0WB4QmDcDT6y7PgvBfPV6/K/L3mOzDSyYxC0TEfeLy
uddyTP+RzpjAwksuixIaAbl3bDPtPztOZvhiIC7U9Vkiyn4ybbnB94HzhlEAre6OvMqSiZuqo1Zi
Yn+P7uUo1PCBX6aHU9ALMm845i+QlSYnoqrJ6BOjb9FoK4wMKOvlFndlQOGzrW1Rx7dlTMb3Q1tH
xCcgzN6aHLtpJ/jVXHUQ55dR5mgNxGjQY9ZnKybZzIAgHVOHGAe90rVIcTZeTiPa3tSSpcQrPvhN
NiiQZiAPeaC4iAPxq8R3uNoUNVkuI7DMH9reXPX3ZgJP57S/wfNY9hMjIVS53htFAq9m26DMZKCq
jAISVCe0AHIeFj1W+yxOkKq7bVYrWgK9KacykwCoHUakqte3/oXSLEk2WLeeeqnes1FHd/tFkEPQ
6ksiFlZ5dlV2A6ypQDZn8FZQeb44E+24GSIeDybrJfXQ35Zn83JbIulAs5Pnoihw+uuYQTQX5p2x
hsr3VtHLKhWGiTbXUq/As62ta8XremZR61bCISF2iN8vRajcikz9cef4SGQcfSO2qKceOn5pSFh8
phyM74xMUfiZL4T47TDS8NTZKu9p551kqEKq2nfLiU26uZ/vA0yEXkCSe99NlZg1wiLEhK+VLlN1
APOIU8yn4NT4EmyhJV2PR8q60D6sdEba9VKG8hWrXz9YtHgwVmNu+27yCmTEJHNy/T45RFZY2ZR0
RX5HFiJ2gNEvq86r6EFVUXb+Y73unVEIsTopZdV+AyfnbYxKqtDjqPVXVsSXebtw6J9mRa8ZVEkD
ZComcU999DE+i3CT5PumGTSxRtPjMklWuvVTP5oZokyZpOnyP7XHhjZ3Lx0IlsXbe7WExYY/oeQY
+xJAfyoOFFP0++GzQssIjsuZNwgg4QT/ZtGu9DVpHPhrq340vhy6g3Lgw3jJxkj2SScfG9htNQSY
dE++XtyYdmTE9WsLBfjfWsOP1KHmeaRe74Q4tl42QYkL0Xi0PFLLL8VBqWn01mwM/tW+7Yjr34ut
8NebFPGcemVfpufRJj3JQXY54o1xBSR++EBulCAkEbcipa6bvtDThakI630Z8pcnxzkUlZj+MMsY
8XMQSO/gwJ1m/nhojReAE0K4iTPJqUrLga2mv9AG3jjcxPVUkSzOyNtftrfCRLnaQE1TfWcmyJcB
WAuRJFv5yB9M1BiuJytl+OP4D7rG+eFdZs027f6GGhxON1ycz+N4y0BdYoVGIHOseO1hZVGuCcs2
S6/hkiAvqcmOXWWI+lYkWR8dLhUMT6sfmoWmLwKxDxr5SNLyBclGz45SAtZfB2kIITvVHivdkv22
Hn9tTZS2jBjQgrLqyTEp6LTzLMb8Mle1sXInu/unkeFJ+2KZae81COjEaNldVaS1AkScAyKdHXGy
WkemSXuH48Wh8fGk0zKM+2AujPbHchN158PsdMoxS+UBA9Fa3C85tyxWDxXGLtddsVdCfl3u1zgx
mynOCBhmTtMvXxZ9wYLa8TpCedbOxn63iBHl22oBSvTffIq2onAGLygD02hkU8wgazwMizfPSN9x
/bR+ze/Qd+vIbnG2sWQpXhG/UWKS8pxlobgtgvIEobU2VDgZjGLimu/rWePk0GH1uoHyKiTTOsa3
XOsExnev0Rg1Xi1kTevoi7bQH2EcS9vaxgP45UkvBfDXByXlLheaayRLtvbf2LC55b0asvqrOKEJ
h+6PeyYOS14hfJVZxltGpubpWtKjT6/d1HGAVDoE6v+ZkHjjGulgSiwStM3C04wp3ftU55L9i0Ll
V1inWmRUre+uKnb7GQYqurf2DDX3gsj3BbhNDUUe/9RsCgkKofcoU4+NWLoKQp72BFpz1e6jec86
gkt8wDV51eFr1lzNt3TitcJa4iQuaclszPrjGedP6GT9GviwgzfFfEWzVHTwXot2k8FhloPF3xcx
+NrFTxOcKtdvPWYj9FQNUgv4Bn/WUsz7s2hniaP1e8wskZUEB+U/Z9U0OyKnv/frKgJFXNKX/1r0
7t4WIzwIqXVJ4wO1lMjYxPfFjS8oGrxWTW4bbsgj+n/aUtAb6FZvWxIM62m83gROEF3iP+x5+OxE
OzXj+w7sYpDDc+7clJhXLbU7DC/K128AI96s55UaNjKlxOXzIdZvU2Miu6aICX39O/mpoXfOz6ba
U15R2E2lnjMdww7+V24006WAU5g9BRDshF7AOJrUBzkdJ1b6ohIcvHnb/AA0eXNs9DOThhPSRJtC
7N2M2BNftr29DTLI7ehC7JXexfy+X3J8Xiy5m4WG/iHULYU9O6GE2P1LlV0n/lX8LJrTzJlhscIx
GZbQKxHPCFqmjr3y2UZUvVgf4AosEe6S3vZpMm/xJ6nlg5Po6rAoZcOtA1NfRinHnPAOwSLqtPqJ
qxuUz767yhgwF9wUVsG0P/pqyofHF9yPeUf348NF65o4VCNMcx7A5PDzgdfJWxKcg+zS5ETEc/vS
MYAKoFyJ8cGsPewogQQQ8xdQQi9yv2LYpq4QKt1bi8VBUTwlqNekoWEGwrdTit39f5+nIh6n/od7
u7OzYewNrjpKfwO1ru5AWCDf80eFpfoCoMHPYmB2F4djn/JrQaM0Q8a9Pe2GmMMkt2/ZKcDJ2QKI
OB3cP0+dXP1hYyGJnGSIv5NrAUveUdUNDBd7NQr43IyUzhnHnqM/52OQ1ommZ2rMboEzhsrR/B7K
0QlwcPC306sseVsHhTIV+9vTAMOqSAjAwziRT5fFipFryAfgTZDyqvyAp27Va7Kje/OggcGuvfgr
8iWHO2TNCHn2Kt+NFU4d1DzBIBxUqTKrPew0C/GExGAlD/0d69nTPYJuGZFOZcT1K47tr11L/Fl6
67tJLBOzReazo7d1bURVGf55Add1hkLYhVrNWNbpjTlWG4mSkYoo/TZSiyJSmiuhqS/GKIswqZ/1
n8c3Q215ZQlqM4LQgAnkwFDD9Q50wkfqcs/4BdrXDH+3gg+AEiq6tyOkdlWB8nuJ5G36bhyjLU/H
tBP+2MhFTjQv1QqzV6+Isk+FOY7tghPiwUFmGJnB0L7s3UhV+AXutwHWir0FWstSJ3qv4uKBQxvz
dZBV+2VMHNaTGvPHJQ/OLgcKoiPnpNnyGrNRCmrrilTydnWihBko94NuIMY5uIVtLw1MH6F94daB
66a9xJqhPXpeTCrRgdkQ8zBpiVetWOv64dqCpO3kg2oL6G/r6Kc/7OHBc4UwFC4NyUJGjkmAr7eH
v+gKq1FGiUF1MlkPJbgIgLMCrkF1f+GyIXrYye639OO2u+j0EEXAIWmwSAW5Dszht4QKXXCkg8SD
y0cm7JPZHaj5DxXx/IyXbgawscMCHLXh23a+W5sTIGERKEeniUbEKENwQwTJX7JhQe4/krlvv9Rv
0D42PseAZWKzL6Cj5byvg+dGhlQK46uRBYaf0335YjHj0YJP2aedb0x20a/tg3OfaXRbyEpTwDYv
yTtq2fBLGmgjHIMpn3mANvsvP2OUbd87eSVLYVvAGWMLQNVkFZflgcn3nn1vqflD3o8zjAYNR4vH
rFd6EDneAezgCGnQWyhu8Tld+Qt+y83fvWooAPvGnfr1ABDNeP4PX8TVhC2wJxXQ3R5p06yV33B7
ilAK5Lz+XKcBccIiRCiIoT/xfs6msYGI5bJMIrBYHtIMrMVoMNhA4u/aGP+kre+m0JmGBqnASnzq
Y4UDbnbqLUABTHxfWNX9dh2ITQcsDLiFCK6D/Hx5Uq+GhyMjJSKJK/KpdXAR4Tdrqh6xDi/ZZpf6
D/TnodD4uRFQVPhf8KX4jzmouDq0vpgBfLyQ2ALsiRU+8ansATmQIwgMQWiIQJNizCqIrJ1oGGgQ
9OqeCVkgFJENOlAd3C43tqeWPfnni+O++cNtrXJ96aUBrIXT1s2udEyeEtUhFAjRmwtDywxGZjtK
I3zPhFMI1TfeEOcieZ/ZY6yG/36h44Lr/UGzXx5EmIl4hD5z06FOoeoCi9xs3zibDEtQP4RR+Kkh
4szcbp+atEWT8DfTMzpruCplpc1XpRoSYsqr50Ho/U3Wg6PcI5IaLoQzW9T09cn8lbOK0ZD5poje
u7hqSWNB+shtOdHWYH/E9Si86GGXqjI0GLSZg83gCCkpVM3G/muVLmUcSKmqc1TseILgoW1FjPXc
yWYdO9va8SVVKH+PyJge/1+2EeQkIq7Xt+DHCYj9lB6x3DbKPcs9dDcr1pqs1Ca8BcqJLmogFRL3
pv6tpruSO9u9C1JBz4iVZ3tEMNeppvCm/Fj7DopV3fWUa/BgTLl35UvflE4HXZz4MBFwwHWS5q+6
USz0IYdS9hFMnA9YNl7S9d8JsO57nGi1mQM0MQ3tbSIGfCAo6HCdj7nxPpyDIdLOL8Rljtn/AIt/
xU8FN5VXAMXgc1RxwDC5NpNNQIM/N8BagemmahiNfSkCYQIClOAQRLHRwozId6q8fV/BTc2sLz0s
PRq/RBayMorM4a487tLuJ0/USb9XNjQBOZO1y8l7abnji+suU6LQI3IfwUwcaTY89tifavM5e8cy
gxpIj/g/bsGREWQphIHQgPN5YxWNnM8/VJGbBdPU9qfvtRDcfE7BreCXVrOUOpAqlz8dXVDZgmvv
tRD/fI2DjyWnqvCVLsHhnFM26CXxF70XFsu3eGeNlu6dgwNvNTfNQE/rXye99BklYuLmCDu0AzBB
cj3m0nA3nopHyvbkhNb0mEv2dq9N77mLzgjQpcOLEhReBeQcZ773UuwL1sl/zjhiPQ538liybDzu
+FjKLURP/1EQMhYim+0w8PnN6A5tabKrHpyOzFOkU8DgyhlnqJ/g4ryh1WsJPFyycl/SDLBff9tr
5K3rXyMHQOfHamqvF8jaNfGB6N90q/Lc7mxG96g7TRL7QW3JPwuiLkpFoiHCDyJlb1sTmEExNYn4
EXlY0uWFEW86joYIz0BqhGXVg7N3W1BBeg/tAz5i9bbyiZhNT4zi/t14KqX3qMgIPLUhzZDsX8wd
5R4oYEuSL+Lmemt9Yxjt5pau322XNI5aPFxwbQq/KdxVMNTjsWRJg1wVBQa/pItVrsFK0OgUug5Z
pXE2qp78GFU1SANFHnbNvyf0PGvMO4yZcFX6/LfHOxUCOv8H0dt7KI83QYDM1kKjjfnOM1JYp81F
UUKhfT2FYvxKeBGA/HaizZ7jHtuhJjGWXvwL8Q6yZ8CaLsoBTQnRZuOFF+HBKgDq0qSfkaL8nfhE
yPdHjtqic8nGKyDtSPzewRAucctyawIms4W6gT55sE+WQAWnUicsuW1tMLZYbVZ0AGCwTQ/cu90j
ndYezAH4btBrvDVAvHsfv+110QCsIGIQt583t6HbhrlMB9HT+KOb4GIK+9PQIRisfXqrE5apGYGm
wffuKVsny0rzUu0yng+0OCF/sR4/hTa/ow/ZztoXeSjAEXGRMIQWuvv4MRkspBtVUsa8MagwbN0Y
5D8kG8SWiJStz2bz+ZJamJ8W+7ICc5A0hUOzE39ggrKrVjTU2L32vnGCfCInghIe0dN7/5zb7oOJ
/U0bImuhZ/nf76jYfMs0MtMPUjjqa469yk6Cy42YpWQZ2K07IywbdEXReHeyyyP+C+9MKal0prB6
yMwFWFV0u3wulWq4cAI0beAqZx+74PxE+694T2QGqfRZ7fVRPZ71Ffoxhcbfi0NVW9/62wSRWfYu
ANdDJfzU1a7q8mEP8ox+SHbW/f/ojWS9/Si/eY0uigXdGzOx1X037OIxwtRcpi640X9MbOhtWdJr
mTXPRecQ3Gngz86Ktv09iYTKCohtUmdNsYPf5xe3lVkpLMHSwUP2zgiKuOkS3Tfm+zLbJwtkJmK8
nlWLcd0nrNf9yKBnE+K8xTsV6UuoTEjmn5kXjgnU69yWn6E6d6+iDoO/0bpLJJCrh1LJBt4tiIzt
zvi8e9UjO3Ly/hq5FGFSrZnT41/6LgHmfE79Ph6ejPFGMPhyGkhy/sCKMJm8iTy7MWnfJ2ZSVmIB
XuPqQM0n8uFU9JEtANGSOzRX56Rfjyv42uXRn2b0UZrqneaQHa9godUlNXdyP623bWktjnMvhpJn
GezJiQVD59LmTMc/2bY9YLE6jZ7hTtoMgCDkGBXs+lFkuHR3A0FbT0/QAOe+OR6Ebkbe93VXpRDY
ueG93P7K2Qs+zZ/UwZ65qUZB31tVF1OXqoGA5rtZOrJKcTY3v9AZAMLzHYObdItOgi981e7HgoL7
lmyQ1NjsxDsSP48oCBs3raHHjfbFV0HEHcQnwucfduw37ajCpgDFsJQnRy7Gxl4pNf4eyQpIK/Pb
MEg4/dOAC753MAIhXJ7mi90AKN1H2xWlh2baxVzyw2W0Jmf804W10rwq00ayTDmF2xAYQyCInkLF
yTezJ1idz3ujeuJSE6WgRgIhvEF4X/13UeTaqpZUON28sMxz2WVevSvPhdMAdm96zGW+rLfLvvhe
wMdXOQisrD9etYDUA+vx9F5YGZTZa70NEo3End3UI3ruc/aA1xmZxvN9avLRp/yAmEyZzzC6GiP/
BKbYgt6peN2byisGNvGhx7Kf2GMwQPMRHTbQdi/Ifa7F3ZO8ePr3svvWww89HirRnBFNr46ZcKGT
hfGENvw96v7avkoJNReoEmCx121Nh42HOLXUjqBBtpObrh0D785vVzBoKd5dLEuZGG1DeAwrI9bj
GYgK+EyLsXumeOydPA4NJgvoMraLfU5LTpD4R3kU5H/XenaNScuq7j1FGUlknG2oPFU1v3YgnAkh
B2bH9opybd50wpEw3CS1Lmc9ovCGlMPPfgv6Qv7x+xYd7Rn/kwRI8C8l0kBGIRgiChrOJzgUXIy8
feHZn1IfK/Fk8ttrdBkSjWWbc9gHhwVTn+33SlUnuHqqRfqY6dWThge4kzW8DfQF/1FGm7D/AJHD
QiiZlA7aPyGxzrqYG9d3JeZu+mjT6Co9Fkv+TI9DZg1uQKcPRxTI36YVlOZmtWrJ/YgyGbSyvi10
6XXPYnWX0deiif6a2MTGFDKrvoXXsSOLvBPQ022J/OlEN+pqD6cGexV7yhlawXq2EoONJ2OZk3Iy
9aDyi+pI/oLmf0HJpg5Emomch3BiIzVqh4G310L8k8Q7C1E9A9djFgP0y6Hy2ZZ7ZsSWZQmJuPpN
AM4cDaRKlb9yEOylZm4Ep38YQQydV3aLrh9jA2d4YrGZCowUet2inJSr0HDnxQ/Bry2+eV3lIXyi
Q6WZ/wFOVWdwvG0Pzq709sWc2jKxqgpPcCIspZl0qjg2Max08orLw+EhWKmFkxr7rjEEdPI6Uy+2
Plu+gW1OGqdTIZbpsx1HiG6azbnS7YcQdUkBfnvS6IWr5tTIoW/x8W0D5w6kTY+upjyVqxqPUMs7
fj4Dy0t1480Tg0QpMBk8Q2lmIxR4Kn8EY5mkRiWBRpXZx/ynsBhBFrM48uYDjOSR7ayeDOJBoKCX
evKQRJLNO+LSGd+JfKBCX9vHeMsLeMsFzJOVbe+DQSdYizZbbAYQmrzpCSWoxvrGc8oFXUOG6nyB
H7ZGYQ+J9L3HSCwPlf30/zxkUwum3YV+u9J7aBxbc0UhIoNSV3ieGq54ij4Z53rXA+U9Vo87/PC1
l7HxQS10koIjXI5EZdX0ZflVHRvSt3WdNO++CT6hn41sSpGQ95KbCMmecTIdQ/9KMTBWI/yxgh7x
kFRvMFzgMX1AtQJ+G1XU6Y91ElAvb/Vlc1Ljl7luR9+83NMoC0N4JqUM2Aw+17Wu7T0y8YY1nxwY
8mNFfjlWNmPMq/+YrTDSo9cq1ORoD3Y1GXjDDM2eSp1AY4uqOKm+OvT0HkfZEPeICcUZpa1NnieB
3X3PdcdQByzmv3OQes+FydcdVxQ+7CERebYeT4LsYrs4UoAZEZPEF9vrj+Alq0WhDNHZwGXFMmlu
hc0e70mKC068x3cu8K2z89xwSmf7f7dfAEWK48sI6oRm9HKFbnZzCiAAyzk5XLGBRMrHQC5Bh9uL
tTPOSh1UB6HWYwmvDIWG2Lg5DxbI1ZtmclHuXrWzPl2oMfifbDLXtb1Bwts3wytW9qozHcoPi7Hx
nDoOVc1I0c/qfjYYEb42VobVq3A3u832PXx91SKUId6jazkQ7WHu9iiEbM60xlKlPa5reGcpfwU8
goT9rvUu9atywgSAX/JwLho3XVh0n2omN8xXoTekUrwnY35/tgepnnfBxtuC59DTCEvPBHtMKKG7
r/4TQxS3zLVGCq4BxDWOqC3QuGJooKTvdlmowXitVe3ArMBLknv1oGGEOI51Ef9XmUVCJ+zG+d1Y
3V3QuUlnyGy0aD246k+rqX9AnrWCloADAszppcnVPCTztaLBWw8iP/TM2nJJuvs4m+cBgxZyHf0I
NIGinKUNcXGQmZ3P7rXhDYHkTqU8vgc/jgOmdFBEeUbcjWHfdnDbQrE7uoZYyuwGN3NIMJ+8TLJQ
fZQvBTkLh1XGIyOiaQxA3SjhRbDJacVxDfSt8ltgxyd4xdvWw2yorT2wonoS1BHoJYzv6Yc5dTjO
8LiCSSPPRkGBmWznpJRvdkW/9sO4qtparC/n+UYZr/gSF8JDH1x6n44rdf2LpwucAsfRKJHqd+tP
V4nyA20cWlhiX+JLECdrXnMsdXBWbPQDQByCikmEh95m8PP88E3D1kCUayplsBlfy2vKp+vPpWe+
TphX31F6Dn7073NQGK4vd1i0jKQCVBx7p0QQzRpNmUrRuMaOeU5eRyw2EOGKTCPgx+UyHuM4TR49
HXB6CCoEUF7k/cXYmblSqKFEoV9xcjOzDicSQgte54vOzt2Gf2CsqG7CAUcF5KQ7DZhF3RuE2Ok+
T2yp3SkjKPO39A77EwyTua976ioTfue3+RUlXSkhSCT5HZ/aozyrbDEhanA/3iYvIAU/dKmtsZDj
cNyMrMlF3A+2tJh57VpetcnN0KVSibM0UJvx2G/f3t9qULg82vAteSx6hjA+MdeXwz3ZZ88zcZs4
TKiD7zdIpqbND8qjqzLjKJeyxnJIpEeaXh9BN5ZL1u1RVqIMdb2JLtaE2qMZzGEMKKr9mHVcHXjM
7iWItr0EjKxVd4LF90dpi1fJ8SiAcRJ8eqGLq2Gu7VQpeCBdQh9qMVgsuecYG+8qt7c98if7QoNB
GqB7O0JALr0plm9bLN8VzDq1CyIGJceuUCoye1bNnsxEC3byLS5uqAKDONvLGDIrYsS6uzjlCNyf
03I1gGvU8pYFZdeR6LKNp6/ytONwbMwpu8upEjVcmTHKzTy0dgXtj8dqvYtJTlsk9uFriuwP+fm8
FMx7nsrr8CC7Pa1eyh7JeNY0GnF4PcI/3ECKzWHBbwxwETeOHmylKiRM6eCt6MyVUZRDmCD/8+tQ
94jWIxPRqbg/K7ZgvOrVimux7LF91ER0xgVMvyOghUAp0z2Bj9HapoJosZyk6/v2zI6jEx5iPDmC
zW/bdOLuZHZbXZO8yosuqK9CwH69ZWxzXD+IzzOyH9PgKOsTMe/8NIQ+qoyJ7cH2qW07s6koW5jc
lyXrMNk0eT4TBHJTLB0Z2tGzgWG2Ipm/rgtd6Qoaa6n8ObraOo2QAfy4WJbnminRumtH1LgcbUax
45mLJHF7jYn35owajZK7xOZhDyiBdpNcSCet+YgevG5DulP66vW0iC8mwe0/PwYnQhu9g0ZCQN7k
0XZhPBC1sk0ttqJ3RTEjCFBA4WYeF3g2jRPYL7TE9A86omF6EF13VTCUNTiCKNN4Ip4f5IXonGeN
kGcD1mSbYrEqa32LNyxHLwTFV+hoNUFR1872rkiYxGzwXVlgx1uc3IhylR1BYk6prQc7Q7LF1Mfk
KQyhfk7K0x7kEcc+JRUgcHBctAMo0dNrks10aiuusTUKx2+CNLxxxRqXvSn2uY2Jft1h7S7lEs4q
yt/ktDwPpjy1ZBNAU/UtCfDIySq3rBAZpsiJ6gcZrPvnngu85Ur+tt6DVc2rFwktUKv0tdDK+aAE
q5OSm6+OjDKwEgp7pKlZMFRTy6xGAFL+QysWl5li8vdEoNxXsWz8UQfuu8ukif2jOwjdVOhSQTjq
NcAwqCLppnnNWynoPKzgWw98Y41a7mw8iocv7gqevKvc/j/tH2hLoXLgO/LcoIVYnZ+A+ScZcOSc
e2JB7PFw8yDAnbnOscAC7PqlNuhWYLGAoEvQ+j2fRycDgwNVgh8reucub4daucyFPmYwVipQ5kTH
1GeHCR+9Ts7Z/v0cT0ennzcE2Y7yXUuOniAjyyrWURLw9As7eUUOttqHH/SmAibOe9knHA4wCfmr
fUt+OneQbeRdbxbowCIZ5+Q1qfYCNSVaDX7HdG+1s4xu48g1AD+l1Njb9aqXGx98/AhQL3KEZ1Q7
xVuLTgD5ZU30X0otj7AsAgTE2WdhJ/AN7ri5EGaA3k06btMNFCwqCDiTr3ftVZ75RXqTix4IQbOi
HGAkPsRJ1ya+lpM638o0qtBJweQC5f5DrsqJlHorIv9mxLwa16PTjpXubv2VgdKrd0WZb7wfWmqD
eIaD8/QFPVr6hIPoA/Oi2VCW1bLDIOpxvB5uVkl9EjrYCrVe6YxQIYxRC83xRqDcdXZFC2haHd40
gLuxSNtX+fQHyA9+eSpxn4Mbg3n0tvjglopJpEdJbCR2fQfPW5W0ffRmvRwWxtBtaNEigx+OLCho
/zdw8Fls3Q1YJfyLpoYefpfBiIw5OfMiyuARXXK87xdy01LGPjQAeVVwD4Kx0SYdvGPzNr/7sH2o
E0jyzifbgzUYdWfkjd7ZqhgATs8mYAjdAdKtlTmr1QJAV0k3HLCjhmUooVKUWWREvjVteFmJ/v1e
wlUCrQQjsI43+sHCuZX4St2tKTrJTZKPFGJ8eipHK7FQrUP62WxELTWTSj2qXraJ3hXw9GHZ7/jN
s3CrTl6uJUeXQk7NexgQlACs8sJVz5R/jpbLzyoNU1MeGtdHnGG7Ub6yyfHfAW74Z7nGhAboZpW+
1fAZUsn+0t2A5evHR7casWXsfni7y7YOKzJwTS92ycRy3r/ULscryKF1VtQBoh04XKKfFIdAq0K8
eyYGaZc2TfouvI1/wJ6bB8OM4wjREJKVporaMDPlrOmQ4dK/fkNek5E0ljBgXtIFWlIIBqg/3VP/
5ourCYUUNIEAyT6auHMXWOXwU/H5ToJgzU1nEMq9s5eN/phYZyGfpCh2YMPrShtsw8NiJruE4DkW
AkDZbbjjHR7xJ9B/ZOsSWmhUa+YNQBKj0nnX/P9USQpbOgrMjav1tIprQ2DNOxnzxYGBz3EDFNvq
S6u8DOpbvjpvMHfjqtSqZAoGHw5HKt0nU6X5mSJxyyH6czYxv9HkUDHIZFJGTeS9treoSZ8IHzaR
I7s85+Qq1AH1FlAokHdNQg56gkxitVqOFeoZ5sIwxsq07UgN0hVO1EZ5jMwLXOnQT/nog5jCljYI
HfbIgjGM09woRdwH4F3OqDJNam09vj8zz/rgoRIEU62VzlhJnnlKKJs+xXY0Ae1DWcUXR0wKLVqf
xbKg+z9711oUHfW8dHs3SrMl2OlaaLCpu4PGuAFr35WGYhTgCZTVq95v62+NOXySuD3In2rz7j4U
VyNIGuLUj0BXDiYQtcUtX55ZSi+xH+TJ93/Sq2qST6xsSihNOXxj42BVYbSF2urx/la4xS6YiLCv
L0NWrF835xCXudQXARzO9GAHMbgveJn8H5uki87RH3YN64QStCSIBP1w/ekMwk8OZkCWS6zNFaoS
3V4XcAGZKUD9cyT3fRJiP3FPuzZvlcIf/Vadkp4InFhLPCwHU+zmWfKSf3LrQVl6G98Q3KX4WO3m
pcWMjmmH9s59oSIR/rQwrJHt7IP6zsOio2+dsuG/zvs6OOCo58hxv5gkkvbHndrC9cBk5jRyljth
Z13t2SGMTB80MCAEKq+SmnFo8dxiagvqkIBToSAzyCARrBxAwAx8dmFn9+E2/p10w9Bw8A/Q1w/z
QGo7N5rmOsSepfp5ouIw+Qc1UfOhiS7r7dsBea7nneV96TQmmTSG9MqGtWTDtE1ot+IuFIjd8FlG
+fnTMiUq52UeIHVajxMepe2TX6sQ1hNxGbjLqs/A3WMfIdieVm4oFtTsDMEoz03oG6p2HjQGSjvP
C2obIc+6FbhqFxhyM1OrU61gDKPA3ETcwLLCwd3cvzj361kRdg76pRAneSDEdyhrUCvFTP8PwBA0
VaZqyDIhhaojEunTHhAEoooJ6n8fabp09wKod5pYKz4Fc+vfW8vHBFs3MwFE27MjEifhQ4//+vuS
PkJX9I+HOtJ1/pNb9XLH/oelqsHuPclN0I09q1QSbhCZOybA1aG2wXdCDvH2WquFmJwK/PjvtCY3
G+oxg3HYUZ65RPCGFDn+BS1zyqKUAy856T0XfRilu7pgMqhq07v9zfcE5Pp74Si7Kg6PUzPGpVFn
1BV24DQH2Gmbk+Lo2BGPqzV4ZeMnLZbB38FlFoz2KpJEzlDRh4RDct+KvGIibnHqE2prnluTkaiQ
DzpFZ/b6KtzBPNS5vITs05zXoj0Hvmqv70vB9Jpg4HR2Fk9AJUfMhV2m+9uzWDp20IxcpeokkUT1
Lte2pHKwphc/Sq7TxmFutgn3Zzvsbjp1omMF6mWgmJF+7qYDgIVXiKJzOTMZF02vUvRi2PDMMaKb
Ip7qsWuiHX57+qUo4xXRT7All3BM768lGqs51I5C4EMrgGcVrOKEv66vIeXnqEs9lm3Q8xhFaks6
CW4P0DHTAyqHT4rdx0jR2fpoNEn6MxQx9FLfYT/lXJaGV5JDk+lPik3fWQnv5xmD13YE5erG8h1v
i6K2zBFs0Wb1Elv64CbW/oOqJf8xPFPKwR4GaSSEjfjBLeJPYqTce0ijTodAeml2ddbVdwq0YrFQ
FTsV3O+kkdhZk/taxCaHMGQeCQ2YUhlGx+fyXBt8rPp55pjYCs5VJiVVzM5v0kwFS1xYCo/LbvbJ
tqUJ5+xmST8Dl1+rkmU5VluKnkmoKenj58PPWcvUu2EpWo4s6eWRnBqyM3b2thDzOqBDyNxtnFYP
2UpdFq74z/AI9slwxHhb7DYFtVdD7cEgOpl/JFmoaek9G6mTcq0TjFJ7YRmKt1MM3We5LxiSsneI
u+KpiRFA6abGBvREyn4I+cLzndjYX26cYaxflQ+HHpsNAU87l7PG9J1W7AandJnb4ddwR/g3YGIM
G/QGftbEwlUVHCcq5AYjHQSeWuj03SbYrxz+ywPvKNAZuXO95nm68IqWXSvKV/MtcZ1MX1dawtnn
c2rPOH8cvn0JYWNJlOkx/z+T+wXtswCCsdzcPupv2ZdT6OOaULR3qhV8HjOa4pyYYfN1uAXLFpe2
dAS+TkMbZa5/dsT8Gt6T9RMk+CfIo8LSAVOBJWRX0poR/+6ecfBc5Cy2/uUEn/n+IBxJyOoGKBx3
i9adOs9nReZ6/e8T9m1Lg8PCFP0Tqymmt/8RpTr9TG+7yvfKEbgQQb1WV+lRZkABFeed3NHjP0/v
Oe8SNRu3YOPG2sG/pCla50jyLPi+6u8HORmMvtOHSUy54e1mp0faHynZHctmhSq++wshtyUDWfsI
w3bbEHMFmOXDV4Qjz1Iw++r/LqwyRa9EJR01hLskQ0rmbqXMHolEIPwrdO6tlvLZoFgRI+fOjVKo
Ky534ls5z1m3/nU1bzJePC36m0nqXJH0BLawDAfKak62GpjgMzy/Tr0aybmzkhbcu3iAA1cIQuSt
48oCVf9IROoByNMC1cRbRFgsatbIG+xbkijuKzztOX5KxsQ3Oja+vDuRqFIqNPr2GWwylPQ76tIq
aI4ENL/kiZQZ2F8UdPi70VtP7mJc60GSYiN6t0CJ3/k7QqiF6PQsMPSh9EOOEBwUVzT3BdCnZa7X
AE0CALCtMRYSnQVNWjfomILkr8Btjl1NPQPqpbBKtYOqbKkctUzNkvlvstfpC1mm67tWHgCT2pB/
MY63viqIXauQYNpKwQw+4TLxrWv+2rsx7U29WeAmtn1oFaZd1gR9FWD83O6i3kyMMygDoZ+szoeY
OOu7mU2Al1+2dMKJv37xvrHOHgYKbbO5a4BWt/uvyzFEFdkMAVztUh5DztbztWxU9H+eci3QOmr7
ZBQapmGAW7gYDCZ/0ZrrOFTpIzCV5BS6budvKLndT4bBZPoP4T86fyFWOhEXpahmEgpdHi6bOBfx
p8HkIVjqVKqrzsGcv0pQL2wf3cu2zZ9hG6DLu0susnJom9QgrgqAGyBdCHKtnIIfTWsV2ffsKnXZ
i5D6CGv1G4faT69wX1MANtpYnIS0FzMtaGu+8gJrVltNiCr78bIUZLhGn75OtNsho0+u2RFWYd7c
PUgR5GmYZNqBbU4x7FIHaU/CVN7rwIastZzV8cwt8YEGYkfMTZd29rHKA9e2XWG1rQB30Em3LoW3
tRx8lmw97yqi4b+mUeGT3HZx9zc5fiWZSycDEmKSe1zOqCAZXiuIcVFHMYpjgkrW1vB2//o7rHMo
Igf9XsKkA8XdcY2mWGhzA0FrhXV+ljsQ2DJitXugxqXoNPN/WqWHAdFxm63Degs/VnH236QypSdj
HCIHb1r21LZVigijpZnFoSiTc6oGC4bP7mHAnsGx8I9+e++QMhCShyVZit7QRqRa6qww1b622MGd
hrF5aSJEYnT1leR4Ss/B7cchkuwNxjUhxB3ySGuz9xNT2fPJgANV8JqFndlUJ0NspUSzEfnKAlQN
HkdGil49D+nMZh8PJW5i8j9TLnSa3l0HQz5GyPbCezQ3buwKkyeUSG7QWgY/LBziPx2u/3CrcXBo
TbmHZ9xbV69A7sFbuz4CAkTPKb0jtgnAnvvD2CghA2kWSYtjdRxAZSuQcb7N1VAuFhCDiZALKx4G
v5b27xHYOtMMPwjgXmNqLmnWQTr3GCgfYiIz3egsNS9M6rAFE7ayBNj5wkva65mf7kFeu2Ut5TR1
BGJOJNy28yroEPwUo/X4ktA1G2tdAUTUKV/lXYFD03DGrnhQIqJC+3CO277SJL7LuKlNCG9MrhqC
dUISIBMhapNrR8lP1Y7a1FVitBKh5Vz7EOMM0CGa8hBXm9L+T4tmi0Yg82eHYAYtfWSlbNAMEMsL
5vjJhg5BNUksBJVXJIXn7Z5Whhyn3lKmRXxdaiKOTlyJo9IYv6srYZ5l4foJh1O152ETL0QcD3uo
sWALCG8o4XHrwGKc6GURLtMGtkXx3ZxUGkr7norKdtWLiTIJNFCd3ZRd8d3K+hN1n9jN+SYu5zC4
75/mO7PL62NPrvaGRX/Ve9qP0XXGcgu0GmKKvYzj94DYT6EJTtJ8acilNe1jMkvQ4VUTw1Z75dyD
tNW+WBma+4VwQsQggZYXUK0dT4ntMyjIkhBXfwFHXrkjwwmHW8uLB6H3oJkUb8VwMlOydskKTMqW
BdOaW8OFQe3NXk4SeSHnMqbYRmbPAyytzznbXCI/nGf6BnjLpDGgJeKoeF0WorDqBGdDOcyy8/2k
deUTH3A/G34WZ9293ODdpoP6YtPI5DjaZjCHRapPIydzk4bB1o6kyH9JP3KO60ChQa4MrJzrmU9F
1/Ip2DZKL1MQ78N8MNpUWAwTsk65XelNxH02sbZAbpJ9y5b49k6YYtJlDZZfcxKmWvQhdO06nH3l
Q1aCC/B2K/WRzxMbe1w+rSq1jiHskItjYDdedeGYq0q9nGDe14UuZ23dZKixh9E4/kfL2L4f9SSZ
bs132dfHNDS5vny7naXGngMmb6w0Dj0GishgWPtvPbb3Zq8TAQ2LyC1BRQSlXyVmQpLv/MIdwjMv
PKWgQ/gQp/HbqOwouhyuTe3TvhWCcoPfr5idDxS53kJU2ZaLOAO5e/kQLcJMPYiP8xGRnb56qLCH
FIOUog9HGpt1FZXFretv8FOPaw4TXcwoSVFYeI6OvfC9iLyC6eXRfzWRUXTK72GUSFRqrMRAI06R
Ag++IbbpavwsN1RqbgwSgxFWzZeFa3szbhrO2NblaLE+1K8E/2Kg0S2p7NGYD+FduRA90ge3J1Xr
jrizUzgbqMxbtI/ilFdrNVWxCfTEJQAu29KmnCOWF5lYpz5Ir+Ljun+zSPgraCpLxT1QEtxmwCAo
qkxHp2cKUSKdLJvKODNRj7yS8t8RkO/9h/02NPm7Y28BUxA9eXDkEZUa5BIA/f3YlxK6k1SbnrjV
X48HOyPFlSrI2VWv31hBqJUuoJQjBE1MWsgaRSqv0yxGfMqDv7kXi/CKbZsC80jHwoNZ3Qb+fdGY
KtGtUzazr+plOh2tHb9pQDveMQbzoad8BYYv3PSbJR6ghDZJEkUBoRPshN8JTpoUE/K73NtmQPA1
+hUldBO8CtcBIWIkT0H3RE0Cbygp4INZB4CxswZIebeauj0a3NUAwRYaVHkga8dUY82M7f3GGk6i
PCE3KeaXxeTOlKI3AxSPV3KDDKGrN5TVowJQe4jmlLj89uKggqPNQ0aikJEYllsoeJrSPeMM0RnL
Yki9fZHLBjX5VJNbJCymXBE3AYvO67RRzEbOAWMBrM/eWglll9oqaQmbgyrSdX5v6fuUlXqh0De8
cyvtT1NdUIUzCe1TPoA1cK1zwC0lqvPUHwg0lqvY+6j3X4ty3F8ERckKCVqj3nHCLJI4FkWzjNV7
iTFWsky2+VrtJoHXqtmUXXurzIGu4YmkvpefukQTtntsgjYDjtM/HD5TBYt+snwwOeWQf9+4TEQf
mAlq6TPcGl/jgbL9/Z/s0iysgCx66tUTVA36yUFpAM65jaChC5QOiGBpsR4hXblHFdQpo78vUcvP
tuh5vUIzEANj7BbAeoR+1p1MAVk2VYzhWIE3S2On/BGZgt7g/k33TyRmm1CI5/Kc3UyeU/6pMqCg
Ie2GKc5cDG2IDm/fxtCnI+/6SnMieJ99rgZOTEUnXtAhxt60GvbS4uqvuXQbeeMzWulKgtvAh9Q0
urfl2MwbnZvtsgq3X3bM+DY9sXrFclAwZHx13w9XaWROOUkweJvsCQr4HFOqUwCCu63MKZp3KwTl
Wn/++LE6MTu0GWuHWoTcDMeKuqCmI1KSeJIyASRBU3ChEJXiv08qGuYFnKufkwIZxqvYY0FtL4oV
lTMQcL/n/ThDAvjLB0NpcUNz1eZeQTYN5Pfay5l3ZmDHrfSrL+E9laEwUobjlvYczLfr/yIGTosd
28T9r77zyIOUxUWmk6KmxjgHJB5mhhCoydHqsBNE8wjcbhT/oTOewHCi3a8apiH2q3Z0eidL+I78
JkYx1QP4vcpgrz9bU7vgsQxWvmJFrUNQRNnyZkUAP7LTsYensPzkH8JwShqN+ELE56FHm78cdfo0
4i4IgtLsGH/YZqpLSEx99Yie5geSP0kYDytPezJh3H8+rZ1fPPqSq0j8U7FAm5yhouYdt/zSqD5d
GHK19M90bYpyoTTZYKpMPgcpeWaElqvUat4r1ZNxo3JSJr+EHPTWNafrYczUV201CJ+Tjj6wgAo+
67oaOWn9QqY8ksFAWOPBUhLjMs74XVyz0tyyrNntpo5q8CJZv08g+Y5yg7KIqJHrf0mr8ledovIo
6OV/DBan170aYxmUupniJRb43LiIJIoxCWPLlfUc48ZoWSHAkysnVZweq7JJpWskxUOQWs6dfWVV
adqP/kGn8nwINsZI9QiKO3e++GKBaREeHDF0FO1d6kdBxr9MLYl6rkULsfyWrPLwRo0200fBDGjs
y065mk6B/OsQSJpygv73muJhcMI7acjxwaXE0dxn70zRcZGvBHa0Pea08Vrf19JuVmGO5FXQys/a
h6RzFQRpeftTK7xLHNOKqK3DLfg1ZymDR/iVApmLw+lveoH4jbZVcrv99etYzdvgYBOsmL1c8CWJ
ghc49J8sVbGSH3RezISGCDQuVpdiGGmbQ5XuUDtcfSvzZYMZYswgpfy0enMBtHQ5nWGMxsUFqFfE
J1eHrX4eUydcQPjXE+T1y050jewz+SQmmlV1Ipb+fu771eGPQs06DHHDeSmleFSSI1GMIwzCFNac
M1csQZ15sS+/Rz/kGf1hx4pYyWjj4ks2+eXf5+3esdQoEWmc/UQx2gjYR1dkSGmsVnHVRBRRqxnr
9L6Ej2UoGu7a7KcyXjnSPjPIgMG7qFHIX0Z83Knhp2GD393r1peHBXOkm0DHNNeMB+auWLyb9Jjr
n8BF/esWJQAG2FHneCrKZX5HwBSUzZZ525K4FusIPgpsBtOi/rxLG0pyaFwUEkzt5qYPOQKZOhet
Y+JgH88fSUDHa6VE2c7zZfRBwApqaAoIQIao4Es6I2QNStA/zPWSPvlKROMIAFRxd9Y35MFhzpin
u6D4Euqs3lAHyuRsXc7ETxxyWtWegTcdvnOSEJ3o95Xv9gsShGUick79r+WG9HHa15PvY57OurXp
Bf3jc/yf3y87262bSm0qVQqHzRzAywqVMr6BJIMbCcaai/hDZpIBgi7edrHML4kJpDPwehM08yd9
tSc2n7jkZnLSioMzi95FynbYCbGw235vP749MX2cEDEdx6jEHuxUw1kmpFpPBB+gJiLXD6o1zUz0
qXnwDB1EKuF0UH4IZHlQPPUy1ac0r59f3dIsBWw4Jvd/qnimPJkpACpWmQR2m3FX3z4QauuNGlEl
len8eGYaEXAANES2J9UOTEjYOBv2W8uthuPkl6HY
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

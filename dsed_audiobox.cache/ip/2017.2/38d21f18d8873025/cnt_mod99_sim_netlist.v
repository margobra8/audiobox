// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Jan 29 16:19:52 2022
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
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [6:0]Q;

  wire CE;
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
  (* C_WIDTH = "7" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
       (.CE(CE),
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
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
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
foT/13lisnAhrwRlPtKOKRg3SGtoRiNw7ejnm74pcD+NB4lyKltKaVvLq2+QDPIqPAC3TR0rRUn9
q6JNEjLU0U6JNaikqmlx8QG0rNan3KECr2tm8UIxUC4W66wYWpX29pEAZ4aq00KXzxzUeEZr5cFm
VFItv0YJMR5k3m3fkMZu+pvSrBR9EDr4edp+DRsl1UYaN5TNVQwVzx2swQHkRaoyRRQEoUaqP5fE
9pfvLsPYdGEpnS8KMbuaNcCbZER2R0aiWCo6QBLSvckEfG1mMsXhlvRTIssalq7K4/TLDB/6S60/
1Sv4V/02uPvGflvYajfzB7LwWnPhW05Z8TAwZA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
sOJgFXw9G+tuQonvIl6FkkW3iBkgzg2lzYiXm2xPgZWnE1J+VjoDErC0kzC57iuryHHYq1DFkI5m
pWuOEdWo5MfVHZAdRliY6TdDqJ9RxEHxekZ8sSvB8violOzZ1FUm9xQhmecRDpESm3Ev6693R9WN
aG5RsLbubkfXnhIDt/CSCdrB7C7r/QzdxlDjbCFO35LKEbrSYGYqCISM+zuzpxNqKwz6ohbyqCty
EoSJiRF9faggLn2B0vJsXK+aO2MVlztXewgDSoCyQ8ne0UgIZL6Lk6Oikd29ACqppb2MHSKTmaPm
ParROxEoTnVWw2fGDDRw0thSDMbOaaVufPEShw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13952)
`pragma protect data_block
VoD9eT/SFXHKFqySKnY9XAHjfo5fVhX7w5q7bpy5txrpEnWcs3HbOWVlN3aY65M/iT5B/YRAcPB4
I4YLrhLmvkTXD89mr5UfbzVetlBFztkjgXtq/OlLAGj+PMCdrRrwA8dO+cFKIouBDTBbTGH94OXq
Wb6JovGbqkfLigOYNJ5VggQHcFEIvV81cB0cWGYW1A82zJPvpc97+1q3xyqLXEI0uGfWHkqUuJk4
ajBHRXBvuponyNisAm4rXs5XGmw24WGpeG0s0DCUtNGOZUD49HumDL8ZPdMVaHo7wyMkYQcLglEI
MByIH4OxAZpCoqqWB0Pz9cXZ6RwMA3xGJaYCezVRZvB0rnOQHfXbS4E1dz2j6DhC4kjJuGZ0Bmez
FBL5nvKGNfZmvU03ppN9h+rqn5QhHUmBhllh+c+j6nXxIqh9i6OB93dJLBzp8iKXUXD+UxJKsHZg
lkdsEwgtE8BT4Z4+1vXR/KW8tXOez4qGPX3rGT9WVD86VSTudyG766YMUqGwrbi4roV3KiNDEVKp
eHYoYyYT8GldmchsY9+v2XevO2gplrrH/jUzm2kUi1F2/gmXi/Rsexe0vXOIvwH7lsDlm1hB2aw2
zo/ytp43JJq0YBVnQ7KPIzhcOMhP0acIJ0hAFEFMwNg0TvmCq4uC4WJfXRhYRxJrNLyZY794ytb8
UrfxQvsC89RlnxLbvJH4eNO6Yywy4S1JoUtMN+DVmcH8gbQehH/y22+2j0GvaLCLZRjmSGg4RYSv
dlz5etP4hpd7N5pyBHpgKL0BEx88OGhFYwbGPxd680+EYC9dFghY17U/nAaLngOlVzXCHHuLneAz
UnB1v6OLpB7Loquk210Lx8MOSsY9OfzmHxtENDg5c1uCAssW79xDfU6lb8Pj4nl6+Nu6d7W/ybyI
tyrJp85QPe4Kt923ceWSVhoCYBXuhBksVEz3jhEB53UN3XYxxhsSmFc9l+JQlw0gma2HenPpNPUy
AwZvrhiSGZm7iq8V5Y8dbIIaWXo2ZbwEI5TRECdSnPWx7SB+rQgZV+qOU1VcEWHOJs9tDoa/JAIU
wJhglfGGfrn/FuceCErLcd+MBLjrh0sUtAzKX8D9HA1hOIXAadE6XlaLfO76kCuAi6ZttGiqY/Yx
kTTPFasTZ72uKahcZEXphQBNpYO8yo+plLS/2F897qf0QwRpLQl3NJZRkJMMVJj5kPaUEkxvJZzR
3SzKELS9GU5FesjzwBh3JAsV5esYsH46PPTiFAlLNIh7WFnIWp+SWe2wc9Qx2xyzfZtnJUoXTjLS
sVN9tNhz7iX9Tl8XR2IEDHxzNNftAvnIcdXXDK0hKyPOTotM7jvfaPEqhRndCqyb369o/FVEukMS
3BVw8ju8y/TLMFuXI8dfFYqwSH5E1Y2Po3fJaMcZKE2PF2rrXhGgiun/Kxk32GQ44u6ylNNDsnu7
kJKwj8xle2EeK8q0QPwqBFGj/BDYKa7mswYupZK3LolWyUhGk2FIoKRY72RSIbI381LqIDWbtrAB
dJXYuJs6C9tJvO84HBKrCKZNNP682kZxl2MPa+xN5qCwpaEMQlEuQd7N5hRXBM9/+r7BPqgZf3/p
u+5cqfaZggHGxw3LCxhDJdKsdpwkG89Lu3mMLSKJZmSZSsX9RSlVQHcxLXrsv0Q2G8IvZQs/Ux60
1tpNxUnFnWLoqNVEIRLkIz9K6QnmRoNmDqX5V4EVYMbbPMiQsrwsCUa1fFbwFzNvyW3lOrmAab7X
cv2ZEikeOwR3NsQsdppzpwH3Rm8xekcCP+tEe9IRk7Kkls7+j0K21kJ86PFxiwwPlaSs9Ete3Qvj
pHicAOdAOdUfOEdoI8oHtUtxqve181QmN9HuGecr9l+9hAj4zT2gUSm/j/CqB9/Jg+KY2mgNWcrG
/V1AbKk92X2KxxYClaLA+rzWwjDHTifCCcxDmam1uJInJiQGbyDs/Aa9NqINO27FH1ydsv8zQ2Lb
Vn0bOXjA87OjULpahPVZB+v2o2FOTh2t8mwCGbsDFvm7ZLd3myMSilcnY7kRvRip4uHwhllAaJsQ
fIad6bGfmPV+iPRJgI49m9Z8Rmxsw2QqYz1eHrucJ9BkRN3wF/Ymyx8nFNu6UvAPdBr7G4yspMWO
9RY+awWcUbP1OYvSZcfCKj+IbmtDIez+Aj6NQVsv9SPUjYERehdenU00yAaApkFJZ/4F5So/A4Eh
NbE56IpmoRXDq7waF+K94MU1yAMGTcsdg/w8EM94lm5JSiaD2kgRbF94qf1r8MBrj/HNUOL4df4X
eAvyoMK1JSY7hhCmdv+5MP0ZHOsqYVNu7l6r+hkiEBAtJpyz2Lbz2s4m6URUUrDotEeP5lweOIzz
hUlsUIE9TCIMms+Gn483fyniRqaoOwnypEzf4KAMqCCYlPBSfMzdbybkJlJfLexfOHYAeQQCTUTU
Z+7RsDGR9o6hHC6wSVXfHk+vGwdMASF+iAISNlKQOBOoA06ICUx8i/L/gTYYSM+TsTxXrrBBPa/8
UAwubjJQc+jgf7pQ5jJCcCFPs3X+X1m6ktkFsYR5rCQbRxTTDpRnt2WDHSe9bZTDyF38/zS2RbdZ
z5dThOX0wP11RPYgTc8eTVs116JVE7T6SlMckWtPjXp8cHAM9BBp5s1AQkwOerdFxVI7qp3/YqkF
Aq1FMyWEuMiqoElVGVHfxujnLbZ9SUrsAtmUqAcK+dpzSt+ywphstLq0ehDpzSh86rdealTp1YUq
P0mpol/M/KBs9dGLdyAdDVQZyF/UOPewkHXSGJIXtA9HMBkkhuavrulH7kwKWhkveFN8gGUZV1rO
+nJkDMkeVI0squPM7AXA9M3Zi9QYeqcW58wCBoZwhHDjhUkJl1v+DtHkzBxUPx5zQEgY2dIrnWQP
DqTQ+TMTcvNA1Wea5ADJuxsKnGaIcPGjKkHZM0E0OK+ecio1o2TXdZZplPERpTZYyKHLXg+qSH4A
bGU0bEXw1wIelvErKnLS35xkp7ulme9vVOfIqlXZwg2UCpNw4j+3aJR9+Ow9dL6wFNJRjE37B5T3
G+7kyuDDxOrJ+6cQpDWZDZ+1xr2tNlHPRw3GpMPYvsR36VBIgrix+ML7fb3VaeR/RlB1c7gCku4W
Y9beaI6NjO+4DjXXxSJXe2DTk1tN4bQdeTZgJQ6GIhUaIZtWq8kg/1+ECXDMzGfLwXpQuz3i445w
P4awerBZGnOmaLCpXCrzpe9zYKOtBhWdC2eA5r1X9yG3tC6WFgTd36AdYgafKzS0k5ffK9ActlqC
q98N+nMWts0u8HyzWc04yug3Pp+iTcJBrKhpaZLVi5qg1fDR45gnzAd2RLYTDWvHfkgr7obSlen/
aJUPAkuy9f9wgRvUnLVkEJULjjabiuTrWkbnz+znX5MM3mykaKuG3uu4FvEKQ5VdsXdykI6trSHr
hRv+vGemsmCSO3C0lTMZbR0BNF7SRBCszneZ6XLY7omv+kePY9leOmfEg8u515p+4ke0YG2BRF5Q
Yzq+aTHipSEedgDah6q4gXO4rUgidb3scXr87FqRvz2NmsMhQBAUFxAQ5S86jq+xfEFYuZ5hpQjO
XuQgEuEOxJjlRA7zVdmXGzU2fB7kti5O0G0w0EwNyBJ8ROEitfdGMlA5nqBt7uLUFulB6yuhN/8/
o60q3xHfhZtlvVDpMrbISJlA6ENoQcvty3GMSotfA8XoQWwViyYjffWyd8yR/yMI8AHIQRCJGs/S
UnpVzNnMsjxSTbI255ZxovfbRj3B5ewdlHxd8xzylEgjGcXyA832fWMEA/uAhiSqDCr98rUgf+Dx
uACo7jgQbm70nnm8zrtpko7niFBUwNAY3doFTbvfdtC9qG3SyJoWxHyVSP1Z0MxbdX6scLoehPRi
hTcFgAzFyGKrBUhI5Jno4nim1151pjRXl5UsIDNVDAUKFytn78x06ae9uLt9fkOp/NWdHtf1qV9f
iHzBtBHi3EiVMua35yr5TgkjMsepPoCNd+QXpKWYFb4LeJv+IxfIYkLn5Q0qb6tkWW3xR63OIM/Q
bjcYEk4RBG+baBCvnd/uNR7gvw/BYi0XTyRhk9gBcLwgzBd9k10wpPxl609pEFc1Y76XiZ+nK4fP
kPzcQueJIyc6lY/uwZENrhsG/p8XxydLETv2x/K+drsFo0PV0+xtjogtXrjcu3udF8IcyqZAqAug
4RS9z0sv3J3evDPmmTHN21NfIMDAZ8v4u9eKdrGIz0JO0nOijvK2NwDL0mCBCaFwjZT/K6Jid5HX
h95xWadF4fdm9ZKYqEaR18+lKvHZU6YvacXa9D5AnVmw9Wcd76SnYtR7IQ4y5rSKRL2uUNWmRO7F
057rYgDB8KXmGI2D18QPLph7FgCdtGfdMLvUitSN2bsPXiP8gQ7g7Kk5TmGGycD6gdQet0F7UmQr
gHuqAF+hpxUnLSgyMmjnOKWgZNnbJV1k+puwt5k+XwgU7GXZ84iDjMsrgO3UJl1MRWsaJwWdzTlp
qTKJL0CaA7dKB5CYKcPYeAFfrQW2VWkV7VjZoFrW4DTKsBCQMw01J9/HkQlQeTKf/OozorNwOp5F
sliQSjBaoqfbZhLuRFBjKKS7sBlSYbKvU45pRVXVV3I4thGPecPYHUBZ7BjwiciiDoruHNWDFPpP
B0DpJZpy9b8vB9lWofW9cj5qKWEAlsCdcHQej2SbuDFWsiC3S96SEvaVnE3hLn6aqOj43z7515Mo
IHi+x5/XlggaxDJI5MrbOaBl8GWGgIxy0lL5lti45SO/u+Q8lc89WvBy0jbywgV8ejfzlrDxqj7d
p4GmM1zCWOv4k/MC1zJMwNhRo/l8Fs6XdXuc2McBGvlCtSZC+3+FVxBb854E4m48zpvN4I9VZ8sW
nn8Kh3q580yrRUExNICcNVhCeovJqzt1Z3xnqim00a1wwqhIEMlg0n6aNQXVHVNRrrQ2UAjKlXa+
zdVV3FrxC7S9JwL776q65nnDW45+2jJCC2Rl6LQhJZRIvA4KEB4SJ0C4iMwrqbeildeb/jQV45xi
7oZ1oo2eIZsxIYPr7Uxc1PDgTbvUj1S5I3lJlMvkNyMfp3/v6ZyhrweH0hTT0CcvHUK0hgKgCjpR
S+oRMEz4VWiHPBB1J7bDSkt9jOay1Y+hTWMPMM6YghZNdO0WPbFBUd8mB55c51asnKH7yos5E2s+
+TPESuo41o+4rv90wUdhC/rYA8EYSA+1mY6mYGMDA4vLrgDUv58EQzx5OFmQ5eMji+4Oue9kncoc
0sL2Om7zUQP17fkm93ucIAg10bHNmZEt72MX6gOU21+HdfTDhsk2lyeXW3dE+VnwHCIFz/By6+38
1NeDmqk98y0r8ZmVyhr4KU02V/Xb++rFY4+tdmi1VkFVVAH/fuEt97SuYHdtsmpVT18dEOcffaxU
IoFxotyUepqLhmRLVJsBu1z3CTNKFb1GIuL5LROllMSEaf5b8vEzzVMtMsO4WhTwNcC+NBigWhAP
5I19TWRdTkn6bpQWkYXK3bCNOZ+l2Euk4HJXjn7d/qfD38nxHU5Af0w/+fhjCGpo1+RjOKwS2vvb
oztRHXJl+ZLWQcYieWfODxNvV9DQuOy38kvdemWS11IaTAM2lX1iXZTPudKZrMi695lTceXe7TMH
rkl7BSXoa+dfMh/7cdJJibyA4ZtQA3+f3YeWbZVgl2nrsmDAOKBttCTvgCtVBKGLiPoBzrvRnEEf
Aco3/z6Lr729Hgrngv/B+CMmc5EZMis9iy+0E+PdJ58G2CVTcBBnvRyUDYSfQdGSyt1Fnwk5xUyl
1RR/lS29FAYUjweFehUTmB3t/VXqSO14UQGE34GuvRLNZvuu1ubFVn2VE9QOz/tX4KABY/JWSTnQ
Jd+Ly/jOO84wJEBx5KX0S+Bqqr/tczyFFYHqoMrKuyL+mSiwI5XqF1RGt4Cf57r6ylpv+maGDJHx
CpD6Ofra82+DXXX3TvLcg9ugE6FO8miUUO00Q08Y1/QtVya3N2j72F9weKRmOLbGmDgLXq9/465F
xCj4m8HqwPnaRD2SOGUeM+vUeEvpkcE91tEZ2K8kNhgBjqGaWJhGc1MZ+1lAB8dk2VgGMjQFEJFv
mW2MSbihg1Yvm8HSH1Ort0JCoI71fqRH/XTZ6ggH6MVN5wSzfr3yNDLXXmPC7wjUVJKQBaGXkPFT
/PoylJ9ZDhAM2X/ldeceILIqi8WRShHEGPIR7PHAr2a+dvnEwbo2XGkfGoI8u8B6KZlOqDwdvitu
Qkn7qVv7wg5uhcLUQRDZnpIE7miHIIbrG6UMFNNJptdcgq7uv4d+6oW3JBxbxInh3v1QygTaeNfJ
UpUriz3UVH/F/dtsqKxaYOLcOOTBICjYEtYfB1Ld1cyRz+5PgdE+D6i1r8zJYByIG/pWetYm3+jv
1RqZha4MxQlehfrvxuQIwE8iUwMFap1K9sPRcqI0//wDplPBH7BKYQS7Pg+/0Ks2qpaQ9jk8yIXn
rIaBlYQ2CWISLx/cE59F1DxS3VMbCknT5d0jfgnEqpax2TjCPvotZvNOG9TGd5JkOEOVdXz1EhkW
ifzjNojn4K+I2DlhezJpCbsa94jqsOosfDvf+hTSM67IWo5yjpOiSYW/PRDIgoyOe46otGae88RO
7lL8jZwNST/MPIh8S/xCc9P7CI1V2zwCImUSM0RlFh2UwAsuD4PAFFDKQUWSpVFxiv6dMDjxBlEW
3Q7u+T1WVqkKkw8PTyojgJBv77r1Vs+oFbQWVoZTG9P45d2pbxFGjUNEorwmghisvmixiiBImAEj
qkqN8oaUgV8wy4CWMx21vbmXZuYrOVyKlmMUA2CVoohi+2upm44p0ljrxrhZRh+4dsBUVI31hymJ
q+vHlr6zKVi2QOwvUu1OBLV2qjQA6celcaWdkqv8ZJ8UVvU9U6MG/CcjRBcQAYGLYvZMhi0l9eus
ytwBm3EfOT5OMOkBC3mq+3qLwGeP9NEs6JQbkAbmW8niOgBHRRwCneV9034IuDMVrEoV9NX9W9NY
put0aXbgmwOfZ1rOI8awRN/b75rJJUdmU+oNn14GWNXoK9TU8XmAzTCc8krN/rdK3MZxHBm4jLk/
FnzLYKPIHmwvhVP6+9BxWm4hOQ91/1mUEZcIkeScnL7gkQWY6CxbqmnWtMU+Gq+niXP6wsHFuWuo
/0pRoSlpTwUDlLNnuwVqTQ1FOi30YOBRBK+y/J5ndEOtQqBRlSpY1oIfwtxIxJt81mr7v4pPBXkq
d/r8fIdWkhsZDC3XadFLJn4WwJhOMXKYug/7e0X9uBKRUebnl9o6/VCM1R+lXb/e1Z0ARdu8lYsy
rmKL2/RPTg2w1outDMsnsX8DptzeFRtKx6ga5oLeH4iy+40DmDig88HJVVerUAXCp+ciVYzNnZah
t+ooafFNnMsI76GUGanNTWhYjYVnON2ge0GxFEZFxBadGQvwqSX4BdnsUcMdrN5REXOZFLYbH7Tm
tJLMBQqTJDa/fdhfKgDD3rZK1O1NqmP7tVAN/4kHf81CU0ynVjBkNCz1L9uvibCXjTMPBBIRg1NL
pO2UmNUsiUnVQpy7Y6A0DDJG+/zp2CqEzYMU9avBvVbcVTuafQeCtI0eOHDUJzHCgdh7sdx2Syn+
PEUQLCZLCjcoo/pFkfP0q5aO1syTyu4STYmGojSqoIs1ItIYIoYSqq63OkMLfGWF1ej+zaVDr0qC
8imUNZ86x7jZDIGjZ+qWd8uNqwq146zCmDr90iiyrN8TLKu6YMsog7Oh4mEO9f3qoUdNBPzQmddw
n3P+jqbVN5H02K/WSESIsGASe4d+9LyqM+o+PEfUbEoSYo5bk8C/rQ2dnYodbxtmZgc2Uf++tSYP
To4QNlBQXc1f5sP7t1Gjg8fsCCqaQt4+V9U+SR1F18CmrWpgKm2oS6vi9kKibn/geaV1y9vTP7Gq
X3DbmI076QrNRWQ2uKbwRhytm/Sn8xY0VcGC5qgqkSk8tT+WNvWyaEw7mMDRLX6vvf2oIQou8WqF
0+UuTm/Jv/MODRtyzOsRz13+oaM3KCLObiJETGrhIZUHlo0qoVq7aLTt5FKU7DLWJYu8ituoC7+o
+JRVR7QuSMYOwZLfoyruhb2r16kWV8XM4zSzlq+zqhbqn+o8JVgn1b5rk8PT9dK9g6xZb55m0+W5
fJ7yLwPrQIcjIW2WR6po/b6H2qEi5uBO3XmO3nWjPLN0oABQrT91iMgW9z4HlQxVvfP1cf0wEQFS
G93rblX2GQJZCexzfU58FqrmW8yRmXhJgLNRTFVtnNDuzek7dt1Cq85zUizJMhV/4PmNYJeDKjTm
hM0rwKCgpuLxxVzzCriMKsifi+Mfq5WaTFRR861IBGZjbQ8jZJZVcqhBflivdFI+FT2cYWLWUA4Y
QZooWgNmRDMuOirlT4Bd7WKbjz6oOvPKSEQYdKUn9VX138GJDDoaMY9xCy5ywlJ8xwq2r88OCBeR
L2V8pGu2EfkAftighoDdJ4o6A/Icq9ZUcI+RmC4sBB5F0R9hnOe3fh4ZDZAC8mJf9jJuVNj9QwBE
OVSWesxcAk/LU4oayx/ImQz01U4rpgzyBNMHdPLA6DpwS7dmKyqcYTscGASATzXpjp+HNgsxJQfE
A6pazK1ZD0oDskFU3lsZ4SjA9j7STwwNfNY1F6IP/J04EMxi/oJTm1eF5m8WPRArolx0DRtSq1a1
+MN0MuDpqj/pSXVqDl+9ZK9oERE+1rNDUvi674UGqp9S8c3G0fXh4fuYT8lN+aqW3SuaXrIsolFo
lUjuw+IARXkKo6FROXlR9NH9U3LYu9UT7gQLueDHXbM8MQ5knYHeBrzcyKl3TccIscek3enoLZQ/
86oblk90wC/LbDtMFnbixJMntAmEelKzqeTzIiFkotKZWsR04ioMXYZUC8MaVRmhFFhI+8HErCs7
NOpqeGQcfpu6c4BbRJwmz0XnrN0c5kpyDIeLC0bIO+kMdqulzDJE5CcxE54qb40G1boLsc9x+ryY
kMSkisl42gYXY9tFmoYD5dSoQ/V/+3lgibtWg/uTsXLRIARB3dQc81/xcZELoZAHMtu914va8qCD
nw0l6s4Atr1VfJrJILwEVg6zFt1hz+jfhNFLiH+m36wFssOWYjPTTdDd6YqlW6NiR8pKotFP2t2K
OLAXT2FZbySMRlNUqhtNrIVDCyfyAbhTDD0CEYFX5R4SppaI5QVSaEuG3jj6YXdnAhtmK4S42Q0v
1ruyZ0sAjaYUxXC3rmI+v0j4jgtdw6D6otWtYMLZc/2f63qUVxx8qUzpHqaGiYH8HkDPyRZ4EXRv
S0PG0iJJjI27wQGQlcL6Gszkk64xr4nFWpAeXYCoNTckM3QuW6GLKLc7dpSBHo9vJeL2mHZoPjNw
egS+8uB+gAuvn/caXtg3ASE1cjZVFFl8wH7y6DUs0OmvRBpmniPnivxa9zg5v4RtIP+VqHr+7Q/i
iqrvJcarSLe7Hb0cEddlmPBkRG69+T/jk3nk6JCtU0ZvPDu0q4Noil8WXwsjv51CePrAmKgx6Z5C
BiUgwXng0eFXz20QXlRPObxx8uiC9DJNZGIAxXrkWbYT53vg9iG5KFWi8JdEKP4HXRbfpivz0Uop
F0FnkXYgW7EHaZce0Ig7UWdNEo9ukgph+1amCdBcAzP1wUyINC6N8vGTIlzCmzGjmPVuldD+uU+y
rMd9tK4+/1BBvPx3A8J1FtGgW6aZhVQdOE6mxkUdYZijcPmU1zXcl6Y2By7LaQBKIpnT1GVag49Z
lbMSZbmopb7F7XHxkQTCKn8n9z4YxbnmyJydjvfFlCZmYPUKieVkS6p5PzBvr8MZjtDbtTXPKqMJ
EUq05lvUzWnfuCXPh43GoE3J8zFFD78EPwKW+JnS5lu8q8Rw7VRg3rwwIxgdoozJgTdxPWFotrzy
Fjd/p/thqRwqIhKp+9WazlarEJUdQq62OBnkd7/dZs36WNUjHPpBYuGXARcwuxUWv9IDkfm0E9TN
nYA88V8iN/9C6uUT9YEpHmerFINE5TI3E6ygOLy0lotcb/ZVgjmi1OkEMjyQ/6UnuGj2lbopF2Xj
48d/AtarGArWy2IJNHflp/rxCRRJkUxNzzQPWpMB69i2jwi8A9tIAvZa1zW67LeJJv1vLJFNoTVl
YnSPmBOZjV/Fzof5lTBinco2ibWPd29B2HgfLuBbLfzOnidABiehFrQBvGwNz6X/wzKTRzebNE1Y
GLoCs5UYqkDVAW4AQJ+1+MRh/EZniC7UdeLnC++jayy3Xva6CGw9ftHcQJgHf0pl9SErkDGr1q64
nMhZipqqYaNRNlDy9TP4ljceu6s2ml1nRGq7yq8BlPS/AGFllDhJLYO9ru47wgX2aOKHgcAvxY4f
x5mLErEcePm2xX7TFFl4eSHu+b37nGpRKB67yj818kDaljuu8tc3g7YWrhownFtNhk5DwynJYJV1
LZ1kF+xDsNOX41hAoo63OTGivO6RP3ZkCSB3dAEopkezzm5eupHOMl52/lsauws4fqInjuo8kkbq
h+k5HPuJGjPe7daQoFHR0OgXgqeYr3Gnw4oJFrfSIRJk/GCU5vdBUAnp0H4b+KBteRxpe1nICUaU
X5ydXnT/g/eNYIedTzDq5hHoXH51BKKaTUag5+E1c6hLqJdT3AyXUF8Lj5OOaX1dFRnM4BGLUdUz
K1Zf2jCWBPiFA9FfL9ga0GQZNvI13KM4dvZiskegETwjjZGDPtiJPHV1Cnv7ngLUS+NIU9aqXWPS
xjKTcP7sHvC7WKbOGaEyoZvEwwRl0rx9o2QLoJ5rX9OkVzNM5W3G5ZQl7m2N5FeuZWgRdcsK8cVd
iM4Ja3+JmGDS4Dj28A0x+rmSx0DhLChkqmX9RqtF/Jj7eBzq+F+zkzJqMB33uSRdRkgefD93U6ZS
UmAOJbBnuaG8gCzwWb2EAnflcejUYo57ihuFVOpBlItsuBtr1RUEe4AD4XLtWNM+T+UgigA1nDoL
Q8gBMiPChC4zzjgBs+42DaU0YW+TUcS9ZpLe1ZrPEPV+NdQ7o30qdYJA6HBkpH0QH1jxy/I5ZgRb
SRT54a0Kez8CVE9sGcgyeZprZ3od9Qo45ajhfJYavXMxCJ/YTnNk0YVhCJ7bohJ96UDAJBf3KCRQ
LP2OZS2gyEhH7L+8RXuUFJrlIy2s+oDv2HTdg+B5ZW2ZExJZIEsnik/EG0hccVA8FO5/ob712FTK
H627F/yy4RKpfnlkSGJ9BBYbnHNz59tjrdDckNQnhxZdSOfmtXOyt+EbIYWzDFCr/gKTrdLlXZau
CN7Get0DssHrg3UXM5eq7RIxQhm3ukTfiDy1EvrcRvRE8Ac3jr9DC/SA2a0ypkwREzLMIHb/KcXg
aDo1sHucqGQ3JEtw2y0tDxyASPkglMiYQ9Z31D1jIZTCC6PHvpxZmqS+ub2HIgzRsbMWY3dcBrJo
9etYmp/pqvPhhQlOYoNTMwPQdiqNg2Hdu7QhhPsteaobb5Tg5jorK59EUttJ5BY10xpZFxaF8Bvf
/+L1dv6C/8I3sQokhxkXWrDaQvuDenGK2hqNo1tX88Ne51xEfwAdqw9mjdoQD9pm+ZZGMdr/VzOA
Qcodc37j+u6SFd+0R+rEjf9Pb0gcTLQedmveZWinhuIiRB1UQXN0hlzxfhTekjDxNR416ryuFeVe
l581+6DQIyM161oUR7J5eBzhJIeT45s4l2RxGoNb2b4t0Ds9iRQsvn2vfj1Ye67RIU7mhRI/I0mi
KJuAIKwiSrUxKaWjxkxqluNdK2f4GQwID/S86gOew8V7E8HUim52SUC20l1Ig7MI/+UcDKz0Pq0K
h8GbCrDeSj2c4UNn0d0Q1cAs4maqF9P1yO7GbE4dstdvl/k7CN7w193r1mCkqjyThSnjpGCaLa7J
bTkK8liBBzSfctFNM+HS5LUV8f1zzoFB+CNyHM2FDWS3xQuhvdpj+SD6GJfJCDWvPjJMW7KLMHJk
ghY+KNbTqrmLwN0F3kKwS5xrlKsYtQgl9+s6HrOB9k3Wmo5Uz0UboNT/R9QQ8z4q/DRHsR2GVqxV
p2lQspnmvkaV2n5Viir4508QLIDF1aQD2BawB1klgYk7JD7ZpeueA+R3FyT4wOLHg4QIviL8PcNz
v7PzpLPdRWA22984kTh4v8cVZtRnxJtEkq20xUfgm3XoSJRdVF7NeZniIpW0Dekwvv8jWOomMcuF
TwFEo0a+zMxkRzz62JgBGBKYHWLo95FoPQ3BpGf7s6IFU733OJSpJYoBAoOrH4Mvu5RDuY/RPgjz
TjrvGWAMzNXy55cVImYf4nVDXJ/JBA9RyLhWIarSmoA/ErOlrJb/zJXXMS2vXooqnkvFRsYAnCxo
CcIGQ7Ush3XZnqk7tXNPMcCwKnMJAISgt8iMchuSZoW7c+CvvRvfG1hKEH8rLOcavNss1qYhDM7i
pJ6knngRYFN6cGBY1044pbZTKV3XbJTbQ9t/zqTD1NPGAmUzrhEXGGNUrmrnR1AI23evh8epWDYQ
vMGQ3Be+hxxssMzOgilFm7/8cyqKSV4OO1BZ6kBkUMjh6SaS/oAM3iX3DoZ9yLNOkwbbt8i55AOe
zwYqOx3SqOPbIB3GYNzcM4YyVrUlfITIiJgSVW4CjLl4XGmePbS6ovlqrkHDHOGzjYKKta9d/gD6
T3qNBGX9YteC3mMNAbM3yo6TSluiCKqtHoA+A0thQcE8zlUTG4FSe6sXpqbshH+04+aKcyNyNxf1
et0NyRwEj0oetlvkFBucp8OpAjpWKPY5wy84LolL0PcVO7KipNiw3KBU4Tmhk83jMWZPAdvVzZTt
hQjB2xpUzo2NJQhogZYfZ9HUEHNzPeivMAVP0OHf+YUcklj79VxSx9awBdASccwq2nHFPDk99sDc
zkQt8RD+SblU40oPmbtFTa//IGHzA1obrwGCQHIzxQWwKDQQBDLq9vnRmAOEVoNcJhhsyj8hOwAK
wmNQXIRt1hAO/cGX5bzcXd9cNv6MU2YY1qb1zzowjDBT1JeWqr22jZT3bESUy8PIcTfUY28j9Bp/
llxdN5gkma3cO/X3BiPkrHFlZPvGNGdzQhQ+7skmUNkAIT/AfFYrPCvGDDAWkndlu41Fv5j4GH8p
j0Lvh35/SuxFE9aYOpbLbLr2pkL4ikVO02pl+E2kWHD955+jIK5DbTiMd1rJeOzhSdhx29W/PfjF
9NDZUSQeY+YRpCDCPXS8a02Jyi9kSeaufNAR2Kx8emfP8342UmifYt76vw9IuxIwQXhSPzLzv76b
qmCumOwNmwRkRpWHXy4O+i/okQ3MVGP7AyvMIbWo0skFDDidOz84yPVypacXTOXTr27no1mxtBo3
odL68JDFdCxg1uiZ2z2XabNu2jXuVH5OPNYaMrfwf582k6EuHwFjhUFgNN2YTTPL38mSwbQ41O5u
DkLByZdBGyq4+VkfG2jQVIjT6F3NlZazaSc4oU3INW/uC8TksqAOdZi08OsHAPY+D3g7nGEXJdbR
FD4aTiA/STz2l1K+C4DbeGa3QSb8gqhKPDlH6Yjwxduo4qqVic5aEBIldB3soZyd/yYhauZwj+4I
Mkf8Ily6Ez0kfSRbROlzHeVAAU/ZgU+764qyzxhBPNADy0j/c4lLtJno782UrpRTT20bjaw9dSQW
C/hRcuDbeY1OPmMHugcljlPfQiOh04eFX8VT0UqPR8BKfiTrrYH9uCsuSaLjGet8d7YPUz5RjsRT
+jdx01WZS850hH1Agvnn54DWr+dlL5Pp50oawazTitKmNppkT54OFpQ/lnS3e8DVYfDx8Wtu85TE
kvUUJjb+hdyJ6vVdt52G9iHIFtrghTARHNwTO9sA/wGAcz79q/rgSfkQVqtQoEAWoL2UOEhmQS6Y
tVaU6NzcXTLjV01S7oUJKLVr1gF6lQ9ROOVLo020OW8K/h14hFoL+YUOT/T/3PeluuEhE+pv4RMu
2Vwc34R2MS3rpNn7O6Eo3MwSY1oEUbXMlaQAirs7c9AyCY+5u4qvz0bpQFtO4mRoXKMPzbqmxFQ2
BIdkPf3XXcR7/BTwUq6aRk2aalmFyw2cz5Qu99ofoR7lqIygHTAc54ZBxQylF93fs66sCZ9pyySr
0nA/ZJXAw8La7xwhupdss44Vt5ltMvcXiuEslafYt0kvy0ybzu81ISzTA3PtbzMSodIxmW4Wa1m+
r0dxDsr8fkm9UOWk4AkC7tr+XWF6Yt53KjrdMWf9XpUUafeoXGFPh6q2p6HdeUdOl70dyCgMyPEF
Oo53Eh43K4Gwjm4k3Ikv7S2mFL0D7J7qHHbCojtGJSRQBu+KiTHYMZmpoMDup0Ufsn527BZoCm3b
7d9q8PoS2BYFK3GeEuEnegc64xvkO9yHxKRD8CkVdbT1Ky2yYjHglM+7ot1osxIonSuxTILztjnP
g/bk6Y1TxIcKEvMS87/iHWtn4zM1nQBII5/CAYEyoue8VhmnVK4IttgAwCPTs2ANsJt4qX0BLPHK
U+ZKCRu2v1+MBecHhWVxX+FeEbbnhU6GMaC6n2ZzDJO1uymFJX01krOMYGO91FTlv35PZLmy3cgK
KzznJe/0vaQ2vmz/+1fZSPDYQRKPgou1MxtfnzBthJwfapMJCZJBzii6EnDPq74zvAa163c+w/QO
bZw0HcioVoAzcfjdWGpKfy8EvgG1AMQpg4bb0nolBf6Do8gFCA/ePcW6InyDYmoOsCtm2Xv1I2au
aLpGnCAvNcjKEWLCqYV0nrw+vH0pr7gYGgI1vpMzGv9I333XnYsTU8a3qNM3eDRM5UasvK7EzlCl
oQMZWod7zL2xet5RMdCINVI85/Yc8QcDknTfPVf5YPpIGSTYOcfLONy6ZECtVMIACC22fTzyStDA
pVr0tKVQuMZKB+S3zJGfkdG+Tv28VPDPSUbBJdD7Oa00NPbrd8eEOlTP5RQlOwnaQb6b2r7mkgbd
4Y/EXbI6iIHSIOkmc2AF3XEPhX70myMVStt0/rkBDh+6JIKvC4kUJL+cTWMEnFkh6gSq19xmRGQL
h/DnXrAZcIiEfZ5j5jpBL/ytdPHL9TEjmO/PqcZNEb3WO6JzfrsZNPdvF1N4DAEyGuwtm3y3aN0S
jGaeNG1c4tjt3eHJoWgodAN/afLseWO/gGQTRPlS5mYL7F8erArI9YvcmXPDCYzOkRznxweQNhSO
slMbN2N7HlnqqyiTu7YbcxkitRfdS5I6lTppzg1Zj9NO8XWBoRABTMsLJsLRv3OKxlIKj8RAC4HH
bX2/IJ6NQfurnCAckBZ9I7keqZR1K9uxxYGqZkE2JFvAk448BD7iiz0bNWZg7eOh1cKexCgTAZWg
1Ys9l2ZZNHxG1/94gey/g+c2rL59Q98euFBoc32YFeBtSTOUYH8d0pWSzsrba8EPgYf17I63zdoq
KfzL5BcNJEG19FQimMhPuEFUT7dfgiIJjNZBX2Ppz/gQ0KAHkuwl+2MjT7u1bGoDVqvR6Xcet5bh
KZhcs6jJoite7SNaMXBuu3ssq/zuF5afrzfl2t7jTZFYAhfB66uOFyzIR8bjmp6hdM2Im7qwJRek
L/NvjFIGv/4QzXnqpptknwm1Gv0SOSh71GtSz592ufcm8Gto6/ERhTz6y0MCF0ZxWw2BJJsKoEZU
pMuMmSSrckeR5e8xbwAR5n0zefVU621+EVd1DZ28epZ7bhoVD6pPkuC+gmU1A+Jp1n+Jf4pf9ca5
6LJFIBIXMTp1eflLF/z8bo1dAa1CYV0KVqNp/XSuQZW3y4SbuBDR5nNncXgt+kQnaomLNCVllnVN
yy9rDzo6wLmU2W+aNDYCsNh9gOu4JOGXBKvP1h8/DGwpTHtNXqKbKwgtQXaVzTqyqq49JD0UbMTf
jOJ6Z1QQqRT5v7V4mmNvK79J3iUMPCWVUZhEtqYvUmyxT2Ac8cPD1ux4AQN/h3yUu6/YlePvyojA
lQCDXP+2IdoN+50ufPB2y+zQAD2xSEOn+YUXoD3SfNV/gRXv/jArCx9raMl7K4sSK3Mtmlnfl4m2
Txt9pHJ0Psv7uJLR/1xB5KrA9PhrVQhH8v48QjFQegbV2EqSuXKSRngmmy8h80EE5MxzdUOIqa3j
anOV/dEISfKUAogQfFGg8dmvdJi/qfPrxI1ZA91W1QB8AqTh8bfoMNL0HtlbHmChRpdVVHZ81kX5
3Um6a/uV1oEqGsDI9kjXTAPDwAYdbpzLCe3k2eP1w43ExVfza5lhSvvifaiGo0tkCtwYYMBZUnKl
AMI7TQnSkd3/QrfwOe2gRY+nH0gs+b8fwbCfbIIbuyDXaEga0AhHNP35whpUGfMIhFI6XXqAR0Z6
jEiR0sbFSV8v8wyBS82hI+PdffSCs7kPBbMJGt/EgJZekIBaABWQYfHqzN+hUUYCSjKaZJ8N8hwR
65pshArnTIYs8yD2+l1gF5DYHiQI4zHj8SZwZYWZHGzipvKuSezG8hGV0u2Zx/2Mo2laRd4RIRp9
w85fAM78WMe48fCA8NpComLaspJaMXtUaT+X7N2AfNw/2mhr40KRnar3YBF3bc8guJxe0/sqxDHN
6Sbi376+SFdw0LQH4mPb2hMn8lUzSGWiFCOk2K7h2KhPch4+uJyIv94J0jFHkP+DRFalVRw8xjT8
WNX5kTyinektJbtiH3tdJ0AIkI36D8lvkxHN095I5Y952nUhUrp5sihu+qpLjPteXMiZUshSiXUF
qJN+NBxXzl4No00oH2D7dCcclcDmrlNuwwlSlNemL54/2LHDChj8iRYpg/a8XadQ6uy2IctRPF2P
YC1vgTCAKbxP68Mlio0mFxwlkU3RLVzIgO9NbaJqvu+OgkwSbV3hc6SSsRHYEoHqKVzts/ILgbw3
w2AzRvCS1GZI/xfFxheI/y2IPEfaox2Qgo9JcYsPe0LfgRKPcBsA+sFYZAEDPvIGpQ173j9RAW9e
AivGrvkVrBST2oswpyU6GYqDFaTp+kkxf0WCzG0zKkkk+694zEliCXFeDhABJDFyV1QVDXRdA79n
xpNh91FKpUlI5h4g1et6pjDuHO3/UpsKA0shAufP6HyMwpQvK1M04PZ4mav9NJFcscmR4d6yO0hj
sO+Qzd1wnJ7Bsar8kVp8xxKqo/ANj1wwE7rfFl8wA34npjMbGYbefkZU8c54eGE1kqlDhYt2FbMe
QmxhVPssLMASn2sggBFn+/ewP3UiqX1NG60dSMsqWJQ2+A7h0qak0LWlE/2Zwxs5zfOO9bWZDHyR
XPqjt425woNAnV2q0FTR0PII5FKBmbPjNRFhlmQ+zRFor4oANiy0+SAkXM0Aexs2vVc1FmjnDGAZ
0NlbSQji0oP+TYzQ4VFzJXoWLG1mOncd1F05gMHo6hr/61Xscbgqqf+dY8JTbOyhnqGYbRE5ds7n
+BQb3W8+LgRoNt4I7VDkhPp8rXhLuGPBMKremtxwdUaI7+xyJCVU523rPmmlQ2ay9Hd+Up85Jir7
7Npcc5yiNaax7mcIox/N9TM4A/0pVzK95SwxD5p41jASoixIy0ObK0KSPOIRPIF5lmfw2R7nMnX1
yERZVU4Nt020qEyp2+k/MHP1GhkmoVa4QdLxx6T9YhoCSfxS6pVJ3r86wHrNuSsNGsfOfdS4b91V
Wg6hvcdEcQETGv3piRMlyd8pHIxiKAirq3XoidBdlQs5ESIiNVA+o3s+Qw+T5/8L5cIXko5lVzqW
VfcHQfbRJEUfi1ZeVGGV9uRiHNg/LgCgILWleIpil5YaUqwdr8tFoth91929mmGaMdjiCYEW+7ev
778+ZeAt6cmRihOs0kl/FXh7MBrE2vztb9+G2Sr4qvc99FVzrSNBK6BNz75RBMfNw8RWZmFwtwq4
VfM4SJjN+hM7ctaaUBjKvuEeWl7i6MzcjbyfIU82EGOCvC/CXDj2WLTarELU3K91wMv/zMrEOHXK
9Bp6K8IksRDuDnN5Ah/1Q3ZOorx6WCyRFwQpRCm9jja8NSzzQtj34HcF+qbHZodE/SrkgRVPt0+W
bMw7iYL1CEYPR0cdhgQXHJW0aVJ228kTqQZCmjC3TLNcyUrI45FfNuRbe7KcmpX2Nde66O/do8uT
4bNLsVTrfm2TSOnlTHkkwNAtbrQYtZ3X/Ov2vEtlqaJNzNerfIYTKA5h7g/FYgJDbBJIqT+fgODs
IAaSYbd2X+bXr8AtRuOuaLkyR6LNuzrjAcZx+8iANX0Bxzbkblw0y4MZs0FZU0gbB1ca8ya6BilG
rC37C5FQ+9OsEDrP+NIL7lC99YoYWN/mOI9s4jtAtUOpOWMiNzuSBXsjWDFRfy0fgsDNJTt2uPiG
P7WPPPgtF2TlMhjbxyN/6wvRm2t1RxQg4fm5g4e+bYwiu6M977JYBSMVwHe9bIGlVWajW8ST2/Dc
YwfEU4XSgHjPsL5PRXwStcomHXDBPtOJrzcCwU6ie3y8Apyqhdu8Lf/krIO2rEqJM2ku94h5vKyJ
zaT6CnskPDaAe4TZ/sU78FBhW5EBt/qO6xkm87c8o9f9+16x/8hgrvm/xNkBJMji7yCm662Qcmal
ttpGn2EPh092GbLuMsr3d8f+jOClw4oAVl19mghrWFMMwMtORN+sPLJoFW9baM69cldGnZotRNBW
RGLDT4tab3vuKs+oDrvkTa21BGwIMI+5uybWkvk0FAICV+8TlpVB4usUhtY=
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

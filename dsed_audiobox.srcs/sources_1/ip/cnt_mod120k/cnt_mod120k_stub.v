// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Jan 29 18:55:35 2022
// Host        : DESKTOP-1AJ0FVF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/home/archivos_dsed_lab/dsed_audiobox/dsed_audiobox.srcs/sources_1/ip/cnt_mod120k/cnt_mod120k_stub.v
// Design      : cnt_mod120k
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *)
module cnt_mod120k(CLK, CE, SCLR, UP, LOAD, L, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SCLR,UP,LOAD,L[16:0],Q[16:0]" */;
  input CLK;
  input CE;
  input SCLR;
  input UP;
  input LOAD;
  input [16:0]L;
  output [16:0]Q;
endmodule

-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sat Jan 29 18:55:35 2022
-- Host        : DESKTOP-1AJ0FVF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/home/archivos_dsed_lab/dsed_audiobox/dsed_audiobox.srcs/sources_1/ip/cnt_mod120k/cnt_mod120k_stub.vhdl
-- Design      : cnt_mod120k
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cnt_mod120k is
  Port ( 
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    UP : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    L : in STD_LOGIC_VECTOR ( 16 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );

end cnt_mod120k;

architecture stub of cnt_mod120k is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,CE,SCLR,UP,LOAD,L[16:0],Q[16:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_10,Vivado 2017.2";
begin
end;

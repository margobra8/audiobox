vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../dsed_audiobox.srcs/sources_1/ip/clk_12megas/clk_12megas_clk_wiz.v" \
"../../../../dsed_audiobox.srcs/sources_1/ip/clk_12megas/clk_12megas.v" \


vlog -work xil_defaultlib \
"glbl.v"


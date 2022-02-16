onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cnt_mod99_opt

do {wave.do}

view wave
view structure
view signals

do {cnt_mod99.udo}

run -all

quit -force

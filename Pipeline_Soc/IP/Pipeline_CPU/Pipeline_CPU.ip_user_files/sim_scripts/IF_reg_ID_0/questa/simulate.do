onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib IF_reg_ID_0_opt

do {wave.do}

view wave
view structure
view signals

do {IF_reg_ID_0.udo}

run -all

quit -force

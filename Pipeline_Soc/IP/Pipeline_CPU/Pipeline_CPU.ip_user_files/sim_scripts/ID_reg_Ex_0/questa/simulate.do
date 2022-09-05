onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ID_reg_Ex_0_opt

do {wave.do}

view wave
view structure
view signals

do {ID_reg_Ex_0.udo}

run -all

quit -force

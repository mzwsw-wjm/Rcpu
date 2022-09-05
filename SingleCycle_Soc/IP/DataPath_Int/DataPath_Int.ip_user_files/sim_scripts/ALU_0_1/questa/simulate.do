onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ALU_0_opt

do {wave.do}

view wave
view structure
view signals

do {ALU_0.udo}

run -all

quit -force

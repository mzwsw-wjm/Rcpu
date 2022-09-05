onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MUX4T1_32_0_opt

do {wave.do}

view wave
view structure
view signals

do {MUX4T1_32_0.udo}

run -all

quit -force

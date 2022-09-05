onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib stall_0_opt

do {wave.do}

view wave
view structure
view signals

do {stall_0.udo}

run -all

quit -force

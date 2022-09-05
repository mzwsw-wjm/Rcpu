onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Pipeline_IF_0_opt

do {wave.do}

view wave
view structure
view signals

do {Pipeline_IF_0.udo}

run -all

quit -force

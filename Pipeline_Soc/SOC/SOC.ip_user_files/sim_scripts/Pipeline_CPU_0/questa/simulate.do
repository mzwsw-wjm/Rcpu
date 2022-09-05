onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Pipeline_CPU_0_opt

do {wave.do}

view wave
view structure
view signals

do {Pipeline_CPU_0.udo}

run -all

quit -force

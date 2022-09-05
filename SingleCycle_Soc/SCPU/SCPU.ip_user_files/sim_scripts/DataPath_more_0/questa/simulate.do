onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib DataPath_more_0_opt

do {wave.do}

view wave
view structure
view signals

do {DataPath_more_0.udo}

run -all

quit -force

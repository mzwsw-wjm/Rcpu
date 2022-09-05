onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Pipeline_IF_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Pipeline_IF_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Pipeline_IF_0.udo}

run -all

endsim

quit -force

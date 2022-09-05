onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+MUX4T1_32_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.MUX4T1_32_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {MUX4T1_32_0.udo}

run -all

endsim

quit -force

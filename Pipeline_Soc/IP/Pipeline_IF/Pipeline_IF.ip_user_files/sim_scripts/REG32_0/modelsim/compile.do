vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Pipeline_IF.srcs/sources_1/ip/REG32_0/PC.v" \
"../../../../Pipeline_IF.srcs/sources_1/ip/REG32_0/sim/REG32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

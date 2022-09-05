vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Pipeline_EX.srcs/sources_1/ip/add_32_1/add_32.v" \
"../../../../Pipeline_EX.srcs/sources_1/ip/add_32_1/sim/add_32_1.v" \


vlog -work xil_defaultlib \
"glbl.v"


vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../DataPath_Int.srcs/sources_1/ip/ALU_0_1/sources_1/new/ALU.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/ALU_0_1/sim/ALU_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../DataPath_Int.srcs/sources_1/ip/MUX2T1_32_1/MUX2T1_32.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/MUX2T1_32_1/sim/MUX2T1_32_1.v" \


vlog -work xil_defaultlib \
"glbl.v"


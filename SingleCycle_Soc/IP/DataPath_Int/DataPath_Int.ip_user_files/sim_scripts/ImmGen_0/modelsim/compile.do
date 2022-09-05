vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../DataPath_Int.srcs/sources_1/ip/ImmGen_0/ImmGen.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/ImmGen_0/sim/ImmGen_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


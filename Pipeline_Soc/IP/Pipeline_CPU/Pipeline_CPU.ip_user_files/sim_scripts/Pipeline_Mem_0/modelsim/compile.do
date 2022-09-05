vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Mem_0/Pipeline_Mem.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Mem_0/sim/Pipeline_Mem_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Mem_reg_WB_0/Mem_reg_WB.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Mem_reg_WB_0/sim/Mem_reg_WB_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


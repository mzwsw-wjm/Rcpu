vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_WB_0/ip/MUX4T1_32_0/MUX4T1_32.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_WB_0/ip/MUX4T1_32_0/sim/MUX4T1_32_0.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_WB_0/new/Pipeline_WB.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_WB_0/sim/Pipeline_WB_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


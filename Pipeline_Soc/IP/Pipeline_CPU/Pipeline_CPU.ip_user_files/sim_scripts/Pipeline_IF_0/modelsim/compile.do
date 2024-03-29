vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_IF_0/ip/add_32_0/add_32.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_IF_0/ip/add_32_0/sim/add_32_0.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_IF_0/ip/REG32_0/PC.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_IF_0/ip/REG32_0/sim/REG32_0.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_IF_0/ip/MUX2T1_32_0/MUX2T1_32.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_IF_0/ip/MUX2T1_32_0/sim/MUX2T1_32_0.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_IF_0/new/Pipeline_IF.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_IF_0/sim/Pipeline_IF_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


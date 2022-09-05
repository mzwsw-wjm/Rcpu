vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
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


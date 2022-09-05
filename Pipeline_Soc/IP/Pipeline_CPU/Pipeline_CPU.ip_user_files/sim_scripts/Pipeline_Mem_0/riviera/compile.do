vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Mem_0/Pipeline_Mem.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Mem_0/sim/Pipeline_Mem_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


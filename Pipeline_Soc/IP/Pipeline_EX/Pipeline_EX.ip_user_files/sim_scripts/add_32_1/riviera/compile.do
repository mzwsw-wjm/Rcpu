vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_EX.srcs/sources_1/ip/add_32_1/add_32.v" \
"../../../../Pipeline_EX.srcs/sources_1/ip/add_32_1/sim/add_32_1.v" \


vlog -work xil_defaultlib \
"glbl.v"


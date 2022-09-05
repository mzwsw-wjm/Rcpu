vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_WB.srcs/sources_1/ip/MUX4T1_32_0/MUX4T1_32.v" \
"../../../../Pipeline_WB.srcs/sources_1/ip/MUX4T1_32_0/sim/MUX4T1_32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


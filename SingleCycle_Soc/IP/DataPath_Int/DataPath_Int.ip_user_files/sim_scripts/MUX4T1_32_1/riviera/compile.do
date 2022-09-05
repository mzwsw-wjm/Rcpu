vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../DataPath_Int.srcs/sources_1/ip/MUX4T1_32_1/MUX4T1_32.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/MUX4T1_32_1/sim/MUX4T1_32_1.v" \


vlog -work xil_defaultlib \
"glbl.v"


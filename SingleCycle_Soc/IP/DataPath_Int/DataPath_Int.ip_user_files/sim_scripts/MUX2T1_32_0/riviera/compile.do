vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../DataPath_Int.srcs/sources_1/ip/MUX2T1_32_0/MUX2T1_32.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/MUX2T1_32_0/sim/MUX2T1_32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


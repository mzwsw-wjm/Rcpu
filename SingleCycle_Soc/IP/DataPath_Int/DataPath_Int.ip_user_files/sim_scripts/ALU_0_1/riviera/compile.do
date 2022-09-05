vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../DataPath_Int.srcs/sources_1/ip/ALU_0_1/sources_1/new/ALU.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/ALU_0_1/sim/ALU_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


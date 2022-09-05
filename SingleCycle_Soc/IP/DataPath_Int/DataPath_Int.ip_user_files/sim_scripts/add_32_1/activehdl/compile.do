vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../DataPath_Int.srcs/sources_1/ip/add_32_1/add_32.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/add_32_1/sim/add_32_1.v" \


vlog -work xil_defaultlib \
"glbl.v"


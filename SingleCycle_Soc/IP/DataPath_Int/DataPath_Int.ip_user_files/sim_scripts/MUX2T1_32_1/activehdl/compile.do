vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../DataPath_Int.srcs/sources_1/ip/MUX2T1_32_1/MUX2T1_32.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/MUX2T1_32_1/sim/MUX2T1_32_1.v" \


vlog -work xil_defaultlib \
"glbl.v"


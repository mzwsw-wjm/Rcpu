vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_IF.srcs/sources_1/ip/REG32_0/PC.v" \
"../../../../Pipeline_IF.srcs/sources_1/ip/REG32_0/sim/REG32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

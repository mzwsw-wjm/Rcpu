vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_EX.srcs/sources_1/ip/ALU_0/ALU.v" \
"../../../../Pipeline_EX.srcs/sources_1/ip/ALU_0/sim/ALU_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


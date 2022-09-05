vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_ID.srcs/sources_1/ip/Regs_0/sources_1/new/Regs.v" \
"../../../../Pipeline_ID.srcs/sources_1/ip/Regs_0/sim/Regs_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


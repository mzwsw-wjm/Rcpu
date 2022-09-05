vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_CPU.srcs/sources_1/ip/IF_reg_ID_0/IF_reg_ID.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/IF_reg_ID_0/sim/IF_reg_ID_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Mem_reg_WB_0/Mem_reg_WB.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Mem_reg_WB_0/sim/Mem_reg_WB_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


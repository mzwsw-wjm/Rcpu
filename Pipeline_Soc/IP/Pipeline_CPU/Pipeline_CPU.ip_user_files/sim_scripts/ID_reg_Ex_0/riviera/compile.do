vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_CPU.srcs/sources_1/ip/ID_reg_Ex_0/ID_reg_EX.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/ID_reg_Ex_0/sim/ID_reg_Ex_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_CPU.srcs/sources_1/ip/ID_reg_Ex_0/ID_reg_EX.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/ID_reg_Ex_0/sim/ID_reg_Ex_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


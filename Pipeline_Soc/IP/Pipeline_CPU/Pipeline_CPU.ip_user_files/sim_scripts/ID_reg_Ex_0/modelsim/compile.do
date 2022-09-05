vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Pipeline_CPU.srcs/sources_1/ip/ID_reg_Ex_0/ID_reg_EX.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/ID_reg_Ex_0/sim/ID_reg_Ex_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


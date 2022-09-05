vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Pipeline_CPU.srcs/sources_1/ip/ID_reg_Ex_0/ID_reg_EX.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/ID_reg_Ex_0/sim/ID_reg_Ex_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


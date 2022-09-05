vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Pipeline_CPU.srcs/sources_1/ip/IF_reg_ID_0/IF_reg_ID.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/IF_reg_ID_0/sim/IF_reg_ID_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


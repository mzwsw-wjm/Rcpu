vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Pipeline_EX.srcs/sources_1/ip/ALU_0/ALU.v" \
"../../../../Pipeline_EX.srcs/sources_1/ip/ALU_0/sim/ALU_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


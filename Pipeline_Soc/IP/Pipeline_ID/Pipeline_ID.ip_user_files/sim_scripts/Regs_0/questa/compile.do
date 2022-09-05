vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Pipeline_ID.srcs/sources_1/ip/Regs_0/sources_1/new/Regs.v" \
"../../../../Pipeline_ID.srcs/sources_1/ip/Regs_0/sim/Regs_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


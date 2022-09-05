vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../DataPath_Int.srcs/sources_1/ip/Regs_0/sources_1/new/Regs.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/Regs_0/sim/Regs_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


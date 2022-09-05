vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Pipeline_CPU.srcs/sources_1/ip/stall_0/stall.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/stall_0/sim/stall_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


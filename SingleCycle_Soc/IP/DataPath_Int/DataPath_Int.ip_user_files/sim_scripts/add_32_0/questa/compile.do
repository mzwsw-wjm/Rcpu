vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../DataPath_Int.srcs/sources_1/ip/add_32_0/add_32.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/add_32_0/sim/add_32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


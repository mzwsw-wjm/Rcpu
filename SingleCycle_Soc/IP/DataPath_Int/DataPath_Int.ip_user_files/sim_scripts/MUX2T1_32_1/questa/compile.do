vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../DataPath_Int.srcs/sources_1/ip/MUX2T1_32_1/MUX2T1_32.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/MUX2T1_32_1/sim/MUX2T1_32_1.v" \


vlog -work xil_defaultlib \
"glbl.v"


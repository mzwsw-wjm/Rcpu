vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Pipeline_ID.srcs/sources_1/ip/ImmGen_0/ImmGen.v" \
"../../../../Pipeline_ID.srcs/sources_1/ip/ImmGen_0/sim/ImmGen_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


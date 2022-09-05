vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_WB_0/ip/MUX4T1_32_0/MUX4T1_32.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_WB_0/ip/MUX4T1_32_0/sim/MUX4T1_32_0.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_WB_0/new/Pipeline_WB.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_WB_0/sim/Pipeline_WB_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


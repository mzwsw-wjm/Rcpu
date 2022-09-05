vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../DataPath_Int.srcs/sources_1/ip/ImmGen_0/ImmGen.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/ImmGen_0/sim/ImmGen_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


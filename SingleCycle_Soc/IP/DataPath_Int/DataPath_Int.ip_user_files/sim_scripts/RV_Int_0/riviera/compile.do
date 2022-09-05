vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../DataPath_Int.srcs/sources_1/ip/RV_Int_0/RV_Int.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/RV_Int_0/sim/RV_Int_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


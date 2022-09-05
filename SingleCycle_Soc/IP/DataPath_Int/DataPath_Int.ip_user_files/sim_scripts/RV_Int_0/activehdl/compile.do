vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../DataPath_Int.srcs/sources_1/ip/RV_Int_0/RV_Int.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/RV_Int_0/sim/RV_Int_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


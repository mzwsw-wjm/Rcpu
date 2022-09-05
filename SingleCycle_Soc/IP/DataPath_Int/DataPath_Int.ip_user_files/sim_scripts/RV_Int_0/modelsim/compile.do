vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../DataPath_Int.srcs/sources_1/ip/RV_Int_0/RV_Int.v" \
"../../../../DataPath_Int.srcs/sources_1/ip/RV_Int_0/sim/RV_Int_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Pipeline_ID.srcs/sources_1/ip/SCPU_ctrl_0/SCPU_ctrl.v" \
"../../../../Pipeline_ID.srcs/sources_1/ip/SCPU_ctrl_0/sim/SCPU_ctrl_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


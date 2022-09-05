vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_ID.srcs/sources_1/ip/SCPU_ctrl_0/SCPU_ctrl.v" \
"../../../../Pipeline_ID.srcs/sources_1/ip/SCPU_ctrl_0/sim/SCPU_ctrl_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


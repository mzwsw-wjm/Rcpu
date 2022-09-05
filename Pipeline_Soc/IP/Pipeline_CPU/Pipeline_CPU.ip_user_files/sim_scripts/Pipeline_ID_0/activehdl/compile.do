vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_ID_0/ip/SCPU_ctrl_0/SCPU_ctrl.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_ID_0/ip/SCPU_ctrl_0/sim/SCPU_ctrl_0.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_ID_0/ip/ImmGen_0/ImmGen.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_ID_0/ip/ImmGen_0/sim/ImmGen_0.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_ID_0/ip/Regs_0/sources_1/new/Regs.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_ID_0/ip/Regs_0/sim/Regs_0.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_ID_0/new/Pipeline_ID.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_ID_0/sim/Pipeline_ID_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


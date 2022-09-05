vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Ex_0/ip/ALU_0/ALU.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Ex_0/ip/ALU_0/sim/ALU_0.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Ex_0/ip/MUX2T1_32_0/MUX2T1_32.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Ex_0/ip/MUX2T1_32_0/sim/MUX2T1_32_0.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Ex_0/ip/add_32_1/add_32.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Ex_0/ip/add_32_1/sim/add_32_1.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Ex_0/ip/add_32_0/sim/add_32_0.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Ex_0/new/Pipeline_EX.v" \
"../../../../Pipeline_CPU.srcs/sources_1/ip/Pipeline_Ex_0/sim/Pipeline_Ex_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/RV_Int_0/RV_Int.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/RV_Int_0/sim/RV_Int_0.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/REG32_0/PC.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/REG32_0/sim/REG32_0.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/ALU_0_1/sources_1/new/ALU.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/ALU_0_1/sim/ALU_0.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/Regs_0/sources_1/new/Regs.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/Regs_0/sim/Regs_0.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/MUX2T1_32_0/MUX2T1_32.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/MUX2T1_32_0/sim/MUX2T1_32_0.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/MUX4T1_32_1/MUX4T1_32.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/MUX4T1_32_1/sim/MUX4T1_32_1.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/MUX4T1_32_0/sim/MUX4T1_32_0.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/MUX2T1_32_1/sim/MUX2T1_32_1.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/add_32_1/add_32.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/add_32_1/sim/add_32_1.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/add_32_0/sim/add_32_0.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/ImmGen_0/ImmGen.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/ip/ImmGen_0/sim/ImmGen_0.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/new/DataPath_Int.v" \
"../../../../SCPU.srcs/sources_1/ip/DataPath_more_0/sim/DataPath_more_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv \
"D:/vivado2017/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/vivado2017/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/stall_0/stall.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/stall_0/sim/stall_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_WB_0/ip/MUX4T1_32_0/MUX4T1_32.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_WB_0/ip/MUX4T1_32_0/sim/MUX4T1_32_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_WB_0/new/Pipeline_WB.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_WB_0/sim/Pipeline_WB_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Mem_reg_WB_0/Mem_reg_WB.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Mem_reg_WB_0/sim/Mem_reg_WB_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_Mem_0/Pipeline_Mem.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_Mem_0/sim/Pipeline_Mem_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Ex_reg_Mem_0/EX_reg_MEM.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Ex_reg_Mem_0/sim/Ex_reg_Mem_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_Ex_0/ip/ALU_0/ALU.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_Ex_0/ip/ALU_0/sim/ALU_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_Ex_0/ip/MUX2T1_32_0/MUX2T1_32.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_Ex_0/ip/MUX2T1_32_0/sim/MUX2T1_32_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_Ex_0/ip/add_32_1/add_32.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_Ex_0/ip/add_32_1/sim/add_32_1.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_Ex_0/ip/add_32_0/sim/add_32_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_Ex_0/new/Pipeline_EX.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_Ex_0/sim/Pipeline_Ex_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/ID_reg_Ex_0/ID_reg_EX.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/ID_reg_Ex_0/sim/ID_reg_Ex_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_ID_0/ip/SCPU_ctrl_0/SCPU_ctrl.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_ID_0/ip/SCPU_ctrl_0/sim/SCPU_ctrl_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_ID_0/ip/ImmGen_0/ImmGen.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_ID_0/ip/ImmGen_0/sim/ImmGen_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_ID_0/ip/Regs_0/sources_1/new/Regs.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_ID_0/ip/Regs_0/sim/Regs_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_ID_0/new/Pipeline_ID.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_ID_0/sim/Pipeline_ID_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/IF_reg_ID_0/IF_reg_ID.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/IF_reg_ID_0/sim/IF_reg_ID_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_IF_0/ip/REG32_0/PC.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_IF_0/ip/REG32_0/sim/REG32_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_IF_0/new/Pipeline_IF.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/ip/Pipeline_IF_0/sim/Pipeline_IF_0.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/new/Pipeline_CPU.v" \
"../../../../SOC.srcs/sources_1/ip/Pipeline_CPU_0/sim/Pipeline_CPU_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


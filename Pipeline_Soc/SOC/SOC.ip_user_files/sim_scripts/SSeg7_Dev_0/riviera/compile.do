vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../SOC.srcs/sources_1/ip/SSeg7_Dev_0/HexTo8SEG.v" \
"../../../../SOC.srcs/sources_1/ip/SSeg7_Dev_0/MC14495_ZJU.v" \
"../../../../SOC.srcs/sources_1/ip/SSeg7_Dev_0/MUX2T1_64.v" \
"../../../../SOC.srcs/sources_1/ip/SSeg7_Dev_0/P2S.v" \
"../../../../SOC.srcs/sources_1/ip/SSeg7_Dev_0/SSeg_map.v" \
"../../../../SOC.srcs/sources_1/ip/SSeg7_Dev_0/SSeg7_Dev.v" \
"../../../../SOC.srcs/sources_1/ip/SSeg7_Dev_0/sim/SSeg7_Dev_0.v" \


vlog -work xil_defaultlib \
"glbl.v"


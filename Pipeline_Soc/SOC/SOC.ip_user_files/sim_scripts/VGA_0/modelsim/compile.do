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
"../../../../SOC.srcs/sources_1/ip/VGA_0/new/Hex2Ascii.v" \
"../../../../SOC.srcs/sources_1/ip/VGA_0/imports/vga/VgaController.v" \
"../../../../SOC.srcs/sources_1/ip/VGA_0/imports/vga/VgaDebugger.v" \
"../../../../SOC.srcs/sources_1/ip/VGA_0/imports/vga/VgaDisplay.v" \
"../../../../SOC.srcs/sources_1/ip/VGA_0/new/VGA.v" \
"../../../../SOC.srcs/sources_1/ip/VGA_0/sim/VGA_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 \
"D:/vivado2017/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/vivado2017/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../SOC.srcs/sources_1/ip/VGA_0/new/Hex2Ascii.v" \
"../../../../SOC.srcs/sources_1/ip/VGA_0/imports/vga/VgaController.v" \
"../../../../SOC.srcs/sources_1/ip/VGA_0/imports/vga/VgaDebugger.v" \
"../../../../SOC.srcs/sources_1/ip/VGA_0/imports/vga/VgaDisplay.v" \
"../../../../SOC.srcs/sources_1/ip/VGA_0/new/VGA.v" \
"../../../../SOC.srcs/sources_1/ip/VGA_0/sim/VGA_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


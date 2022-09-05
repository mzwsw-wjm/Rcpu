-makelib ies_lib/xil_defaultlib -sv \
  "D:/vivado2017/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/vivado2017/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../SOC.srcs/sources_1/ip/VGA_0/new/Hex2Ascii.v" \
  "../../../../SOC.srcs/sources_1/ip/VGA_0/imports/vga/VgaController.v" \
  "../../../../SOC.srcs/sources_1/ip/VGA_0/imports/vga/VgaDebugger.v" \
  "../../../../SOC.srcs/sources_1/ip/VGA_0/imports/vga/VgaDisplay.v" \
  "../../../../SOC.srcs/sources_1/ip/VGA_0/new/VGA.v" \
  "../../../../SOC.srcs/sources_1/ip/VGA_0/sim/VGA_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


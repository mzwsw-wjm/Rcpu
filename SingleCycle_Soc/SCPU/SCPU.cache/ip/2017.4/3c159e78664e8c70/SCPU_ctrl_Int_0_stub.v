// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Apr 15 12:22:35 2022
// Host        : LAPTOP-GIMOV2AL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SCPU_ctrl_Int_0_stub.v
// Design      : SCPU_ctrl_Int_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SCPU_ctrl_Int,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(OPcode, Fun3, Fun7, MIO_ready, Fun_ecall, Fun_mret, 
  ImmSel, ALUSrc_B, MemtoReg, Jump, Branch, BranchN, RegWrite, MemRW, ALU_Control, CPU_MIO, ecall, mret, 
  ill_instr)
/* synthesis syn_black_box black_box_pad_pin="OPcode[4:0],Fun3[2:0],Fun7,MIO_ready,Fun_ecall[2:0],Fun_mret[1:0],ImmSel[2:0],ALUSrc_B,MemtoReg[1:0],Jump[1:0],Branch,BranchN,RegWrite,MemRW,ALU_Control[3:0],CPU_MIO,ecall,mret,ill_instr" */;
  input [4:0]OPcode;
  input [2:0]Fun3;
  input Fun7;
  input MIO_ready;
  input [2:0]Fun_ecall;
  input [1:0]Fun_mret;
  output [2:0]ImmSel;
  output ALUSrc_B;
  output [1:0]MemtoReg;
  output [1:0]Jump;
  output Branch;
  output BranchN;
  output RegWrite;
  output MemRW;
  output [3:0]ALU_Control;
  output CPU_MIO;
  output ecall;
  output mret;
  output ill_instr;
endmodule

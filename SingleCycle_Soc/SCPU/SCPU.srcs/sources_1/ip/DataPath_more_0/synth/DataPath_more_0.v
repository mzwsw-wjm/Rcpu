// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:DataPath_more:1.0
// IP Revision: 2

(* X_CORE_INFO = "DataPath_more,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "DataPath_more_0,DataPath_more,{}" *)
(* CORE_GENERATION_INFO = "DataPath_more_0,DataPath_more,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=DataPath_more,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module DataPath_more_0 (
  Branch,
  BranchN,
  Jump,
  Data_in,
  MemtoReg,
  ALUSrc_B,
  ImmSel,
  inst_field,
  ALU_Control,
  clk,
  rst,
  INT0,
  RegWrite,
  ecall,
  ill_instr,
  mret,
  ALU_out,
  Data_out,
  PC_out,
  x0,
  ra,
  sp,
  gp,
  tp,
  t0,
  t1,
  t2,
  s0,
  s1,
  a0,
  a1,
  a2,
  a3,
  a4,
  a5,
  a6,
  a7,
  s2,
  s3,
  s4,
  s5,
  s6,
  s7,
  s8,
  s9,
  s10,
  s11,
  t3,
  t4,
  t5,
  t6
);

input wire [0 : 0] Branch;
input wire [0 : 0] BranchN;
input wire [1 : 0] Jump;
input wire [31 : 0] Data_in;
input wire [1 : 0] MemtoReg;
input wire ALUSrc_B;
input wire [2 : 0] ImmSel;
input wire [31 : 0] inst_field;
input wire [3 : 0] ALU_Control;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire INT0;
input wire RegWrite;
input wire ecall;
input wire ill_instr;
input wire mret;
output wire [31 : 0] ALU_out;
output wire [31 : 0] Data_out;
output wire [31 : 0] PC_out;
output wire [31 : 0] x0;
output wire [31 : 0] ra;
output wire [31 : 0] sp;
output wire [31 : 0] gp;
output wire [31 : 0] tp;
output wire [31 : 0] t0;
output wire [31 : 0] t1;
output wire [31 : 0] t2;
output wire [31 : 0] s0;
output wire [31 : 0] s1;
output wire [31 : 0] a0;
output wire [31 : 0] a1;
output wire [31 : 0] a2;
output wire [31 : 0] a3;
output wire [31 : 0] a4;
output wire [31 : 0] a5;
output wire [31 : 0] a6;
output wire [31 : 0] a7;
output wire [31 : 0] s2;
output wire [31 : 0] s3;
output wire [31 : 0] s4;
output wire [31 : 0] s5;
output wire [31 : 0] s6;
output wire [31 : 0] s7;
output wire [31 : 0] s8;
output wire [31 : 0] s9;
output wire [31 : 0] s10;
output wire [31 : 0] s11;
output wire [31 : 0] t3;
output wire [31 : 0] t4;
output wire [31 : 0] t5;
output wire [31 : 0] t6;

  DataPath_more inst (
    .Branch(Branch),
    .BranchN(BranchN),
    .Jump(Jump),
    .Data_in(Data_in),
    .MemtoReg(MemtoReg),
    .ALUSrc_B(ALUSrc_B),
    .ImmSel(ImmSel),
    .inst_field(inst_field),
    .ALU_Control(ALU_Control),
    .clk(clk),
    .rst(rst),
    .INT0(INT0),
    .RegWrite(RegWrite),
    .ecall(ecall),
    .ill_instr(ill_instr),
    .mret(mret),
    .ALU_out(ALU_out),
    .Data_out(Data_out),
    .PC_out(PC_out),
    .x0(x0),
    .ra(ra),
    .sp(sp),
    .gp(gp),
    .tp(tp),
    .t0(t0),
    .t1(t1),
    .t2(t2),
    .s0(s0),
    .s1(s1),
    .a0(a0),
    .a1(a1),
    .a2(a2),
    .a3(a3),
    .a4(a4),
    .a5(a5),
    .a6(a6),
    .a7(a7),
    .s2(s2),
    .s3(s3),
    .s4(s4),
    .s5(s5),
    .s6(s6),
    .s7(s7),
    .s8(s8),
    .s9(s9),
    .s10(s10),
    .s11(s11),
    .t3(t3),
    .t4(t4),
    .t5(t5),
    .t6(t6)
  );
endmodule

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


// IP VLNV: xilinx.com:user:Ex_reg_Mem:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module Ex_reg_Mem_0 (
  clk_EXMem,
  rst_EXMem,
  en_EXMem,
  PC_imm_EXMem,
  PC4_in_EXMem,
  PC_in_EXMem,
  valid_in_EXMem,
  Inst_in_EXMem,
  Rd_addr_EXMem,
  zero_in_EXMem,
  ALU_in_EXMem,
  Rs2_in_EXMem,
  Branch_in_EXMem,
  BranchN_in_EXMem,
  MemRW_in_EXMem,
  Junp_in_EXMem,
  MemtoReg_in_EXMem,
  RegWrite_in_EXMem,
  PC_out_EXMem,
  PC4_out_EXMem,
  PC_imm_out_EXMem,
  valid_out_EXMem,
  Inst_out_EXMem,
  Rd_addr_out_EXMem,
  zero_out_EXMem,
  ALU_out_EXMem,
  Rs2_out_EXMem,
  Branch_out_EXMem,
  BranchN_out_EXMem,
  MemRW_out_EXMem,
  Jump_out_EXMem,
  MemtoReg_out_EXMem,
  RegWrite_out_EXMem
);

input wire clk_EXMem;
input wire rst_EXMem;
input wire en_EXMem;
input wire [31 : 0] PC_imm_EXMem;
input wire [31 : 0] PC4_in_EXMem;
input wire [31 : 0] PC_in_EXMem;
input wire valid_in_EXMem;
input wire [31 : 0] Inst_in_EXMem;
input wire [4 : 0] Rd_addr_EXMem;
input wire zero_in_EXMem;
input wire [31 : 0] ALU_in_EXMem;
input wire [31 : 0] Rs2_in_EXMem;
input wire Branch_in_EXMem;
input wire BranchN_in_EXMem;
input wire MemRW_in_EXMem;
input wire Junp_in_EXMem;
input wire [1 : 0] MemtoReg_in_EXMem;
input wire RegWrite_in_EXMem;
output wire [31 : 0] PC_out_EXMem;
output wire [31 : 0] PC4_out_EXMem;
output wire [31 : 0] PC_imm_out_EXMem;
output wire valid_out_EXMem;
output wire [31 : 0] Inst_out_EXMem;
output wire [4 : 0] Rd_addr_out_EXMem;
output wire zero_out_EXMem;
output wire [31 : 0] ALU_out_EXMem;
output wire [31 : 0] Rs2_out_EXMem;
output wire Branch_out_EXMem;
output wire BranchN_out_EXMem;
output wire MemRW_out_EXMem;
output wire Jump_out_EXMem;
output wire [1 : 0] MemtoReg_out_EXMem;
output wire RegWrite_out_EXMem;

  Ex_reg_Mem inst (
    .clk_EXMem(clk_EXMem),
    .rst_EXMem(rst_EXMem),
    .en_EXMem(en_EXMem),
    .PC_imm_EXMem(PC_imm_EXMem),
    .PC4_in_EXMem(PC4_in_EXMem),
    .PC_in_EXMem(PC_in_EXMem),
    .valid_in_EXMem(valid_in_EXMem),
    .Inst_in_EXMem(Inst_in_EXMem),
    .Rd_addr_EXMem(Rd_addr_EXMem),
    .zero_in_EXMem(zero_in_EXMem),
    .ALU_in_EXMem(ALU_in_EXMem),
    .Rs2_in_EXMem(Rs2_in_EXMem),
    .Branch_in_EXMem(Branch_in_EXMem),
    .BranchN_in_EXMem(BranchN_in_EXMem),
    .MemRW_in_EXMem(MemRW_in_EXMem),
    .Junp_in_EXMem(Junp_in_EXMem),
    .MemtoReg_in_EXMem(MemtoReg_in_EXMem),
    .RegWrite_in_EXMem(RegWrite_in_EXMem),
    .PC_out_EXMem(PC_out_EXMem),
    .PC4_out_EXMem(PC4_out_EXMem),
    .PC_imm_out_EXMem(PC_imm_out_EXMem),
    .valid_out_EXMem(valid_out_EXMem),
    .Inst_out_EXMem(Inst_out_EXMem),
    .Rd_addr_out_EXMem(Rd_addr_out_EXMem),
    .zero_out_EXMem(zero_out_EXMem),
    .ALU_out_EXMem(ALU_out_EXMem),
    .Rs2_out_EXMem(Rs2_out_EXMem),
    .Branch_out_EXMem(Branch_out_EXMem),
    .BranchN_out_EXMem(BranchN_out_EXMem),
    .MemRW_out_EXMem(MemRW_out_EXMem),
    .Jump_out_EXMem(Jump_out_EXMem),
    .MemtoReg_out_EXMem(MemtoReg_out_EXMem),
    .RegWrite_out_EXMem(RegWrite_out_EXMem)
  );
endmodule

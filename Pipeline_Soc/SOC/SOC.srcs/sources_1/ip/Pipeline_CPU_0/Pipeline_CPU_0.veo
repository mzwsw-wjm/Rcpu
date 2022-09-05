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

// IP VLNV: xilinx.com:user:Pipeline_CPU:1.0
// IP Revision: 2

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
Pipeline_CPU_0 your_instance_name (
  .clk(clk),                  // input wire clk
  .rst(rst),                  // input wire rst
  .MIO_ready(MIO_ready),      // input wire MIO_ready
  .inst_IF(inst_IF),          // input wire [31 : 0] inst_IF
  .Data_in(Data_in),          // input wire [31 : 0] Data_in
  .CPU_MIO(CPU_MIO),          // output wire CPU_MIO
  .PC_out_IF(PC_out_IF),      // output wire [31 : 0] PC_out_IF
  .PC_out_ID(PC_out_ID),      // output wire [31 : 0] PC_out_ID
  .inst_ID(inst_ID),          // output wire [31 : 0] inst_ID
  .PC_out_Ex(PC_out_Ex),      // output wire [31 : 0] PC_out_Ex
  .MemRW_Ex(MemRW_Ex),        // output wire MemRW_Ex
  .MemRW_Mem(MemRW_Mem),      // output wire MemRW_Mem
  .Data_out(Data_out),        // output wire [31 : 0] Data_out
  .Addr_out(Addr_out),        // output wire [31 : 0] Addr_out
  .Data_out_WB(Data_out_WB),  // output wire [31 : 0] Data_out_WB
  .x0(x0),                    // output wire [31 : 0] x0
  .ra(ra),                    // output wire [31 : 0] ra
  .sp(sp),                    // output wire [31 : 0] sp
  .gp(gp),                    // output wire [31 : 0] gp
  .tp(tp),                    // output wire [31 : 0] tp
  .t0(t0),                    // output wire [31 : 0] t0
  .t1(t1),                    // output wire [31 : 0] t1
  .t2(t2),                    // output wire [31 : 0] t2
  .s0(s0),                    // output wire [31 : 0] s0
  .s1(s1),                    // output wire [31 : 0] s1
  .a0(a0),                    // output wire [31 : 0] a0
  .a1(a1),                    // output wire [31 : 0] a1
  .a2(a2),                    // output wire [31 : 0] a2
  .a3(a3),                    // output wire [31 : 0] a3
  .a4(a4),                    // output wire [31 : 0] a4
  .a5(a5),                    // output wire [31 : 0] a5
  .a6(a6),                    // output wire [31 : 0] a6
  .a7(a7),                    // output wire [31 : 0] a7
  .s2(s2),                    // output wire [31 : 0] s2
  .s3(s3),                    // output wire [31 : 0] s3
  .s4(s4),                    // output wire [31 : 0] s4
  .s5(s5),                    // output wire [31 : 0] s5
  .s6(s6),                    // output wire [31 : 0] s6
  .s7(s7),                    // output wire [31 : 0] s7
  .s8(s8),                    // output wire [31 : 0] s8
  .s9(s9),                    // output wire [31 : 0] s9
  .s10(s10),                  // output wire [31 : 0] s10
  .s11(s11),                  // output wire [31 : 0] s11
  .t3(t3),                    // output wire [31 : 0] t3
  .t4(t4),                    // output wire [31 : 0] t4
  .t5(t5),                    // output wire [31 : 0] t5
  .t6(t6),                    // output wire [31 : 0] t6
  .dis(dis),                  // output wire [31 : 0] dis
  .dis_ID(dis_ID)            // output wire [31 : 0] dis_ID
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file Pipeline_CPU_0.v when simulating
// the core, Pipeline_CPU_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.


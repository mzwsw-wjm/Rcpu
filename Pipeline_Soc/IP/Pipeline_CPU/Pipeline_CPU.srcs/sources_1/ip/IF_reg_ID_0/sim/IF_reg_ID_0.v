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


// IP VLNV: xilinx.com:user:IF_reg_ID:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module IF_reg_ID_0 (
  clk_IFID,
  rst_IFID,
  en_IFID,
  PC_in_IFID,
  inst_in_IFID,
  NOP_IFID,
  PC_out_IFID,
  inst_out_IFID,
  valid_IFID,
  dis_ID
);

input wire clk_IFID;
input wire rst_IFID;
input wire en_IFID;
input wire [31 : 0] PC_in_IFID;
input wire [31 : 0] inst_in_IFID;
input wire NOP_IFID;
output wire [31 : 0] PC_out_IFID;
output wire [31 : 0] inst_out_IFID;
output wire valid_IFID;
output wire [31 : 0] dis_ID;

  IF_reg_ID inst (
    .clk_IFID(clk_IFID),
    .rst_IFID(rst_IFID),
    .en_IFID(en_IFID),
    .PC_in_IFID(PC_in_IFID),
    .inst_in_IFID(inst_in_IFID),
    .NOP_IFID(NOP_IFID),
    .PC_out_IFID(PC_out_IFID),
    .inst_out_IFID(inst_out_IFID),
    .valid_IFID(valid_IFID),
    .dis_ID(dis_ID)
  );
endmodule

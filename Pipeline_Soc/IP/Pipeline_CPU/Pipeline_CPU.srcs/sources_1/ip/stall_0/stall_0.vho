-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:stall:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT stall_0
  PORT (
    rst_stall : IN STD_LOGIC;
    Rs1_addr_ID : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    Rs2_addr_ID : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    RegWrite_out_IDEX : IN STD_LOGIC;
    Rd_addr_out_IDEX : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    RegWrite_out_EXMem : IN STD_LOGIC;
    Rd_addr_out_EXMem : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    Rs1_used : IN STD_LOGIC;
    Rs2_used : IN STD_LOGIC;
    Branch_ID : IN STD_LOGIC;
    BranchN_ID : IN STD_LOGIC;
    Jump_ID : IN STD_LOGIC;
    Branch_out_IDEX : IN STD_LOGIC;
    BranchN_out_IDEX : IN STD_LOGIC;
    Jump_out_IDEX : IN STD_LOGIC;
    Branch_out_EXMem : IN STD_LOGIC;
    BranchN_out_EXMem : IN STD_LOGIC;
    Jump_out_EXMem : IN STD_LOGIC;
    en_IF : OUT STD_LOGIC;
    en_IFID : OUT STD_LOGIC;
    NOP_IDEX : OUT STD_LOGIC;
    NOP_IFID : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : stall_0
  PORT MAP (
    rst_stall => rst_stall,
    Rs1_addr_ID => Rs1_addr_ID,
    Rs2_addr_ID => Rs2_addr_ID,
    RegWrite_out_IDEX => RegWrite_out_IDEX,
    Rd_addr_out_IDEX => Rd_addr_out_IDEX,
    RegWrite_out_EXMem => RegWrite_out_EXMem,
    Rd_addr_out_EXMem => Rd_addr_out_EXMem,
    Rs1_used => Rs1_used,
    Rs2_used => Rs2_used,
    Branch_ID => Branch_ID,
    BranchN_ID => BranchN_ID,
    Jump_ID => Jump_ID,
    Branch_out_IDEX => Branch_out_IDEX,
    BranchN_out_IDEX => BranchN_out_IDEX,
    Jump_out_IDEX => Jump_out_IDEX,
    Branch_out_EXMem => Branch_out_EXMem,
    BranchN_out_EXMem => BranchN_out_EXMem,
    Jump_out_EXMem => Jump_out_EXMem,
    en_IF => en_IF,
    en_IFID => en_IFID,
    NOP_IDEX => NOP_IDEX,
    NOP_IFID => NOP_IFID
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file stall_0.vhd when simulating
-- the core, stall_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.


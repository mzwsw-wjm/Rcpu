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

-- IP VLNV: xilinx.com:user:ID_reg_Ex:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT ID_reg_Ex_0
  PORT (
    clk_IDEX : IN STD_LOGIC;
    rst_IDEX : IN STD_LOGIC;
    en_IDEX : IN STD_LOGIC;
    NOP_IDEX : IN STD_LOGIC;
    valid_in_IDEX : IN STD_LOGIC;
    PC_in_IDEX : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Inst_in_IDEX : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Rd_addr_IDEX : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    Rs1_in_IDEX : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Rs2_in_IDEX : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imm_in_IDEX : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ALUSrc_B_in_IDEX : IN STD_LOGIC;
    ALU_control_in_IDEX : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    Branch_in_IDEX : IN STD_LOGIC;
    BranchN_in_IDEX : IN STD_LOGIC;
    MemRW_in_IDEX : IN STD_LOGIC;
    Jump_in_IDEX : IN STD_LOGIC;
    MemtoReg_in_IDEX : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    RegWrite_in_IDEX : IN STD_LOGIC;
    PC_out_IDEX : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Inst_out_IDEX : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Rd_addr_out_IDEX : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    Rs1_out_IDEX : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Rs2_out_IDEX : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imm_out_IDEX : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ALUSrc_B_out_IDEX : OUT STD_LOGIC;
    ALU_control_out_IDEX : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    Branch_out_IDEX : OUT STD_LOGIC;
    BranchN_out_IDEX : OUT STD_LOGIC;
    MemRW_out_IDEX : OUT STD_LOGIC;
    Jump_out_IDEX : OUT STD_LOGIC;
    MemtoReg_out_IDEX : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    RegWrite_out_IDEX : OUT STD_LOGIC;
    valid_out_IDEX : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : ID_reg_Ex_0
  PORT MAP (
    clk_IDEX => clk_IDEX,
    rst_IDEX => rst_IDEX,
    en_IDEX => en_IDEX,
    NOP_IDEX => NOP_IDEX,
    valid_in_IDEX => valid_in_IDEX,
    PC_in_IDEX => PC_in_IDEX,
    Inst_in_IDEX => Inst_in_IDEX,
    Rd_addr_IDEX => Rd_addr_IDEX,
    Rs1_in_IDEX => Rs1_in_IDEX,
    Rs2_in_IDEX => Rs2_in_IDEX,
    Imm_in_IDEX => Imm_in_IDEX,
    ALUSrc_B_in_IDEX => ALUSrc_B_in_IDEX,
    ALU_control_in_IDEX => ALU_control_in_IDEX,
    Branch_in_IDEX => Branch_in_IDEX,
    BranchN_in_IDEX => BranchN_in_IDEX,
    MemRW_in_IDEX => MemRW_in_IDEX,
    Jump_in_IDEX => Jump_in_IDEX,
    MemtoReg_in_IDEX => MemtoReg_in_IDEX,
    RegWrite_in_IDEX => RegWrite_in_IDEX,
    PC_out_IDEX => PC_out_IDEX,
    Inst_out_IDEX => Inst_out_IDEX,
    Rd_addr_out_IDEX => Rd_addr_out_IDEX,
    Rs1_out_IDEX => Rs1_out_IDEX,
    Rs2_out_IDEX => Rs2_out_IDEX,
    Imm_out_IDEX => Imm_out_IDEX,
    ALUSrc_B_out_IDEX => ALUSrc_B_out_IDEX,
    ALU_control_out_IDEX => ALU_control_out_IDEX,
    Branch_out_IDEX => Branch_out_IDEX,
    BranchN_out_IDEX => BranchN_out_IDEX,
    MemRW_out_IDEX => MemRW_out_IDEX,
    Jump_out_IDEX => Jump_out_IDEX,
    MemtoReg_out_IDEX => MemtoReg_out_IDEX,
    RegWrite_out_IDEX => RegWrite_out_IDEX,
    valid_out_IDEX => valid_out_IDEX
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file ID_reg_Ex_0.vhd when simulating
-- the core, ID_reg_Ex_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.


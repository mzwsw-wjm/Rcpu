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

-- IP VLNV: xilinx.com:user:Ex_reg_Mem:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT Ex_reg_Mem_0
  PORT (
    clk_EXMem : IN STD_LOGIC;
    rst_EXMem : IN STD_LOGIC;
    en_EXMem : IN STD_LOGIC;
    PC_imm_EXMem : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    PC4_in_EXMem : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    PC_in_EXMem : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    valid_in_EXMem : IN STD_LOGIC;
    Inst_in_EXMem : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Rd_addr_EXMem : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    zero_in_EXMem : IN STD_LOGIC;
    ALU_in_EXMem : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Rs2_in_EXMem : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Branch_in_EXMem : IN STD_LOGIC;
    BranchN_in_EXMem : IN STD_LOGIC;
    MemRW_in_EXMem : IN STD_LOGIC;
    Junp_in_EXMem : IN STD_LOGIC;
    MemtoReg_in_EXMem : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    RegWrite_in_EXMem : IN STD_LOGIC;
    PC_out_EXMem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    PC4_out_EXMem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    PC_imm_out_EXMem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    valid_out_EXMem : OUT STD_LOGIC;
    Inst_out_EXMem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Rd_addr_out_EXMem : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    zero_out_EXMem : OUT STD_LOGIC;
    ALU_out_EXMem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Rs2_out_EXMem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Branch_out_EXMem : OUT STD_LOGIC;
    BranchN_out_EXMem : OUT STD_LOGIC;
    MemRW_out_EXMem : OUT STD_LOGIC;
    Jump_out_EXMem : OUT STD_LOGIC;
    MemtoReg_out_EXMem : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    RegWrite_out_EXMem : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : Ex_reg_Mem_0
  PORT MAP (
    clk_EXMem => clk_EXMem,
    rst_EXMem => rst_EXMem,
    en_EXMem => en_EXMem,
    PC_imm_EXMem => PC_imm_EXMem,
    PC4_in_EXMem => PC4_in_EXMem,
    PC_in_EXMem => PC_in_EXMem,
    valid_in_EXMem => valid_in_EXMem,
    Inst_in_EXMem => Inst_in_EXMem,
    Rd_addr_EXMem => Rd_addr_EXMem,
    zero_in_EXMem => zero_in_EXMem,
    ALU_in_EXMem => ALU_in_EXMem,
    Rs2_in_EXMem => Rs2_in_EXMem,
    Branch_in_EXMem => Branch_in_EXMem,
    BranchN_in_EXMem => BranchN_in_EXMem,
    MemRW_in_EXMem => MemRW_in_EXMem,
    Junp_in_EXMem => Junp_in_EXMem,
    MemtoReg_in_EXMem => MemtoReg_in_EXMem,
    RegWrite_in_EXMem => RegWrite_in_EXMem,
    PC_out_EXMem => PC_out_EXMem,
    PC4_out_EXMem => PC4_out_EXMem,
    PC_imm_out_EXMem => PC_imm_out_EXMem,
    valid_out_EXMem => valid_out_EXMem,
    Inst_out_EXMem => Inst_out_EXMem,
    Rd_addr_out_EXMem => Rd_addr_out_EXMem,
    zero_out_EXMem => zero_out_EXMem,
    ALU_out_EXMem => ALU_out_EXMem,
    Rs2_out_EXMem => Rs2_out_EXMem,
    Branch_out_EXMem => Branch_out_EXMem,
    BranchN_out_EXMem => BranchN_out_EXMem,
    MemRW_out_EXMem => MemRW_out_EXMem,
    Jump_out_EXMem => Jump_out_EXMem,
    MemtoReg_out_EXMem => MemtoReg_out_EXMem,
    RegWrite_out_EXMem => RegWrite_out_EXMem
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file Ex_reg_Mem_0.vhd when simulating
-- the core, Ex_reg_Mem_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.


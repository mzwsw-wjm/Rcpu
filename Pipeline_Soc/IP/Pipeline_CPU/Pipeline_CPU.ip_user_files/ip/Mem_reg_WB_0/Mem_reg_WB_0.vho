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

-- IP VLNV: xilinx.com:user:Mem_reg_WB:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT Mem_reg_WB_0
  PORT (
    clk_MemWB : IN STD_LOGIC;
    rst_MemWB : IN STD_LOGIC;
    en_MemWB : IN STD_LOGIC;
    PC4_in_MemWB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    PC_in_MemWB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Inst_in_MemWB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    valid_in_MemWB : IN STD_LOGIC;
    Rd_addr_MemWB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ALU_in_MemWB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    DMem_data_MemWB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MemtoReg_in_MemWB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    RegWrite_in_MemWB : IN STD_LOGIC;
    PC4_out_MemWB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    PC_out_MemWB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Inst_out_MemWB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    valid_out_MemWB : OUT STD_LOGIC;
    Rd_addr_out_MemWB : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ALU_out_MemWB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    DMem_data_out_MemWB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    MemtoReg_out_MemWB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    RegWrite_out_MemWB : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : Mem_reg_WB_0
  PORT MAP (
    clk_MemWB => clk_MemWB,
    rst_MemWB => rst_MemWB,
    en_MemWB => en_MemWB,
    PC4_in_MemWB => PC4_in_MemWB,
    PC_in_MemWB => PC_in_MemWB,
    Inst_in_MemWB => Inst_in_MemWB,
    valid_in_MemWB => valid_in_MemWB,
    Rd_addr_MemWB => Rd_addr_MemWB,
    ALU_in_MemWB => ALU_in_MemWB,
    DMem_data_MemWB => DMem_data_MemWB,
    MemtoReg_in_MemWB => MemtoReg_in_MemWB,
    RegWrite_in_MemWB => RegWrite_in_MemWB,
    PC4_out_MemWB => PC4_out_MemWB,
    PC_out_MemWB => PC_out_MemWB,
    Inst_out_MemWB => Inst_out_MemWB,
    valid_out_MemWB => valid_out_MemWB,
    Rd_addr_out_MemWB => Rd_addr_out_MemWB,
    ALU_out_MemWB => ALU_out_MemWB,
    DMem_data_out_MemWB => DMem_data_out_MemWB,
    MemtoReg_out_MemWB => MemtoReg_out_MemWB,
    RegWrite_out_MemWB => RegWrite_out_MemWB
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file Mem_reg_WB_0.vhd when simulating
-- the core, Mem_reg_WB_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.


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

-- IP VLNV: xilinx.com:user:Pipeline_ID:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT Pipeline_ID_0
  PORT (
    clk_ID : IN STD_LOGIC;
    rst_ID : IN STD_LOGIC;
    RegWrite_in_ID : IN STD_LOGIC;
    Rd_addr_ID : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    Wt_data_ID : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Inst_in_ID : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Rd_addr_out_ID : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    Rs1_out_ID : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Rs2_out_ID : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Rs1_addr_ID : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    Rs2_addr_ID : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    Rs1_used : OUT STD_LOGIC;
    Rs2_used : OUT STD_LOGIC;
    Imm_out_ID : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ALUSrc_B_ID : OUT STD_LOGIC;
    ALU_control_ID : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    Branch_ID : OUT STD_LOGIC;
    BranchN_ID : OUT STD_LOGIC;
    MemRW_ID : OUT STD_LOGIC;
    Jump_ID : OUT STD_LOGIC;
    MemtoReg_ID : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    RegWrite_out_ID : OUT STD_LOGIC;
    x0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ra : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    sp : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    gp : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    tp : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    t0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    t1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    t2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    a0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    a1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    a2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    a3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    a4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    a5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    a6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    a7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    t3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    t4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    t5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    t6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : Pipeline_ID_0
  PORT MAP (
    clk_ID => clk_ID,
    rst_ID => rst_ID,
    RegWrite_in_ID => RegWrite_in_ID,
    Rd_addr_ID => Rd_addr_ID,
    Wt_data_ID => Wt_data_ID,
    Inst_in_ID => Inst_in_ID,
    Rd_addr_out_ID => Rd_addr_out_ID,
    Rs1_out_ID => Rs1_out_ID,
    Rs2_out_ID => Rs2_out_ID,
    Rs1_addr_ID => Rs1_addr_ID,
    Rs2_addr_ID => Rs2_addr_ID,
    Rs1_used => Rs1_used,
    Rs2_used => Rs2_used,
    Imm_out_ID => Imm_out_ID,
    ALUSrc_B_ID => ALUSrc_B_ID,
    ALU_control_ID => ALU_control_ID,
    Branch_ID => Branch_ID,
    BranchN_ID => BranchN_ID,
    MemRW_ID => MemRW_ID,
    Jump_ID => Jump_ID,
    MemtoReg_ID => MemtoReg_ID,
    RegWrite_out_ID => RegWrite_out_ID,
    x0 => x0,
    ra => ra,
    sp => sp,
    gp => gp,
    tp => tp,
    t0 => t0,
    t1 => t1,
    t2 => t2,
    s0 => s0,
    s1 => s1,
    a0 => a0,
    a1 => a1,
    a2 => a2,
    a3 => a3,
    a4 => a4,
    a5 => a5,
    a6 => a6,
    a7 => a7,
    s2 => s2,
    s3 => s3,
    s4 => s4,
    s5 => s5,
    s6 => s6,
    s7 => s7,
    s8 => s8,
    s9 => s9,
    s10 => s10,
    s11 => s11,
    t3 => t3,
    t4 => t4,
    t5 => t5,
    t6 => t6
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file Pipeline_ID_0.vhd when simulating
-- the core, Pipeline_ID_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.


-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Apr 12 20:33:58 2022
-- Host        : LAPTOP-GIMOV2AL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SCPU_ctrl_Int_0_sim_netlist.vhdl
-- Design      : SCPU_ctrl_Int_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    OPcode : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Fun3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Fun7 : in STD_LOGIC;
    MIO_ready : in STD_LOGIC;
    Fun_ecall : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Fun_mret : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ImmSel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ALUSrc_B : out STD_LOGIC;
    MemtoReg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Jump : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Branch : out STD_LOGIC;
    BranchN : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    MemRW : out STD_LOGIC;
    ALU_Control : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CPU_MIO : out STD_LOGIC;
    ecall : out STD_LOGIC;
    mret : out STD_LOGIC;
    ill_instr : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SCPU_ctrl_Int_0,SCPU_ctrl_Int,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SCPU_ctrl_Int,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal ALUSrc_B_INST_0_i_1_n_0 : STD_LOGIC;
  signal \ALU_Control[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_Control[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_Control[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_Control[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_Control[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_Control[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal BranchN_INST_0_i_1_n_0 : STD_LOGIC;
  signal Branch_INST_0_i_1_n_0 : STD_LOGIC;
  signal Branch_INST_0_i_2_n_0 : STD_LOGIC;
  signal Branch_INST_0_i_3_n_0 : STD_LOGIC;
  signal \ImmSel[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal RegWrite_INST_0_i_1_n_0 : STD_LOGIC;
  signal ecall_INST_0_i_1_n_0 : STD_LOGIC;
  signal ill_instr_INST_0_i_1_n_0 : STD_LOGIC;
  signal ill_instr_INST_0_i_2_n_0 : STD_LOGIC;
  signal mret_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALU_Control[1]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALU_Control[2]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of Branch_INST_0_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ImmSel[2]_INST_0_i_1\ : label is "soft_lutpair0";
begin
  CPU_MIO <= 'Z';
ALUSrc_B_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A001001111"
    )
        port map (
      I0 => OPcode(0),
      I1 => OPcode(1),
      I2 => OPcode(3),
      I3 => ALUSrc_B_INST_0_i_1_n_0,
      I4 => OPcode(2),
      I5 => OPcode(4),
      O => ALUSrc_B
    );
ALUSrc_B_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => Fun3(0),
      I1 => Fun3(1),
      I2 => Fun3(2),
      I3 => Fun7,
      O => ALUSrc_B_INST_0_i_1_n_0
    );
\ALU_Control[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => OPcode(4),
      I1 => \ALU_Control[0]_INST_0_i_1_n_0\,
      I2 => OPcode(1),
      I3 => OPcode(0),
      O => ALU_Control(0)
    );
\ALU_Control[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"406A2A6A00000000"
    )
        port map (
      I0 => Fun3(1),
      I1 => Fun3(0),
      I2 => Fun3(2),
      I3 => Fun7,
      I4 => OPcode(3),
      I5 => OPcode(2),
      O => \ALU_Control[0]_INST_0_i_1_n_0\
    );
\ALU_Control[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300074337400"
    )
        port map (
      I0 => \ALU_Control[1]_INST_0_i_1_n_0\,
      I1 => OPcode(0),
      I2 => \ALU_Control[2]_INST_0_i_2_n_0\,
      I3 => OPcode(4),
      I4 => \ALU_Control[1]_INST_0_i_2_n_0\,
      I5 => OPcode(1),
      O => ALU_Control(1)
    );
\ALU_Control[1]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => OPcode(2),
      I1 => OPcode(3),
      O => \ALU_Control[1]_INST_0_i_1_n_0\
    );
\ALU_Control[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09151515FFFFFFFF"
    )
        port map (
      I0 => Fun3(2),
      I1 => Fun3(0),
      I2 => Fun3(1),
      I3 => OPcode(3),
      I4 => Fun7,
      I5 => OPcode(2),
      O => \ALU_Control[1]_INST_0_i_2_n_0\
    );
\ALU_Control[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F404"
    )
        port map (
      I0 => OPcode(1),
      I1 => \ALU_Control[2]_INST_0_i_1_n_0\,
      I2 => OPcode(4),
      I3 => \ALU_Control[2]_INST_0_i_2_n_0\,
      I4 => OPcode(0),
      O => ALU_Control(2)
    );
\ALU_Control[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4156165600000000"
    )
        port map (
      I0 => Fun3(1),
      I1 => Fun3(2),
      I2 => Fun3(0),
      I3 => Fun7,
      I4 => OPcode(3),
      I5 => OPcode(2),
      O => \ALU_Control[2]_INST_0_i_1_n_0\
    );
\ALU_Control[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => OPcode(2),
      I1 => Fun3(1),
      I2 => Fun3(2),
      I3 => OPcode(3),
      I4 => OPcode(1),
      O => \ALU_Control[2]_INST_0_i_2_n_0\
    );
\ALU_Control[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => OPcode(4),
      I1 => \ALU_Control[3]_INST_0_i_1_n_0\,
      I2 => OPcode(1),
      I3 => OPcode(0),
      O => ALU_Control(3)
    );
\ALU_Control[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4074347400000000"
    )
        port map (
      I0 => Fun3(1),
      I1 => Fun3(2),
      I2 => Fun3(0),
      I3 => Fun7,
      I4 => OPcode(3),
      I5 => OPcode(2),
      O => \ALU_Control[3]_INST_0_i_1_n_0\
    );
BranchN_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000F0EEF0EE"
    )
        port map (
      I0 => Branch_INST_0_i_1_n_0,
      I1 => OPcode(1),
      I2 => Branch_INST_0_i_2_n_0,
      I3 => OPcode(0),
      I4 => BranchN_INST_0_i_1_n_0,
      I5 => OPcode(4),
      O => BranchN
    );
BranchN_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => OPcode(2),
      I1 => Fun3(0),
      I2 => Fun3(1),
      I3 => Fun3(2),
      I4 => OPcode(3),
      I5 => OPcode(1),
      O => BranchN_INST_0_i_1_n_0
    );
Branch_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000F0EEF0EE"
    )
        port map (
      I0 => Branch_INST_0_i_1_n_0,
      I1 => OPcode(1),
      I2 => Branch_INST_0_i_2_n_0,
      I3 => OPcode(0),
      I4 => Branch_INST_0_i_3_n_0,
      I5 => OPcode(4),
      O => Branch
    );
Branch_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA8200000000000"
    )
        port map (
      I0 => Fun7,
      I1 => Fun3(1),
      I2 => Fun3(2),
      I3 => Fun3(0),
      I4 => OPcode(3),
      I5 => OPcode(2),
      O => Branch_INST_0_i_1_n_0
    );
Branch_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7B7"
    )
        port map (
      I0 => OPcode(4),
      I1 => OPcode(3),
      I2 => OPcode(2),
      I3 => OPcode(1),
      O => Branch_INST_0_i_2_n_0
    );
Branch_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => OPcode(2),
      I1 => Fun3(0),
      I2 => Fun3(1),
      I3 => Fun3(2),
      I4 => OPcode(3),
      I5 => OPcode(1),
      O => Branch_INST_0_i_3_n_0
    );
\ImmSel[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFDEFF"
    )
        port map (
      I0 => OPcode(0),
      I1 => OPcode(1),
      I2 => OPcode(2),
      I3 => OPcode(3),
      I4 => OPcode(4),
      O => ImmSel(0)
    );
\ImmSel[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFF7FC"
    )
        port map (
      I0 => OPcode(2),
      I1 => OPcode(0),
      I2 => OPcode(1),
      I3 => OPcode(3),
      I4 => OPcode(4),
      O => ImmSel(1)
    );
\ImmSel[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF5EAFAFA"
    )
        port map (
      I0 => OPcode(0),
      I1 => \ImmSel[2]_INST_0_i_1_n_0\,
      I2 => OPcode(4),
      I3 => OPcode(2),
      I4 => OPcode(3),
      I5 => OPcode(1),
      O => ImmSel(2)
    );
\ImmSel[2]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Fun3(1),
      I1 => Fun3(2),
      O => \ImmSel[2]_INST_0_i_1_n_0\
    );
\Jump[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => OPcode(4),
      I1 => OPcode(2),
      I2 => OPcode(3),
      I3 => OPcode(1),
      I4 => OPcode(0),
      O => Jump(0)
    );
\Jump[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => OPcode(4),
      I1 => OPcode(2),
      I2 => OPcode(3),
      I3 => OPcode(1),
      I4 => OPcode(0),
      O => Jump(1)
    );
MemRW_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => OPcode(4),
      I1 => OPcode(2),
      I2 => OPcode(3),
      I3 => OPcode(1),
      I4 => OPcode(0),
      O => MemRW
    );
\MemtoReg[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002001"
    )
        port map (
      I0 => OPcode(0),
      I1 => OPcode(1),
      I2 => OPcode(3),
      I3 => OPcode(2),
      I4 => OPcode(4),
      O => MemtoReg(0)
    );
\MemtoReg[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C400000"
    )
        port map (
      I0 => OPcode(1),
      I1 => OPcode(3),
      I2 => OPcode(2),
      I3 => OPcode(4),
      I4 => OPcode(0),
      O => MemtoReg(1)
    );
RegWrite_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40404040008F0080"
    )
        port map (
      I0 => OPcode(2),
      I1 => OPcode(3),
      I2 => OPcode(0),
      I3 => OPcode(1),
      I4 => RegWrite_INST_0_i_1_n_0,
      I5 => OPcode(4),
      O => RegWrite
    );
RegWrite_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"21FF0000DFFFFFFF"
    )
        port map (
      I0 => Fun3(0),
      I1 => Fun3(1),
      I2 => Fun3(2),
      I3 => Fun7,
      I4 => OPcode(2),
      I5 => OPcode(3),
      O => RegWrite_INST_0_i_1_n_0
    );
ecall_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => OPcode(4),
      I1 => ecall_INST_0_i_1_n_0,
      I2 => OPcode(0),
      O => ecall
    );
ecall_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => OPcode(2),
      I1 => Fun_ecall(1),
      I2 => Fun_ecall(2),
      I3 => Fun_ecall(0),
      I4 => OPcode(3),
      I5 => OPcode(1),
      O => ecall_INST_0_i_1_n_0
    );
ill_instr_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF0CCF0EEF0EE"
    )
        port map (
      I0 => Branch_INST_0_i_1_n_0,
      I1 => OPcode(1),
      I2 => Branch_INST_0_i_2_n_0,
      I3 => OPcode(0),
      I4 => ill_instr_INST_0_i_1_n_0,
      I5 => OPcode(4),
      O => ill_instr
    );
ill_instr_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AFF2A00FFFFFFFF"
    )
        port map (
      I0 => ill_instr_INST_0_i_2_n_0,
      I1 => Fun_mret(0),
      I2 => Fun_mret(1),
      I3 => OPcode(2),
      I4 => \ImmSel[2]_INST_0_i_1_n_0\,
      I5 => OPcode(3),
      O => ill_instr_INST_0_i_1_n_0
    );
ill_instr_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Fun_ecall(2),
      I1 => Fun_ecall(0),
      I2 => Fun_ecall(1),
      O => ill_instr_INST_0_i_2_n_0
    );
mret_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => OPcode(4),
      I1 => OPcode(2),
      I2 => mret_INST_0_i_1_n_0,
      I3 => OPcode(1),
      I4 => OPcode(0),
      O => mret
    );
mret_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8000000000000"
    )
        port map (
      I0 => Fun_mret(0),
      I1 => Fun_ecall(1),
      I2 => Fun_ecall(0),
      I3 => Fun_ecall(2),
      I4 => Fun_mret(1),
      I5 => OPcode(3),
      O => mret_INST_0_i_1_n_0
    );
end STRUCTURE;

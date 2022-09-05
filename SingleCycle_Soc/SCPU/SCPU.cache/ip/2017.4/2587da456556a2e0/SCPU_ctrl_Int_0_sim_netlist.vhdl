-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Apr 15 12:43:03 2022
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
  signal \ALU_Control[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_Control[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_Control[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_Control[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_Control[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_Control[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_Control[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal Branch_INST_0_i_1_n_0 : STD_LOGIC;
  signal \ImmSel[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal ecall_INST_0_i_1_n_0 : STD_LOGIC;
  signal ill_instr_INST_0_i_1_n_0 : STD_LOGIC;
  signal ill_instr_INST_0_i_2_n_0 : STD_LOGIC;
  signal mret_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALU_Control[1]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALU_Control[1]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALU_Control[1]_INST_0_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALU_Control[2]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALU_Control[3]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Branch_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ecall_INST_0_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ill_instr_INST_0_i_2 : label is "soft_lutpair0";
begin
  CPU_MIO <= 'Z';
ALUSrc_B_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001C101"
    )
        port map (
      I0 => OPcode(1),
      I1 => OPcode(4),
      I2 => OPcode(0),
      I3 => OPcode(3),
      I4 => OPcode(2),
      O => ALUSrc_B
    );
\ALU_Control[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055150015001500"
    )
        port map (
      I0 => \ALU_Control[3]_INST_0_i_1_n_0\,
      I1 => Fun7,
      I2 => OPcode(3),
      I3 => Fun3(1),
      I4 => Fun3(2),
      I5 => Fun3(0),
      O => ALU_Control(0)
    );
\ALU_Control[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0A0F0F03000300"
    )
        port map (
      I0 => \ALU_Control[1]_INST_0_i_1_n_0\,
      I1 => \ALU_Control[1]_INST_0_i_2_n_0\,
      I2 => OPcode(1),
      I3 => \ALU_Control[1]_INST_0_i_3_n_0\,
      I4 => OPcode(2),
      I5 => \ALU_Control[1]_INST_0_i_4_n_0\,
      O => ALU_Control(1)
    );
\ALU_Control[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A0077F"
    )
        port map (
      I0 => Fun7,
      I1 => OPcode(3),
      I2 => Fun3(0),
      I3 => Fun3(1),
      I4 => Fun3(2),
      O => \ALU_Control[1]_INST_0_i_1_n_0\
    );
\ALU_Control[1]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => OPcode(2),
      I1 => OPcode(4),
      I2 => OPcode(3),
      O => \ALU_Control[1]_INST_0_i_2_n_0\
    );
\ALU_Control[1]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => OPcode(0),
      I1 => Fun3(1),
      I2 => Fun3(2),
      O => \ALU_Control[1]_INST_0_i_3_n_0\
    );
\ALU_Control[1]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => OPcode(0),
      I1 => OPcode(4),
      O => \ALU_Control[1]_INST_0_i_4_n_0\
    );
\ALU_Control[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F44444444444F"
    )
        port map (
      I0 => \ImmSel[2]_INST_0_i_1_n_0\,
      I1 => OPcode(4),
      I2 => \ALU_Control[3]_INST_0_i_1_n_0\,
      I3 => \ALU_Control[2]_INST_0_i_1_n_0\,
      I4 => Fun3(1),
      I5 => \ALU_Control[2]_INST_0_i_2_n_0\,
      O => ALU_Control(2)
    );
\ALU_Control[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => Fun3(2),
      I1 => Fun3(0),
      I2 => OPcode(3),
      I3 => Fun7,
      O => \ALU_Control[2]_INST_0_i_1_n_0\
    );
\ALU_Control[2]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => Fun7,
      I1 => OPcode(3),
      I2 => Fun3(0),
      I3 => Fun3(2),
      O => \ALU_Control[2]_INST_0_i_2_n_0\
    );
\ALU_Control[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040045404540454"
    )
        port map (
      I0 => \ALU_Control[3]_INST_0_i_1_n_0\,
      I1 => Fun3(0),
      I2 => Fun3(2),
      I3 => Fun3(1),
      I4 => OPcode(3),
      I5 => Fun7,
      O => ALU_Control(3)
    );
\ALU_Control[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => OPcode(0),
      I1 => OPcode(2),
      I2 => OPcode(4),
      I3 => OPcode(1),
      O => \ALU_Control[3]_INST_0_i_1_n_0\
    );
BranchN_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => Branch_INST_0_i_1_n_0,
      I1 => \ImmSel[2]_INST_0_i_1_n_0\,
      I2 => Fun3(0),
      O => BranchN
    );
Branch_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Branch_INST_0_i_1_n_0,
      I1 => \ImmSel[2]_INST_0_i_1_n_0\,
      I2 => Fun3(0),
      O => Branch
    );
Branch_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FDC7C"
    )
        port map (
      I0 => OPcode(3),
      I1 => OPcode(4),
      I2 => OPcode(0),
      I3 => OPcode(2),
      I4 => OPcode(1),
      O => Branch_INST_0_i_1_n_0
    );
\ImmSel[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FF7FD"
    )
        port map (
      I0 => OPcode(3),
      I1 => OPcode(0),
      I2 => OPcode(1),
      I3 => OPcode(2),
      I4 => OPcode(4),
      O => ImmSel(0)
    );
\ImmSel[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DBFFFFFA"
    )
        port map (
      I0 => OPcode(1),
      I1 => OPcode(2),
      I2 => OPcode(4),
      I3 => OPcode(0),
      I4 => OPcode(3),
      O => ImmSel(1)
    );
\ImmSel[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAA8AAA8AAA8"
    )
        port map (
      I0 => \ImmSel[2]_INST_0_i_1_n_0\,
      I1 => OPcode(4),
      I2 => OPcode(1),
      I3 => OPcode(0),
      I4 => OPcode(2),
      I5 => OPcode(3),
      O => ImmSel(2)
    );
\ImmSel[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => OPcode(3),
      I1 => OPcode(2),
      I2 => Fun3(2),
      I3 => Fun3(1),
      I4 => OPcode(0),
      I5 => OPcode(1),
      O => \ImmSel[2]_INST_0_i_1_n_0\
    );
\Jump[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => OPcode(1),
      I1 => OPcode(0),
      I2 => OPcode(2),
      I3 => OPcode(4),
      I4 => OPcode(3),
      O => Jump(0)
    );
\Jump[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => OPcode(1),
      I1 => OPcode(0),
      I2 => OPcode(2),
      I3 => OPcode(4),
      I4 => OPcode(3),
      O => Jump(1)
    );
MemRW_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => OPcode(3),
      I1 => OPcode(0),
      I2 => OPcode(4),
      I3 => OPcode(2),
      I4 => OPcode(1),
      O => MemRW
    );
\MemtoReg[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000001"
    )
        port map (
      I0 => OPcode(4),
      I1 => OPcode(1),
      I2 => OPcode(2),
      I3 => OPcode(3),
      I4 => OPcode(0),
      O => MemtoReg(0)
    );
\MemtoReg[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000880"
    )
        port map (
      I0 => OPcode(0),
      I1 => OPcode(3),
      I2 => OPcode(2),
      I3 => OPcode(4),
      I4 => OPcode(1),
      O => MemtoReg(1)
    );
RegWrite_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080008D1"
    )
        port map (
      I0 => OPcode(0),
      I1 => OPcode(3),
      I2 => OPcode(2),
      I3 => OPcode(4),
      I4 => OPcode(1),
      O => RegWrite
    );
ecall_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => Fun_ecall(1),
      I1 => Fun_ecall(2),
      I2 => Fun_ecall(0),
      I3 => OPcode(2),
      I4 => ecall_INST_0_i_1_n_0,
      O => ecall
    );
ecall_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => OPcode(1),
      I1 => OPcode(0),
      I2 => OPcode(4),
      I3 => OPcode(3),
      O => ecall_INST_0_i_1_n_0
    );
ill_instr_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020000FF02FF02"
    )
        port map (
      I0 => ill_instr_INST_0_i_1_n_0,
      I1 => mret_INST_0_i_1_n_0,
      I2 => ecall_INST_0_i_1_n_0,
      I3 => ill_instr_INST_0_i_2_n_0,
      I4 => \ImmSel[2]_INST_0_i_1_n_0\,
      I5 => OPcode(4),
      O => ill_instr
    );
ill_instr_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Fun_mret(1),
      I1 => Fun_mret(0),
      O => ill_instr_INST_0_i_1_n_0
    );
ill_instr_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA3EFEFE"
    )
        port map (
      I0 => OPcode(1),
      I1 => OPcode(4),
      I2 => OPcode(0),
      I3 => OPcode(2),
      I4 => OPcode(3),
      O => ill_instr_INST_0_i_2_n_0
    );
mret_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => mret_INST_0_i_1_n_0,
      I1 => ecall_INST_0_i_1_n_0,
      I2 => OPcode(2),
      I3 => Fun_mret(1),
      I4 => Fun_mret(0),
      O => mret
    );
mret_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Fun_ecall(0),
      I1 => Fun_ecall(2),
      I2 => Fun_ecall(1),
      O => mret_INST_0_i_1_n_0
    );
end STRUCTURE;

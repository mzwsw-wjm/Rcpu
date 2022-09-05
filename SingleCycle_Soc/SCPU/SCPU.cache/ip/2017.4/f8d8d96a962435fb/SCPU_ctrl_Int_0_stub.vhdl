-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Apr 12 20:33:58 2022
-- Host        : LAPTOP-GIMOV2AL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SCPU_ctrl_Int_0_stub.vhdl
-- Design      : SCPU_ctrl_Int_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "OPcode[4:0],Fun3[2:0],Fun7,MIO_ready,Fun_ecall[2:0],Fun_mret[1:0],ImmSel[2:0],ALUSrc_B,MemtoReg[1:0],Jump[1:0],Branch,BranchN,RegWrite,MemRW,ALU_Control[3:0],CPU_MIO,ecall,mret,ill_instr";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SCPU_ctrl_Int,Vivado 2017.4";
begin
end;

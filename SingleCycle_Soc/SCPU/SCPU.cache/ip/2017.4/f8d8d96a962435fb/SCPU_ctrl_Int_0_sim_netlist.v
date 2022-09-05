// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Apr 12 20:33:58 2022
// Host        : LAPTOP-GIMOV2AL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SCPU_ctrl_Int_0_sim_netlist.v
// Design      : SCPU_ctrl_Int_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SCPU_ctrl_Int_0,SCPU_ctrl_Int,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "SCPU_ctrl_Int,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (OPcode,
    Fun3,
    Fun7,
    MIO_ready,
    Fun_ecall,
    Fun_mret,
    ImmSel,
    ALUSrc_B,
    MemtoReg,
    Jump,
    Branch,
    BranchN,
    RegWrite,
    MemRW,
    ALU_Control,
    CPU_MIO,
    ecall,
    mret,
    ill_instr);
  input [4:0]OPcode;
  input [2:0]Fun3;
  input Fun7;
  input MIO_ready;
  input [2:0]Fun_ecall;
  input [1:0]Fun_mret;
  output [2:0]ImmSel;
  output ALUSrc_B;
  output [1:0]MemtoReg;
  output [1:0]Jump;
  output Branch;
  output BranchN;
  output RegWrite;
  output MemRW;
  output [3:0]ALU_Control;
  output CPU_MIO;
  output ecall;
  output mret;
  output ill_instr;

  wire ALUSrc_B;
  wire ALUSrc_B_INST_0_i_1_n_0;
  wire [3:0]ALU_Control;
  wire \ALU_Control[0]_INST_0_i_1_n_0 ;
  wire \ALU_Control[1]_INST_0_i_1_n_0 ;
  wire \ALU_Control[1]_INST_0_i_2_n_0 ;
  wire \ALU_Control[2]_INST_0_i_1_n_0 ;
  wire \ALU_Control[2]_INST_0_i_2_n_0 ;
  wire \ALU_Control[3]_INST_0_i_1_n_0 ;
  wire Branch;
  wire BranchN;
  wire BranchN_INST_0_i_1_n_0;
  wire Branch_INST_0_i_1_n_0;
  wire Branch_INST_0_i_2_n_0;
  wire Branch_INST_0_i_3_n_0;
  wire [2:0]Fun3;
  wire Fun7;
  wire [2:0]Fun_ecall;
  wire [1:0]Fun_mret;
  wire [2:0]ImmSel;
  wire \ImmSel[2]_INST_0_i_1_n_0 ;
  wire [1:0]Jump;
  wire MemRW;
  wire [1:0]MemtoReg;
  wire [4:0]OPcode;
  wire RegWrite;
  wire RegWrite_INST_0_i_1_n_0;
  wire ecall;
  wire ecall_INST_0_i_1_n_0;
  wire ill_instr;
  wire ill_instr_INST_0_i_1_n_0;
  wire ill_instr_INST_0_i_2_n_0;
  wire mret;
  wire mret_INST_0_i_1_n_0;

  LUT6 #(
    .INIT(64'h0000A0A001001111)) 
    ALUSrc_B_INST_0
       (.I0(OPcode[0]),
        .I1(OPcode[1]),
        .I2(OPcode[3]),
        .I3(ALUSrc_B_INST_0_i_1_n_0),
        .I4(OPcode[2]),
        .I5(OPcode[4]),
        .O(ALUSrc_B));
  LUT4 #(
    .INIT(16'hDFFF)) 
    ALUSrc_B_INST_0_i_1
       (.I0(Fun3[0]),
        .I1(Fun3[1]),
        .I2(Fun3[2]),
        .I3(Fun7),
        .O(ALUSrc_B_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    \ALU_Control[0]_INST_0 
       (.I0(OPcode[4]),
        .I1(\ALU_Control[0]_INST_0_i_1_n_0 ),
        .I2(OPcode[1]),
        .I3(OPcode[0]),
        .O(ALU_Control[0]));
  LUT6 #(
    .INIT(64'h406A2A6A00000000)) 
    \ALU_Control[0]_INST_0_i_1 
       (.I0(Fun3[1]),
        .I1(Fun3[0]),
        .I2(Fun3[2]),
        .I3(Fun7),
        .I4(OPcode[3]),
        .I5(OPcode[2]),
        .O(\ALU_Control[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000300074337400)) 
    \ALU_Control[1]_INST_0 
       (.I0(\ALU_Control[1]_INST_0_i_1_n_0 ),
        .I1(OPcode[0]),
        .I2(\ALU_Control[2]_INST_0_i_2_n_0 ),
        .I3(OPcode[4]),
        .I4(\ALU_Control[1]_INST_0_i_2_n_0 ),
        .I5(OPcode[1]),
        .O(ALU_Control[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ALU_Control[1]_INST_0_i_1 
       (.I0(OPcode[2]),
        .I1(OPcode[3]),
        .O(\ALU_Control[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h09151515FFFFFFFF)) 
    \ALU_Control[1]_INST_0_i_2 
       (.I0(Fun3[2]),
        .I1(Fun3[0]),
        .I2(Fun3[1]),
        .I3(OPcode[3]),
        .I4(Fun7),
        .I5(OPcode[2]),
        .O(\ALU_Control[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000F404)) 
    \ALU_Control[2]_INST_0 
       (.I0(OPcode[1]),
        .I1(\ALU_Control[2]_INST_0_i_1_n_0 ),
        .I2(OPcode[4]),
        .I3(\ALU_Control[2]_INST_0_i_2_n_0 ),
        .I4(OPcode[0]),
        .O(ALU_Control[2]));
  LUT6 #(
    .INIT(64'h4156165600000000)) 
    \ALU_Control[2]_INST_0_i_1 
       (.I0(Fun3[1]),
        .I1(Fun3[2]),
        .I2(Fun3[0]),
        .I3(Fun7),
        .I4(OPcode[3]),
        .I5(OPcode[2]),
        .O(\ALU_Control[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ALU_Control[2]_INST_0_i_2 
       (.I0(OPcode[2]),
        .I1(Fun3[1]),
        .I2(Fun3[2]),
        .I3(OPcode[3]),
        .I4(OPcode[1]),
        .O(\ALU_Control[2]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \ALU_Control[3]_INST_0 
       (.I0(OPcode[4]),
        .I1(\ALU_Control[3]_INST_0_i_1_n_0 ),
        .I2(OPcode[1]),
        .I3(OPcode[0]),
        .O(ALU_Control[3]));
  LUT6 #(
    .INIT(64'h4074347400000000)) 
    \ALU_Control[3]_INST_0_i_1 
       (.I0(Fun3[1]),
        .I1(Fun3[2]),
        .I2(Fun3[0]),
        .I3(Fun7),
        .I4(OPcode[3]),
        .I5(OPcode[2]),
        .O(\ALU_Control[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000F0EEF0EE)) 
    BranchN_INST_0
       (.I0(Branch_INST_0_i_1_n_0),
        .I1(OPcode[1]),
        .I2(Branch_INST_0_i_2_n_0),
        .I3(OPcode[0]),
        .I4(BranchN_INST_0_i_1_n_0),
        .I5(OPcode[4]),
        .O(BranchN));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    BranchN_INST_0_i_1
       (.I0(OPcode[2]),
        .I1(Fun3[0]),
        .I2(Fun3[1]),
        .I3(Fun3[2]),
        .I4(OPcode[3]),
        .I5(OPcode[1]),
        .O(BranchN_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0FFF000F0EEF0EE)) 
    Branch_INST_0
       (.I0(Branch_INST_0_i_1_n_0),
        .I1(OPcode[1]),
        .I2(Branch_INST_0_i_2_n_0),
        .I3(OPcode[0]),
        .I4(Branch_INST_0_i_3_n_0),
        .I5(OPcode[4]),
        .O(Branch));
  LUT6 #(
    .INIT(64'h8AA8200000000000)) 
    Branch_INST_0_i_1
       (.I0(Fun7),
        .I1(Fun3[1]),
        .I2(Fun3[2]),
        .I3(Fun3[0]),
        .I4(OPcode[3]),
        .I5(OPcode[2]),
        .O(Branch_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF7B7)) 
    Branch_INST_0_i_2
       (.I0(OPcode[4]),
        .I1(OPcode[3]),
        .I2(OPcode[2]),
        .I3(OPcode[1]),
        .O(Branch_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    Branch_INST_0_i_3
       (.I0(OPcode[2]),
        .I1(Fun3[0]),
        .I2(Fun3[1]),
        .I3(Fun3[2]),
        .I4(OPcode[3]),
        .I5(OPcode[1]),
        .O(Branch_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hF7FFDEFF)) 
    \ImmSel[0]_INST_0 
       (.I0(OPcode[0]),
        .I1(OPcode[1]),
        .I2(OPcode[2]),
        .I3(OPcode[3]),
        .I4(OPcode[4]),
        .O(ImmSel[0]));
  LUT5 #(
    .INIT(32'hBFFFF7FC)) 
    \ImmSel[1]_INST_0 
       (.I0(OPcode[2]),
        .I1(OPcode[0]),
        .I2(OPcode[1]),
        .I3(OPcode[3]),
        .I4(OPcode[4]),
        .O(ImmSel[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF5EAFAFA)) 
    \ImmSel[2]_INST_0 
       (.I0(OPcode[0]),
        .I1(\ImmSel[2]_INST_0_i_1_n_0 ),
        .I2(OPcode[4]),
        .I3(OPcode[2]),
        .I4(OPcode[3]),
        .I5(OPcode[1]),
        .O(ImmSel[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ImmSel[2]_INST_0_i_1 
       (.I0(Fun3[1]),
        .I1(Fun3[2]),
        .O(\ImmSel[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \Jump[0]_INST_0 
       (.I0(OPcode[4]),
        .I1(OPcode[2]),
        .I2(OPcode[3]),
        .I3(OPcode[1]),
        .I4(OPcode[0]),
        .O(Jump[0]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \Jump[1]_INST_0 
       (.I0(OPcode[4]),
        .I1(OPcode[2]),
        .I2(OPcode[3]),
        .I3(OPcode[1]),
        .I4(OPcode[0]),
        .O(Jump[1]));
  LUT5 #(
    .INIT(32'h00000010)) 
    MemRW_INST_0
       (.I0(OPcode[4]),
        .I1(OPcode[2]),
        .I2(OPcode[3]),
        .I3(OPcode[1]),
        .I4(OPcode[0]),
        .O(MemRW));
  LUT5 #(
    .INIT(32'h00002001)) 
    \MemtoReg[0]_INST_0 
       (.I0(OPcode[0]),
        .I1(OPcode[1]),
        .I2(OPcode[3]),
        .I3(OPcode[2]),
        .I4(OPcode[4]),
        .O(MemtoReg[0]));
  LUT5 #(
    .INIT(32'h0C400000)) 
    \MemtoReg[1]_INST_0 
       (.I0(OPcode[1]),
        .I1(OPcode[3]),
        .I2(OPcode[2]),
        .I3(OPcode[4]),
        .I4(OPcode[0]),
        .O(MemtoReg[1]));
  LUT6 #(
    .INIT(64'h40404040008F0080)) 
    RegWrite_INST_0
       (.I0(OPcode[2]),
        .I1(OPcode[3]),
        .I2(OPcode[0]),
        .I3(OPcode[1]),
        .I4(RegWrite_INST_0_i_1_n_0),
        .I5(OPcode[4]),
        .O(RegWrite));
  LUT6 #(
    .INIT(64'h21FF0000DFFFFFFF)) 
    RegWrite_INST_0_i_1
       (.I0(Fun3[0]),
        .I1(Fun3[1]),
        .I2(Fun3[2]),
        .I3(Fun7),
        .I4(OPcode[2]),
        .I5(OPcode[3]),
        .O(RegWrite_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    ecall_INST_0
       (.I0(OPcode[4]),
        .I1(ecall_INST_0_i_1_n_0),
        .I2(OPcode[0]),
        .O(ecall));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    ecall_INST_0_i_1
       (.I0(OPcode[2]),
        .I1(Fun_ecall[1]),
        .I2(Fun_ecall[2]),
        .I3(Fun_ecall[0]),
        .I4(OPcode[3]),
        .I5(OPcode[1]),
        .O(ecall_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0FFF0CCF0EEF0EE)) 
    ill_instr_INST_0
       (.I0(Branch_INST_0_i_1_n_0),
        .I1(OPcode[1]),
        .I2(Branch_INST_0_i_2_n_0),
        .I3(OPcode[0]),
        .I4(ill_instr_INST_0_i_1_n_0),
        .I5(OPcode[4]),
        .O(ill_instr));
  LUT6 #(
    .INIT(64'h2AFF2A00FFFFFFFF)) 
    ill_instr_INST_0_i_1
       (.I0(ill_instr_INST_0_i_2_n_0),
        .I1(Fun_mret[0]),
        .I2(Fun_mret[1]),
        .I3(OPcode[2]),
        .I4(\ImmSel[2]_INST_0_i_1_n_0 ),
        .I5(OPcode[3]),
        .O(ill_instr_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    ill_instr_INST_0_i_2
       (.I0(Fun_ecall[2]),
        .I1(Fun_ecall[0]),
        .I2(Fun_ecall[1]),
        .O(ill_instr_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    mret_INST_0
       (.I0(OPcode[4]),
        .I1(OPcode[2]),
        .I2(mret_INST_0_i_1_n_0),
        .I3(OPcode[1]),
        .I4(OPcode[0]),
        .O(mret));
  LUT6 #(
    .INIT(64'hAAA8000000000000)) 
    mret_INST_0_i_1
       (.I0(Fun_mret[0]),
        .I1(Fun_ecall[1]),
        .I2(Fun_ecall[0]),
        .I3(Fun_ecall[2]),
        .I4(Fun_mret[1]),
        .I5(OPcode[3]),
        .O(mret_INST_0_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/13 15:48:40
// Design Name: 
// Module Name: Pipeline_CPU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Pipeline_CPU(
      input wire clk,
      input wire rst,
      input wire MIO_ready,
      input wire[31:0] inst_IF,
      input wire[31:0] Data_in,
      
      output wire CPU_MIO,
      output wire[31:0] PC_out_IF,
      output wire[31:0] PC_out_ID,
      output wire[31:0] inst_ID,
      output wire[31:0] PC_out_Ex,
      output wire MemRW_Ex,
      output wire MemRW_Mem,
      output wire[31:0] Data_out,
      output wire[31:0] Addr_out,
      output wire[31:0] Data_out_WB,
      output [31:0] x0,ra,sp,gp,tp,t0,t1,t2,s0,s1,
      output [31:0] a0,a1,a2,a3,a4,a5,a6,a7,s2,s3,
      output [31:0] s4,s5,s6,s7,s8,s9,s10,s11,t3,t4,
      output [31:0] t5,t6,
      output wire[31:0] dis,
      output wire[31:0] dis_ID
    );
    wire [31:0] PC_imm_out_EXMem;
    wire        PCSrc;
    wire        en_IF;
    Pipeline_IF_0 U1(
      .dis(dis),
      .clk_IF(clk),        // input wire clk_IF
      .rst_IF(rst),        // input wire rst_IF
      .en_IF(en_IF),          // input wire en_IF
      .PC_in_IF(PC_imm_out_EXMem),    // input wire [31 : 0] PC_in_IF
      .PCSrc(PCSrc),          // input wire PCSrc
      .PC_out_IF(PC_out_IF)  // output wire [31 : 0] PC_out_IF
    );
    wire NOP_IFID;
    wire en_IFID;
    wire valid_IFID;
    IF_reg_ID_0 U2 (
      .dis_ID(dis_ID),
      .clk_IFID(clk),            // input wire clk_IFID
      .rst_IFID(rst),            // input wire rst_IFID
      .en_IFID(en_IFID),              // input wire en_IFID
      .PC_in_IFID(PC_out_IF),        // input wire [31 : 0] PC_in_IFID
      .inst_in_IFID(inst_IF),    // input wire [31 : 0] inst_in_IFID
      .PC_out_IFID(PC_out_ID),      // output wire [31 : 0] PC_out_IFID
      .NOP_IFID(NOP_IFID),
      .valid_IFID(valid_IFID),
      .inst_out_IFID(inst_ID)  // output wire [31 : 0] inst_out_IFID
    );
    wire        RegWrite_out_MemWB;
    wire [4:0]  Rd_addr_out_MemWB;
    wire [4:0]  Rd_addr_out_ID;
    wire [31:0] Rs1_out_ID;
    wire [31:0] Rs2_out_ID;
    wire [31:0] Imm_out_ID;
    wire        ALUSrc_B_ID;
    wire [2:0]  ALU_control_ID;
    wire        Branch_ID;
    wire        BranchN_ID;
    wire        MemRW_ID;
    wire        Jump_ID;
    wire [1:0]  MemtoReg_ID;
    wire        RegWrite_out_ID;
    wire [4:0]  Rs1_addr_ID;
    wire [4:0]  Rs2_addr_ID;
    wire        Rs1_used;
    wire        Rs2_used;
    Pipeline_ID_0 U3 (
      .clk_ID(clk),                    // input wire clk_ID
      .rst_ID(rst),                    // input wire rst_ID
      .RegWrite_in_ID(RegWrite_out_MemWB),    // input wire RegWrite_in_ID
      .Rd_addr_ID(Rd_addr_out_MemWB),            // input wire [4 : 0] Rd_addr_ID
      .Wt_data_ID(Data_out_WB),            // input wire [31 : 0] Wt_data_ID
      .Inst_in_ID(inst_ID),            // input wire [31 : 0] Inst_in_ID
      .Rd_addr_out_ID(Rd_addr_out_ID),    // output wire [31 : 0] Rd_addr_out_ID
      .Rs1_out_ID(Rs1_out_ID),            // output wire [31 : 0] Rs1_out_ID
      .Rs2_out_ID(Rs2_out_ID),            // output wire [31 : 0] Rs2_out_ID
      .Rs1_addr_ID(Rs1_addr_ID),
      .Rs2_addr_ID(Rs2_addr_ID),      
      .Rs1_used(Rs1_used),
      .Rs2_used(Rs2_used),
      .Imm_out_ID(Imm_out_ID),            // output wire [31 : 0] Imm_out_ID
      .ALUSrc_B_ID(ALUSrc_B_ID),          // output wire ALUSrc_B_ID
      .ALU_control_ID(ALU_control_ID),    // output wire [2 : 0] ALU_control_ID
      .Branch_ID(Branch_ID),              // output wire Branch_ID
      .BranchN_ID(BranchN_ID),            // output wire BranchN_ID
      .MemRW_ID(MemRW_ID),                // output wire MemRW_ID
      .Jump_ID(Jump_ID),                  // output wire Jump_ID
      .MemtoReg_ID(MemtoReg_ID),          // output wire [1 : 0] MemtoReg_ID
      .RegWrite_out_ID(RegWrite_out_ID), // output wire RegWrite_out_ID
       .x0(x0),
       .ra(ra),
       .sp(sp),
       .gp(gp),
       .tp(tp),
       .t0(t0),
       .t1(t1),
       .t2(t2),
       .s0(s0),
       .s1(s1),
       .a0(a0),
       .a1(a1),
       .a2(a2),
       .a3(a3),
       .a4(a4),
       .a5(a5),
       .a6(a6),
       .a7(a7),
       .s2(s2),
       .s3(s3),
       .s4(s4),
       .s5(s5),
       .s6(s6),
       .s7(s7),
       .s8(s8),
       .s9(s9),
       .s10(s10),
       .s11(s11),
       .t3(t3),
       .t4(t4),
       .t5(t5),
       .t6(t6)
    );
    wire [31:0] PC_out_IDEX;
    wire [4:0]  Rd_addr_out_IDEX;
    wire [31:0] Rs1_out_IDEX;
    wire [31:0] Rs2_out_IDEX;
    
    wire [31:0] Imm_out_IDEX;
    wire       ALUSrc_B_out_IDEX;
    wire [2:0] ALU_control_out_IDEX;
    wire       Branch_out_IDEX;
    wire       BranchN_out_IDEX;
    wire       Jump_out_IDEX;
    wire [1:0] MemtoReg_out_IDEX;
    wire       RegWrite_out_IDEX;
    wire       NOP_IDEX;
    wire [31:0]Inst_out_IDEX;
    wire       valid_out_IDEX;
    ID_reg_Ex_0 U4 (
      .clk_IDEX(clk),                          // input wire clk_IDEX
      .rst_IDEX(rst),                          // input wire rst_IDEX
      .en_IDEX(1'b1),                            // input wire en_IDEX
      .NOP_IDEX(NOP_IDEX),
      .valid_in_IDEX(valid_IFID),
      .PC_in_IDEX(PC_out_ID),                      // input wire [31 : 0] PC_in_IDEX
      .Inst_in_IDEX(inst_ID),
      .Rd_addr_IDEX(Rd_addr_out_ID),                  // input wire [4 : 0] Rd_addr_IDEX
      .Rs1_in_IDEX(Rs1_out_ID),                    // input wire [31 : 0] Rs1_in_IDEx
      .Rs2_in_IDEX(Rs2_out_ID),                    // input wire [31 : 0] Rs2_in_IDEX
      .Imm_in_IDEX(Imm_out_ID),                    // input wire [31 : 0] Imm_in_IDEX
      .ALUSrc_B_in_IDEX(ALUSrc_B_ID),          // input wire ALUSrc_B_in_IDEX
      .ALU_control_in_IDEX(ALU_control_ID),    // input wire [2 : 0] ALU_control_in_IDEX
      .Branch_in_IDEX(Branch_ID),              // input wire Branch_in_IDEX
      .BranchN_in_IDEX(BranchN_ID),            // input wire BranchN_in_IDEX
      .MemRW_in_IDEX(MemRW_ID),                // input wire MemRW_in_IDEX
      .Jump_in_IDEX(Jump_ID),                  // input wire Jump_in_IDEX
      .MemtoReg_in_IDEX(MemtoReg_ID),          // input wire [1 : 0] MemtoReg_in_IDEX
      .RegWrite_in_IDEX(RegWrite_out_ID),          // input wire RegWrite_in_IDEX
      .PC_out_IDEX(PC_out_IDEX),                    // output wire [31 : 0] PC_out_IDEX
      .Inst_out_IDEX(Inst_out_IDEX),
      .Rd_addr_out_IDEX(Rd_addr_out_IDEX),          // output wire [4 : 0] Rd_addr_out_IDEX
      .Rs1_out_IDEX(Rs1_out_IDEX),                  // output wire [31 : 0] Rs1_out_IDEX
      .Rs2_out_IDEX(Rs2_out_IDEX),                  // output wire [31 : 0] Rs2_out_IDEX
      .Imm_out_IDEX(Imm_out_IDEX),                  // output wire [31 : 0] Imm_out_IDEX
      .ALUSrc_B_out_IDEX(ALUSrc_B_out_IDEX),        // output wire ALUSrc_B_out_IDEX
      .ALU_control_out_IDEX(ALU_control_out_IDEX),  // output wire [2 : 0] ALU_control_out_IDEX
      .Branch_out_IDEX(Branch_out_IDEX),            // output wire Branch_out_IDEX
      .BranchN_out_IDEX(BranchN_out_IDEX),          // output wire BranchN_out_IDEX
      .MemRW_out_IDEX(MemRW_Ex),              // output wire MemRW_out_IDEX
      .Jump_out_IDEX(Jump_out_IDEX),                // output wire Jump_out_IDEX
      .MemtoReg_out_IDEX(MemtoReg_out_IDEX),        // output wire [1 : 0] MemtoReg_out_IDEX
      .valid_out_IDEX(valid_out_IDEX),
      .RegWrite_out_IDEX(RegWrite_out_IDEX)        // output wire RegWrite_out_IDEX
    );
    wire [31:0] PC4_out_EX;
    wire        zero_out_EX;
    wire [31:0] ALU_out_EX;
    wire [31:0] Rs2_out_EX;
    Pipeline_Ex_0 U5(
      .PC_in_EX(PC_out_IDEX),                    // input wire [31 : 0] PC_in_EX
      .Rs1_in_EX(Rs1_out_IDEX),                  // input wire [31 : 0] Rs1_in_EX
      .Rs2_in_EX(Rs2_out_IDEX),                  // input wire [31 : 0] Rs2_in_EX
      .Imm_in_EX(Imm_out_IDEX),                  // input wire [31 : 0] Imm_in_EX
      .ALUSrc_B_in_EX(ALUSrc_B_out_IDEX),        // input wire ALUSrc_B_in_EX
      .ALU_control_in_EX(ALU_control_out_IDEX),  // input wire [2 : 0] ALU_control_in_EX
      .PC_out_EX(PC_out_Ex),                  // output wire [31 : 0] PC_out_EX
      .PC4_out_EX(PC4_out_EX),                // output wire [31 : 0] PC4_out_EX
      .zero_out_EX(zero_out_EX),              // output wire zero_out_EX
      .ALU_out_EX(ALU_out_EX),                // output wire [31 : 0] ALU_out_EX
      .Rs2_out_EX(Rs2_out_EX)                // output wire [31 : 0] Rs2_out_EX
    );
    wire [31:0] PC4_out_EXMem;
    wire [4:0]  Rd_addr_out_EXMem;
    wire        zero_out_EXMem;
    wire        Branch_out_EXMem;
    wire        BranchN_out_EXMem;
    wire        Jump_out_EXMem;
    wire [1:0]  MemtoReg_out_EXMem;
    wire        RegWrite_out_EXMem;
    wire [31:0] pc_out_EXMem;
    wire        valid_out_EXMem;
    wire [31:0] Inst_out_EXMem;
    Ex_reg_Mem_0 U6(
      .clk_EXMem(clk),                    // input wire clk_EXMem
      .rst_EXMem(rst),                    // input wire rst_EXMem
      .en_EXMem(1'b1),                  // input wire en_EXMem
      .PC_imm_EXMem(PC_out_Ex),                // input wire [31 : 0] PC_in_EXMem
      .PC4_in_EXMem(PC4_out_EX),              // input wire [31 : 0] PC4_in_EXMem
      .PC_in_EXMem(PC_out_IDEX),
      .valid_in_EXMem(valid_out_IDEX),
      .Inst_in_EXMem(Inst_out_IDEX),
      .Rd_addr_EXMem(Rd_addr_out_IDEX),            // input wire [4 : 0] Rd_addr_EXMem
      .zero_in_EXMem(zero_out_EX),            // input wire zero_in_EXMem
      .ALU_in_EXMem(ALU_out_EX),              // input wire [31 : 0] ALU_in_EXMem
      .Rs2_in_EXMem(Rs2_out_EX),              // input wire [31 : 0] Rs2_in_EXMem
      .Branch_in_EXMem(Branch_out_IDEX),        // input wire Branch_in_EXMem
      .BranchN_in_EXMem(BranchN_out_IDEX),      // input wire BranchN_in_EXMem
      .MemRW_in_EXMem(MemRW_Ex),          // input wire MemRW_in_EXMem
      .Junp_in_EXMem(Jump_out_IDEX),            // input wire Junp_in_EXMem
      .MemtoReg_in_EXMem(MemtoReg_out_IDEX),    // input wire [1 : 0] MemtoReg_in_EXMem
      .RegWrite_in_EXMem(RegWrite_out_IDEX),    // input wire RegWrite_in_EXMem
      .PC_imm_out_EXMem(PC_imm_out_EXMem),              // output wire [31 : 0] PC_imm_out_EXMem
      .PC4_out_EXMem(PC4_out_EXMem),            // output wire [31 : 0] PC4_out_EXMem
      .Rd_addr_out_EXMem(Rd_addr_out_EXMem),    // output wire [4 : 0] Rd_addr_out_EXMem
      .zero_out_EXMem(zero_out_EXMem),          // output wire zero_out_EXMem
      .ALU_out_EXMem(Addr_out),            // output wire [31 : 0] ALU_out_EXMem
      .Rs2_out_EXMem(Data_out),            // output wire [31 : 0] Rs2_out_EXMem
      .Branch_out_EXMem(Branch_out_EXMem),      // output wire Branch_out_EXMem
      .BranchN_out_EXMem(BranchN_out_EXMem),    // output wire BranchN_out_EXMem
      .MemRW_out_EXMem(MemRW_Mem),                  // output wire MemRW_out_EXMem
      .Jump_out_EXMem(Jump_out_EXMem),          // output wire Jump_out_EXMem
      .MemtoReg_out_EXMem(MemtoReg_out_EXMem),  // output wire [1 : 0] MemtoReg_out_EXMem
      .PC_out_EXMem(pc_out_EXMem),
      .valid_out_EXMem(valid_out_EXMem),
      .Inst_out_EXMem(Inst_out_EXMem),
      .RegWrite_out_EXMem(RegWrite_out_EXMem)  // output wire RegWrite_out_EXMem
    );
    Pipeline_Mem_0 U7 (
      .zero_in_Mem(zero_out_EXMem),        // input wire zero_in_Mem
      .Branch_in_Mem(Branch_out_EXMem),    // input wire Branch_in_Mem
      .BranchN_in_Mem(BranchN_out_EXMem),  // input wire BranchN_in_Mem
      .Jump_in_Mem(Jump_out_EXMem),        // input wire Jump_in_Mem
      .PCSrc(PCSrc)                    // output wire PCSrc
    );
    wire [31:0] PC4_out_MemWB;
    wire [31:0] ALU_out_MemWB;
    wire [31:0] DMem_data_out_MemWB;
    wire [1:0]  MemtoReg_out_MemWB;
    wire [31:0] PC_out_MemWB;
    wire [31:0] Inst_out_MemWB;
    wire        valid_out_MemWB;
    Mem_reg_WB_0 U8(
      .clk_MemWB(clk),                      // input wire clk_MemWB
      .rst_MemWB(rst),                      // input wire rst_MemWB
      .en_MemWB(1'b1),                    // input wire en_MemWB
      .PC4_in_MemWB(PC4_out_EXMem),                // input wire [31 : 0] PC4_in_MemWB
      .PC_in_MemWB(pc_out_EXMem),
      .Inst_in_MemWB(Inst_out_EXMem),
      .valid_in_MemWB(valid_out_EXMem),
      .Rd_addr_MemWB(Rd_addr_out_EXMem),              // input wire [4 : 0] Rd_addr_MemWB
      .ALU_in_MemWB(Addr_out),                // input wire [31 : 0] ALU_in_MemWB
      .DMem_data_MemWB(Data_in),          // input wire [31 : 0] DMem_data_MemWB
      .MemtoReg_in_MemWB(MemtoReg_out_EXMem),      // input wire [1 : 0] MemtoReg_in_MemWB
      .RegWrite_in_MemWB(RegWrite_out_EXMem),      // input wire RegWrite_in_MemWB
      .PC4_out_MemWB(PC4_out_MemWB),              // output wire [31 : 0] PC4_out_MemWB
      .PC_out_MemWB(PC_out_MemWB),
      .Inst_out_MemWB(Inst_out_MemWB),
      .valid_out_MemWB(valid_out_MemWB),
      .Rd_addr_out_MemWB(Rd_addr_out_MemWB),      // output wire [4 : 0] Rd_addr_out_MemWB
      .ALU_out_MemWB(ALU_out_MemWB),              // output wire [31 : 0] ALU_out_MemWB
      .DMem_data_out_MemWB(DMem_data_out_MemWB),  // output wire [31 : 0] DMem_data_out_MemWB
      .MemtoReg_out_MemWB(MemtoReg_out_MemWB),    // output wire [1 : 0] MemtoReg_out_MemWB
      .RegWrite_out_MemWB(RegWrite_out_MemWB)    // output wire RegWrite_out_MemWB
    );
    Pipeline_WB_0 U9(
      .PC4_in_WB(PC4_out_MemWB),            // input wire [31 : 0] PC4_in_WB
      .ALU_in_WB(ALU_out_MemWB),            // input wire [31 : 0] ALU_in_WB
      .DMem_data_WB(DMem_data_out_MemWB),      // input wire [31 : 0] DMem_data_WB
      .MemtoReg_in_WB(MemtoReg_out_MemWB),  // input wire [1 : 0] MemtoReg_in_WB
      .Data_out_WB(Data_out_WB)        // output wire [31 : 0] Data_out_WB
    );
    stall_0 U10 (
      .rst_stall(rst),                    // input wire rst_stall
      .Rs1_addr_ID(Rs1_addr_ID),                // input wire [4 : 0] Rs1_addr_ID
      .Rs2_addr_ID(Rs2_addr_ID),                // input wire [4 : 0] Rs2_addr_ID
      .RegWrite_out_IDEX(RegWrite_out_IDEX),    // input wire RegWrite_out_IDEX
      .Rd_addr_out_IDEX(Rd_addr_out_IDEX),      // input wire [4 : 0] Rd_addr_out_IDEX
      .RegWrite_out_EXMem(RegWrite_out_EXMem),  // input wire RegWrite_out_EXMem
      .Rd_addr_out_EXMem(Rd_addr_out_EXMem),    // input wire [4 : 0] Rd_addr_out_EXMem
      .Rs1_used(Rs1_used),
      .Rs2_used(Rs2_used),
      .Branch_ID(Branch_ID),                    // input wire Branch_ID
      .BranchN_ID(BranchN_ID),                  // input wire BranchN_ID
      .Jump_ID(Jump_ID),                        // input wire Jump_ID
      .Branch_out_IDEX(Branch_out_IDEX),        // input wire Branch_out_IDEX
      .BranchN_out_IDEX(BranchN_out_IDEX),      // input wire BranchN_out_IDEX
      .Jump_out_IDEX(Jump_out_IDEX),            // input wire Jump_out_IDEX
      .Branch_out_EXMem(Branch_out_EXMem),      // input wire Branch_out_EXMem
      .BranchN_out_EXMem(BranchN_out_EXMem),    // input wire BranchN_out_EXMem
      .Jump_out_EXMem(Jump_out_EXMem),          // input wire Jump_out_EXMem
      .en_IF(en_IF),                            // output wire en_IF
      .en_IFID(en_IFID),                        // output wire en_IFID
      .NOP_IDEX(NOP_IDEX),                      // output wire NOP_IDEX
      .NOP_IFID(NOP_IFID)                      // output wire NOP_IFID
    );
endmodule



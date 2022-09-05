`timescale 1ns / 1ps

module SCPU(
    //input
    input wire MIO_ready,
    input wire INT0,
    input wire[31:0] Data_in,
    input wire clk,
    input wire[31:0] inst_in,
    input wire rst,
    //output
    output wire MemRW,
    output wire CPU_MIO,
    output wire[31:0] Addr_out,
    output wire[31:0] Data_out,
    output wire[31:0] PC_out,
    output [31:0] x0,ra,sp,gp,tp,t0,t1,t2,s0,s1, //¼Ä´æÆ÷
    output [31:0] a0,a1,a2,a3,a4,a5,a6,a7,s2,s3,
    output [31:0] s4,s5,s6,s7,s8,s9,s10,s11,t3,t4,
    output [31:0] t5,t6
);

//middle variables
// --- U1 ---
wire U1_ALUSrc_B;
wire U1_CPU_MIO;
wire[1:0] U1_Jump;
wire U1_Branch;
wire U1_BranchN;
wire U1_RegWrite;
wire U1_MemRW;
wire U1_ecall;
wire U1_mret;
wire U1_ill_instr;
wire[1:0] U1_MemtoReg;
wire[2:0] U1_ImmSel;
wire[3:0] U1_ALU_Control;


// --- U2 ---
wire[31:0] U2_ALU_out;
wire[31:0] U2_Data_out;
wire[31:0] U2_PC_out;

wire[31:0] U2_1;
wire[31:0] U2_2;
wire[31:0] U2_3;
wire[31:0] U2_4;
wire[31:0] U2_5;
wire[31:0] U2_6;
wire[31:0] U2_7;
wire[31:0] U2_8;
wire[31:0] U2_9;
wire[31:0] U2_10;
wire[31:0] U2_11;
wire[31:0] U2_12;
wire[31:0] U2_13;
wire[31:0] U2_14;
wire[31:0] U2_15;
wire[31:0] U2_16;
wire[31:0] U2_17;
wire[31:0] U2_18;
wire[31:0] U2_19;
wire[31:0] U2_20;
wire[31:0] U2_21;
wire[31:0] U2_22;
wire[31:0] U2_23;
wire[31:0] U2_24;
wire[31:0] U2_25;
wire[31:0] U2_26;
wire[31:0] U2_27;
wire[31:0] U2_28;
wire[31:0] U2_29;
wire[31:0] U2_30;
wire[31:0] U2_31;
wire[31:0] U2_32;
//output
assign MemRW   = U1_MemRW;
assign CPU_MIO = U1_CPU_MIO;
assign Addr_out[31:0] = U2_ALU_out;
assign Data_out[31:0] = U2_Data_out;
assign PC_out[31:0]   = U2_PC_out;

assign x0 = U2_1;
assign ra = U2_2;
assign sp = U2_3;
assign gp = U2_4;
assign tp = U2_5;
assign t0 = U2_6;
assign t1 = U2_7;
assign t2 = U2_8;
assign s0 = U2_9;
assign s1 = U2_10;
assign a0 = U2_11;
assign a1 = U2_12;
assign a2 = U2_13;
assign a3 = U2_14;
assign a4 = U2_15;
assign a5 = U2_16;
assign a6 = U2_17;
assign a7 = U2_18;
assign s2 = U2_19;
assign s3 = U2_20;
assign s4 = U2_21;
assign s5 = U2_22;
assign s6 = U2_23;
assign s7 = U2_24;
assign s8 = U2_25;
assign s9 = U2_26;
assign s10 = U2_27;
assign s11 = U2_28;
assign t3 = U2_29;
assign t4 = U2_30;
assign t5 = U2_31;
assign t6 = U2_32;

//module
SCPU_ctrl_Int_0 U1
    (
        //input
        .OPcode(inst_in[6:2]),
        .Fun3(inst_in[14:12]),
        .Fun7(inst_in[30]),
        .MIO_ready(MIO_ready),
        .Fun_ecall(inst_in[22:20]),
        .Fun_mret(inst_in[29:28]),
        //output
        .ImmSel(U1_ImmSel),
        .ALUSrc_B(U1_ALUSrc_B),
        .MemtoReg(U1_MemtoReg),
        .Jump(U1_Jump),
        .Branch(U1_Branch),
        .BranchN(U1_BranchN),
        .RegWrite(U1_RegWrite),
        .MemRW(U1_MemRW),
        .ALU_Control(U1_ALU_Control),
        .CPU_MIO(U1_CPU_MIO),
        .ecall(U1_ecall),
        .mret(U1_mret),
        .ill_instr(U1_ill_instr)
    );

DataPath_more_0 U2
    (
        //input
        .ALUSrc_B(U1_ALUSrc_B),
        .ALU_Control(U1_ALU_Control),
        .Branch(U1_Branch),
        .BranchN(U1_BranchN),
        .Data_in(Data_in),
        .INT0(INT0),
        .ImmSel(U1_ImmSel),
        .Jump(U1_Jump),
        .MemtoReg(U1_MemtoReg),
        .RegWrite(U1_RegWrite),
        .clk(clk),
        .ecall(U1_ecall),
        .ill_instr(U1_ill_instr),
        .inst_field(inst_in),
        .mret(U1_mret),
        .rst(rst),
        //output
        .ALU_out(U2_ALU_out),
        .Data_out(U2_Data_out),
        .PC_out(U2_PC_out),
        .x0(U2_1),
        .ra(U2_2),
        .sp(U2_3),
        .gp(U2_4),
        .tp(U2_5),
        .t0(U2_6),
        .t1(U2_7),
        .t2(U2_8),
        .s0(U2_9),
        .s1(U2_10),
        .a0(U2_11),
        .a1(U2_12),
        .a2(U2_13),
        .a3(U2_14),
        .a4(U2_15),
        .a5(U2_16),
        .a6(U2_17),
        .a7(U2_18),
        .s2(U2_19),
        .s3(U2_20),
        .s4(U2_21),
        .s5(U2_22),
        .s6(U2_23),
        .s7(U2_24),
        .s8(U2_25),
        .s9(U2_26),
        .s10(U2_27),
        .s11(U2_28),
        .t3(U2_29),
        .t4(U2_30),
        .t5(U2_31),
        .t6(U2_32)
    );

endmodule
`timescale 1ns / 1ps

module DataPath_more(
    //input
    input wire[0:0] Branch,     //beq
    input wire[0:0] BranchN,    //bne
    input wire[1:0] Jump,       //j
    input wire[31:0] Data_in,   //存储器输入
    input wire[1:0] MemtoReg,   //Regs写入数据源控制
    input wire ALUSrc_B,        //ALU端口B输入选择
    input wire[2:0] ImmSel,     //ImmGen操作控制
    input wire[31:0] inst_field,//指令数据域[31:7]
    input wire[3:0] ALU_Control,//ALU操作控制
    input wire clk,             //寄存器时钟
    input wire rst,             //寄存器复位
    input wire INT0,            //外部中断
    input wire RegWrite,        //寄存器写信号
    input wire ecall,           //系统调用
    input wire ill_instr,       //非法指令
    input wire mret,            //返回
    //output
    output wire[31:0] ALU_out,  //ALU运算输出
    output wire[31:0] Data_out, //CPU数据输出
    output wire[31:0] PC_out,   //PC指针输出
    output wire[31:0] x0,ra,sp,gp,tp,t0,t1,t2,s0,s1, //寄存器
    output wire[31:0] a0,a1,a2,a3,a4,a5,a6,a7,s2,s3,
    output wire[31:0] s4,s5,s6,s7,s8,s9,s10,s11,t3,t4,
    output wire[31:0] t5,t6
);

//middle variables
// --- U1 ---
wire[31:0] U1_Imm_out;
// --- U2 ---
wire[31:0] U2_c;
// --- U3 ---
wire[31:0] U3_c;
// --- U4 ---
wire[31:0] U4_o;
// --- U5 ---
wire[31:0] U5_o;
// --- U6 ---
wire[31:0] U6_o;
// --- U7 ---
wire[31:0] U7_o;
// --- U8 ---
wire[31:0] U8_Rs1_data;
wire[31:0] U8_Rs2_data;
wire[31:0] U8_1;
wire[31:0] U8_2;
wire[31:0] U8_3;
wire[31:0] U8_4;
wire[31:0] U8_5;
wire[31:0] U8_6;
wire[31:0] U8_7;
wire[31:0] U8_8;
wire[31:0] U8_9;
wire[31:0] U8_10;
wire[31:0] U8_11;
wire[31:0] U8_12;
wire[31:0] U8_13;
wire[31:0] U8_14;
wire[31:0] U8_15;
wire[31:0] U8_16;
wire[31:0] U8_17;
wire[31:0] U8_18;
wire[31:0] U8_19;
wire[31:0] U8_20;
wire[31:0] U8_21;
wire[31:0] U8_22;
wire[31:0] U8_23;
wire[31:0] U8_24;
wire[31:0] U8_25;
wire[31:0] U8_26;
wire[31:0] U8_27;
wire[31:0] U8_28;
wire[31:0] U8_29;
wire[31:0] U8_30;
wire[31:0] U8_31;
wire[31:0] U8_32;
// --- U9 ---
wire[31:0] U9_res;
wire U9_zero;
// --- U10 ---
wire[31:0] U10_Q;
// --- U11 ---
wire[31:0] U11_pc;


assign ALU_out = U9_res;
assign Data_out = U8_Rs2_data;
assign PC_out = U10_Q;

assign x0 = U8_1;
assign ra = U8_2;
assign sp = U8_3;
assign gp = U8_4;
assign tp = U8_5;
assign t0 = U8_6;
assign t1 = U8_7;
assign t2 = U8_8;
assign s0 = U8_9;
assign s1 = U8_10;
assign a0 = U8_11;
assign a1 = U8_12;
assign a2 = U8_13;
assign a3 = U8_14;
assign a4 = U8_15;
assign a5 = U8_16;
assign a6 = U8_17;
assign a7 = U8_18;
assign s2 = U8_19;
assign s3 = U8_20;
assign s4 = U8_21;
assign s5 = U8_22;
assign s6 = U8_23;
assign s7 = U8_24;
assign s8 = U8_25;
assign s9 = U8_26;
assign s10 = U8_27;
assign s11 = U8_28;
assign t3 = U8_29;
assign t4 = U8_30;
assign t5 = U8_31;
assign t6 = U8_32;

ImmGen_0 U1(
    //input
    .ImmSel(ImmSel),
    .inst_field(inst_field),
    //output
    .Imm_out(U1_Imm_out)
);

add_32_0 U2(
    //input
    .a(32'h0000_0004),//pc + 4
    .b(U10_Q),
    //output
    .c(U2_c)
);

add_32_1 U3(
    //input
    .a(U10_Q),
    .b(U1_Imm_out),
    //output
    .c(U3_c)
);

MUX2T1_32_1 U4(
    //input
    .I0(U2_c),
    .I1(U3_c),
    .s((Branch && U9_zero) || (!U9_zero && BranchN)),
    //output
    .o(U4_o)
);

MUX4T1_32_0 U5(
    //input
    .s(MemtoReg),
    .I0(U9_res),
    .I1(Data_in),
    .I2(U2_c),
    .I3(U1_Imm_out),
    //output
    .o(U5_o)
);

MUX4T1_32_1 U6(
    //input
    .I0(U4_o),
    .I1(U3_c),
    .I2(U9_res),
    .I3(U4_o),
    .s(Jump),
    //output
    .o(U6_o)
);

MUX2T1_32_0 U7(
    //input
    .I0(U8_Rs2_data),
    .I1(U1_Imm_out),
    .s(ALUSrc_B),
    //output
    .o(U7_o)
);

Regs_0 U8(
    //input
    .clk(clk),
    .rst(rst),
    .Rs1_addr(inst_field[19:15]),
    .Rs2_addr(inst_field[24:20]),
    .Wt_addr(inst_field[11:7]),
    .Wt_data(U5_o),
    .RegWrite(RegWrite),
    //output
    .Rs1_data(U8_Rs1_data),
    .Rs2_data(U8_Rs2_data),
    .x0(U8_1),
    .ra(U8_2),
    .sp(U8_3),
    .gp(U8_4),
    .tp(U8_5),
    .t0(U8_6),
    .t1(U8_7),
    .t2(U8_8),
    .s0(U8_9),
    .s1(U8_10),
    .a0(U8_11),
    .a1(U8_12),
    .a2(U8_13),
    .a3(U8_14),
    .a4(U8_15),
    .a5(U8_16),
    .a6(U8_17),
    .a7(U8_18),
    .s2(U8_19),
    .s3(U8_20),
    .s4(U8_21),
    .s5(U8_22),
    .s6(U8_23),
    .s7(U8_24),
    .s8(U8_25),
    .s9(U8_26),
    .s10(U8_27),
    .s11(U8_28),
    .t3(U8_29),
    .t4(U8_30),
    .t5(U8_31),
    .t6(U8_32)
);

ALU_0 U9(
    //input
    .A(U8_Rs1_data),
    .ALU_operation(ALU_Control),
    .B(U7_o),
    //output
    .res(U9_res),
    .zero(U9_zero)
);

REG32_0 U10(
    //input
    .clk(clk),
    .rst(rst),
    .CE(1'b1),
    .D(U11_pc),
    //output
    .Q(U10_Q)
);

RV_Int_0 U11(
    //input
    .clk(clk),
    .reset(rst),
    .INT(INT0),
    .ecall(ecall),
    .mret(mret),
    .ill_instr(ill_instr),
    .pc_next(U6_o),
    //output
    .pc(U11_pc)
);

endmodule
`timescale 1ns / 1ps

module Pipeline_Ex(
        input[31:0]    PC_in_EX,          //PC输入
        input[31:0]    Rs1_in_EX,         //操作数1输入
	    input[31:0]    Rs2_in_EX,         //操作数2输入
        input[31:0]    Imm_in_EX ,        //立即数输入
	    input          ALUSrc_B_in_EX ,   //ALU操作数2选择
	    input[2:0]     ALU_control_in_EX, //ALU选择控制

	    output [31:0]  PC_out_EX,         //PC输出
	    output [31:0]  PC4_out_EX,        //PC+4输出
	    output         zero_out_EX,       //zero输出
	    output [31:0]  ALU_out_EX,        //alu输出
	    output [31:0]  Rs2_out_EX         //立即数输出
    );
    add_32_0 U1(
    .a(PC_in_EX),
    .b(Imm_in_EX),
    .c(PC_out_EX)
    );
    add_32_1 U2(
    .a(4),
    .b(PC_in_EX),
    .c(PC4_out_EX)
    );
    wire[31:0] mux_o;
    MUX2T1_32_0 U3(
    .I0(Rs2_in_EX),
    .I1(Imm_in_EX),
    .s(ALUSrc_B_in_EX),
    .o(mux_o)
    );
    ALU_0 U4(
    .A(Rs1_in_EX),
    .B(mux_o),
    .ALU_operation(ALU_control_in_EX),
    .zero(zero_out_EX),
    .res(ALU_out_EX)
    );
    assign Rs2_out_EX = Rs2_in_EX;
endmodule

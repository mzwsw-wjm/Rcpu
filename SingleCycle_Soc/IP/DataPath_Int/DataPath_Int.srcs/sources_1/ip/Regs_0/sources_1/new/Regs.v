`timescale 1ns / 1ps

module Regs(
    input clk,rst,RegWrite,
    input [4:0] Rs1_addr,Rs2_addr,Wt_addr,
    input [31:0]Wt_data,
    output [31:0] Rs1_data,Rs2_data,
    output [31:0] x0,ra,sp,gp,tp,t0,t1,t2,s0,s1,
    output [31:0] a0,a1,a2,a3,a4,a5,a6,a7,s2,s3,
    output [31:0] s4,s5,s6,s7,s8,s9,s10,s11,t3,t4,
    output [31:0] t5,t6
    );
    
    reg [31:0] register[1:31];
    integer i;
    
    assign Rs1_data = (Rs1_addr == 0) ? 0 : register[Rs1_addr];
    assign Rs2_data = (Rs2_addr == 0) ? 0 : register[Rs2_addr];
    assign x0 = 32'b0;
    assign ra = register[1];
    assign sp = register[2];
    assign gp = register[3];
    assign tp = register[4];
    assign t0 = register[5];
    assign t1 = register[6];
    assign t2 = register[7];
    assign s0 = register[8];
    assign s1 = register[9];
    assign a0 = register[10];
    assign a1 = register[11];
    assign a2 = register[12];
    assign a3 = register[13];
    assign a4 = register[14];
    assign a5 = register[15];
    assign a6 = register[16];
    assign a7 = register[17];
    assign s2 = register[18];
    assign s3 = register[19];
    assign s4 = register[20];
    assign s5 = register[21];
    assign s6 = register[22];
    assign s7 = register[23];
    assign s8 = register[24];
    assign s9 = register[25];
    assign s10 = register[26];
    assign s11 = register[27];
    assign t3 = register[28];
    assign t4 = register[29];
    assign t5 = register[30];
    assign t6 = register[31]; 
    
    always @(posedge clk or posedge rst) begin
        if(rst == 1) for(i = 1;i < 32;i = i+1)register[i] <= 0;
        else if((Wt_addr != 0) && (RegWrite == 1)) register[Wt_addr] <= Wt_data;
        end
    
endmodule

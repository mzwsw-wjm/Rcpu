`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/13 14:35:38
// Design Name: 
// Module Name: Mem_reg_WB
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


module Mem_reg_WB(
        input              clk_MemWB,	         //寄存器时钟
	    input              rst_MemWB,            //寄存器复位
	    input              en_MemWB,             //寄存器使能
	    input[31:0]        PC4_in_MemWB,         //PC+4输入
	    input[31:0]  	   PC_in_MemWB,          //PC输入
        input[31:0]        Inst_in_MemWB,        //inst输入
        input              valid_in_MemWB,       //有效

	    input  [4:0]       Rd_addr_MemWB,        //写目的寄存器地址输入
	    input[31:0]        ALU_in_MemWB,         //alu输入
	    input[31:0]        DMem_data_MemWB,      //存储器数据输入
	    input [1:0]        MemtoReg_in_MemWB,    //写回
	    input              RegWrite_in_MemWB,    //寄存器堆读写
	    
        output reg[31:0]  PC4_out_MemWB,         //PC+4输出
        output reg[31:0]  PC_out_MemWB,          //PC输出
        output reg[31:0]  Inst_out_MemWB,        //指令输出
        output reg        valid_out_MemWB,       //有效
	    output reg[4:0]   Rd_addr_out_MemWB,     //写目的寄存器地址输出
	    
	    output reg[31:0]  ALU_out_MemWB,         //alu输出
	    output reg[31:0]  DMem_data_out_MemWB,   //存储器数据输出
	    output reg[1:0]   MemtoReg_out_MemWB,    //写回
	    output reg        RegWrite_out_MemWB     //寄存器读写	
    );
    always@(posedge clk_MemWB or posedge rst_MemWB) begin
         if(rst_MemWB) begin
                PC4_out_MemWB         <= 32'h00000000;
                PC_out_MemWB          <= 32'h00000000;
                Inst_out_MemWB        <= 32'h00000000;
                valid_out_MemWB       <= 1'b0;
                Rd_addr_out_MemWB     <= 32'h00000000;
                ALU_out_MemWB         <= 32'h00000000;
                DMem_data_out_MemWB   <= 32'h00000000;
                MemtoReg_out_MemWB    <= 2'b0;
                RegWrite_out_MemWB    <= 1'b0;
         end
         else if(en_MemWB) begin
                 PC4_out_MemWB         <= PC4_in_MemWB;
                 PC_out_MemWB          <= PC_in_MemWB;
                 Inst_out_MemWB        <= Inst_in_MemWB;
                 valid_out_MemWB       <= valid_in_MemWB;
                 Rd_addr_out_MemWB     <= Rd_addr_MemWB;
                 ALU_out_MemWB         <= ALU_in_MemWB;
                 DMem_data_out_MemWB   <= DMem_data_MemWB;
                 MemtoReg_out_MemWB    <= MemtoReg_in_MemWB;
                 RegWrite_out_MemWB    <= RegWrite_in_MemWB;
         end
    end
endmodule


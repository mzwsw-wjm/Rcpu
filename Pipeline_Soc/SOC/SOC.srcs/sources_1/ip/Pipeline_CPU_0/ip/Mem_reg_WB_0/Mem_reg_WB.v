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
        input              clk_MemWB,	         //�Ĵ���ʱ��
	    input              rst_MemWB,            //�Ĵ�����λ
	    input              en_MemWB,             //�Ĵ���ʹ��
	    input[31:0]        PC4_in_MemWB,         //PC+4����
	    input[31:0]  	   PC_in_MemWB,          //PC����
        input[31:0]        Inst_in_MemWB,        //inst����
        input              valid_in_MemWB,       //��Ч

	    input  [4:0]       Rd_addr_MemWB,        //дĿ�ļĴ�����ַ����
	    input[31:0]        ALU_in_MemWB,         //alu����
	    input[31:0]        DMem_data_MemWB,      //�洢����������
	    input [1:0]        MemtoReg_in_MemWB,    //д��
	    input              RegWrite_in_MemWB,    //�Ĵ����Ѷ�д
	    
        output reg[31:0]  PC4_out_MemWB,         //PC+4���
        output reg[31:0]  PC_out_MemWB,          //PC���
        output reg[31:0]  Inst_out_MemWB,        //ָ�����
        output reg        valid_out_MemWB,       //��Ч
	    output reg[4:0]   Rd_addr_out_MemWB,     //дĿ�ļĴ�����ַ���
	    
	    output reg[31:0]  ALU_out_MemWB,         //alu���
	    output reg[31:0]  DMem_data_out_MemWB,   //�洢���������
	    output reg[1:0]   MemtoReg_out_MemWB,    //д��
	    output reg        RegWrite_out_MemWB     //�Ĵ�����д	
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


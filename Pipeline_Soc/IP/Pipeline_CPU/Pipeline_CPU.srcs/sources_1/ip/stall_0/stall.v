`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/13 14:39:59
// Design Name: 
// Module Name: stall
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


module stall(
    input      rst_stall,
    input [4:0]Rs1_addr_ID,          //����׶μĴ�������ַ1
    input [4:0]Rs2_addr_ID,          //����׶μĴ�������ַ2
    
    input      RegWrite_out_IDEX,   //ִ�н׶μĴ���д����
    input [4:0]Rd_addr_out_IDEX,    //ִ�н׶μĴ���д��ַ
    
    input      RegWrite_out_EXMem,  //�ô�׶μĴ���д����
    input [4:0]Rd_addr_out_EXMem,   //�ô�׶μĴ���д��ַ
    input Rs1_used,          		//Rs1��ʹ��
    input Rs2_used,                 //Rs2��ʹ��

    input Branch_ID,                //����׶�beq
    input BranchN_ID,               //����׶�bne
    input Jump_ID,                  //����׶�jal
    input Branch_out_IDEX,          //ִ�н׶�beq
    input BranchN_out_IDEX,         //ִ�н׶�bne
    input Jump_out_IDEX,            //ִ�н׶�jal
    input Branch_out_EXMem,         //�ô�׶�beq
    input BranchN_out_EXMem,        //�ô�׶�bne
    input Jump_out_EXMem,           //�ô�׶�jal
    
    output reg en_IF,
    output reg en_IFID,
    output reg NOP_IDEX,
    output reg NOP_IFID
    );
    reg Data_stall;
    reg Control_stall;
    
    always @(*) begin
        Data_stall = 0;
        if((Rs1_used && RegWrite_out_IDEX  && (Rs1_addr_ID != 0) && (Rd_addr_out_IDEX == Rs1_addr_ID))   ||
           (Rs2_used && RegWrite_out_IDEX  && (Rs2_addr_ID != 0) && (Rd_addr_out_IDEX == Rs2_addr_ID))   ||
           (Rs1_used && RegWrite_out_EXMem && (Rs1_addr_ID != 0) && (Rd_addr_out_EXMem == Rs1_addr_ID))  ||
           (Rs2_used && RegWrite_out_EXMem && (Rs2_addr_ID != 0) && (Rd_addr_out_EXMem == Rs2_addr_ID)) )
              Data_stall = 1;
        else  Data_stall = 0;
    end
    always @(*) begin
        Control_stall = 0;
        if((Branch_ID || BranchN_ID || Jump_ID)
          ||(Branch_out_IDEX  || BranchN_out_IDEX || Jump_out_IDEX )
          ||(Branch_out_EXMem || BranchN_out_EXMem || Jump_out_EXMem))
              Control_stall = 1;
        else  Control_stall = 0;
    end
    
    always @(*) begin
        en_IF     = 1;
        en_IFID   = 1;
        NOP_IDEX  = 0;
        NOP_IFID  = 0;
        if(rst_stall) begin
            en_IF     = 1;
            en_IFID   = 1;
            NOP_IDEX  = 0;
            NOP_IFID  = 0;
        end
        else if(Data_stall) begin
            en_IF     = 0;
            en_IFID   = 0;
            NOP_IDEX  = 1;
        end
        else if(Control_stall) begin
            NOP_IFID  = 1;
            //en_IF = 0;
            //en_IFID = 0;
        end
        else begin
            en_IF     = 1;
            en_IFID   = 1;
            NOP_IDEX  = 0;
            NOP_IFID  = 0;
        end
    end
endmodule


`timescale 1ns / 1ps

module Ex_reg_Mem(
        input           clk_EXMem,	          //�Ĵ���ʱ��
	    input           rst_EXMem,            //�Ĵ�����λ
	    input           en_EXMem,             //�Ĵ���ʹ��
	    input  [31:0]   PC_imm_EXMem,          //PC����(pc+imm)
	    input  [31:0]   PC4_in_EXMem,         //PC+4����
	    input  [31:0]   PC_in_EXMem,          //PC���루from ID/EX��
        input           valid_in_EXMem,       //��Ч
        input[31:0]     Inst_in_EXMem,       //ָ������
	    input  [4:0]    Rd_addr_EXMem,        //дĿ�ļĴ�����ַ����
	    input           zero_in_EXMem,        //zero
	    input  [31:0]   ALU_in_EXMem,         //alu����
	    input  [31:0]   Rs2_in_EXMem,         //������2����
        input           Branch_in_EXMem,      //beq
        input           BranchN_in_EXMem,     //bne
	    input           MemRW_in_EXMem,       //�洢����д
        input           Junp_in_EXMem,        //jal	    
	    input [1:0]     MemtoReg_in_EXMem,    //д��ѡ��
	    input           RegWrite_in_EXMem,    //�Ĵ����Ѷ�д
	    
	    output reg[31:0]    PC_out_EXMem,         //PC���
	    output reg[31:0]    PC4_out_EXMem,        //PC+4���    
	    output reg[31:0]  	PC_imm_out_EXMem,     //PC���(pc+imm)
        output reg    valid_out_EXMem,      //valid
        output reg[31:0]    Inst_out_EXMem,       //PC���
        output reg [4:0]    Rd_addr_out_EXMem,    //дĿ�ļĴ�����ַ���
        output reg          zero_out_EXMem,       //zero
        output reg[31:0]    ALU_out_EXMem,        //alu���
        output reg[31:0]    Rs2_out_EXMem,        //������2���
        output reg          Branch_out_EXMem,     //beq
        output reg          BranchN_out_EXMem,    //bne
        output reg          MemRW_out_EXMem,      //�洢����д
        output reg          Jump_out_EXMem,       //jal        
        output reg[1:0]     MemtoReg_out_EXMem,   //д��
        output reg          RegWrite_out_EXMem    //�Ĵ����Ѷ�д 
    );
    always @(posedge clk_EXMem or posedge rst_EXMem) begin
           if(rst_EXMem) begin
                 PC_out_EXMem        <= 32'h00000000;
                 PC4_out_EXMem       <= 32'h00000000;
                 PC_imm_out_EXMem    <= 32'h00000000;
                 valid_out_EXMem     <= 1'b0;
                 Inst_out_EXMem      <= 32'h00000000;
                 Rd_addr_out_EXMem   <= 5'b00000;
                 zero_out_EXMem      <= 1'b0;
                 ALU_out_EXMem       <= 32'h00000000;
                 Rs2_out_EXMem       <= 32'h00000000;
                 Branch_out_EXMem    <= 1'b0;
                 BranchN_out_EXMem   <= 1'b0;
                 MemRW_out_EXMem     <= 1'b0;
                 Jump_out_EXMem      <= 1'b0;
                 MemtoReg_out_EXMem  <= 2'b0;
                 RegWrite_out_EXMem  <= 1'b0;    
           end
           else if(en_EXMem) begin
                PC_out_EXMem         <= PC_in_EXMem;
                PC4_out_EXMem        <= PC4_in_EXMem;
                PC_imm_out_EXMem     <= PC_imm_EXMem;
                valid_out_EXMem      <= valid_in_EXMem;        
                Inst_out_EXMem       <= Inst_in_EXMem;
                Rd_addr_out_EXMem    <= Rd_addr_EXMem;
                zero_out_EXMem       <= zero_in_EXMem;
                ALU_out_EXMem        <= ALU_in_EXMem;
                Rs2_out_EXMem        <= Rs2_in_EXMem;
                Branch_out_EXMem     <= Branch_in_EXMem;
                BranchN_out_EXMem    <= BranchN_in_EXMem;
                MemRW_out_EXMem      <= MemRW_in_EXMem;
                Jump_out_EXMem       <= Junp_in_EXMem;
                MemtoReg_out_EXMem   <= MemtoReg_in_EXMem;
                RegWrite_out_EXMem   <= RegWrite_in_EXMem;
    
           end
        
        end
endmodule

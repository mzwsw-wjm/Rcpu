module ID_reg_Ex(
        input              clk_IDEX,	        //�Ĵ���ʱ��
	    input              rst_IDEX,            //�Ĵ�����λ
	    input              en_IDEX,             //�Ĵ���ʹ��
	    input              NOP_IDEX,
	    input              valid_in_IDEX,
	    input  [31:0]      PC_in_IDEX,          //PC����
	    input  [31:0]      Inst_in_IDEX,
	    input  [4:0]       Rd_addr_IDEX,        //дĿ�ĵ�ַ����
        input  [31:0]      Rs1_in_IDEX,         //������1����
	    input  [31:0]      Rs2_in_IDEX,         //������2����     
	    
        input  [31:0]      Imm_in_IDEX ,        //����������
	    input              ALUSrc_B_in_IDEX ,   //ALU������2ѡ��
	    input  [2:0]       ALU_control_in_IDEX, //ALUѡ�����
	    input              Branch_in_IDEX,      //beq
	    input              BranchN_in_IDEX,     //bne
	    input              MemRW_in_IDEX,       //�洢����д
	    input              Jump_in_IDEX,        //jal
	    input [1:0]        MemtoReg_in_IDEX,    //д��ѡ�����
	    input              RegWrite_in_IDEX,    //�Ĵ����Ѷ�д
	    output reg[31:0]   PC_out_IDEX,         //PC���
	    output reg[31:0]   Inst_out_IDEX,
	    output reg[4:0]    Rd_addr_out_IDEX,    //ָ�����
        output reg[31:0]   Rs1_out_IDEX,        //������1���
	    output reg[31:0]   Rs2_out_IDEX,        //������2���
	    
        output reg[31:0]    Imm_out_IDEX ,      //���������
	    output reg          ALUSrc_B_out_IDEX , //ALU������2ѡ��
	    output reg[2:0]     ALU_control_out_IDEX,//ALUѡ�����
	    output reg          Branch_out_IDEX,     //beq
	    output reg          BranchN_out_IDEX,    //bne  
	    output reg          MemRW_out_IDEX,      //�洢����д
	    output reg          Jump_out_IDEX,       //jal	    
	    output reg [1:0]    MemtoReg_out_IDEX,   //д��ѡ��
	    output reg          RegWrite_out_IDEX,    //�Ĵ����Ѷ�д
	    output reg          valid_out_IDEX
    );
    always@(posedge clk_IDEX or posedge rst_IDEX) begin
       if(rst_IDEX) begin
          PC_out_IDEX           <= 32'h00000000;
          Inst_out_IDEX         <= 32'h00000000;
          Rd_addr_out_IDEX      <= 5'h0;
          Rs1_out_IDEX          <= 32'h00000000;
          Rs2_out_IDEX          <= 32'h00000000;
          
          Imm_out_IDEX          <= 32'h00000000;
          ALUSrc_B_out_IDEX     <= 1'b0;
          ALU_control_out_IDEX  <= 3'b000;
          Branch_out_IDEX       <= 1'b0;
          BranchN_out_IDEX      <= 1'b0;
          MemRW_out_IDEX        <= 1'b0;
          Jump_out_IDEX         <= 1'b0;         
          MemtoReg_out_IDEX     <= 2'b0;
          RegWrite_out_IDEX     <= 1'b0;    
          valid_out_IDEX        <= 1'b0; 
       end
       else if(NOP_IDEX)begin
          PC_out_IDEX           <= 32'h00000000;
          Inst_out_IDEX         <= 32'h00000013;//nop:addi x0,x0,0x0
          Rd_addr_out_IDEX      <= 5'h0;        
          Rs1_out_IDEX          <= 32'h00000000;
          Rs2_out_IDEX          <= 32'h00000000;
          
          Imm_out_IDEX          <= 32'h00000000;
          ALUSrc_B_out_IDEX     <= 1'b0;        
          ALU_control_out_IDEX  <= 3'b000;      
          Branch_out_IDEX       <= 1'b0;        
          BranchN_out_IDEX      <= 1'b0;        
          MemRW_out_IDEX        <= 1'b0;        
          Jump_out_IDEX         <= 1'b0;        
          MemtoReg_out_IDEX     <= 2'b0;        
          RegWrite_out_IDEX     <= 1'b0;        
          valid_out_IDEX        <= 1'b0;        
       end
       else if(en_IDEX) begin
          PC_out_IDEX           <=  PC_in_IDEX;
          Inst_out_IDEX         <=  Inst_in_IDEX;
          Rd_addr_out_IDEX      <=  Rd_addr_IDEX;
          Rs1_out_IDEX          <=  Rs1_in_IDEX;
          Rs2_out_IDEX          <=  Rs2_in_IDEX;
          
          Imm_out_IDEX          <=  Imm_in_IDEX;
          ALUSrc_B_out_IDEX     <=  ALUSrc_B_in_IDEX;
          ALU_control_out_IDEX  <=  ALU_control_in_IDEX;
          Branch_out_IDEX       <=  Branch_in_IDEX;
          BranchN_out_IDEX      <=  BranchN_in_IDEX;        
          MemRW_out_IDEX        <=  MemRW_in_IDEX;
          Jump_out_IDEX         <=  Jump_in_IDEX;
          MemtoReg_out_IDEX     <=  MemtoReg_in_IDEX;
          RegWrite_out_IDEX     <=  RegWrite_in_IDEX;
          valid_out_IDEX        <=  valid_in_IDEX;
       end
    end
endmodule

`timescale 1ns / 1ps

module Pipeline_ID(
                  input          clk_ID,	             //ʱ��
                  input          rst_ID,                 //��λ
                  input          RegWrite_in_ID,         //�Ĵ����Ѷ�д
                 
                  input  [4:0]   Rd_addr_ID,             //дĿ�ĵ�ַ����
                  input  [31:0]  Wt_data_ID,             //д��������
                  input  [31:0]  Inst_in_ID,             //ָ������
                 
                  output  [4:0]      Rd_addr_out_ID,//дĿ�ĵ�ַ���
                  output  [31:0]      Rs1_out_ID,    //������1���
                  output  [31:0]      Rs2_out_ID ,   //������2���
                  output  [4:0]       Rs1_addr_ID,   //Դ��ַ1
                  output  [4:0]       Rs2_addr_ID,   //Դ��ַ2
                  output              Rs1_used,      //rs1��ʹ��
                  output              Rs2_used,      //rs2��ʹ��
                  output  [31:0]      Imm_out_ID ,   //���������
                  output              ALUSrc_B_ID ,  //Դ������2ѡ��
                  output  [2:0]       ALU_control_ID,//ALUѡ�����
                  output              Branch_ID,     //beq����
                  output              BranchN_ID,    //bne����
                  output              MemRW_ID,      //�洢����д
	              output              Jump_ID,       //jal����
                  output   [1:0]      MemtoReg_ID,   //�洢����д
                  output              RegWrite_out_ID,//�Ĵ����Ѷ�д
                  output wire[31:0] x0,ra,sp,gp,tp,t0,t1,t2,s0,s1, //�Ĵ���
                  output wire[31:0] a0,a1,a2,a3,a4,a5,a6,a7,s2,s3,
                  output wire[31:0] s4,s5,s6,s7,s8,s9,s10,s11,t3,t4,
                  output wire[31:0] t5,t6
    );
    
    assign Rd_addr_out_ID = Inst_in_ID[11:7];
    assign Rs1_addr_ID    = Inst_in_ID[19:15];
    assign Rs2_addr_ID    = Inst_in_ID[24:20];
    Regs_0 U1(
        .clk     (clk_ID),
        .rst     (rst_ID),
        .Rs1_addr(Rs1_addr_ID), 
        .Rs2_addr(Rs2_addr_ID), 
        .Wt_addr (Rd_addr_ID), 
        .Wt_data (Wt_data_ID), 
        .RegWrite(RegWrite_in_ID), 
        .Rs1_data(Rs1_out_ID), 
        .Rs2_data(Rs2_out_ID),
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
    wire[1:0] ImmSel;
    ImmGen_0 U2(
    .ImmSel(ImmSel),
    .inst_field(Inst_in_ID),
    .Imm_out(Imm_out_ID)
    );
    SCPU_ctrl_0 U3(
     .OPcode(Inst_in_ID[6:2]),	    
     .Fun3(Inst_in_ID[14:12]),       
     .Fun7(Inst_in_ID[30]),       
     .MIO_ready(),  
     .ImmSel(ImmSel),      
     .ALUSrc_B(ALUSrc_B_ID),    
     .MemtoReg(MemtoReg_ID),    
     .Jump(Jump_ID),        
     .Branch(Branch_ID),      
     .BranchN(BranchN_ID),
     .RegWrite(RegWrite_out_ID),    
     .MemRW(MemRW_ID),       
     .ALU_Control(ALU_control_ID), 
     .Rs1_used(Rs1_used),
     .Rs2_used(Rs2_used),
     .CPU_MIO()      
    );
endmodule

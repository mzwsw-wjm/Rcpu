`timescale 1ns / 1ps

`define CPU_ctrl_signals {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,ALUop,ecall,mret,ill_instr}

module SCPU_ctrl_Int(
    //input
    input wire[4:0] OPcode,         // inst[6:2]
    input wire[2:0] Fun3,           // inst[14:12]
    input wire Fun7,                // inst[30]
    input wire MIO_ready,           // CPU Wait
    input wire[2:0] Fun_ecall,      // inst[22:20]
    input wire[1:0] Fun_mret,       // inst[29:28]
    //output
    output reg[2:0] ImmSel,         //立即数选择控制 : extend 1 bit.
    output reg ALUSrc_B,            //源操作数2选择
    output reg[1:0] MemtoReg,       //写回数据选择控制,//课件似乎是错的
    output reg[1:0] Jump,           //jal : extend 1 bit.
    output reg Branch,              //beq
    output reg BranchN,             //new port.
    output reg RegWrite,            //寄存器写使能
    output reg MemRW,               //存储器读使能
    output reg[3:0] ALU_Control,    // ALU控制 : extend 1 bit.
    output reg CPU_MIO,             // not use
    output reg ecall,               //系统调用
    output reg mret,                //返回
    output reg ill_instr            //不合法指令
);

    reg[1:0] ALUop;
    wire[3:0] Fun;

    assign Fun = {Fun3,Fun7};

//Branch 和BranchN 字段在默认情况下全部置0，以保证下一步输入为PC+4.

always @* begin
    //ill_instr = 0;
    //ecall     = 0;
    //mret      = 0;
    case(OPcode)//未定义者统一到0.
        5'b01100 :begin
                  ImmSel = 3'b111;
                  `CPU_ctrl_signals = 14'b0_00_1_0_0_0_00_10_000;    //ALU(add...)
                  case(Fun)
                    4'b0000 : ALU_Control = 4'b0010; //add
                    4'b0001 : ALU_Control = 4'b0110; //sub
                    4'b0010 : ALU_Control = 4'b1110; //sll
                    4'b0100 : ALU_Control = 4'b0111; //slt
                    4'b0110 : ALU_Control = 4'b1001; //sltu
                    4'b1110 : ALU_Control = 4'b0000; //and
                    4'b1100 : ALU_Control = 4'b0001; //or
                    //4'b0100 : ALU_Control = 4'b0111; //slt
                    4'b1010 : ALU_Control = 4'b1101; //srl
                    4'b1011 : ALU_Control = 4'b1111; //sra
                    4'b1000 : ALU_Control = 4'b1100; //xor
                    default : begin 
                            ALU_Control = 4'b0000;
                            //ill_instr = 1;
                            //`CPU_ctrl_signals = 14'b0_00_0_0_1_1_00_00_001; mark 2.
                            end
                endcase
        end 
        5'b00000 : begin
                   `CPU_ctrl_signals = 14'b1_01_1_0_0_0_00_00_000;    //load
                   ALU_Control = 4'b0010; //add计算地址(sw,lw,jalr)
                   ImmSel = 3'b001;
        end
        5'b01000 : begin
                   `CPU_ctrl_signals = 14'b1_00_0_1_0_0_00_00_000;    //store
                   ALU_Control = 4'b0010; //add计算地址(sw,lw,jalr)
                   ImmSel = 3'b010;
        end
        5'b11000 : case(Fun3)
                        3'b000 : begin
                                 `CPU_ctrl_signals = 14'b0_00_0_0_1_0_00_01_000;    //beq : set "Branch" = 1(keep pace with the book).
                                 ALU_Control = 4'b0110; //sub比较条件(beq,bne)
                                 ImmSel = 3'b011;
                        end
                        3'b001 : begin
                                 `CPU_ctrl_signals = 14'b0_00_0_0_0_1_00_01_000;    //bne
                                 ALU_Control = 4'b0110; //sub比较条件(beq,bne)
                                 ImmSel = 3'b011;
                        end
                        default : begin
                                 `CPU_ctrl_signals = 14'b0_00_0_0_0_0_00_00_001;
                                 ALU_Control = 4'b0000;
                                 //ill_instr = 1;
                                 ImmSel = 3'b111;
                        end       
                    endcase    
        5'b11011 : begin
                   `CPU_ctrl_signals = 14'b1_10_1_0_0_0_01_00_000;    //jump(jal)
                   ALU_Control = 4'b0000;
                   ImmSel = 3'b100;
        end
        5'b00100 : begin
                    ImmSel = 3'b001;
                   `CPU_ctrl_signals = 14'b1_00_1_0_0_0_00_11_000;    //ALU(addi...)
                   case(Fun3)
                        3'b000 : ALU_Control = 4'b0010; //addi
                        3'b010 : ALU_Control = 4'b0111; //slti
                        3'b011 : ALU_Control = 4'b1001; //sltiu
                        3'b100 : ALU_Control = 4'b1100; //xori
                        3'b110 : ALU_Control = 4'b0001; //ori
                        3'b111 : ALU_Control = 4'b0000; //andi
                        3'b001 : ALU_Control = 4'b1110; //slli
                        3'b101 :case(Fun7)
                                    1'b0 : ALU_Control = 4'b1101; //srli
                                    1'b1 : ALU_Control = 4'b1111; //srai
                                    default: begin 
                                                ALU_Control = 4'b0000;
                                                //ill_instr = 1;
                                                //`CPU_ctrl_signals = 14'b0_00_0_0_1_1_00_00_001;  mark 1.
                                            end
                                endcase
                        default: begin 
                                ALU_Control = 4'b0000;
                                //ill_instr = 1;
                                //`CPU_ctrl_signals = 11'b0_00_0_0_1_1_00_00_001;
                                end
                    endcase
        end
        5'b01101 : begin
                    ImmSel = 3'b000;
                   `CPU_ctrl_signals = 14'b0_11_1_0_0_0_00_00_000;    //lui
                    ALU_Control = 4'b0000;
        end
        5'b11001 : begin
                    ImmSel = 3'b111;
                   `CPU_ctrl_signals = 14'b1_10_1_0_0_0_10_00_000;    //jalr
                   ALU_Control = 4'b0010; //add计算地址(sw,lw,jalr)
        end
        5'b11100 : begin     
                    ImmSel = 3'b111;                                     //ecall & mret
                    if(Fun_ecall == 3'b000)`CPU_ctrl_signals = 14'b0_00_0_0_0_0_00_00_100;
                    else if(Fun_mret == 2'b11)`CPU_ctrl_signals = 14'b0_00_0_0_0_0_00_00_010;
                    else `CPU_ctrl_signals = 14'b0_00_0_0_0_0_00_00_001;
                    ALU_Control = 4'b0000;
                   end
        default  : begin
                    ImmSel = 3'b111;
                    `CPU_ctrl_signals = 14'b0_00_0_0_0_0_00_00_001;
                    ALU_Control = 4'b0000;
                   end
    endcase
    end



//--- listen to the TAgg ---
// always @(ALUop) begin
//     case(ALUop)
//     //2'b00 : ALU_Control = 3'b0010; //add计算地址(sw,lw,jalr)
//     //2'b01 : ALU_Control = 3'b0110; //sub比较条件(beq,bne)
//     // 2'b10 : case(Fun)
//     //             4'b0000 : ALU_Control = 4'b0010; //add
//     //             4'b0001 : ALU_Control = 4'b0110; //sub
//     //             4'b0010 : ALU_Control = 4'b1110; //sll
//     //             4'b0100 : ALU_Control = 4'b0111; //slt
//     //             4'b0110 : ALU_Control = 4'b1001; //sltu
//     //             4'b1110 : ALU_Control = 4'b0000; //and
//     //             4'b1100 : ALU_Control = 4'b0001; //or
//     //             4'b0100 : ALU_Control = 4'b0111; //slt
//     //             4'b1010 : ALU_Control = 4'b1101; //srl
//     //             4'b1011 : ALU_Control = 4'b1111; //sra
//     //             4'b1000 : ALU_Control = 4'b1100; //xor
//     //             default : begin 
//     //                       ALU_Control = 4'b0000;
//     //                       //ill_instr = 1;
//     //                       `CPU_ctrl_signals = 11'b0_00_0_0_1_1_00_00_001;
//     //                       end
//     //         endcase
//     // 2'b11 : case(Fun3)
//     //             3'b000 : ALU_Control = 4'b0010; //addi
//     //             3'b010 : ALU_Control = 4'b0111; //slti
//     //             3'b011 : ALU_Control = 4'b1001; //sltiu
//     //             3'b100 : ALU_Control = 4'b1100; //xori
//     //             3'b110 : ALU_Control = 4'b0001; //ori
//     //             3'b111 : ALU_Control = 4'b0000; //andi
//     //             3'b001 : ALU_Control = 4'b1110; //slli
//     //             3'b101 :case(Fun7)
//     //                         7'b0000000 : ALU_Control = 4'b1101; //srli
//     //                         7'b0100000 : ALU_Control = 4'b1111; //srai
//     //                         default: begin 
//     //                                      ALU_Control = 4'b000;
//     //                                      //ill_instr = 1;
//     //                                      `CPU_ctrl_signals = 11'b0_00_0_0_1_1_00_00_001;
//     //                                 end
//     //                     endcase
//     //             default: begin 
//     //                      ALU_Control = 4'b000;
//     //                      //ill_instr = 1;
//     //                      //`CPU_ctrl_signals = 11'b0_00_0_0_1_1_00_00_001;
//     //                      end
//     //         endcase
//     default: ALU_Control = 4'b000;
//     endcase
//     end
    
endmodule

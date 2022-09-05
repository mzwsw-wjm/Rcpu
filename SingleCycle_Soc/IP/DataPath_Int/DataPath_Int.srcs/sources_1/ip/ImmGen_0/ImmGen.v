`timescale 1ns / 1ps

module ImmGen(
    input wire[2:0] ImmSel,         //立即数操作控制
    input wire[31:0] inst_field,    //指令数据域[31:7]
    output reg[31:0] Imm_out        //立即数输出
);

//增加了对U型拓展指令的立即数生成

always@*
begin
  case(ImmSel)
    3'b001 : Imm_out = {{20{inst_field[31]}},inst_field[31:20]};//addi\lw(I-type)
    3'b010 : Imm_out = {{20{inst_field[31]}},inst_field[31:25],inst_field[11:7]};//sw(S-type)
    3'b011 : Imm_out = {{20{inst_field[31]}},inst_field[7],inst_field[30:25],inst_field[11:8],1'b0};//beq(B-type)
    3'b100 : Imm_out = {{12{inst_field[31]}},inst_field[19:12],inst_field[20],inst_field[30:21],1'b0};//jal(J-type)
    3'b000 : Imm_out = {inst_field[31:12],12'h000};//lui(U-type)
    default : Imm_out = 32'h0000_0000;
  endcase
end

endmodule

/*
    功能：输出指令产生立即数,转移指令偏移量左移;
    在ImmGen部分完成了beq，jal指令的数据乘2过程;
*/
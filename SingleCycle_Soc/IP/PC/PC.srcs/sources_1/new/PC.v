`timescale 1ns / 1ps

module REG32(
    input wire clk,
    input wire rst,
    input wire CE,
    input wire[31:0] D,
    output reg[31:0] Q
);

always@*
begin
  if(rst == 1) Q <= 32'h0000_0000;
  else if(CE == 1) Q <= D;
end

endmodule

/*
    用途：PC指针、数据、地址或指令锁存
    在复位信号rst为1时，输出Q置为全0;
    在复位信号rst不为1，且使能信号CE为1时，输出Q等于输入D;
*/
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
    ��;��PCָ�롢���ݡ���ַ��ָ������
    �ڸ�λ�ź�rstΪ1ʱ�����Q��Ϊȫ0;
    �ڸ�λ�ź�rst��Ϊ1����ʹ���ź�CEΪ1ʱ�����Q��������D;
*/
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/18 14:48:32
// Design Name: 
// Module Name: floatadd_tb
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
module floatadd_tb();
    reg clk;
    reg rst;
    reg en;               //开始标志
    reg[31:0] A;          //被加数
    reg[31:0] B;          //加数
    wire[31:0] result;    //和
    wire fin;          //结束标志

floatadd floatadd_u(
    .clk(clk),
    .rst(rst),
    .en(en),
    .A(A),
    .B(B),
    .result(result),
    .fin(fin)
);

always #10 clk = ~clk;

initial begin
  rst = 1'b1;
  clk = 1'b0;
  en  = 1'b0;
  A   = 32'b0;
  B   = 32'b0;
  #10;
  rst = 1'b0;
  en = 1;
  A = 32'hc0a00000;//-5.0
  B = 32'hc0900000;//-4.5
  //c1180000 -9.5
  #100;
  A = 32'h40a00000;//5.0
  B = 32'h40900000;//4.5
  //41180000 9.5
  #1000 $stop();
end

endmodule

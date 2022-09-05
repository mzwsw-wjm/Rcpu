`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/13 00:19:24
// Design Name: 
// Module Name: div32
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

//---无符号32位整数除法---
module div32(
    input clk,
    input rst,
    input start,
    input[31:0] dividend,  //被除数
    input[31:0] divisor,   //除数
    output reg[31:0] quotient, //商
    output reg[31:0] remainder,//余数
    output reg finish
);

//这给的变量名和实际也差忒多了，差评


    reg [63:0]rem; 
    integer i;

    always @(posedge clk)
    begin
        rem = {32'b0,dividend};
        quotient = 32'b0;
        finish = 0;
        if(rst)
        begin
            remainder = 32'b0;
            quotient  = 32'b0;
            finish    = 1'b1;
        end
        else
        begin
            for(i = 1;i <= 33;i = i+1 )
            begin
                remainder = rem[63:32];
                
                if(remainder < divisor)
                begin
                    //remainder = remainder + divisor;
                    quotient = quotient << 1;
                end
                else 
                begin
                    remainder = remainder - divisor;
                    quotient = quotient << 1;
                    quotient = quotient +  1'b1;
                end
                rem = {remainder,rem[31:0]};
                rem = rem << 1;
            end
            finish = 1;
        end
    end
endmodule

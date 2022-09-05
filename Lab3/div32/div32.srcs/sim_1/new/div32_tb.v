`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/13 00:21:20
// Design Name: 
// Module Name: div32_tb
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

module div32_tb();
    reg clk;
    reg rst;
    reg start;
    reg[31:0] dividend;
    reg[31:0] divisor;
    wire[31:0] quotient;
    wire[31:0] remainder;
    wire finish;


    div32 div32_u(
        .clk(clk),
        .rst(rst),
        .start(start),
        .dividend(dividend),
        .divisor(divisor),
        .quotient(quotient),
        .remainder(remainder),
        .finish(finish)
    );

    always #50 clk = ~clk;

    initial begin
        clk = 0;
        rst = 0;
        start = 0;
        dividend = 32'd7;
        divisor  = 32'd2;

        #300;
        dividend = 32'd7;
        divisor  = 32'd4;

        #300;
        dividend = 32'd100;
        divisor  = 32'd10;

        #300;
        dividend = 32'd6;
        divisor  = 32'd3;

        #1500 $stop;
        end
        endmodule



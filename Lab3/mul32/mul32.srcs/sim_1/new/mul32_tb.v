`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/12 20:20:29
// Design Name: 
// Module Name: mul32_tb
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


module mul32_tb();
    reg clk;
    reg rst;
    reg[31:0] multiplicand;
    reg[31:0] multiplier;
    reg start;
    wire[63:0] product;
    wire finish;

    mul32 mul32_u(
        .clk(clk),
        .rst(rst),
        .multiplicand(multiplicand),
        .multiplier(multiplier),
        .start(start),
        .product(product),
        .finish(finish)
    );



always #10 clk = ~clk;

    initial begin
    clk = 0;
    rst = 0;
    start = 0;
    multiplicand = 32'd2;
    multiplier   = 32'd3;
    #500;
    multiplicand = 32'd10;
    multiplier   = 32'd8;
    #500;
    multiplicand = 32'd9;
    multiplier   = 32'd9;
    #500;
    multiplicand = 32'd50;
    multiplier   = 32'd6;
    #500;
    multiplicand = 32'd6;
    multiplier   = 32'd60;

    #4000 $stop();
    end

endmodule

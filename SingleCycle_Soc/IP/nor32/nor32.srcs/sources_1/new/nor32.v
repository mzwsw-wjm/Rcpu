`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/03 21:30:26
// Design Name: 
// Module Name: nor32
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


module nor32(
    input [31:0]A,
    input [31:0]B,
    output [31:0]res
    );
    
    assign res = ~(A | B);
    
endmodule

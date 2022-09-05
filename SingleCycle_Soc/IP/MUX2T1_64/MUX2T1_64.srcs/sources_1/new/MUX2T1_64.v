`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/05 16:46:56
// Design Name: 
// Module Name: MUX2T1_64
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


module MUX2T1_64(
    input [63:0]I0,
    input [63:0]I1,
    input s,
    output reg [63:0]o
    );
    
    always @(*) begin
        o <= s ? I0 : I1;
        end
    
endmodule

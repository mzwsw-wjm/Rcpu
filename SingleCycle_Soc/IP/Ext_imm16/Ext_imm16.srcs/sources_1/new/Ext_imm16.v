`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/03 22:31:48
// Design Name: 
// Module Name: Ext_imm16
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


module Ext_imm16(
    input [15:0]imm_16,
    output [31:0]Imm_32
    );
    
    assign Imm_32 = {{16{imm_16[15]}},imm_16};
    
endmodule

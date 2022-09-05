`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/07 13:00:09
// Design Name: 
// Module Name: Regs_tb
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


module Regs_tb;
    reg clk,rst,RegWrite;
    reg [4:0] Rs1_addr,Rs2_addr,Wt_addr;
    reg [31:0]Wt_data;
    wire [31:0] Rs1_data,Rs2_data;
    
    Regs Regs_u(
        .clk(clk),
        .rst(rst),
        .RegWrite(RegWrite),
        .Rs1_addr(Rs1_addr),
        .Rs2_addr(Rs2_addr),
        .Wt_addr(Wt_addr),
        .Wt_data(Wt_data),
        .Rs1_data(Rs1_data),
        .Rs2_data(Rs2_data)
    );
    
    always #10 clk = ~clk;
    
    initial begin
        clk = 0;
        rst = 1;
        RegWrite = 0;
        Rs1_addr = 5'b00000;
        Rs2_addr = 5'b00000;
        Wt_addr  = 5'b00000;
        Wt_data  = 32'h0000_0000;
        
        #100;
        rst = 0;
        RegWrite = 1;
        Wt_addr = 5'h05;
        Wt_data = 32'ha5a5a5a5;
        
        #50;
        RegWrite = 1;
        Wt_addr = 5'h0a;
        Wt_data = 32'h5a5a5a5a;
        
        #50;
        RegWrite = 0;
        Rs1_addr = 5'h05;
        //Rs1_data = 32'ha5a5a5a5;
        Rs2_addr = 5'h0a;
        //Rs2_data = 32'h5a5a5a5a;
        
        end
        
    
endmodule

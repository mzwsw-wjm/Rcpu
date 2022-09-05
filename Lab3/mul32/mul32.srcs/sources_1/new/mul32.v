`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/12 20:02:56
// Design Name: 
// Module Name: mul32
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

module mul32(
	input clk,
    input rst,
    input [31:0]multiplicand, //������
    input [31:0]multiplier,   //����
    input start,
    output reg[63:0]product,  //��
    output finish
);


//---32λ�޷������˷�---

    integer i;
    
    assign finish  = 1'b0;
    
    always @(posedge clk)
        begin
          if(rst) product = 64'b0;
          else 
          begin
            product = {32'b0,multiplier};
            for(i = 1;i<=32;i = i+1)
            begin
                case(product[0])
                    1'b0 : product = product + 64'b0;
                    1'b1 : product = product + {multiplicand,32'b0};
                endcase
                product =  product >> 1'b1;
            end
          end
        end
        
        assign finish = 1'b1;//��ʾ�������


endmodule


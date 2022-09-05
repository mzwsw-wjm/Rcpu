`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/02 22:39:48
// Design Name: 
// Module Name: addc_32
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


module addc_32(
    input [31:0]A,
    input [31:0]B,
    input C0,
    output [32:0]S
    );
   // wire B_com = B^32'b0000_0000_0000_0000_0000_0000_0000_0000;
   // always @(*) begin
   //     case(C0)
   //         1'b0 : S <= {1'b0,A} + {1'b0,B};
   //         1'b1 : S <= {1'b0,A} + {1'b1,B_com} + 33'b1;
   //     endcase
   //    end 
   assign S = {1'b0,A} + {C0,B} + C0;
    
endmodule

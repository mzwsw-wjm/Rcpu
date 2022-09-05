`timescale 1ns / 1ps


module REG32(
                    input clk,
					input rst,
					input CE,
					input [31:0]D,
					output reg[31:0]Q,
					output wire[31:0] dis
					);
					
	assign dis = (rst) ? 32'h0000_0000 : D;
					
	always @(posedge clk or posedge rst)
    	if (rst==1)  Q = 32'h00000000;
		else if (CE) Q = D;
		else Q = Q;
   //assign Q = (rst) ? 32'h0000_0000 : (CE ? D : 32'h0000_0000);

endmodule

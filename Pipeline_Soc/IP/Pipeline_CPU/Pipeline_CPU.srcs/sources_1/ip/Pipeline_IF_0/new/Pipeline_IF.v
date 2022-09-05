`timescale 1ns / 1ps

module Pipeline_IF(
        input wire          clk_IF,            //ʱ��
	    input wire          rst_IF,            //��λ
	    input wire          en_IF,             //ʹ��

        input wire [31:0]   PC_in_IF,	       //ȡָ��PC����
	    input wire          PCSrc,            //PC����ѡ��
	    output wire [31:0]  PC_out_IF,
	    output wire[31:0] dis
    );
    wire [31:0] add32_o;
    wire [31:0] MUX2T1_32_o;
    MUX2T1_32_0 MUX2T1_32_U(
    .I0(add32_o),
    .I1(PC_in_IF),
    .s(PCSrc),
    .o(MUX2T1_32_o)
    );
    REG32_0 REG32_U(
    .clk(clk_IF),
    .rst(rst_IF),
    .CE(en_IF),
    .D(MUX2T1_32_o),
    .Q(PC_out_IF),
    .dis(dis)
    );
    add_32_0 add32_U(
    .a(4),
    .b(PC_out_IF),
    .c(add32_o)
    );
    
endmodule

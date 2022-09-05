`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/18 14:45:04
// Design Name: 
// Module Name: floatadd
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

module floatadd(
    input clk,
    input rst,
    input en,               //��ʼ��־
    input[31:0] A,          //������
    input[31:0] B,          //����
    output reg[31:0] result,    //��
    output reg fin          //������־
);

/**
 *                             _ooOoo_
 *                            o8888888o
 *                            88" . "88
 *                            (| -_- |)
 *                            O\  =  /O
 *                         ____/`---'\____
 *                       .'  \\|     |//  `.
 *                      /  \\|||  :  |||//  \
 *                     /  _||||| -:- |||||-  \
 *                     |   | \\\  -  /// |   |
 *                     | \_|  ''\---/''  |   |
 *                     \  .-\__  `-`  ___/-. /
 *                   ___`. .'  /--.--\  `. . __
 *                ."" '<  `.___\_<|>_/___.'  >'"".
 *               | | :  `- \`.;`\ _ /`;.`/ - ` : | |
 *               \  \ `-.   \_ __\ /__ _/   .-` /  /
 *          ======`-.____`-.___\_____/___.-`____.-'======
 *                             `=---='
 *          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 *                     ���汣��        ����BUG
 *            ��Ի:
 *                   д��¥��д�ּ䣬д�ּ������Ա��
 *                   ������Աд�������ó��򻻾�Ǯ��
 *                   ����ֻ���������������������ߣ�
 *                   ��������ո��գ����������긴�ꡣ
 *                   ��Ը�������Լ䣬��Ը�Ϲ��ϰ�ǰ��
 *                   ���۱������Ȥ���������г���Ա��
 *                   ����Ц��߯��񲣬��Ц�Լ���̫����
 *                   ��������Ư���ã��ĸ���ó���Ա��
*/

    reg[9:0] expA;//2λ�׷� + 8λ����
    reg[9:0] expB;
    reg[9:0] expC;
    reg[25:0] tailA;//2λβ�� + 23λβ��
    reg[25:0] tailB;
    reg[25:0] tailC;
    reg[1:0] tail;
    integer i;//i��j��k�������Ǳ�ǻ���0�����������Ĳ���.
    integer j;
    integer k;

    always @(posedge clk)
    begin
        //---ת����˫����λ������ʽ---
        i = 0;
        j = 0;
        k = 0;
        if(A[30] == 0)
            expA = {3'b111,A[29:23]};//���룬A[30] == 0��ʾ�����Ǹ���
        else 
            expA = {3'b000,A[29:23]};//A[30] == 1��ʾ����������

        if(B[30] == 0)
            expB = {3'b111,B[29:23]};//���룬B[30] == 0��ʾ�����Ǹ���
        else 
            expB = {3'b000,B[29:23]};//B[30] == 1��ʾ����������

        if(A[31] == 0)
            tailA = {3'b001,A[22:0]};
        else 
            begin
                tailA = {3'b110,A[22:0] ^ 23'b1111_1111_1111_1111_1111_111} + 1;
                while(tailA[23] == 1)
                begin
                    tailA = tailA << 1;
                    expA = expA + 10'b1111_1111_11;//expA = expA - 1;���ʱ������������
                end
                if(expA[9] == 1 && expA[8] == 0)
                    i = 1;
            end

        if(B[31] == 0)
            tailB = {3'b001,B[22:0]};
        else 
            begin
                tailB = {3'b110,B[22:0] ^ 23'b1111_1111_1111_1111_1111_111} + 1;
                while(tailB[23] == 1)
                begin
                    tailB = tailB << 1;
                    expB = expB + 10'b1111_1111_11;//expB = expB - 1;���ʱ������������
                end
                if(expB[9] == 1 && expB[8] == 0)//bug
                    j = 1;
            end

        //---�Խ�---
        expC = expA - expB;
        if(expC[9] == 0)//˵��A�Ľ����
            begin
                expB = expA;
                tail[1] = tailB[25];
                tail[0] = tailB[24];
                tailB[25] = 0;
                tailB[24] = 0;
                tailB = tailB >> expC;
                tailB[25] = tail[1];
                tailB[24] = tail[0];
                expC = expA;
            end
        else 
            begin
                expC = expB - expA;
                expA = expB;
                tail[1] = tailA[25];
                tail[0] = tailA[24];
                tailA[25] = 0;
                tailA[24] = 0;
                tailA = tailA >> expC;
                tailA[25] = tail[1];
                tailA[24] = tail[0];
                expC = expB;
            end

        //---β�����---
        tailC = tailA + tailB;

        //---���������---
        case({tailC[25],tailC[24]})
            2'b01:begin
                tailC = tailC >> 1;
                expC = expC + 1;
            end  
            2'b10:begin
                tailC = tailC >> 1;
                tailC[25] = 1;
                expC = expC + 1;
            end
            2'b00:begin
                while(tailC[23] != 1)
                begin
                    tailC = tailC << 1;
                    expC = expC - 1;
                end
            end
            2'b11:begin
                while(tailC[23] != 0)
                begin
                    tailC = tailC << 1;
                    expC = expC - 1;
                end
            end
        endcase

        //---���봦��---
        //��λ��ʱ�����λ��û�б������͵��ضϴ�����

        //---����ж�---
        if(expC[9] == 1 && expC[8] == 0)k = 1;
        //��ʱֻ���������

        //---������---
        if(i == 1)result = B;
        if(j == 1)result = A;
        if(k == 1)result = 32'b0;
        if(i==0 && j==0 && k==0)
        begin
            //---result[31]---
            if(tailC[25] == 1 && tailC[24] == 1)result[31] = 1;//��ʾ����
            else result[31] = 0;
                        
            //---result[30:23]---
            result[30:23] = expC[7:0];
            result[30] = ~result[30];//ԭ���������ʾ�����Կ���ֱ�Ӱ��ȥ
            
            //---result[22:0]---
            if(tailC[25] == 0 && tailC[24] == 0)
                result[22:0] = tailC[22:0];//����λʡ��
            else
                begin
                    tailC = (tailC ^ 26'b1111_1111_1111_1111_1111_1111_11) + 1;                    
                    result[22:0] = tailC[22:0]; 
                end
        end
    end
endmodule
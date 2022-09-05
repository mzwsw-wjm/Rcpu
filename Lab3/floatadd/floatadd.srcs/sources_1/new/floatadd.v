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
    input en,               //开始标志
    input[31:0] A,          //被加数
    input[31:0] B,          //加数
    output reg[31:0] result,    //和
    output reg fin          //结束标志
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
 *                     佛祖保佑        永无BUG
 *            佛曰:
 *                   写字楼里写字间，写字间里程序员；
 *                   程序人员写程序，又拿程序换酒钱。
 *                   酒醒只在网上坐，酒醉还来网下眠；
 *                   酒醉酒醒日复日，网上网下年复年。
 *                   但愿老死电脑间，不愿鞠躬老板前；
 *                   奔驰宝马贵者趣，公交自行程序员。
 *                   别人笑我忒疯癫，我笑自己命太贱；
 *                   不见满街漂亮妹，哪个归得程序员？
*/

    reg[9:0] expA;//2位阶符 + 8位阶码
    reg[9:0] expB;
    reg[9:0] expC;
    reg[25:0] tailA;//2位尾符 + 23位尾码
    reg[25:0] tailB;
    reg[25:0] tailC;
    reg[1:0] tail;
    integer i;//i，j，k的作用是标记机器0，是针对下溢的操作.
    integer j;
    integer k;

    always @(posedge clk)
    begin
        //---转换成双符号位补码形式---
        i = 0;
        j = 0;
        k = 0;
        if(A[30] == 0)
            expA = {3'b111,A[29:23]};//移码，A[30] == 0表示阶码是负数
        else 
            expA = {3'b000,A[29:23]};//A[30] == 1表示阶码是正数

        if(B[30] == 0)
            expB = {3'b111,B[29:23]};//移码，B[30] == 0表示阶码是负数
        else 
            expB = {3'b000,B[29:23]};//B[30] == 1表示阶码是正数

        if(A[31] == 0)
            tailA = {3'b001,A[22:0]};
        else 
            begin
                tailA = {3'b110,A[22:0] ^ 23'b1111_1111_1111_1111_1111_111} + 1;
                while(tailA[23] == 1)
                begin
                    tailA = tailA << 1;
                    expA = expA + 10'b1111_1111_11;//expA = expA - 1;左归时，阶码作减法
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
                    expB = expB + 10'b1111_1111_11;//expB = expB - 1;左归时，阶码作减法
                end
                if(expB[9] == 1 && expB[8] == 0)//bug
                    j = 1;
            end

        //---对阶---
        expC = expA - expB;
        if(expC[9] == 0)//说明A的阶码大
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

        //---尾数求和---
        tailC = tailA + tailB;

        //---计算结果规格化---
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

        //---舍入处理---
        //移位的时候最后位就没有保留，就当截断处理了

        //---溢出判断---
        if(expC[9] == 1 && expC[8] == 0)k = 1;
        //暂时只标记了下溢

        //---翻译结果---
        if(i == 1)result = B;
        if(j == 1)result = A;
        if(k == 1)result = 32'b0;
        if(i==0 && j==0 && k==0)
        begin
            //---result[31]---
            if(tailC[25] == 1 && tailC[24] == 1)result[31] = 1;//表示负数
            else result[31] = 0;
                        
            //---result[30:23]---
            result[30:23] = expC[7:0];
            result[30] = ~result[30];//原来是移码表示，所以可以直接搬过去
            
            //---result[22:0]---
            if(tailC[25] == 0 && tailC[24] == 0)
                result[22:0] = tailC[22:0];//隐藏位省略
            else
                begin
                    tailC = (tailC ^ 26'b1111_1111_1111_1111_1111_1111_11) + 1;                    
                    result[22:0] = tailC[22:0]; 
                end
        end
    end
endmodule
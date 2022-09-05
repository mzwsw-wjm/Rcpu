
/*
    写这个的原因是我没看明白PPT上的代码是如何实现的，我不理解为什么
可以省略slice等模块，我也不明白为什么会在非BD的文件下出现.xci，这和
我在lab2里面的实现完全不一致：
第一，代码实现需不需要设计一个BD文件？
第二，代码实现需不需要添加空文档？我们之前设计的是软核还是固核？
第三，代码实现需不需要考虑slice等模块。

*/


`timescale 1 ps / 1 ps

module ALU
   (A,
    ALU_operation,
    B,
    res,
    zero);
  input [31:0]A;
  input [2:0]ALU_operation;
  input [31:0]B;
  output reg[31:0]res;
  output reg zero;

  always @(*)
  begin
    case(ALU_operation)
        3'b000:res = A&B;
        3'b001:res = A|B;
        3'b010:res = A+B;
        3'b110:res = A-B;
        3'b111:res = (A<B)?1:0;
        3'b100:res = ~(A|B);
        3'b101:res = A>>B[4:0];
        3'b011:res = A^B;
    endcase
    if(res == 32'b0)zero = 1;
    else zero = 0;
    end
endmodule

/*
    д�����ԭ������û������PPT�ϵĴ��������ʵ�ֵģ��Ҳ����Ϊʲô
����ʡ��slice��ģ�飬��Ҳ������Ϊʲô���ڷ�BD���ļ��³���.xci�����
����lab2�����ʵ����ȫ��һ�£�
��һ������ʵ���費��Ҫ���һ��BD�ļ���
�ڶ�������ʵ���費��Ҫ��ӿ��ĵ�������֮ǰ��Ƶ�����˻��ǹ̺ˣ�
����������ʵ���費��Ҫ����slice��ģ�顣

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
`timescale 1ns / 1ps

module RV_Int(
    //input
    input wire clk,
    input wire reset,
    input wire INT,
    input wire ecall,
    input wire mret,
    input wire ill_instr,
    input wire[31:0] pc_next,
    //output
    output reg[31:0] pc
);

    reg[31:0] mepc;
    reg interr;//sign the status of the interrupt button.
    //reg counter;
    reg preINT;

    //assume that the 3 kinds of interruptions won't happen together.
    always @(posedge clk or posedge reset) begin //�����ǵ�star����PC_next�ı仯�������С�
      if(reset)begin
        mepc <= 32'h0000_0000;
        pc   <= 32'h0000_0000;
        interr <= 1;
        //counter = 1;//counter == 1��ʾ����ִ��
      end
      else if(INT && interr)begin

        if(preINT == 0)begin

        pc   <= 32'h0000_000c;
        mepc <= pc_next;
        interr <= 0;
        //counter = 0;
        end
        else begin
          pc <= pc_next;
          interr <= interr;
        end




      end
      else if(ecall && interr)begin
        pc   <= 32'h0000_0008;
        mepc <= pc_next;
        interr <= 0;
        //counter = 0;
      end
      else if(ill_instr && interr)begin
        pc   <= 32'h0000_0004;
        mepc <= pc_next;
        interr <= 0;
        //counter = 0;
      end
      else if(mret && !interr)begin //interr����Ӧ��ȡ��
        pc <= mepc;
        interr <= 1;
        //counter = 0;
      end
      else begin
        //if(counter)begin
          pc <= pc_next;
          interr <= interr;
        //end
        //else counter = 1;

      end

    preINT = INT;

    end

endmodule

/*
    ��ΪһЩ�ӳ٣�ͬһ��ʱ�ӱ�����δ������Ϊclk��pc_next����ִ�����Ρ�
��û�з����жϵ�ʱ�򣬵ڶ���ִ����Ϊ��ʱˢ����pc_next������õ���ȷ�Ľ�
�������ǵ��жϷ�����ʱ�򣬵�һ��ִ�лᱻ������ȷ��ֵ���ڶ���ִ�оͻ�ص�
+4��·�����������Ե��жϵ�ʱ�����Ǳ�������һ�θ�ֵ�������������counter
�������жϵ�ʱ�����0���Ͳ��ᷢ���ڶ��θ�ֵ��
*/
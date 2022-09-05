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
    always @(posedge clk or posedge reset) begin //好像还是得star，将PC_next的变化加入其中。
      if(reset)begin
        mepc <= 32'h0000_0000;
        pc   <= 32'h0000_0000;
        interr <= 1;
        //counter = 1;//counter == 1表示可以执行
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
      else if(mret && !interr)begin //interr这里应该取反
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
    因为一些延迟，同一个时钟边沿这段代码会因为clk和pc_next而被执行两次。
在没有发生中断的时候，第二次执行因为及时刷新了pc_next反倒会得到正确的结
果。但是当中断发生的时候，第一次执行会被赋予正确的值，第二次执行就会回到
+4的路子上来，所以当中断的时候我们必须跳过一次赋值。所以我设计了counter
变量，中断的时候会变成0，就不会发生第二次赋值。
*/
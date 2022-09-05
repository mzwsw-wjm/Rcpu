`timescale 1 ps / 1 ps

module ALU(
    //input
    input wire[31:0] A,
    input wire[31:0] B,
    input wire[3:0] ALU_operation,
    //output
    output reg[31:0] res,
    output reg zero
);

/*
sll rd,rs1,rs2 : shift left logical
slt rd,rs1,rs2 : set if less than
sltu rd,rs1,rs2 : set if less than, unsigned
srl rd,rs1,rs2 : shift right logical
sra rd,rs1,rs2 : shift right arithmetic
*/

    wire[32:0] A_plus;
    wire[32:0] B_plus;

    assign A_plus = {1'b0,A};
    assign B_plus = {1'b0,B};

  always @(*)
  begin
    case(ALU_operation)
        4'b0000 : res = A&B; //and
        4'b0001 : res = A|B; //or
        4'b0010 : res = A+B; //add
        4'b0110 : res = A-B; //sub
        4'b0111 : res = (A<B)?1:0; //slt
        4'b1001 : res = (A_plus<B_plus)?1:0; //sltu
        4'b1100 : res = A^B; //xor
        //4'b100 : res = ~(A|B);
        4'b1110 : res = A << B[4:0]; //sll
        4'b1101 : res = A>>B[4:0]; //srl
        4'b1111 : res = A>>>B[4:0]; //sra
    endcase
    if(res == 32'b0)zero = 1;
    else zero = 0;
    end
endmodule
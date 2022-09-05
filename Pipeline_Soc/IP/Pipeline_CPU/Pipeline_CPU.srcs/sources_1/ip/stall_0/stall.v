`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/13 14:39:59
// Design Name: 
// Module Name: stall
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


module stall(
    input      rst_stall,
    input [4:0]Rs1_addr_ID,          //ÒëÂë½×¶Î¼Ä´æÆ÷¶ÁµØÖ·1
    input [4:0]Rs2_addr_ID,          //ÒëÂë½×¶Î¼Ä´æÆ÷¶ÁµØÖ·2
    
    input      RegWrite_out_IDEX,   //Ö´ÐÐ½×¶Î¼Ä´æÆ÷Ð´¿ØÖÆ
    input [4:0]Rd_addr_out_IDEX,    //Ö´ÐÐ½×¶Î¼Ä´æÆ÷Ð´µØÖ·
    
    input      RegWrite_out_EXMem,  //·Ã´æ½×¶Î¼Ä´æÆ÷Ð´¿ØÖÆ
    input [4:0]Rd_addr_out_EXMem,   //·Ã´æ½×¶Î¼Ä´æÆ÷Ð´µØÖ·
    input Rs1_used,          		//Rs1±»Ê¹ÓÃ
    input Rs2_used,                 //Rs2±»Ê¹ÓÃ

    input Branch_ID,                //ÒëÂë½×¶Îbeq
    input BranchN_ID,               //ÒëÂë½×¶Îbne
    input Jump_ID,                  //ÒëÂë½×¶Îjal
    input Branch_out_IDEX,          //Ö´ÐÐ½×¶Îbeq
    input BranchN_out_IDEX,         //Ö´ÐÐ½×¶Îbne
    input Jump_out_IDEX,            //Ö´ÐÐ½×¶Îjal
    input Branch_out_EXMem,         //·Ã´æ½×¶Îbeq
    input BranchN_out_EXMem,        //·Ã´æ½×¶Îbne
    input Jump_out_EXMem,           //·Ã´æ½×¶Îjal
    
    output reg en_IF,
    output reg en_IFID,
    output reg NOP_IDEX,
    output reg NOP_IFID
    );
    reg Data_stall;
    reg Control_stall;
    
    always @(*) begin
        Data_stall = 0;
        if((Rs1_used && RegWrite_out_IDEX  && (Rs1_addr_ID != 0) && (Rd_addr_out_IDEX == Rs1_addr_ID))   ||
           (Rs2_used && RegWrite_out_IDEX  && (Rs2_addr_ID != 0) && (Rd_addr_out_IDEX == Rs2_addr_ID))   ||
           (Rs1_used && RegWrite_out_EXMem && (Rs1_addr_ID != 0) && (Rd_addr_out_EXMem == Rs1_addr_ID))  ||
           (Rs2_used && RegWrite_out_EXMem && (Rs2_addr_ID != 0) && (Rd_addr_out_EXMem == Rs2_addr_ID)) )
              Data_stall = 1;
        else  Data_stall = 0;
    end
    always @(*) begin
        Control_stall = 0;
        if((Branch_ID || BranchN_ID || Jump_ID)
          ||(Branch_out_IDEX  || BranchN_out_IDEX || Jump_out_IDEX )
          ||(Branch_out_EXMem || BranchN_out_EXMem || Jump_out_EXMem))
              Control_stall = 1;
        else  Control_stall = 0;
    end
    
    always @(*) begin
        en_IF     = 1;
        en_IFID   = 1;
        NOP_IDEX  = 0;
        NOP_IFID  = 0;
        if(rst_stall) begin
            en_IF     = 1;
            en_IFID   = 1;
            NOP_IDEX  = 0;
            NOP_IFID  = 0;
        end
        else if(Data_stall) begin
            en_IF     = 0;
            en_IFID   = 0;
            NOP_IDEX  = 1;
        end
        else if(Control_stall) begin
            NOP_IFID  = 1;
            //en_IF = 0;
            //en_IFID = 0;
        end
        else begin
            en_IF     = 1;
            en_IFID   = 1;
            NOP_IDEX  = 0;
            NOP_IFID  = 0;
        end
    end
endmodule


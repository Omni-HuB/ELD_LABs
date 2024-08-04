`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2021 11:11:58
// Design Name: 
// Module Name: tb_fa
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


module tb_fa(

    );
    reg [2:0] A,B;
    wire [3:0] Sum;
    
    top_adder tb1(.A(A),.B(B),.Sum(Sum));
    
    initial
    begin
        A=3'b000;
        B=3'b000;
    end
    
    initial
    begin
        #5 A=3'b100;B=3'b110;
        #5 A=3'b111;B=3'b111;
        #5 A=3'b101;B=3'b101;
        #5 A=3'b011;B=3'b111;
    end
endmodule

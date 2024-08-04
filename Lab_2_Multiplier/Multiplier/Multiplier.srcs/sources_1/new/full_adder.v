`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2021 10:45:21
// Design Name: 
// Module Name: top_adder
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


module full_adder(
    input A,
    input B,
    input C,
    output Sum,
    output Carry
    );
    assign Sum=A^B^C;
    assign Carry=((A^B)&C)|(A&B);
endmodule

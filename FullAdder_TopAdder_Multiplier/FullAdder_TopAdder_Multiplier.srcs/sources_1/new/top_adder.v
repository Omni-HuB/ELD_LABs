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


module top_adder(
    input [2:0] A,
    input [2:0] B,
    output [3:0]Sum
    );
    wire c1,c2;
    full_adder in1(.A(A[0]),.B(B[0]),.C(1'b0),.Sum(Sum[0]),.Carry(c1));
    full_adder in2(.A(A[1]),.B(B[1]),.C(c1),.Sum(Sum[1]),.Carry(c2));
    full_adder in3(.A(A[2]),.B(B[2]),.C(c2),.Sum(Sum[2]),.Carry(Sum[3]));
endmodule

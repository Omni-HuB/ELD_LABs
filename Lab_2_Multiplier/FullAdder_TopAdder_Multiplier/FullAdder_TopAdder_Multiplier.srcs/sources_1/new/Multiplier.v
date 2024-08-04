`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2021 15:08:52
// Design Name: 
// Module Name: Multiplier
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


module Multiplier_3x3 (
    input [2:0] A,
    input [2:0] B,
    output [5:0] Sum
    );
    wire c1,c2,c3,c4,c5;   //input carry
    wire S1,S2;   // sum outputs of an adder as inputs for another adder 
    assign Sum[0]= A[0]&B[0];
    full_adder in1(.A(A[0]&B[1]),.B(B[0]&A[1]),.C(1'b0),.Sum(Sum[1]),.Carry(c1));
    full_adder in2(.A(A[2]&B[0]),.B(A[1]&B[1]),.C(c1),.Sum(S1),.Carry(c2));
    full_adder in3(.A(1'b0),.B(B[1]&A[2]),.C(c2),.Sum(S2),.Carry(c3));
    full_adder in4(.A(S1),.B(B[2]&A[0]),.C(1'b0),.Sum(Sum[2]),.Carry(c4));
    full_adder in5(.A(S2),.B(B[2]&A[1]),.C(c4),.Sum(Sum[3]),.Carry(c5));
    full_adder in6(.A(c4),.B(B[2]&A[2]),.C(c5),.Sum(Sum[4]),.Carry(Sum[5]));
endmodule

   


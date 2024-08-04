`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2021 11:24:10
// Design Name: 
// Module Name: vio_wrapper
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


module vio_wrapper(
    input clk
    );
    wire [2:0] A,B;
    wire [3:0] Sum;
        vio_0 vin1 (
    .clk(clk),
    .probe_in0(Sum),
    .probe_out0(A),
    .probe_out1(B)
    );
    
 top_adder in4(.A(A),.B(B),.Sum(Sum));    
endmodule

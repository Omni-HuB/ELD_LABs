`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2021 23:17:28
// Design Name: 
// Module Name: mux2g
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


module mux2g

#(parameter N=4)
(
input wire [N-1:0] a,
input wire [N-1:0] b,
input wire s,
output reg [N-1:0] y=0

    );
    
    always@(*)
        begin 
            if (s==0)
                y=a;
            else 
                y=b;
        end 
        
endmodule

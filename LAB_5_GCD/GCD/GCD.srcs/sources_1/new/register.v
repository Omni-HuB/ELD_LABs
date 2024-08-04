`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2021 23:13:36
// Design Name: 
// Module Name: register
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


module register
#(parameter N=8)
(input wire load,
input wire clk,
input wire clr,
input wire [N-1:0] d,
output reg [N-1:0] q=0
 );
 
 always @(posedge clk or posedge clr) 
        begin
            if (clr ==1)
                q<=0;
            else if (load == 1)
                q<=d;
        end
        
endmodule

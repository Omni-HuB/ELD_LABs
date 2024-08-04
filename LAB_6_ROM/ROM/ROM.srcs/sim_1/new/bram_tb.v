`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2021 21:32:11
// Design Name: 
// Module Name: bram_tb
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


module bram_tb(

    );
    
    reg clk=0;
    wire [3:0] max;
    
    top_BROM tb1(.clk(clk),.max(max));
    
    always #5 clk=~clk;
    
endmodule

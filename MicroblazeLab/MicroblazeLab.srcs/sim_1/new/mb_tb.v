`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2021 15:31:18
// Design Name: 
// Module Name: mb_tb
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


module mb_tb(

    );
    reg Clock, Reset;
    design_1_wrapper dut
   (.Clock(Clock),
    .Reset(Reset));
    
    initial begin
    Clock = 0;
    Reset = 0;
    #100 Reset = 1;
    end
    
    always 
    #5 Clock = ~Clock;
    
endmodule

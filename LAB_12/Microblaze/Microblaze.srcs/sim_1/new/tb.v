`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2021 02:40:17
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg clock,reset;
    initial
        begin
            clock=0;
            reset=0;
            #100 reset=1 ;            
        end
        
    always
  #5 clock=~clock;  
  
  design_1_wrapper in0(.reset(reset),.clock(clock));
    
endmodule

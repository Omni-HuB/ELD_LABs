`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2021 15:01:26
// Design Name: 
// Module Name: endSem_tb1
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


module endSem_tb1(

    );
    reg Clock,reset;
    initial
        begin
            Clock=0;
            reset=0;
            #100 reset=1 ;            
        end
        
    always
  #5 Clock=~Clock;  
  
  endSem_wrapper in0(.reset(reset),.Clock(Clock));
    
endmodule
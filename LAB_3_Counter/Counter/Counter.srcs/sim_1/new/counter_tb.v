`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2021 17:13:55
// Design Name: 
// Module Name: counter_tb
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


module counter_tb(

    );
    
    reg clk,reset;     //defining variables
    wire [7:0] count;
    counter_8bit tb1(.counter_clk(clk),.reset(reset),.count(count));   // instiantiate  DUT
    
    initial     //initialize variables
     begin
        clk=1'b0;
        reset=1'b1;
     end
     
    initial             //change stimulus
        begin
            #5 reset=1'b0;
            #50 reset =1'b1;
            #5 reset=1'b0;
            
        end
        
    always #5 clk= ~clk;           // clock with time period of 10ns    
    
endmodule

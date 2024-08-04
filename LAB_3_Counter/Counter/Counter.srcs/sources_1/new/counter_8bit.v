`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2021 12:00:52
// Design Name: 
// Module Name: Counter_8_bit
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


module counter_8bit(
    input counter_clk,
    input reset,
    output [7:0] count 
  ); 
    reg [7:0] count_reg = 0;
    reg [7:0] count_next = 0;
  
    always @(posedge counter_clk)           //Sequential always block. Why?
       begin 
          if (reset==1'b1)
              count_reg <= 0;
        //  else if(count_reg>=80)
         
         //   count_reg=count_reg;
          
          else
             count_reg <= count_next;    //+5  for skip count of 5
        end 
              
 
    always @(*)       //Combinational always block. Why? 
        begin
         count_next = count_reg+1;
        end 
        
      assign count = count_reg;
 
 endmodule 

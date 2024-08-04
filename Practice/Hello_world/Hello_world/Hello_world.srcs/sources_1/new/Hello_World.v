`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2021 12:27:57
// Design Name: 
// Module Name: Hello_World
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

//-----------------------------------------------------
// This is my first Verilog Program
// Design Name : hello_world
// File Name : hello_world.v
// Function : This program will print 'hello world'
// Coder    : Deepak
//-----------------------------------------------------
module hello_world ();

initial begin
  $display ("Hello World by Sfjjlfjf");
  $display ("IIITD");
  #10 $finish;
end

endmodule // End of Module hello_world

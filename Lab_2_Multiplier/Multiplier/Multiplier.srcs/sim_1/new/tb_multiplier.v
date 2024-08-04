`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 17:55:26
// Design Name: 
// Module Name: tb_multiplier
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


module tb_multiplier(

    );
    reg [2:0] A,B ;
    wire [5:0] MulOp ;
    
   Multiplier_3x3 tb1(.A(A),.B(B),.Sum(MulOp));
     initial
         begin
              A=3'b000;
              B=3'b000;
         end
         
     initial
        begin
            #5 A=3'b100; B=3'b110;
            #5 A=3'b111; B=3'b111;
            #5 A=3'b101; B=3'b101;
            #5 A=3'b011; B=3'b111;
        end   
           
endmodule

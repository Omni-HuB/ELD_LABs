`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2021 17:30:55
// Design Name: 
// Module Name: seven_segment
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
 

  module seven_segment(
    input_seg,A,B,C,D,E,F,G
  );
    input wire [3:0] input_seg;
 
    output reg A,B,C,D,E,F,G;
 
  always@(*)
  begin
    if (input_seg==4'b0000)  //0
        begin
           assign A=1'b1;
           assign B=1'b1;
           assign C=1'b1;
           assign D=1'b1;
           assign E=1'b1;
           assign F=1'b1;
           assign G=1'b0;
        end       
        
    else if (input_seg==4'b0001)  //1
        begin
           assign A=1'b0;
           assign B=1'b1;
           assign C=1'b1;
           assign D=1'b0;
           assign E=1'b0;
           assign F=1'b0;
           assign G=1'b0;
        end   
        
      else if (input_seg==4'b0010)  //2 
        begin
           assign A=1'b1;
           assign B=1'b1;
           assign C=1'b0;
           assign D=1'b1;
           assign E=1'b1;
           assign F=1'b0;
           assign G=1'b1;
        end       
        
      else if (input_seg==4'b0011) //3
        begin
           assign A=1'b1;
           assign B=1'b1;
           assign C=1'b1;
           assign D=1'b1;
           assign E=1'b0;
           assign F=1'b0;
           assign G=1'b1;
        end    
        
      else if (input_seg==4'b0100) //4 
          begin
           assign A=1'b0;
           assign B=1'b1;
           assign C=1'b1;
           assign D=1'b0;
           assign E=1'b0;
           assign F=1'b1;
           assign G=1'b1;
        end  
        
      else if (input_seg==4'b0101) //5 
        begin
           assign A=1'b1;
           assign B=1'b0;
           assign C=1'b1;
           assign D=1'b1;
           assign E=1'b0;
           assign F=1'b1;
           assign G=1'b1;
        end  
        
       else if (input_seg==4'b0110) //6 
        begin
           assign A=1'b1;
           assign B=1'b0;
           assign C=1'b1;
           assign D=1'b1;
           assign E=1'b1;
           assign F=1'b1;
           assign G=1'b1;
        end  
        
       else if (input_seg==4'b0111) //7 
        begin
           assign A=1'b1;
           assign B=1'b1;
           assign C=1'b1;
           assign D=1'b0;
           assign E=1'b0;
           assign F=1'b0;
           assign G=1'b0;
        end  
        
      else if (input_seg==4'b1000) //8 1
        begin
           assign A=1'b1;
           assign B=1'b1;
           assign C=1'b1;
           assign D=1'b1;
           assign E=1'b1;
           assign F=1'b1;
           assign G=1'b1;
        end  
        
      else if (input_seg==4'b1001) //9 
        begin
           assign A=1'b1;
           assign B=1'b1;
           assign C=1'b1;
           assign D=1'b0;
           assign E=1'b0;
           assign F=1'b1;
           assign G=1'b1;
        end  
      end 
endmodule
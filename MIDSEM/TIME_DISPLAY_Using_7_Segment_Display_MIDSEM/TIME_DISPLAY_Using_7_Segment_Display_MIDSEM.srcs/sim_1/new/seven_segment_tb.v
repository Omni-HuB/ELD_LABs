`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2021 19:11:16
// Design Name: 
// Module Name: seven_segment_tb
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


module seven_segment_tb(

    );
    
    reg [3:0] input_seg;
    wire [6:0] seven_seg;
    
    seven_segemnt tb0(.input_seg(input_seg),.seven_seg(seven_seg));
    
    initial begin
        input_seg=4'b0000;
        
      end
    
    initial begin
        input_seg=4'b0000;
     #5 input_seg=4'b0001;
     #5 input_seg=4'b0010;
     #5 input_seg=4'b0011;
     #5 input_seg=4'b0100;
     
     end 
     
endmodule

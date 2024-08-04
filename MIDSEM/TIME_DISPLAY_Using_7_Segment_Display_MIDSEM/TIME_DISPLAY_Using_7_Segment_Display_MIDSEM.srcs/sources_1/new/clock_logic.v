`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2021 16:39:45
// Design Name: 
// Module Name: clock_logic
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


module clock_logic(
    input clock_1Hz ,
    input reset,
    input hour_preset,
    input [2:0] hour_preset_value,
    input minute_preset,
    input [3:0]minute_preset_value,
    output [2:0] hour,
    output [3:0] minute,
    output [3:0] second

    );
    
    reg [2:0] hour_set=0;
    reg [3:0] minute_set=0;
    reg [3:0] second_set=0;
    
    always @(posedge clock_1Hz)
        begin 
        if (reset==1'b1)
            begin
            hour_set<=1;
            minute_set<=1;
            second_set<=1; 
           end 
        else if(hour_preset==1'b1)
            begin
             hour_set<=hour_preset_value;
             minute_set<=hour_preset_value;
             second_set<=hour_preset_value;
            end
        else if(minute_preset==1'b1)
            begin
             hour_set<=minute_preset_value;
             minute_set<=minute_preset_value;
             second_set<=minute_preset_value;
            end
        end
    
    
    
endmodule

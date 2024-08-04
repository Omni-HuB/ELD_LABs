`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2021 16:12:04
// Design Name: 
// Module Name: top_clock
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


module top_clock(

    input clk_100M,
    input reset,
    input hour_preset,
    input [2:0] hour_preset_value,
    input minute_preset,
    input [3:0]minute_preser_value,
    output [2:0] hour,
    output [3:0] minute,
    output [3:0] second

    );
    
wire  clk_5M, clk_1H;
    clk_wiz_0 in0
   (
    // Clock out ports
    .clk_out1(clk_5M),     // output clk_out1
   // Clock in ports
    .clk_in1(clk_100M));      // input clk_in1
    
clk_divider #(.div_value(2499999)) clk_div_IN0(.clk_in(clk_5M),.divided_clk(clk_1H));



endmodule 

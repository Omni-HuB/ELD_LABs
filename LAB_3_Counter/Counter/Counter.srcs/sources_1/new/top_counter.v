`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2021 16:37:28
// Design Name: 
// Module Name: top_counter
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


module top_counter(
    input clk_100M,      // Clock from FPGA itself 
    input reset,
    output [7:0] count

    );
    
    wire clk_5M ,clk_1H;
    
  clk_wiz_0 clk_IN0(
    // Clock out ports
    .clk_out1(clk_5M),     // output clk_out1
   // Clock in ports
    .clk_in1(clk_100M)     // input clk_in1
    );    
    
    clk_divider #(.div_value(2499999)) clk_div_IN0(.clk_in(clk_5M),.divided_clk(clk_1H));
    
    counter_8bit count_IN0(.counter_clk(clk_1H),.reset(reset),.count(count));
                
    ila_3 ila_IN0(
	.clk(clk_100M), // input wire clk


	.probe0(clk_1H), // input wire [0:0]  probe0  
	.probe1(reset), // input wire [0:0]  probe1 
	.probe2(count) // input wire [7:0]  probe2
);
endmodule

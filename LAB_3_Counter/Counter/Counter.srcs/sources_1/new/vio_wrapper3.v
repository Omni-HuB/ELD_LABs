`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2021 17:50:20
// Design Name: 
// Module Name: vio_wrapper3
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


module vio_wrapper3(
    input clk      //form FPGA itself
    );
    
    wire [7:0] count;
    wire reset;
    
    vio_0 vio_3(
  .clk(clk),                // input wire clk
  .probe_in0(count),    // input wire [7 : 0] probe_in0
  .probe_out0(reset)  // output wire [0 : 0] probe_out0
);

    top_counter in1(.clk_100M(clk),.reset(reset),.count(count));
endmodule

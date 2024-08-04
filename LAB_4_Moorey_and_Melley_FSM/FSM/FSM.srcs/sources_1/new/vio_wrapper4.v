`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2021 00:37:15
// Design Name: 
// Module Name: vio_wrapper4
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


module vio_wrapper4(
    input clk
    );
    
    wire clear, inp_0,inp_1,out;
    wire[2:0] present_state;
    
    vio_0 vio4(
  .clk(clk),                // input wire clk
  .probe_in0(out),    // input wire [0 : 0] probe_in0
  .probe_in1(present_state),    // input wire [2 : 0] probe_in1
  .probe_out0(inp_0),  // output wire [0 : 0] probe_out0
  .probe_out1(inp_1),  // output wire [0 : 0] probe_out1
  .probe_out2(clear)  // output wire [0 : 0] probe_out2
 );

    
    topSeq tb5(.clk_100M(clk),.clear(clear),.input_0(inp_0),.input_1(inp_1),.out(out),.present_state(present_state));

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 18:30:55
// Design Name: 
// Module Name: Vio_Wrapper2
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


module Vio_Wrapper2(
    input clk
    );
    
    wire [2:0] A,B;
    wire [5:0] MulOp;
        vio_0 vin2 (
  .clk(clk),                // input wire clk
  .probe_in0(MulOp),    // input wire [5 : 0] probe_in0
  .probe_out0(A),  // output wire [2 : 0] probe_out0
  .probe_out1(B)  // output wire [2 : 0] probe_out1
   );

    Multiplier_3x3 in7(.A(A),.B(B),.Sum(MulOp));
    
endmodule

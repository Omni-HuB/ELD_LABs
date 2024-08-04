`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2021 10:12:46
// Design Name: 
// Module Name: topSeq
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


module topSeq(

    input clk_100M,
    input clear,
    input input_1,
    input input_0,
    output out,
    output [2:0] present_state
   );
   
   wire clk_5M, clk_200H;
   wire input_pulse;
   
   
  clk_wiz_0 clk_in0
   (
    // Clock out ports
    .clk_out1(clk_5M),     // output clk_out1
   // Clock in ports
    .clk_in1(clk_100M)
    );
    
  clk_divider #(.div_value(12499)) in2(.clk_in(clk_5M),.divided_clk(clk_200H));
    
  input_pulse in3(.clk_200H(clk_200H),.inp_0(input_0) ,.inp_1(input_1) ,.input_pulse(input_pulse));

  fsm_11011 in4(.input_pulse(input_pulse),.clear(clear),.inp_1(input_1),.out(out),.present_state(present_state));
  
endmodule

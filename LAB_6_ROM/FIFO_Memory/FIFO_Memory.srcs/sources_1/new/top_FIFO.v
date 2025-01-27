`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2021 10:29:46
// Design Name: 
// Module Name: top_FIFO
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


module top_FIFO(

    input clk_100M,
    input reset,
    input read,
    input write,
    input [3:0] din,
    output [3:0] dout,
    output full,
    output empty,
    output almost_full,
    output almost_empty,
    output [3:0] data_count
 );
 
 wire clk_5M,clk_200H,clk_pulse;
 
 clk_wiz_0 in0
   (
    // Clock out ports
    .clk_out1(clk_5M),     // output clk_out1
   // Clock in ports
    .clk_in1(clk_100M));      // input clk_in1
// INST_TAG_END ------ End INSTANTIATION Template ---------

 
 clk_divider #(.div_value(12499)) in2(.clk_in(clk_5M),.divided_clk(clk_200H));
 input_pulse in3(.clk_200H(clk_200H),.inp_0(read),.inp_1(write),.input_pulse(clk_pulse));
 
 //----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
fifo_generator_0 in1 (
  .clk(clk_pulse),                    // input wire clk
  .srst(reset),                  // input wire srst
  .din(din),                    // input wire [3 : 0] din
  .wr_en(write),                // input wire wr_en
  .rd_en(read),                // input wire rd_en
  .dout(dout),                  // output wire [3 : 0] dout
  .full(full),                  // output wire full
  .almost_full(almost_full),    // output wire almost_full
  .empty(empty),                // output wire empty
  .almost_empty(almost_empty),  // output wire almost_empty
  .data_count(data_count)      // output wire [3 : 0] data_count
);
// INST_TAG_END ------ End INSTANTIATION Template ---------



//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG

ila_0 in5 (
	.clk(clk_100M), // input wire clk
	.probe0(din), // input wire [3:0]  probe0  
	.probe1(dout), // input wire [3:0]  probe1 
	.probe2(data_count), // input wire [3:0]  probe2 
	.probe3(read), // input wire [0:0]  probe3 
	.probe4(write), // input wire [0:0]  probe4 
	.probe5(reset), // input wire [0:0]  probe5 
	.probe6(almost_full), // input wire [0:0]  probe6 
	.probe7(full), // input wire [0:0]  probe7 
	.probe8(empty), // input wire [0:0]  probe8 
	.probe9(almost_empty) // input wire [0:0]  probe9
);

// INST_TAG_END ------ End INSTANTIATION Template ---------

    
endmodule

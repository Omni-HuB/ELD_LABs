`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2021 22:38:02
// Design Name: 
// Module Name: vio_wrapper_6
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


module vio_wrapper_6(

input clk
    );
    
    wire reset, read, write, full, empty, almost_full, almost_empty;
    wire [3:0] din, dout, data_count;
    
    
//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
vio_0 in0(
  .clk(clk),                // input wire clk
  .probe_in0(dout),    // input wire [3 : 0] probe_in0
  .probe_in1(full),    // input wire [0 : 0] probe_in1
  .probe_in2(almost_full),    // input wire [0 : 0] probe_in2
  .probe_in3(empty),    // input wire [0 : 0] probe_in3
  .probe_in4(almost_empty),    // input wire [0 : 0] probe_in4
  .probe_in5(data_count),    // input wire [3 : 0] probe_in5
  .probe_out0(reset),  // output wire [0 : 0] probe_out0
  .probe_out1(read),  // output wire [0 : 0] probe_out1
  .probe_out2(write),  // output wire [0 : 0] probe_out2
  .probe_out3(din)  // output wire [3 : 0] probe_out3
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

top_FIFO in2(.clk_100M(clk),.reset(reset),.read(read),.write(write),.din(din),.full(full),
            .empty(empty),.almost_full(almost_full),.almost_empty(almost_empty),
            .dout(dout),.data_count(data_count));
            
            

endmodule

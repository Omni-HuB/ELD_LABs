`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2021 11:04:14
// Design Name: 
// Module Name: top_FFT
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


module top_FFT(

    input aclk, aresetn,
    
    // Input Data Stream 
    input [31:0] in_data,
    input in_valid,
    input in_last,
    output in_ready,
    
    // Config Data Stream
    
    input [7:0] config_data,
    input config_valid,
    output config_ready,
    
    // Output Data Stream
    
    output [31:0] out_data,
    output out_valid,
    output out_last,
    input out_ready


    );


wire [63:0] data_fft; // FFT IP takes 64 bit data, so padding the upper 32 bit's with 0's

assign data_fft[63:32] = 32'd0;
assign data_fft[31:0] =  in_data; // Read data from the user using input stream 

wire [63:0]  out_fft;  // Output of FFT is 64 bit 


// Additional Event Signals
wire 
    event_frame_started,
    event_tlast_unexpected,
    event_tlast_missing,
    event_status_channel_halt,
    event_data_in_channel_halt,
    event_data_out_channel_halt ;



//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
FFT_0 fft0 (
  .aclk(aclk),                                                // input wire aclk
  .aresetn(aresetn),                                          // input wire aresetn
  
  .s_axis_config_tdata(config_data),                  // input wire [7 : 0] s_axis_config_tdata
  .s_axis_config_tvalid(config_valid),                // input wire s_axis_config_tvalid
  .s_axis_config_tready(config_ready),                // output wire s_axis_config_tready
  
  .s_axis_data_tdata(data_fft),                      // input wire [63 : 0] s_axis_data_tdata
  .s_axis_data_tvalid(in_valid),                    // input wire s_axis_data_tvalid
  .s_axis_data_tready(in_ready),                    // output wire s_axis_data_tready
  .s_axis_data_tlast(in_last),                      // input wire s_axis_data_tlast
  
  .m_axis_data_tdata(out_fft),                      // output wire [63 : 0] m_axis_data_tdata
  .m_axis_data_tvalid(out_valid),                    // output wire m_axis_data_tvalid
  .m_axis_data_tready(out_ready),                    // input wire m_axis_data_tready
  .m_axis_data_tlast(out_last),                      // output wire m_axis_data_tlast
 
  .event_frame_started(event_frame_started),                  // output wire event_frame_started
  .event_tlast_unexpected(event_tlast_unexpected),            // output wire event_tlast_unexpected
  .event_tlast_missing(event_tlast_missing),                  // output wire event_tlast_missing
  .event_status_channel_halt(event_status_channel_halt),      // output wire event_status_channel_halt
  .event_data_in_channel_halt(event_data_in_channel_halt),    // output wire event_data_in_channel_halt
  .event_data_out_channel_halt(event_data_out_channel_halt)  // output wire event_data_out_channel_halt
);
// INST_TAG_END ------ End INSTANTIATION Template ---------


assign out_data = out_fft[31:0]; // Lower 32 bits being dispalyed.As real Part is needed


endmodule

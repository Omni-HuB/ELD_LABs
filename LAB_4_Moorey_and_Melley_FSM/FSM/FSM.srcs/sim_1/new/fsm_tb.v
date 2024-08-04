`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2021 23:21:08
// Design Name: 
// Module Name: fsm_tb
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


module fsm_tb(

    );
    
    reg clear,input_pulse , inp_1;
    wire [2:0] present_state;
    wire out;
    
    fsm_11011 tb1(.input_pulse(input_pulse),.clear(clear),.inp_1(inp_1),.out(out),.present_state(present_state));
    
    initial begin
        input_pulse<=1'b0;
        clear<=1'b1;
        inp_1<=1'b0;
        
    end
    
    initial begin
    
    #5 clear=0;
    
    @(negedge input_pulse) inp_1<=1;  // changing the input data at negative edge of the clock*
    @(negedge input_pulse) inp_1<=1;
    @(negedge input_pulse) inp_1<=0;
    @(negedge input_pulse) inp_1<=1;
    @(negedge input_pulse) inp_1<=1;  // pattern is completed
    @(negedge input_pulse) inp_1<=0;
    @(negedge input_pulse) inp_1<=1;
    @(negedge input_pulse) inp_1<=1;   // overlaped pattern is completed again
    
    end
    
    always #10 input_pulse=~input_pulse;
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2021 11:26:07
// Design Name: 
// Module Name: pulse_tb
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


module pulse_tb(

    );
 
  reg clk, inp_0,inp_1;
  wire input_pulse;
  
    input_pulse tb0(.clk_200H(clk),.inp_0(inp_0) ,.inp_1(inp_1) ,.input_pulse(input_pulse));
 
    initial
        begin 
            clk =0;
            inp_0 = 0; inp_1= 0;
        end 
 
    initial begin   
        #5 inp_0=0 ; inp_1 =1;
        #7 inp_0=0; inp_1=0;
        
        // for doing another test 
        //# inp_0=0; inp_1=1;
        //  #inp_0=0; inp_1=0;
    end 
    
    always #10 clk = ~clk;
 
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2021 10:59:07
// Design Name: 
// Module Name: input_pulse
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


module input_pulse( 

    input clk_200H,
    input inp_0, //7: ;iv, idput as 7
    input inp_1, //7: plye .1Apst as 1
    output input_pulse
);
 
    reg Q= 0; 
    reg D = 0;

    wire inp_pulse;

    assign inp_pulse= inp_0 | inp_1;
 
    always @(posedge clk_200H)
    begin
        Q <= D;
    end 
 
    always @(*) begin 
        D= inp_pulse;
    end 
    assign input_pulse=Q;

endmodule


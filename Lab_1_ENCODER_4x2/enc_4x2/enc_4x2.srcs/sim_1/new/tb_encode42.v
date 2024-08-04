`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2021 17:53:05
// Design Name: 
// Module Name: tb_encode42
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


module tb_encode42(

    );
    wire[1:0] E_output;
    reg[3:0] E_input;
        enc_4x2 instance_1(.E_input(E_input), .E_output(E_output));
    initial
    begin
        E_input = 4'b0001;
        # 5 E_input=4'b0010;
        # 5 E_input=4'b0100;
        # 5 E_input=4'b1000;
    end

endmodule

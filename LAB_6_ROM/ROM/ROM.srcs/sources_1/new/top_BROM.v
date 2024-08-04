`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2021 09:47:47
// Design Name: 
// Module Name: top_BROM
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


module top_BROM(

    input clk,
    output reg [3:0] max=0

    );
    
    wire [3:0] dout;
    reg [3:0] addr_reg=0,addr_next;
    always@(posedge clk)
    begin 
        addr_reg<= addr_next;
    end
    
    always@(*)
    begin 
        if(addr_reg==9)
            addr_next= addr_reg;
        else
            addr_next=addr_reg+1;
    end
    
    
 blk_mem_gen_0 in1 (
  .clka(clk),    // input wire clka
  .addra(addr_reg),  // input wire [3 : 0] addra
  .douta(dout)  // output wire [3 : 0] douta
    );
    
  always@(*)
    begin
        if(dout>max)
            max=dout;
        else
            max=max;
    end
    
    
endmodule



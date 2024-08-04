`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2021 23:23:43
// Design Name: 
// Module Name: gcd_tb
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


module gcd_tb(

    );
    
  reg clk, clr , go ;   
  reg [3:0] xin ,yin;
  wire [3:0] gcd_out;
  
  gcd U4(
   .clk(clk),
   .go(go),
   .xin(xin),
   .yin(yin),
   .gcd_out(gcd_out)


   );
  
    initial 
        begin
            clk =1'b0;
            clr= 1'b0;
            go=1'b0;
            xin=4'b0000;
            yin=4'b0000;
        end
        
always #10 clk=~clk;

initial
    begin
        @(negedge clk);
        clr =1'b1 ;
        
        
        @(negedge clk);
        clr = 1'b0;
        go = 1'b1;
        xin = 4'b0011;
        yin = 4'b0110;
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
   
        
        @(negedge clk);
        clr =1'b1;
        
        @(negedge clk);
        clr = 1'b0;
        go = 1'b1;
        xin = 4'b0100;
        yin = 4'b1000;
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        
        $finish;
        
        
   end
        
    
  
endmodule

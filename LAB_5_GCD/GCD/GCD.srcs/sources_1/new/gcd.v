`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2021 17:35:04
// Design Name: 
// Module Name: gcd
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
module gcd (

input wire clk , 
input wire clr ,
input wire go ,
input wire [3:0] xin ,
input wire [3:0] yin ,       
output wire [3:0] gcd_out 
);
       
 wire eqflg, ltflg, xmsel, ymsel; 
 wire xld, yld, gld;
 
   gcd_datapath Ul(
   .clk(clk),
   .clr(clr),
   .xmsel(xmsel),
   .ymsel(ymsel),
   .xld(xld),
   .yld(yld),
   .gld(gld),   
   
   //daja 25 
   
   .xin(xin), 
   .yin(yin),
   .gcd(gcd_out), 
   
   // flags to determine the weather we obtained the GCD or shoukld we keep on going. 

    .eqflg(eqflg), 
    .ltflg(ltflg)
    );
    
  gcd_control U2(

    .clk(clk),
    .clr(clr),
    .go(go),

    //flags to determine whether we obtained the GCD or should we keep going 
    
    .eqflg(eqflg),
    .ltflg(ltflg),
     
     // Select line for loading data into reg MUX 
    .xmsel(xmsel),
    .ymsel(ymsel),
     
     // load signals
    .xld(xld),
    .yld(yld),
    .gld(gld)

 );    
    
    
 endmodule
`timescale 1ns / 1ps

module clk_divider
         #(  
            parameter div_value=2499999 //division value-Given (Frequency(5M in our case)/(2*desired freq)]-1 
           )
            
          (
            input clk_in,  //input clk
            output reg divided_clk=0     //divided clk
           ) ;
    
                     
    reg [31:0]count_reg=0,count_next=0;
    
    always @(posedge clk_in)
         begin 
              if(count_next==div_value)
                  count_reg<=0;
              else 
                  count_reg<=count_next;
         
         end 
         
    always @(*) 
        count_next=count_reg+1; 
        
    always @(posedge clk_in) 
        begin 
            if(count_next==div_value)
                 divided_clk<=~divided_clk;
            else 
                 divided_clk<=divided_clk; 
        end 
  
  endmodule 

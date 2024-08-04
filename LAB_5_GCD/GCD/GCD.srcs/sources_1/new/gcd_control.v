`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2021 22:28:19
// Design Name: 
// Module Name: gcd_datapath
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
 module gcd_control(
      input wire clk , 
      input wire clr,
      input wire go ,
      input wire eqflg,
      input wire ltflg,
      output reg xmsel=0,
      output reg ymsel= 0 ,
      output reg xld = 0,
      output reg yld =0,
      output reg gld =0
      
    );
    
    
  reg[2:0] present_state=0,next_state=0;
  
  parameter start=3'b000, input1 =3'b001, test1 = 3'b010,
            test2=3'b011, update1 = 3'b100, update2 = 3'b101,
            done=3'b110;  // states 
            
   // state regisers
 
 always @(posedge clk or posedge clr) 
    begin
         if (clr == 1)
            present_state <= start;
         else
            present_state <= next_state; 
            
    end 
// Cl module 
always @(*) 
     begin 
        case (present_state) 
             start: if (go == 1)
                         next_state = input1;
                    else
                        next_state = start;
                        
             input1: next_state = test1;
             test1: if (eqflg == 1)
                         next_state = done;
                    else 
                         next_state = test2;
             test2: if (ltflg == 1)
                        next_state = update1;
                    else 
                        next_state = update2;
            update1: next_state = test1; 
            update2: next_state = test1;
            done: begin
                if (eqflg==1)
                    next_state = start; 
                else
                    next_state=done;   
                  end
            default next_state = start;
            
         endcase
end 

//C2 module

always@(*)
   begin
        xld=0;
        yld=0;
        gld=0;
        xmsel=0;
        ymsel=0;
        
        case(present_state)
            input1:
                begin 
                    xld=1;
                    yld=1;
                    xmsel=1;
                    ymsel=1;
                end
            update1: yld=1;
            update2: xld=1;
            done: gld=1;
            default;
       endcase
  end 
  
  endmodule
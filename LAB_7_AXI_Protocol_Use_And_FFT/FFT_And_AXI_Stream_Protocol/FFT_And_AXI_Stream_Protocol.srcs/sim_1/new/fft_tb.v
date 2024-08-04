`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2021 17:58:29
// Design Name: 
// Module Name: fft_tb
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


module fft_tb();
    
    reg aclk, aresetn;
    
    // making reg types for Inputs
    reg [31:0] in_data;
    reg in_valid;
    reg in_last;
    wire in_ready;  // wire for outputs for all groups of streams Signals
 
    
    reg [7:0] config_data;
    reg config_valid;
    wire config_ready;
    
   
    
    wire [31:0] out_data;
    wire  out_valid;
    wire  out_last;
    reg out_ready;
    
    reg [31:0] input_data [15:0]; // creating a ROM , for the input data to the FFT IP
    
    integer i;
    
    
    // instantiating  top_FFT module
    
    top_FFT in0(  
    .aclk(aclk),
    .aresetn(aresetn),
    
    .in_data(in_data),
    .in_valid(in_valid),
    .in_ready(in_ready),
    .in_last(in_last),
    
    .config_data(config_data),
    .config_valid(config_valid),
    .config_ready(config_ready),
    
    .out_data(out_data),
    .out_valid(out_valid),
    .out_last(out_last),
    .out_ready(out_ready)
    
    );
    
    
    always 
        begin 
            #5 aclk=~aclk;  // clock with time period of 10 units
        end
        
        
    initial 
       begin
         aclk=0;
         aresetn=0;
         
         in_valid =1'b0;
         in_data= 32'd0 ;
         in_last = 1'b0;



           /* Initialising OUT_READY to 1 , inorder to tell FFT
               that outputs can be generatd whenever ready 
               failure to do so leads to " Back-Pressure"                     
           */ 
         
         out_ready = 1'b1;  
         
         
         config_data = 8'd0;
         config_valid= 1'b0;    
    
       end
       
       
    initial 
        begin
            #70 // As Reset needs to be activated for atleast 2 cycles we have given 70 units of delay
            aresetn = 1;
           
           // input data entered using python
            input_data[0]= 32'b00100101100011010011000100110010;
            input_data[1]= 32'b00111111001111100011111010111101;
            input_data[2]= 32'b00111111011111101001100011111101;
            input_data[3]= 32'b00111111000101100111100100011000;
            input_data[4]= 32'b10111110010101001110011011001101;
            input_data[5]= 32'b10111111010111011011001111010111;
            input_data[6]= 32'b10111111011100110111100001110001;
            input_data[7]= 32'b10111110110100000011111111001001;
            input_data[8]= 32'b00111110110100000011111111001001;
            input_data[9]= 32'b00111111011100110111100001110001;
            input_data[10]=32'b00111111010111011011001111010111;
            input_data[11]=32'b00111110010101001110011011001101;
            input_data[12]=32'b10111111000101100111100100011000;
            input_data[13]=32'b10111111011111101001100011111101;
            input_data[14]=32'b10111111001111100011111010111101;
            input_data[15]=32'b10100101100011010011000100110010;
       
       end 
  
  // Configuring Data initial Block 
  initial 
    begin 
        #100 config_data =1;
        #5   config_valid =1;
        
        while (config_ready == 0)
            begin
                config_valid =1;
            end
            
        #5 config_valid=0; 
            
    end
    
    
    // Input Port Initialisation Block 
    initial 
        begin         
       
       #100 
       for(i =15 ; i>0 ; i=i-1)
            begin
                #10 
                
                /* last signal needs To be generated 
                   When the last data is sent in this case,
                   we reached the 0th position. 
                   We can assert the last signal to be one. 
                   
                */
                 
                if(i==0)
                    begin
                        in_last=1'b1;
                    end
       
       in_data=input_data[i];//Passing data stored in memory to the in_data port. 
       in_valid = 1'b1;//Once data is put on the bus, make the valid High. 
       
       while(in_ready==0) //Waiting for a AXI handshake, for the in_Ready to be 1. 
            begin
                in_valid=1'b1;
                
            end
       end
       
       #10   //  Once all the transactions are completed, assert the valid and last to 0 
       in_valid =1'b0;
       in_last=1'b0;
       
       
    end
    
    
    // Output port initial block. 
    initial 
        begin
        #100  // Giving the delay so that all the input can be stored in ROM. 
        wait(out_valid ==1);  
        #300 out_ready =1'b0;  // Adding a 300 unit delay so that all
                               //  the data that needs to be sent can be put on the databus. 
         
         end       
endmodule

//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Dec 29 14:52:47 2021
//Host        : LAPTOP-UQ42ETSQ running 64-bit major release  (build 9200)
//Command     : generate_target endSem_wrapper.bd
//Design      : endSem_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module endSem_wrapper
   (Clock,
    reset);
  input Clock;
  input reset;

  wire Clock;
  wire reset;

  endSem endSem_i
       (.Clock(Clock),
        .reset(reset));
endmodule

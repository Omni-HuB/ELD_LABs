//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sun Dec 19 02:10:28 2021
//Host        : LAPTOP-UQ42ETSQ running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clock,
    reset);
  input clock;
  input reset;

  wire clock;
  wire reset;

  design_1 design_1_i
       (.clock(clock),
        .reset(reset));
endmodule

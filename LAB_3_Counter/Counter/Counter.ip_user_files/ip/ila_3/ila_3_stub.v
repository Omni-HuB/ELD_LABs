// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Oct 13 18:29:10 2021
// Host        : LAPTOP-UQ42ETSQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/IIITD/ELD_LABs/LAB_3_Counter/Counter/Counter.srcs/sources_1/ip/ila_3_1/ila_3_stub.v
// Design      : ila_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.1" *)
module ila_3(clk, probe0, probe1, probe2)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[7:0]" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [7:0]probe2;
endmodule

-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Sep 29 12:14:26 2021
-- Host        : LAPTOP-UQ42ETSQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/IIITD/ELD_LABs/Lab_2_Multiplier/FullAdder_TopAdder_Multiplier/FullAdder_TopAdder_Multiplier.srcs/sources_1/ip/vio_0/vio_0_stub.vhdl
-- Design      : vio_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vio_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end vio_0;

architecture stub of vio_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_in0[3:0],probe_out0[2:0],probe_out1[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2019.1";
begin
end;

-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../ZYNQ.srcs/sources_1/bd/ZYNQ_block/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../ZYNQ.srcs/sources_1/bd/ZYNQ_block/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../ZYNQ.srcs/sources_1/bd/ZYNQ_block/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ZYNQ_block/ip/ZYNQ_block_processing_system7_0_0/sim/ZYNQ_block_processing_system7_0_0.v" \
  "../../../bd/ZYNQ_block/sim/ZYNQ_block.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib


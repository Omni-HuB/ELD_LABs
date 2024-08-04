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
-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Vivado/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Vivado/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Vivado/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Vivado/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/IO/ip/IO_processing_system7_0_0/sim/IO_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_1 \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/IO/ip/IO_axi_bram_ctrl_0_0/sim/IO_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/sim/bd_a3cd.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_6 \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_0/sim/bd_a3cd_one_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_1/sim/bd_a3cd_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_2/sim/bd_a3cd_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_3/sim/bd_a3cd_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_4/sim/bd_a3cd_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_5/sim/bd_a3cd_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_6/sim/bd_a3cd_sarn_0.sv" \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_7/sim/bd_a3cd_srn_0.sv" \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_8/sim/bd_a3cd_sawn_0.sv" \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_9/sim/bd_a3cd_swn_0.sv" \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_10/sim/bd_a3cd_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_11/sim/bd_a3cd_m00s2a_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_12/sim/bd_a3cd_m00e_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/IO/ip/IO_axi_smc_0/sim/IO_axi_smc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/IO/ip/IO_rst_ps7_0_50M_0/sim/IO_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_3 \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/IO/ip/IO_axi_bram_ctrl_0_bram_0/sim/IO_axi_bram_ctrl_0_bram_0.v" \
  "../../../bd/IO/sim/IO.v" \
  "../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_0/sim/bd_6766_ila_lib_0.v" \
-endlib
-makelib xcelium_lib/gigantic_mux \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_1/bd_6766_g_inst_0_gigantic_mux.v" \
  "../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_1/sim/bd_6766_g_inst_0.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_3 \
  "../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_2/sim/bd_6766_slot_0_aw_0.v" \
  "../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_3/sim/bd_6766_slot_0_w_0.v" \
  "../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_4/sim/bd_6766_slot_0_b_0.v" \
  "../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_5/sim/bd_6766_slot_0_ar_0.v" \
  "../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_6/sim/bd_6766_slot_0_r_0.v" \
  "../../../bd/IO/ip/IO_system_ila_0_0/bd_0/sim/bd_6766.v" \
  "../../../bd/IO/ip/IO_system_ila_0_0/sim/IO_system_ila_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib


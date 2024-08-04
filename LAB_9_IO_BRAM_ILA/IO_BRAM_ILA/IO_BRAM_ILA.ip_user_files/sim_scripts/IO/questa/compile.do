vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_5
vlib questa_lib/msim/processing_system7_vip_v1_0_7
vlib questa_lib/msim/axi_bram_ctrl_v4_1_1
vlib questa_lib/msim/xlconstant_v1_1_6
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/blk_mem_gen_v8_4_3
vlib questa_lib/msim/gigantic_mux
vlib questa_lib/msim/xlconcat_v2_1_3

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 questa_lib/msim/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 questa_lib/msim/processing_system7_vip_v1_0_7
vmap axi_bram_ctrl_v4_1_1 questa_lib/msim/axi_bram_ctrl_v4_1_1
vmap xlconstant_v1_1_6 questa_lib/msim/xlconstant_v1_1_6
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap blk_mem_gen_v8_4_3 questa_lib/msim/blk_mem_gen_v8_4_3
vmap gigantic_mux questa_lib/msim/gigantic_mux
vmap xlconcat_v2_1_3 questa_lib/msim/xlconcat_v2_1_3

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Vivado/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Vivado/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Vivado/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_processing_system7_0_0/sim/IO_processing_system7_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_1 -64 -93 \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/IO/ip/IO_axi_bram_ctrl_0_0/sim/IO_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/sim/bd_a3cd.v" \

vlog -work xlconstant_v1_1_6 -64 "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_0/sim/bd_a3cd_one_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_1/sim/bd_a3cd_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_2/sim/bd_a3cd_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_3/sim/bd_a3cd_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_4/sim/bd_a3cd_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_5/sim/bd_a3cd_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_6/sim/bd_a3cd_sarn_0.sv" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_7/sim/bd_a3cd_srn_0.sv" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_8/sim/bd_a3cd_sawn_0.sv" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_9/sim/bd_a3cd_swn_0.sv" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_10/sim/bd_a3cd_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_11/sim/bd_a3cd_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_axi_smc_0/bd_0/ip/ip_12/sim/bd_a3cd_m00e_0.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_axi_smc_0/sim/IO_axi_smc_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/IO/ip/IO_rst_ps7_0_50M_0/sim/IO_rst_ps7_0_50M_0.vhd" \

vlog -work blk_mem_gen_v8_4_3 -64 "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_axi_bram_ctrl_0_bram_0/sim/IO_axi_bram_ctrl_0_bram_0.v" \
"../../../bd/IO/sim/IO.v" \
"../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_0/sim/bd_6766_ila_lib_0.v" \

vlog -work gigantic_mux -64 "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_1/bd_6766_g_inst_0_gigantic_mux.v" \
"../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_1/sim/bd_6766_g_inst_0.v" \

vlog -work xlconcat_v2_1_3 -64 "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/ec67/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/8c62/hdl" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1ddd/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/b2d0/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ip/IO_processing_system7_0_0" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/122e/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/6887/hdl/verilog" "+incdir+../../../../IO_BRAM_ILA.srcs/sources_1/bd/IO/ipshared/9623/hdl/verilog" "+incdir+D:/Vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_2/sim/bd_6766_slot_0_aw_0.v" \
"../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_3/sim/bd_6766_slot_0_w_0.v" \
"../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_4/sim/bd_6766_slot_0_b_0.v" \
"../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_5/sim/bd_6766_slot_0_ar_0.v" \
"../../../bd/IO/ip/IO_system_ila_0_0/bd_0/ip/ip_6/sim/bd_6766_slot_0_r_0.v" \
"../../../bd/IO/ip/IO_system_ila_0_0/bd_0/sim/bd_6766.v" \
"../../../bd/IO/ip/IO_system_ila_0_0/sim/IO_system_ila_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


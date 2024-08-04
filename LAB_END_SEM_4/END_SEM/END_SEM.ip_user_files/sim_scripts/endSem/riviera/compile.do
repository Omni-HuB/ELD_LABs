vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v11_0_1
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_16
vlib riviera/blk_mem_gen_v8_4_3
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_16
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_bram_ctrl_v4_1_1
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_19
vlib riviera/fifo_generator_v13_2_4
vlib riviera/axi_data_fifo_v2_1_18
vlib riviera/axi_crossbar_v2_1_20
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_fifo_v1_0_13
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_21
vlib riviera/axi_sg_v4_1_12
vlib riviera/axi_dma_v7_1_20
vlib riviera/axi_protocol_converter_v2_1_19
vlib riviera/axi_clock_converter_v2_1_18
vlib riviera/axi_dwidth_converter_v2_1_19

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v11_0_1 riviera/microblaze_v11_0_1
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_16 riviera/lmb_bram_if_cntlr_v4_0_16
vmap blk_mem_gen_v8_4_3 riviera/blk_mem_gen_v8_4_3
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_16 riviera/mdm_v3_2_16
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_bram_ctrl_v4_1_1 riviera/axi_bram_ctrl_v4_1_1
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_19 riviera/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 riviera/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 riviera/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 riviera/axi_crossbar_v2_1_20
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_13 riviera/lib_fifo_v1_0_13
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_21 riviera/axi_datamover_v5_1_21
vmap axi_sg_v4_1_12 riviera/axi_sg_v4_1_12
vmap axi_dma_v7_1_20 riviera/axi_dma_v7_1_20
vmap axi_protocol_converter_v2_1_19 riviera/axi_protocol_converter_v2_1_19
vmap axi_clock_converter_v2_1_18 riviera/axi_clock_converter_v2_1_18
vmap axi_dwidth_converter_v2_1_19 riviera/axi_dwidth_converter_v2_1_19

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"D:/Vivado/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Vivado/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Vivado/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_1 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/f8c3/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/endSem/ip/endSem_microblaze_0_0/sim/endSem_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/endSem/ip/endSem_dlmb_v10_0/sim/endSem_dlmb_v10_0.vhd" \
"../../../bd/endSem/ip/endSem_ilmb_v10_0/sim/endSem_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_16 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/6335/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/endSem/ip/endSem_dlmb_bram_if_cntlr_0/sim/endSem_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/endSem/ip/endSem_ilmb_bram_if_cntlr_0/sim/endSem_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_3  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../bd/endSem/ip/endSem_lmb_bram_0/sim/endSem_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_16 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/550e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/endSem/ip/endSem_mdm_1_0/sim/endSem_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/endSem/ip/endSem_rst_Clk_100M_0/sim/endSem_rst_Clk_100M_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_1 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/endSem/ip/endSem_axi_bram_ctrl_0_0/sim/endSem_axi_bram_ctrl_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../bd/endSem/ip/endSem_xbar_0/sim/endSem_xbar_0.v" \
"../../../bd/endSem/ip/endSem_axi_bram_ctrl_0_bram_0/sim/endSem_axi_bram_ctrl_0_bram_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_13 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_21 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_12 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_20 -93 \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/endSem/ip/endSem_axi_dma_0_0/sim/endSem_axi_dma_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../bd/endSem/ip/endSem_auto_pc_1/sim/endSem_auto_pc_1.v" \

vlog -work axi_clock_converter_v2_1_18  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ac9d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_19  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/e578/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../END_SEM.srcs/sources_1/bd/endSem/ipshared/ec67/hdl" \
"../../../bd/endSem/ip/endSem_auto_us_0/sim/endSem_auto_us_0.v" \
"../../../bd/endSem/ip/endSem_auto_ds_0/sim/endSem_auto_ds_0.v" \
"../../../bd/endSem/ip/endSem_auto_pc_0/sim/endSem_auto_pc_0.v" \
"../../../bd/endSem/sim/endSem.v" \

vlog -work xil_defaultlib \
"glbl.v"


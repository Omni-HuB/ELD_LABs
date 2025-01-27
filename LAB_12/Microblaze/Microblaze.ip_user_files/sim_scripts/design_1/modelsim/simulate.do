onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L microblaze_v11_0_1 -L lmb_v10_v3_0_9 -L lmb_bram_if_cntlr_v4_0_16 -L blk_mem_gen_v8_4_3 -L axi_lite_ipif_v3_0_4 -L mdm_v3_2_16 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L axi_bram_ctrl_v4_1_1 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_19 -L fifo_generator_v13_2_4 -L axi_data_fifo_v2_1_18 -L axi_crossbar_v2_1_20 -L axi_protocol_converter_v2_1_19 -L axi_clock_converter_v2_1_18 -L axi_dwidth_converter_v2_1_19 -L lib_pkg_v1_0_2 -L lib_fifo_v1_0_13 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_21 -L axi_sg_v4_1_12 -L axi_dma_v7_1_20 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_13 -L c_mux_bit_v12_0_6 -L c_shift_ram_v12_0_13 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_15 -L cmpy_v6_0_17 -L floating_point_v7_0_16 -L xfft_v9_1_2 -L xlconstant_v1_1_6 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force

onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+IO -L xilinx_vip -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L axi_bram_ctrl_v4_1_1 -L xlconstant_v1_1_6 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L blk_mem_gen_v8_4_3 -L gigantic_mux -L xlconcat_v2_1_3 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.IO xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {IO.udo}

run -all

endsim

quit -force
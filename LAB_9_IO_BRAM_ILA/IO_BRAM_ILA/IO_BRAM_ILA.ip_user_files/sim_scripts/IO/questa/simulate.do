onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib IO_opt

do {wave.do}

view wave
view structure
view signals

do {IO.udo}

run -all

quit -force

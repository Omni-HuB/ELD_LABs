onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib endSem_opt

do {wave.do}

view wave
view structure
view signals

do {endSem.udo}

run -all

quit -force

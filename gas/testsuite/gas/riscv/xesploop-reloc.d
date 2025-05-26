#as: -march=rv32ic_xesploop
#source: xesploop-reloc.s
#objdump: -dr

.*:[ 	]+file format .*

#...
Disassembly of section .text:
#...
0+[0-9a-f]+ <_start>:
.*:[ 	]+[0-9a-f]+[ 	]+esp.lp.setup[ 	]+.*<last_inst\+0x4>
[ 	]+0:[ 	]+R_RISCV_VENDOR[ 	]+esp.*
[ 	]+0:[ 	]+R_RISCV_ESP_LP_OFFSET_12[ 	]+last_inst\+0x4
.*:[ 	]+[0-9a-f]+[ 	]+esp.lp.setupi[ 	]+.*<_start\+0x4>
[ 	]+4:[ 	]+R_RISCV_VENDOR[ 	]+esp.*
[ 	]+4:[ 	]+R_RISCV_ESP_LP_OFFSET_9[ 	]+last_inst-0x4
#...
0+[0-9a-f]+ <last_inst>:
#...

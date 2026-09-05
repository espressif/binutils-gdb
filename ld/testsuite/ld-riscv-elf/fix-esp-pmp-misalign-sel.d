#name: Espressif PMP misalign, only the named object
#source: fix-esp-pmp-misalign-sel-a.s
#source: fix-esp-pmp-misalign-sel-b.s
#as: -march=rv32i -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --fix-esp-pmp-misalign=fix-esp-pmp-misalign-sel-b.o
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

[0-9a-f]+ <from_a>:
[ 	]+[0-9a-f]+:[ 	]+0005a503[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+00a62023[ 	]+sw[ 	]+a0,0\(a2\)
[ 	]+[0-9a-f]+:[ 	]+00008067[ 	]+ret
[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+0005a503[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+00000013[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+00000013[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+00a62023[ 	]+sw[ 	]+a0,0\(a2\)
[ 	]+[0-9a-f]+:[ 	]+00008067[ 	]+ret

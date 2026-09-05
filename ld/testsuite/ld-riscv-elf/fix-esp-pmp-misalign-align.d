#name: Espressif PMP, ALIGN after NOP insert
#source: fix-esp-pmp-misalign-align.s
#as: -march=rv32ic -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --fix-esp-pmp-misalign
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+4188[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+0685[ 	]+addi[ 	]+a3,a3,1
[ 	]+[0-9a-f]+:[ 	]+0705[ 	]+addi[ 	]+a4,a4,1
#...
[0-9a-f]*[08] <aligned>:
[ 	]+[0-9a-f]+:[ 	]+8082[ 	]+ret
[0-9a-f]+ <hazard_align>:
[ 	]+[0-9a-f]+:[ 	]+4188[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+0001[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+0001[ 	]+nop
#...
[ 	]+[0-9a-f]+:[ 	]+c208[ 	]+sw[ 	]+a0,0\(a2\)
[ 	]+[0-9a-f]+:[ 	]+8082[ 	]+ret
#...

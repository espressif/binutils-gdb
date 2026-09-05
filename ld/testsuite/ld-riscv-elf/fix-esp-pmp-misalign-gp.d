#name: Espressif PMP misalign linker insert, gp-relative store
#source: fix-esp-pmp-misalign-gp.s
#as: -march=rv32i -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] -T fix-esp-pmp-misalign-gp.ld --fix-esp-pmp-misalign
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

[0-9a-f]+ <_start>:
# the store reads a5 here, but relaxation gives it gp before the link ends
[ 	]+[0-9a-f]+:[ 	]+000407b7[ 	]+lui[ 	]+a5,0x40
[ 	]+[0-9a-f]+:[ 	]+0007a503[ 	]+lw[ 	]+a0,0\(a5\).*
[ 	]+[0-9a-f]+:[ 	]+00000013[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+00000013[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+fea1ae23[ 	]+sw[ 	]+a0,-4\(gp\).*
[ 	]+[0-9a-f]+:[ 	]+00008067[ 	]+ret

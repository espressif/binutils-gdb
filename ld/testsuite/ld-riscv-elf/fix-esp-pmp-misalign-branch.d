#name: Espressif PMP, expand out-of-range 32-bit branch
#source: fix-esp-pmp-misalign-branch.s
#as: -march=rv32i -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --fix-esp-pmp-misalign
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+beq[ 	]+a0,a1,[0-9a-f]+ <.*>
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+j[ 	]+[0-9a-f]+ <fwd>
#...
[0-9a-f]+ <fwd>:
[ 	]+[0-9a-f]+:[ 	]+00008067[ 	]+ret
#...
[0-9a-f]+ <bwd>:
#...
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+bge[ 	]+a0,a1,[0-9a-f]+ <.*>
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+j[ 	]+[0-9a-f]+ <bwd>
[ 	]+[0-9a-f]+:[ 	]+00008067[ 	]+ret

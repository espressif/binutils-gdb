#name: Espressif PMP off, compressed branch/jump stay in range
#source: fix-esp-pmp-misalign-rvc-branch.s
#as: -march=rv32ic -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul]
#objdump: -d -M no-aliases

.*:[ 	]+file format .*


Disassembly of section .text:

[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]{4}[ 	]+c\.beqz[ 	]+s0,[0-9a-f]+ <near>
[ 	]+[0-9a-f]+:[ 	]+0001[ 	]+c\.addi[ 	]+zero,0
[0-9a-f]+ <near>:
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]{4}[ 	]+c\.beqz[ 	]+s0,[0-9a-f]+ <fwd>
#...
[0-9a-f]+ <fwd>:
[ 	]+[0-9a-f]+:[ 	]+8082[ 	]+c\.jr[ 	]+ra
[0-9a-f]+ <bwd>:
#...
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]{4}[ 	]+c\.bnez[ 	]+s0,[0-9a-f]+ <bwd>
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]{4}[ 	]+c\.j[ 	]+[0-9a-f]+ <jfar>
#...
[0-9a-f]+ <jfar>:
[ 	]+[0-9a-f]+:[ 	]+8082[ 	]+c\.jr[ 	]+ra

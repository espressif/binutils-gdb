#name: Espressif PMP misalign linker insert, C extension
#source: fix-esp-pmp-misalign-c.s
#as: -march=rv32ic -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --fix-esp-pmp-misalign
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

[0-9a-f]+ <_start>:
# load; store — compressed NOPs inserted
[ 	]+[0-9a-f]+:[ 	]+4188[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+0001[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+0001[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+c208[ 	]+sw[ 	]+a0,0\(a2\)
# load; insn; store — one instruction is separation enough
[0-9a-f]+ <safe_one_between>:
[ 	]+[0-9a-f]+:[ 	]+4188[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+0685[ 	]+addi[ 	]+a3,a3,1
[ 	]+[0-9a-f]+:[ 	]+c208[ 	]+sw[ 	]+a0,0\(a2\)
[0-9a-f]+ <same_base>:
[ 	]+[0-9a-f]+:[ 	]+4188[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+c1c8[ 	]+sw[ 	]+a0,4\(a1\)
[ 	]+[0-9a-f]+:[ 	]+8082[ 	]+ret

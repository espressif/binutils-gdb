#name: Espressif PMP misalign, Zcb byte and halfword stores
#source: fix-esp-pmp-misalign-zcb.s
#as: -march=rv32ic_zcb -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --fix-esp-pmp-misalign
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+4188[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+0001[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+0001[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+8a08[ 	]+sb[ 	]+a0,0\(a2\)
[0-9a-f]+ <halfword_store>:
[ 	]+[0-9a-f]+:[ 	]+4188[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+0001[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+0001[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+8e08[ 	]+sh[ 	]+a0,0\(a2\)
[0-9a-f]+ <same_base>:
[ 	]+[0-9a-f]+:[ 	]+4188[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+8988[ 	]+sb[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+8082[ 	]+ret

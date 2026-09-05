#name: Espressif PMP linker insert still runs with --no-relax
#source: fix-esp-pmp-misalign.s
#as: -march=rv32i -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --no-relax --fix-esp-pmp-misalign
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+0005a503[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+00000013[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+00000013[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+00a62023[ 	]+sw[ 	]+a0,0\(a2\)
[0-9a-f]+ <safe_one_between>:
[ 	]+[0-9a-f]+:[ 	]+0005a503[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+00168693[ 	]+addi[ 	]+a3,a3,1
[ 	]+[0-9a-f]+:[ 	]+00a62023[ 	]+sw[ 	]+a0,0\(a2\)
[0-9a-f]+ <same_base>:
[ 	]+[0-9a-f]+:[ 	]+0005a503[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+00a5a023[ 	]+sw[ 	]+a0,0\(a1\)
[0-9a-f]+ <byte_load>:
[ 	]+[0-9a-f]+:[ 	]+00058503[ 	]+lb[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+00a62023[ 	]+sw[ 	]+a0,0\(a2\)
[0-9a-f]+ <byte_store>:
[ 	]+[0-9a-f]+:[ 	]+0005a503[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+00000013[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+00000013[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+00a60023[ 	]+sb[ 	]+a0,0\(a2\)
[0-9a-f]+ <branch_between>:
[ 	]+[0-9a-f]+:[ 	]+0005a503[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+bne[ 	]+a3,a4,[0-9a-f]+ <btarget>
[ 	]+[0-9a-f]+:[ 	]+00100793[ 	]+li[ 	]+a5,1
[0-9a-f]+ <btarget>:
[ 	]+[0-9a-f]+:[ 	]+00a62023[ 	]+sw[ 	]+a0,0\(a2\)
[0-9a-f]+ <load_between>:
[ 	]+[0-9a-f]+:[ 	]+0005a503[ 	]+lw[ 	]+a0,0\(a1\)
[ 	]+[0-9a-f]+:[ 	]+0006a603[ 	]+lw[ 	]+a2,0\(a3\)
[ 	]+[0-9a-f]+:[ 	]+00000013[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+00000013[ 	]+nop
[ 	]+[0-9a-f]+:[ 	]+00a72023[ 	]+sw[ 	]+a0,0\(a4\)
[ 	]+[0-9a-f]+:[ 	]+00008067[ 	]+ret

#name: C.JAL across output sections without Espressif PMP padding
#source: fix-esp-pmp-misalign-rvc-cross-nopmp.s
#as: -march=rv32ic -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] -T fix-esp-pmp-misalign-rvc-cross-nopmp.ld
#objdump: -d -M no-aliases

.*:[ 	]+file format .*

Disassembly of section \.text\.low:

[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]{4}[ 	]+c\.jal[ 	]+[0-9a-f]+ <target>
#...

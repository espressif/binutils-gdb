#name: Espressif PMP misalign, no C.JAL across output sections
#source: fix-esp-pmp-misalign-rvc-cross.s
#as: -march=rv32ic -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --fix-esp-pmp-misalign -T fix-esp-pmp-misalign-rvc-cross.ld
#objdump: -d -M no-aliases

.*:[ 	]+file format .*

Disassembly of section \.text\.low:

#...
[0-9a-f]+ <caller>:
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]{8}[ 	]+jal[ 	]+ra,[0-9a-f]+ <target>
#...

Disassembly of section \.text\.high:

[0-9a-f]+ <target>:
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+c\.jr[ 	]+ra

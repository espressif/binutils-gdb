#name: Espressif PMP, restore CALL when JAL exceeds range
#source: fix-esp-pmp-misalign-jal.s
#as: -march=rv32i -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --fix-esp-pmp-misalign -T fix-esp-pmp-misalign-jal.ld
#objdump: -d -j .text.start

.*:[ 	]+file format .*


Disassembly of section \.text\.start:

[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+auipc[ 	]+ra,0x[0-9a-f]+
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+jalr[ 	]+(ra,)?[0-9a-f]+\(ra\).*

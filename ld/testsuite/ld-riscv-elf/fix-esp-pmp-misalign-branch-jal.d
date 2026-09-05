#name: Espressif PMP, widen branch guard when JAL becomes AUIPC+JALR
#source: fix-esp-pmp-misalign-branch-jal.s
#as: -march=rv32i -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --fix-esp-pmp-misalign -T fix-esp-pmp-misalign-branch-jal.ld
#objdump: -d -j .text.start

.*:[ 	]+file format .*


Disassembly of section \.text\.start:

[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+beq[ 	]+a0,a1,[0-9a-f]+ <_start\+0xc>
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+auipc[ 	]+t2,0x[0-9a-f]+
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+jr[ 	]+[0-9a-f]+\(t2\).*

#name: Espressif PMP, expand C.JAL pushed out of range
#source: fix-esp-pmp-misalign-cjal.s
#as: -march=rv32ic -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --fix-esp-pmp-misalign -T fix-esp-pmp-misalign-cjal.ld
#objdump: -d -M no-aliases -j .text

#...
[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]{8}[ 	]+jal[ 	]+ra,[0-9a-f]+ <dest>
#...

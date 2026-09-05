#name: Espressif PMP off, C.JAL stays in range
#source: fix-esp-pmp-misalign-cjal.s
#as: -march=rv32ic -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] -T fix-esp-pmp-misalign-cjal.ld
#objdump: -d -M no-aliases -j .text

#...
[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]{4}[ 	]+c\.jal[ 	]+[0-9a-f]+ <dest>
#...

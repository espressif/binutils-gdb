#name: Espressif PMP misalign, jump measured against padding already placed
#source: fix-esp-pmp-misalign-stale.s
#as: -march=rv32ic -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --fix-esp-pmp-misalign -T fix-esp-pmp-misalign-stale.ld
#objdump: -d -M no-aliases -j .text

#...
[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+c\.jal[ 	]+[0-9a-f]+ <dest>
